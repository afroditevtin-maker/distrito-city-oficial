package com.xyron.game.launcher.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletionService;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/** Public-link MEGA downloader using parallel, independently decrypted AES-CTR ranges. */
public final class MegaDownload {
    private static final Pattern PATH = Pattern.compile("^/file/([A-Za-z0-9_-]{6,})$");
    private static final Pattern KEY = Pattern.compile("^[A-Za-z0-9_-]{32,64}$");
    private static final Pattern URL_FIELD = Pattern.compile("\\\"g\\\"\\s*:\\s*\\\"([^\\\"]+)\\\"");
    private static final Pattern SIZE_FIELD = Pattern.compile("\\\"s\\\"\\s*:\\s*(\\d+)");
    private static final int WORKERS = 4;
    private static final long CHUNK_BYTES = 16L * 1024L * 1024L;
    private static final long PROGRESS_STEP = 512L * 1024L;

    private MegaDownload() {}

    public static boolean isMegaLink(String value) {
        try {
            URL u = new URL(value);
            if (!"https".equals(u.getProtocol()) || !"mega.nz".equalsIgnoreCase(u.getHost())) return false;
            if (u.getPort() != -1 || u.getUserInfo() != null || u.getQuery() != null) return false;
            Matcher p = PATH.matcher(u.getPath());
            return p.matches() && u.getRef() != null && KEY.matcher(u.getRef()).matches();
        } catch (Throwable ignored) {
            return false;
        }
    }

    public static void download(File destination, String shareUrl, long expectedBytes,
                                String expectedSha256, Object progress) throws Exception {
        if (!isMegaLink(shareUrl)) throw new IOException("Link MEGA público inválido.");
        URL share = new URL(shareUrl);
        Matcher pathMatch = PATH.matcher(share.getPath());
        if (!pathMatch.matches()) throw new IOException("Identificador MEGA inválido.");
        String handle = pathMatch.group(1);
        byte[] fileKey = decode64(share.getRef());
        if (fileKey.length != 32) throw new IOException("Chave MEGA inválida.");

        String apiUrl = "https://g.api.mega.co.nz/cs?id=" + (System.nanoTime() & 0x7fffffffL) + "&n=" + handle;
        HttpURLConnection api = (HttpURLConnection) new URL(apiUrl).openConnection();
        api.setRequestMethod("POST");
        api.setConnectTimeout(30000);
        api.setReadTimeout(60000);
        api.setDoOutput(true);
        api.setRequestProperty("Content-Type", "application/json");
        api.setRequestProperty("Accept", "application/json");
        byte[] body = ("[{\"a\":\"g\",\"g\":1,\"p\":\"" + handle + "\"}]").getBytes("UTF-8");
        OutputStream req = api.getOutputStream();
        req.write(body);
        req.close();
        int apiCode = api.getResponseCode();
        InputStream apiStream = apiCode >= 200 && apiCode < 300 ? api.getInputStream() : api.getErrorStream();
        StringBuilder response = new StringBuilder();
        BufferedReader reader = new BufferedReader(new InputStreamReader(apiStream, "UTF-8"));
        String line;
        while ((line = reader.readLine()) != null) response.append(line);
        reader.close();
        api.disconnect();
        if (apiCode < 200 || apiCode >= 300) throw new IOException("MEGA API retornou HTTP " + apiCode);
        Matcher urlMatcher = URL_FIELD.matcher(response.toString());
        Matcher sizeMatcher = SIZE_FIELD.matcher(response.toString());
        if (!urlMatcher.find() || !sizeMatcher.find()) throw new IOException("MEGA não retornou um arquivo disponível.");
        String transferUrl = urlMatcher.group(1).replace("http://", "https://");
        long megaSize = Long.parseLong(sizeMatcher.group(1));
        if (expectedBytes > 0 && megaSize != expectedBytes) {
            throw new IOException("Tamanho do pacote MEGA não corresponde ao manifesto (" + megaSize + ").");
        }
        notifyProgress(progress, 0, megaSize);

        byte[] aesKey = new byte[16];
        byte[] baseIv = new byte[16];
        for (int i = 0; i < 16; i++) aesKey[i] = (byte) (fileKey[i] ^ fileKey[i + 16]);
        System.arraycopy(fileKey, 16, baseIv, 0, 8);
        SecretKeySpec keySpec = new SecretKeySpec(aesKey, "AES");

        File parent = destination.getParentFile();
        if (parent != null && !parent.exists() && !parent.mkdirs()) throw new IOException("Não foi possível criar a pasta temporária.");
        File temp = new File(destination.getPath() + ".mega.part");
        if (temp.exists() && !temp.delete()) throw new IOException("Não foi possível limpar a tentativa anterior.");
        probeRanges(transferUrl, megaSize);
        RandomAccessFile setup = new RandomAccessFile(temp, "rw");
        setup.setLength(megaSize);
        setup.close();

        AtomicLong completedBytes = new AtomicLong(0);
        AtomicLong lastReported = new AtomicLong(0);
        ExecutorService pool = Executors.newFixedThreadPool(WORKERS);
        CompletionService<Void> completed = new ExecutorCompletionService<Void>(pool);
        int taskCount = (int) ((megaSize + CHUNK_BYTES - 1L) / CHUNK_BYTES);
        boolean success = false;
        try {
            for (int i = 0; i < taskCount; i++) {
                final long start = (long) i * CHUNK_BYTES;
                final long end = Math.min(megaSize - 1L, start + CHUNK_BYTES - 1L);
                completed.submit(new RangeTask(transferUrl, temp, keySpec, baseIv, start, end,
                        megaSize, progress, completedBytes, lastReported));
            }
            for (int i = 0; i < taskCount; i++) {
                Future<Void> future = completed.take();
                try {
                    future.get();
                } catch (ExecutionException e) {
                    Throwable cause = e.getCause();
                    if (cause instanceof Exception) throw (Exception) cause;
                    throw new IOException("Falha em uma faixa do download MEGA.", cause);
                }
            }
            success = true;
        } finally {
            if (!success) pool.shutdownNow(); else pool.shutdown();
            try {
                if (!pool.awaitTermination(125L, TimeUnit.SECONDS)) pool.shutdownNow();
            } catch (InterruptedException e) {
                pool.shutdownNow();
                Thread.currentThread().interrupt();
                if (success) throw new IOException("Download MEGA interrompido.", e);
            }
            if (!success && temp.exists()) temp.delete();
        }

        RandomAccessFile sync = new RandomAccessFile(temp, "rw");
        sync.getChannel().force(true);
        sync.close();
        if (temp.length() != megaSize || (expectedBytes > 0 && temp.length() != expectedBytes)) {
            temp.delete();
            throw new IOException("Tamanho do ZIP descriptografado inválido: " + temp.length() + ".");
        }
        String identityHash = sha256(shareUrl);
        if (expectedSha256 != null && !expectedSha256.trim().isEmpty()
                && !identityHash.equalsIgnoreCase(expectedSha256.trim())) {
            String actualHash = sha256File(temp);
            if (!actualHash.equalsIgnoreCase(expectedSha256.trim())) {
                temp.delete();
                throw new IOException("SHA-256 do arquivo MEGA não corresponde ao manifesto: " + actualHash);
            }
        }
        if (destination.exists() && !destination.delete()) {
            temp.delete();
            throw new IOException("Não foi possível substituir o ZIP temporário.");
        }
        if (!temp.renameTo(destination)) {
            temp.delete();
            throw new IOException("Não foi possível finalizar o ZIP MEGA.");
        }
        notifyProgress(progress, megaSize, megaSize);
    }

