.class public final Lcom/xyron/game/launcher/util/MegaDownload;
.super Ljava/lang/Object;
.source "MegaDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;
    }
.end annotation


# static fields
.field private static final CHUNK_BYTES:J = 0x1000000L

.field private static final KEY:Ljava/util/regex/Pattern;

.field private static final PATH:Ljava/util/regex/Pattern;

.field private static final PROGRESS_STEP:J = 0x80000L

.field private static final SIZE_FIELD:Ljava/util/regex/Pattern;

.field private static final URL_FIELD:Ljava/util/regex/Pattern;

.field private static final WORKERS:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-string v0, "^/file/([A-Za-z0-9_-]{6,})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/MegaDownload;->PATH:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, "^[A-Za-z0-9_-]{32,64}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/MegaDownload;->KEY:Ljava/util/regex/Pattern;

    .line 34
    const-string v0, "\\\"g\\\"\\s*:\\s*\\\"([^\\\"]+)\\\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/MegaDownload;->URL_FIELD:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "\\\"s\\\"\\s*:\\s*(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/MegaDownload;->SIZE_FIELD:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([BJ)[B
    .registers 3

    .line 31
    invoke-static {p0, p1, p2}, Lcom/xyron/game/launcher/util/MegaDownload;->ivAt([BJ)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;J)V
    .registers 5

    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xyron/game/launcher/util/MegaDownload;->reportProgress(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method

.method private static decode64(Ljava/lang/String;)[B
    .registers 7

    .line 315
    const/16 v0, 0x2d

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 316
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    .line 317
    if-eqz v0, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "===="

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 319
    :cond_2f
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 320
    nop

    .line 321
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_6c

    .line 322
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 323
    const/16 v5, 0x3d

    if-ne v4, v5, :cond_47

    goto :goto_6c

    .line 324
    :cond_47
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 325
    if-ltz v4, :cond_64

    .line 326
    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v4

    .line 327
    add-int/lit8 v3, v3, 0x6

    .line 328
    const/16 v4, 0x8

    if-lt v3, v4, :cond_61

    .line 329
    add-int/lit8 v3, v3, -0x8

    .line 330
    shr-int v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 321
    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 325
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Base64 inv\u00e1lido"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 333
    :cond_6c
    :goto_6c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static download(Ljava/io/File;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;)V
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    move-object/from16 v11, p5

    invoke-static/range {p1 .. p1}, Lcom/xyron/game/launcher/util/MegaDownload;->isMegaLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39e

    .line 57
    new-instance v0, Ljava/net/URL;

    move-object/from16 v14, p1

    invoke-direct {v0, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 58
    sget-object v1, Lcom/xyron/game/launcher/util/MegaDownload;->PATH:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_396

    .line 60
    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xyron/game/launcher/util/MegaDownload;->decode64(Ljava/lang/String;)[B

    move-result-object v0

    .line 62
    array-length v2, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_38e

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://g.api.mega.co.nz/cs?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 66
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 67
    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 68
    const v3, 0xea60

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 69
    invoke-virtual {v2, v15}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 70
    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "Accept"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[{\"a\":\"g\",\"g\":1,\"p\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"}]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 73
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 74
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 75
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 76
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 77
    const/16 v4, 0x12c

    const/16 v5, 0xc8

    if-lt v1, v5, :cond_ba

    if-ge v1, v4, :cond_ba

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    goto :goto_be

    :cond_ba
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    .line 78
    :goto_be
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 81
    :goto_cd
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cd

    .line 82
    :cond_d7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 83
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 84
    if-lt v1, v5, :cond_375

    if-ge v1, v4, :cond_375

    .line 85
    sget-object v1, Lcom/xyron/game/launcher/util/MegaDownload;->URL_FIELD:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 86
    sget-object v2, Lcom/xyron/game/launcher/util/MegaDownload;->SIZE_FIELD:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 87
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_36d

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_36d

    .line 88
    invoke-virtual {v1, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "http://"

    const-string v4, "https://"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v2, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 90
    const-wide/16 v2, 0x0

    cmp-long v16, p2, v2

    if-lez v16, :cond_13e

    cmp-long v4, v9, p2

    if-eqz v4, :cond_13e

    .line 91
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tamanho do pacote MEGA n\u00e3o corresponde ao manifesto ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_13e
    invoke-static {v11, v2, v3, v9, v10}, Lcom/xyron/game/launcher/util/MegaDownload;->notifyProgress(Ljava/lang/Object;JJ)V

    .line 95
    const/16 v4, 0x10

    new-array v5, v4, [B

    .line 96
    new-array v6, v4, [B

    .line 97
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_149
    if-ge v8, v4, :cond_158

    aget-byte v12, v0, v8

    add-int/lit8 v13, v8, 0x10

    aget-byte v13, v0, v13

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_149

    .line 98
    :cond_158
    const/16 v8, 0x8

    invoke-static {v0, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v0, v5, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 102
    if-eqz v4, :cond_17e

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_17e

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_17e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "N\u00e3o foi poss\u00edvel criar a pasta tempor\u00e1ria."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_17e
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".mega.part"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1ae

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1ae

    new-instance v0, Ljava/io/IOException;

    const-string v1, "N\u00e3o foi poss\u00edvel limpar a tentativa anterior."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1ae
    invoke-static {v1, v9, v10}, Lcom/xyron/game/launcher/util/MegaDownload;->probeRanges(Ljava/lang/String;J)V

    .line 106
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v5, v4, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v5, v9, v10}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 108
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 110
    new-instance v12, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v12, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 111
    new-instance v13, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v13, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 112
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 113
    new-instance v3, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 114
    const-wide/32 v17, 0x1000000

    add-long v19, v9, v17

    const-wide/16 v21, 0x1

    sub-long v19, v19, v21

    move-object/from16 v23, v8

    div-long v7, v19, v17

    long-to-int v8, v7

    .line 115
    nop

    .line 117
    const/4 v7, 0x0

    :goto_1e2
    if-ge v7, v8, :cond_22f

    .line 118
    move-object/from16 v20, v6

    int-to-long v5, v7

    mul-long v5, v5, v17

    .line 119
    sub-long v14, v9, v21

    add-long v25, v5, v17

    move-object/from16 v28, v0

    move-object/from16 v27, v1

    sub-long v0, v25, v21

    :try_start_1f3
    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 120
    move v14, v7

    move-wide/from16 v30, v0

    move v1, v8

    move-wide/from16 v7, v30

    new-instance v0, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;
    :try_end_1ff
    .catchall {:try_start_1f3 .. :try_end_1ff} :catchall_229

    move-object/from16 v15, v20

    move-object/from16 v20, v2

    move-object v2, v4

    move-object v4, v15

    move-object v15, v3

    move-object/from16 v29, v23

    move-object/from16 v3, v28

    const/16 v24, 0x0

    move/from16 v23, v14

    move v14, v1

    move-object/from16 v1, v27

    :try_start_211
    invoke-direct/range {v0 .. v13}, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;-><init>(Ljava/lang/String;Ljava/io/File;Ljavax/crypto/spec/SecretKeySpec;[BJJJLjava/lang/Object;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-interface {v15, v0}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 117
    add-int/lit8 v7, v23, 0x1

    move-object v6, v4

    move v8, v14

    move-object v3, v15

    move-object/from16 v1, v27

    move-object/from16 v0, v28

    move-object/from16 v23, v29

    const/4 v15, 0x1

    move-object/from16 v14, p1

    move-object v4, v2

    move-object/from16 v2, v20

    goto :goto_1e2

    .line 135
    :catchall_229
    move-exception v0

    move-object/from16 v20, v2

    move-object v2, v4

    :goto_22d
    move-object v1, v0

    goto :goto_25c

    .line 123
    :cond_22f
    move-object/from16 v20, v2

    move-object v15, v3

    move-object v2, v4

    move v14, v8

    move-object/from16 v29, v23

    const/16 v24, 0x0

    const/4 v7, 0x0

    :goto_239
    if-ge v7, v14, :cond_289

    .line 124
    invoke-interface {v15}, Ljava/util/concurrent/CompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_23f
    .catchall {:try_start_211 .. :try_end_23f} :catchall_25a

    .line 126
    :try_start_23f
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_242
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_23f .. :try_end_242} :catch_246
    .catchall {:try_start_23f .. :try_end_242} :catchall_25a

    .line 131
    nop

    .line 123
    add-int/lit8 v7, v7, 0x1

    goto :goto_239

    .line 127
    :catch_246
    move-exception v0

    .line 128
    :try_start_247
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 129
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_252

    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 130
    :cond_252
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Falha em uma faixa do download MEGA."

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_25a
    .catchall {:try_start_247 .. :try_end_25a} :catchall_25a

    .line 135
    :catchall_25a
    move-exception v0

    goto :goto_22d

    :goto_25c
    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 137
    :try_start_25f
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_261
    .catch Ljava/lang/InterruptedException; {:try_start_25f .. :try_end_261} :catch_271

    move-object/from16 v3, v20

    const-wide/16 v4, 0x7d

    :try_start_265
    invoke-interface {v3, v4, v5, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_26e

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_26e
    .catch Ljava/lang/InterruptedException; {:try_start_265 .. :try_end_26e} :catch_26f

    .line 142
    :cond_26e
    goto :goto_27f

    .line 138
    :catch_26f
    move-exception v0

    goto :goto_274

    :catch_271
    move-exception v0

    move-object/from16 v3, v20

    .line 139
    :goto_274
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 141
    nop

    .line 143
    :goto_27f
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_288

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 144
    :cond_288
    throw v1

    .line 133
    :cond_289
    move-object/from16 v3, v20

    .line 135
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 137
    :try_start_28e
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d

    invoke-interface {v3, v4, v5, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_29b

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_29b
    .catch Ljava/lang/InterruptedException; {:try_start_28e .. :try_end_29b} :catch_35a

    .line 142
    :cond_29b
    nop

    .line 143
    nop

    .line 146
    new-instance v0, Ljava/io/RandomAccessFile;

    move-object/from16 v1, v29

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 148
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 149
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v3, v0, v9

    if-nez v3, :cond_334

    if-lez v16, :cond_2c1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v3, v0, p2

    if-nez v3, :cond_334

    .line 153
    :cond_2c1
    invoke-static/range {p1 .. p1}, Lcom/xyron/game/launcher/util/MegaDownload;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    if-eqz p4, :cond_306

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_306

    .line 155
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_306

    .line 156
    invoke-static {v2}, Lcom/xyron/game/launcher/util/MegaDownload;->sha256File(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2ea

    goto :goto_306

    .line 158
    :cond_2ea
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 159
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHA-256 do arquivo MEGA n\u00e3o corresponde ao manifesto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_306
    :goto_306
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_31d

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_31d

    .line 163
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 164
    new-instance v0, Ljava/io/IOException;

    const-string v1, "N\u00e3o foi poss\u00edvel substituir o ZIP tempor\u00e1rio."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_31d
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_329

    .line 170
    invoke-static {v11, v9, v10, v9, v10}, Lcom/xyron/game/launcher/util/MegaDownload;->notifyProgress(Ljava/lang/Object;JJ)V

    .line 171
    return-void

    .line 167
    :cond_329
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 168
    new-instance v0, Ljava/io/IOException;

    const-string v1, "N\u00e3o foi poss\u00edvel finalizar o ZIP MEGA."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_334
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 151
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tamanho do ZIP descriptografado inv\u00e1lido: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :catch_35a
    move-exception v0

    .line 139
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 141
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Download MEGA interrompido."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 87
    :cond_36d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MEGA n\u00e3o retornou um arquivo dispon\u00edvel."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_375
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEGA API retornou HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_38e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Chave MEGA inv\u00e1lida."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_396
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Identificador MEGA inv\u00e1lido."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_39e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Link MEGA p\u00fablico inv\u00e1lido."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static hex([B)Ljava/lang/String;
    .registers 8

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 352
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_28

    aget-byte v4, p0, v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const-string v4, "%02x"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 353
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isMegaLink(Ljava/lang/String;)Z
    .registers 4

    .line 44
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    const-string p0, "https"

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5a

    const-string p0, "mega.nz"

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5a

    .line 46
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_59

    invoke-virtual {v1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_59

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_59

    .line 47
    sget-object p0, Lcom/xyron/game/launcher/util/MegaDownload;->PATH:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_58

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_58

    sget-object p0, Lcom/xyron/game/launcher/util/MegaDownload;->KEY:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_5b

    if-eqz p0, :cond_58

    const/4 v0, 0x1

    :cond_58
    return v0

    .line 46
    :cond_59
    return v0

    .line 45
    :cond_5a
    return v0

    .line 49
    :catchall_5b
    move-exception p0

    .line 50
    return v0
.end method

.method private static ivAt([BJ)[B
    .registers 7

    .line 303
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 304
    const/4 v0, 0x4

    ushr-long/2addr p1, v0

    .line 305
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    const-wide/16 v1, 0x0

    if-ltz v0, :cond_28

    cmp-long v3, p1, v1

    if-eqz v3, :cond_28

    .line 306
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 307
    int-to-byte v2, v1

    aput-byte v2, p0, v0

    .line 308
    const/16 v2, 0x8

    ushr-long/2addr p1, v2

    ushr-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 305
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 310
    :cond_28
    cmp-long v0, p1, v1

    if-nez v0, :cond_2d

    .line 311
    return-object p0

    .line 310
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AES-CTR offset excede o contador suportado."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static notifyProgress(Ljava/lang/Object;JJ)V
    .registers 14

    .line 295
    if-nez p0, :cond_3

    return-void

    .line 297
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "update"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 298
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    aput-object v1, p3, v5

    aput-object p1, p3, v6

    aput-object p2, p3, v7

    const-string p1, "Baixando em paralelo do MEGA..."

    aput-object p1, p3, v8

    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_40

    goto :goto_41

    .line 299
    :catchall_40
    move-exception p0

    :goto_41
    nop

    .line 300
    return-void
.end method

.method private static probeRanges(Ljava/lang/String;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 257
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 258
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 259
    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v0, "User-Agent"

    const-string v1, "Android-MEGA-downloader"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "Range"

    const-string v1, "bytes=0-15"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :try_start_28
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 264
    const-string v1, "Content-Range"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    const/16 v2, 0xce

    if-ne v0, v2, :cond_79

    if-eqz v1, :cond_79

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes 0-15/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 268
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 269
    const/16 p2, 0x10

    new-array v0, p2, [B

    .line 270
    const/4 v1, 0x0

    .line 271
    :goto_5a
    if-ge v1, p2, :cond_67

    .line 272
    rsub-int/lit8 v2, v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 273
    if-gez v2, :cond_65

    goto :goto_67

    .line 274
    :cond_65
    add-int/2addr v1, v2

    .line 275
    goto :goto_5a

    .line 276
    :cond_67
    :goto_67
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6a
    .catchall {:try_start_28 .. :try_end_6a} :catchall_81

    .line 277
    if-ne v1, p2, :cond_71

    .line 279
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 280
    nop

    .line 281
    return-void

    .line 277
    :cond_71
    :try_start_71
    new-instance p1, Ljava/io/IOException;

    const-string p2, "N\u00e3o foi poss\u00edvel validar as faixas do CDN MEGA."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_79
    new-instance p1, Ljava/io/IOException;

    const-string p2, "O CDN MEGA n\u00e3o oferece download por faixas; pacote n\u00e3o foi iniciado."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_81
    .catchall {:try_start_71 .. :try_end_81} :catchall_81

    .line 279
    :catchall_81
    move-exception p1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 280
    throw p1
.end method

.method private static reportProgress(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;J)V
    .registers 11

    .line 284
    if-nez p0, :cond_3

    return-void

    .line 285
    :cond_3
    monitor-enter p0

    .line 286
    :try_start_4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 287
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x80000

    cmp-long p1, v2, v4

    if-gez p1, :cond_1a

    cmp-long p1, v0, p3

    if-gez p1, :cond_1a

    goto :goto_20

    .line 288
    :cond_1a
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 289
    invoke-static {p0, v0, v1, p3, p4}, Lcom/xyron/game/launcher/util/MegaDownload;->notifyProgress(Ljava/lang/Object;JJ)V

    .line 291
    :goto_20
    monitor-exit p0

    .line 292
    return-void

    .line 291
    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_24

    throw p1

    :catchall_24
    move-exception p1

    goto :goto_22
.end method

.method private static sha256(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/xyron/game/launcher/util/MegaDownload;->hex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static sha256File(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 341
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 342
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 343
    const/high16 p0, 0x100000

    new-array p0, p0, [B

    .line 345
    :goto_f
    :try_start_f
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_27

    goto :goto_f

    .line 346
    :cond_1b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 347
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/xyron/game/launcher/util/MegaDownload;->hex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 346
    :catchall_27
    move-exception p0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw p0
.end method
