.class final Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;
.super Ljava/lang/Object;
.source "MegaDownload.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/MegaDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RangeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseIv:[B

.field private final completedBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final end:J

.field private final keySpec:Ljavax/crypto/spec/SecretKeySpec;

.field private final lastReported:Ljava/util/concurrent/atomic/AtomicLong;

.field private final progress:Ljava/lang/Object;

.field private final start:J

.field private final temp:Ljava/io/File;

.field private final total:J

.field private final transferUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljavax/crypto/spec/SecretKeySpec;[BJJJLjava/lang/Object;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;)V
    .registers 14

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->transferUrl:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->temp:Ljava/io/File;

    .line 190
    iput-object p3, p0, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 191
    iput-object p4, p0, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->baseIv:[B

    .line 192
    iput-wide p5, p0, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->start:J

    .line 193
    iput-wide p7, p0, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->end:J

    .line 194
    iput-wide p9, p0, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->total:J

    .line 195
    iput-object p11, p0, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->progress:Ljava/lang/Object;

    .line 196
    iput-object p12, p0, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->completedBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 197
    iput-object p13, p0, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->lastReported:Ljava/util/concurrent/atomic/AtomicLong;

    .line 198
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    const-string v2, "Download MEGA interrompido."

    if-nez v0, :cond_20c

    .line 202
    new-instance v0, Ljava/net/URL;

    iget-object v3, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->transferUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 203
    const/16 v0, 0x7530

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 204
    const v0, 0x1d4c0

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 205
    const-string v0, "Accept-Encoding"

    const-string v4, "identity"

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "User-Agent"

    const-string v4, "Android-MEGA-downloader"

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->start:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->end:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Range"

    invoke-virtual {v3, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    nop

    .line 209
    nop

    .line 211
    :try_start_5d
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 212
    const/16 v6, 0xce

    if-ne v0, v6, :cond_1cf

    .line 213
    const-string v0, "Content-Range"

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->start:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->end:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    if-eqz v0, :cond_1c4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 216
    const-string v0, "AES/CTR/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 217
    iget-object v4, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v7, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->baseIv:[B

    iget-wide v8, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->start:J

    # invokes: Lcom/xyron/game/launcher/util/MegaDownload;->ivAt([BJ)[B
    invoke-static {v7, v8, v9}, Lcom/xyron/game/launcher/util/MegaDownload;->access$000([BJ)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 218
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_b5
    .catchall {:try_start_5d .. :try_end_b5} :catchall_1f3

    .line 219
    :try_start_b5
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v7, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->temp:Ljava/io/File;

    const-string v8, "rw"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_be
    .catchall {:try_start_b5 .. :try_end_be} :catchall_1b9

    .line 220
    :try_start_be
    iget-wide v7, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->start:J

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 221
    const/high16 v7, 0x40000

    new-array v7, v7, [B

    .line 222
    iget-wide v8, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->end:J

    iget-wide v10, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->start:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    .line 223
    nop

    .line 224
    const-wide/16 v10, 0x0

    move-wide v12, v10

    .line 226
    :goto_d3
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_148

    .line 227
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v15
    :try_end_e2
    .catchall {:try_start_be .. :try_end_e2} :catchall_1b2

    if-nez v15, :cond_13e

    .line 228
    move-object/from16 v16, v6

    const/4 v15, 0x0

    int-to-long v5, v14

    add-long/2addr v10, v5

    .line 229
    cmp-long v5, v10, v8

    if-gtz v5, :cond_130

    .line 230
    const/4 v5, 0x0

    :try_start_ee
    invoke-virtual {v0, v7, v5, v14}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v5

    .line 231
    if-eqz v5, :cond_118

    array-length v6, v5
    :try_end_f5
    .catchall {:try_start_ee .. :try_end_f5} :catchall_127

    if-lez v6, :cond_118

    .line 232
    move-object/from16 v6, v16

    :try_start_f9
    invoke-virtual {v6, v5}, Ljava/io/RandomAccessFile;->write([B)V

    .line 233
    array-length v14, v5
    :try_end_fd
    .catchall {:try_start_f9 .. :try_end_fd} :catchall_1b2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    int-to-long v3, v14

    add-long/2addr v12, v3

    .line 234
    :try_start_103
    iget-object v3, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->completedBytes:Ljava/util/concurrent/atomic/AtomicLong;

    array-length v4, v5

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 235
    iget-object v3, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->progress:Ljava/lang/Object;

    iget-object v4, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->completedBytes:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v5, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->lastReported:Ljava/util/concurrent/atomic/AtomicLong;

    move-wide/from16 v18, v10

    iget-wide v10, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->total:J

    # invokes: Lcom/xyron/game/launcher/util/MegaDownload;->reportProgress(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;J)V
    invoke-static {v3, v4, v5, v10, v11}, Lcom/xyron/game/launcher/util/MegaDownload;->access$100(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;J)V

    goto :goto_120

    .line 231
    :cond_118
    move-object/from16 v17, v4

    move-wide/from16 v18, v10

    move-object/from16 v6, v16

    move-object/from16 v16, v3

    .line 237
    :goto_120
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-wide/from16 v10, v18

    goto :goto_d3

    .line 247
    :catchall_127
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v6, v16

    move-object/from16 v16, v3

    goto/16 :goto_1b7

    .line 229
    :cond_130
    move-object/from16 v17, v4

    move-object/from16 v6, v16

    move-object/from16 v16, v3

    new-instance v0, Ljava/io/IOException;

    const-string v2, "CDN MEGA enviou bytes al\u00e9m da faixa solicitada."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_13e
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_148
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    const/4 v15, 0x0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    .line 239
    if-eqz v0, :cond_16e

    array-length v2, v0

    if-lez v2, :cond_16e

    .line 240
    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 241
    array-length v2, v0

    int-to-long v2, v2

    add-long/2addr v12, v2

    .line 242
    iget-object v2, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->completedBytes:Ljava/util/concurrent/atomic/AtomicLong;

    array-length v0, v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 243
    iget-object v0, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->progress:Ljava/lang/Object;

    iget-object v2, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->completedBytes:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->lastReported:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v4, v1, Lcom/xyron/game/launcher/util/MegaDownload$RangeTask;->total:J

    # invokes: Lcom/xyron/game/launcher/util/MegaDownload;->reportProgress(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;J)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/xyron/game/launcher/util/MegaDownload;->access$100(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;J)V
    :try_end_16e
    .catchall {:try_start_103 .. :try_end_16e} :catchall_1b0

    .line 245
    :cond_16e
    cmp-long v0, v10, v8

    if-nez v0, :cond_187

    cmp-long v0, v12, v8

    if-nez v0, :cond_187

    .line 247
    if-eqz v17, :cond_17d

    :try_start_178
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_17b} :catch_17c

    goto :goto_17d

    :catch_17c
    move-exception v0

    .line 248
    :cond_17d
    :goto_17d
    :try_start_17d
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_180} :catch_181

    goto :goto_182

    :catch_181
    move-exception v0

    .line 249
    :goto_182
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 250
    nop

    .line 251
    return-object v15

    .line 245
    :cond_187
    :try_start_187
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Faixa MEGA incompleta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " de "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b0
    .catchall {:try_start_187 .. :try_end_1b0} :catchall_1b0

    .line 247
    :catchall_1b0
    move-exception v0

    goto :goto_1b7

    :catchall_1b2
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    :goto_1b7
    move-object v2, v0

    goto :goto_1c1

    :catchall_1b9
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    const/4 v15, 0x0

    move-object v2, v0

    move-object v6, v15

    :goto_1c1
    move-object/from16 v5, v17

    goto :goto_1fa

    .line 215
    :cond_1c4
    move-object/from16 v16, v3

    const/4 v15, 0x0

    :try_start_1c7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Faixa retornada pelo CDN MEGA \u00e9 inv\u00e1lida."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1cf
    move-object/from16 v16, v3

    const/4 v15, 0x0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDN MEGA n\u00e3o aceitou faixa paralela (HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1f1
    .catchall {:try_start_1c7 .. :try_end_1f1} :catchall_1f1

    .line 247
    :catchall_1f1
    move-exception v0

    goto :goto_1f7

    :catchall_1f3
    move-exception v0

    move-object/from16 v16, v3

    const/4 v15, 0x0

    :goto_1f7
    move-object v2, v0

    move-object v5, v15

    move-object v6, v5

    :goto_1fa
    if-eqz v5, :cond_201

    :try_start_1fc
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1ff
    .catch Ljava/io/IOException; {:try_start_1fc .. :try_end_1ff} :catch_200

    goto :goto_201

    :catch_200
    move-exception v0

    .line 248
    :cond_201
    :goto_201
    if-eqz v6, :cond_208

    :try_start_203
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_206
    .catch Ljava/io/IOException; {:try_start_203 .. :try_end_206} :catch_207

    goto :goto_208

    :catch_207
    move-exception v0

    .line 249
    :cond_208
    :goto_208
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 250
    throw v2

    .line 201
    :cond_20c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