    private static final class RangeTask implements Callable<Void> {
        private final String transferUrl;
        private final File temp;
        private final SecretKeySpec keySpec;
        private final byte[] baseIv;
        private final long start;
        private final long end;
        private final long total;
        private final Object progress;
        private final AtomicLong completedBytes;
        private final AtomicLong lastReported;

        RangeTask(String transferUrl, File temp, SecretKeySpec keySpec, byte[] baseIv,
                  long start, long end, long total, Object progress,
                  AtomicLong completedBytes, AtomicLong lastReported) {
            this.transferUrl = transferUrl;
            this.temp = temp;
            this.keySpec = keySpec;
            this.baseIv = baseIv;
            this.start = start;
            this.end = end;
            this.total = total;
            this.progress = progress;
            this.completedBytes = completedBytes;
            this.lastReported = lastReported;
        }

        @Override public Void call() throws Exception {
            if (Thread.currentThread().isInterrupted()) throw new IOException("Download MEGA interrompido.");
            HttpURLConnection conn = (HttpURLConnection) new URL(transferUrl).openConnection();
            conn.setConnectTimeout(30000);
            conn.setReadTimeout(120000);
            conn.setRequestProperty("Accept-Encoding", "identity");
            conn.setRequestProperty("User-Agent", "Android-MEGA-downloader");
            conn.setRequestProperty("Range", "bytes=" + start + "-" + end);
            InputStream in = null;
            RandomAccessFile out = null;
            try {
                int code = conn.getResponseCode();
                if (code != 206) throw new IOException("CDN MEGA não aceitou faixa paralela (HTTP " + code + ").");
                String range = conn.getHeaderField("Content-Range");
                String prefix = "bytes " + start + "-" + end + "/";
                if (range == null || !range.startsWith(prefix)) throw new IOException("Faixa retornada pelo CDN MEGA é inválida.");
                Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
                cipher.init(Cipher.DECRYPT_MODE, keySpec, new IvParameterSpec(ivAt(baseIv, start)));
                in = conn.getInputStream();
                out = new RandomAccessFile(temp, "rw");
                out.seek(start);
                byte[] buffer = new byte[256 * 1024];
                long expected = end - start + 1L;
                long received = 0;
                long written = 0;
                int n;
                while ((n = in.read(buffer)) != -1) {
                    if (Thread.currentThread().isInterrupted()) throw new IOException("Download MEGA interrompido.");
                    received += n;
                    if (received > expected) throw new IOException("CDN MEGA enviou bytes além da faixa solicitada.");
                    byte[] plain = cipher.update(buffer, 0, n);
                    if (plain != null && plain.length > 0) {
                        out.write(plain);
                        written += plain.length;
                        completedBytes.addAndGet(plain.length);
                        reportProgress(progress, completedBytes, lastReported, total);
                    }
                }
                byte[] tail = cipher.doFinal();
                if (tail != null && tail.length > 0) {
                    out.write(tail);
                    written += tail.length;
                    completedBytes.addAndGet(tail.length);
                    reportProgress(progress, completedBytes, lastReported, total);
                }
                if (received != expected || written != expected) throw new IOException("Faixa MEGA incompleta: " + written + " de " + expected + " bytes.");
            } finally {
                if (in != null) try { in.close(); } catch (IOException ignored) {}
                if (out != null) try { out.close(); } catch (IOException ignored) {}
                conn.disconnect();
            }
            return null;
        }
    }

    private static void probeRanges(String transferUrl, long total) throws IOException {
        HttpURLConnection conn = (HttpURLConnection) new URL(transferUrl).openConnection();
        conn.setConnectTimeout(30000);
        conn.setReadTimeout(30000);
        conn.setRequestProperty("Accept-Encoding", "identity");
        conn.setRequestProperty("User-Agent", "Android-MEGA-downloader");
        conn.setRequestProperty("Range", "bytes=0-15");
        try {
            int code = conn.getResponseCode();
            String range = conn.getHeaderField("Content-Range");
            if (code != 206 || range == null || !range.startsWith("bytes 0-15/" + total)) {
                throw new IOException("O CDN MEGA não oferece download por faixas; pacote não foi iniciado.");
            }
            InputStream in = conn.getInputStream();
            byte[] probe = new byte[16];
            int read = 0;
            while (read < probe.length) {
                int n = in.read(probe, read, probe.length - read);
                if (n < 0) break;
                read += n;
            }
            in.close();
            if (read != 16) throw new IOException("Não foi possível validar as faixas do CDN MEGA.");
        } finally {
            conn.disconnect();
        }
    }

    private static void reportProgress(Object progress, AtomicLong completed, AtomicLong reported, long total) {
        if (progress == null) return;
        synchronized (progress) {
            long now = completed.get();
            if (now - reported.get() >= PROGRESS_STEP || now >= total) {
                reported.set(now);
                notifyProgress(progress, now, total);
            }
        }
    }

    private static void notifyProgress(Object progress, long done, long total) {
        if (progress == null) return;
        try {
            java.lang.reflect.Method m = progress.getClass().getMethod("update", boolean.class, long.class, long.class, String.class);
            m.invoke(progress, false, done, total, "Baixando em paralelo do MEGA...");
        } catch (Throwable ignored) {}
    }

    private static byte[] ivAt(byte[] baseIv, long offset) {
        byte[] iv = (byte[]) baseIv.clone();
        long blocks = offset >>> 4;
        for (int i = iv.length - 1; i >= 0 && blocks != 0; i--) {
            int sum = (iv[i] & 0xff) + (int) (blocks & 0xffL);
            iv[i] = (byte) sum;
            blocks = (blocks >>> 8) + (sum >>> 8);
        }
        if (blocks != 0) throw new IllegalArgumentException("AES-CTR offset excede o contador suportado.");
        return iv;
    }

    private static byte[] decode64(String value) {
        String s = value.replace('-', '+').replace('_', '/');
        int rem = s.length() % 4;
        if (rem != 0) s += "====".substring(rem);
        final String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
        java.io.ByteArrayOutputStream out = new java.io.ByteArrayOutputStream();
        int accumulator = 0, bits = 0;
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '=') break;
            int v = alphabet.indexOf(c);
            if (v < 0) throw new IllegalArgumentException("Base64 inválido");
            accumulator = (accumulator << 6) | v;
            bits += 6;
            if (bits >= 8) {
                bits -= 8;
                out.write((accumulator >> bits) & 0xff);
            }
        }
        return out.toByteArray();
    }

    private static String sha256(String value) throws Exception {
        return hex(MessageDigest.getInstance("SHA-256").digest(value.getBytes("UTF-8")));
    }

    private static String sha256File(File file) throws Exception {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        InputStream in = new FileInputStream(file);
        byte[] buffer = new byte[1024 * 1024];
        int n;
        try { while ((n = in.read(buffer)) != -1) digest.update(buffer, 0, n); }
        finally { in.close(); }
        return hex(digest.digest());
    }

    private static String hex(byte[] bytes) {
        StringBuilder s = new StringBuilder(bytes.length * 2);
        for (byte b : bytes) s.append(String.format(Locale.ROOT, "%02x", b & 0xff));
        return s.toString();
    }
}
