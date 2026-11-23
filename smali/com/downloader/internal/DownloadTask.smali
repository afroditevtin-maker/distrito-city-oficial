.class public Lcom/downloader/internal/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final MIN_BYTES_FOR_SYNC:J = 0x10000L

.field private static final TIME_GAP_FOR_SYNC:J = 0x7d0L


# instance fields
.field private eTag:Ljava/lang/String;

.field private httpClient:Lcom/downloader/httpclient/HttpClient;

.field private inputStream:Ljava/io/InputStream;

.field private isResumeSupported:Z

.field private lastSyncBytes:J

.field private lastSyncTime:J

.field private outputStream:Lcom/downloader/internal/stream/FileDownloadOutputStream;

.field private progressHandler:Lcom/downloader/handler/ProgressHandler;

.field private final request:Lcom/downloader/request/DownloadRequest;

.field private responseCode:I

.field private tempPath:Ljava/lang/String;

.field private totalBytes:J


# direct methods
.method private constructor <init>(Lcom/downloader/request/DownloadRequest;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    return-void
.end method

.method private checkIfFreshStartRequiredAndStart(Lcom/downloader/database/DownloadModel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 249
    iget v0, p0, Lcom/downloader/internal/DownloadTask;->responseCode:I

    const/16 v1, 0x1a0

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/downloader/internal/DownloadTask;->isETagChanged(Lcom/downloader/database/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 251
    invoke-direct {p0}, Lcom/downloader/internal/DownloadTask;->removeNoMoreNeededModelFromDatabase()V

    .line 253
    :cond_2
    invoke-direct {p0}, Lcom/downloader/internal/DownloadTask;->deleteTempFile()V

    .line 254
    iget-object p1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/downloader/request/DownloadRequest;->setDownloadedBytes(J)V

    .line 255
    iget-object p1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {p1, v0, v1}, Lcom/downloader/request/DownloadRequest;->setTotalBytes(J)V

    .line 256
    invoke-static {}, Lcom/downloader/internal/ComponentHolder;->getInstance()Lcom/downloader/internal/ComponentHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/downloader/internal/ComponentHolder;->getHttpClient()Lcom/downloader/httpclient/HttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/downloader/internal/DownloadTask;->httpClient:Lcom/downloader/httpclient/HttpClient;

    .line 257
    iget-object v0, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-interface {p1, v0}, Lcom/downloader/httpclient/HttpClient;->connect(Lcom/downloader/request/DownloadRequest;)V

    .line 258
    iget-object p1, p0, Lcom/downloader/internal/DownloadTask;->httpClient:Lcom/downloader/httpclient/HttpClient;

    iget-object v0, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-static {p1, v0}, Lcom/downloader/utils/Utils;->getRedirectedConnectionIfAny(Lcom/downloader/httpclient/HttpClient;Lcom/downloader/request/DownloadRequest;)Lcom/downloader/httpclient/HttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/downloader/internal/DownloadTask;->httpClient:Lcom/downloader/httpclient/HttpClient;

    .line 259
    invoke-interface {p1}, Lcom/downloader/httpclient/HttpClient;->getResponseCode()I

    move-result p1

    iput p1, p0, Lcom/downloader/internal/DownloadTask;->responseCode:I

    const/4 p1, 0x1

    return p1
.end method

.method private closeAllSafely(Lcom/downloader/internal/stream/FileDownloadOutputStream;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/downloader/internal/DownloadTask;->httpClient:Lcom/downloader/httpclient/HttpClient;

    if-eqz v0, :cond_0

    .line 335
    :try_start_0
    invoke-interface {v0}, Lcom/downloader/httpclient/HttpClient;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/downloader/internal/DownloadTask;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 342
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    .line 350
    :try_start_2
    invoke-direct {p0, p1}, Lcom/downloader/internal/DownloadTask;->sync(Lcom/downloader/internal/stream/FileDownloadOutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 352
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_2
    if-eqz p1, :cond_2

    .line 358
    :try_start_4
    invoke-interface {p1}, Lcom/downloader/internal/stream/FileDownloadOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 360
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 362
    :cond_2
    :goto_3
    throw v0

    :cond_3
    :goto_4
    if-eqz p1, :cond_4

    .line 358
    :try_start_5
    invoke-interface {p1}, Lcom/downloader/internal/stream/FileDownloadOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 360
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_5
    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 371
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 372
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 380
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_0
    nop

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 385
    :catch_1
    :cond_1
    throw p1

    :catch_2
    nop

    :goto_2
    if-eqz v1, :cond_2

    .line 380
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 387
    :catch_3
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static create(Lcom/downloader/request/DownloadRequest;)Lcom/downloader/internal/DownloadTask;
    .locals 1

    .line 50
    new-instance v0, Lcom/downloader/internal/DownloadTask;

    invoke-direct {v0, p0}, Lcom/downloader/internal/DownloadTask;-><init>(Lcom/downloader/request/DownloadRequest;)V

    return-object v0
.end method

.method private createAndInsertNewModel()V
    .locals 3

    .line 275
    new-instance v0, Lcom/downloader/database/DownloadModel;

    invoke-direct {v0}, Lcom/downloader/database/DownloadModel;-><init>()V

    .line 276
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getDownloadId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/downloader/database/DownloadModel;->setId(I)V

    .line 277
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/downloader/database/DownloadModel;->setUrl(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->eTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/downloader/database/DownloadModel;->setETag(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/downloader/database/DownloadModel;->setDirPath(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/downloader/database/DownloadModel;->setFileName(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/downloader/database/DownloadModel;->setDownloadedBytes(J)V

    .line 282
    iget-wide v1, p0, Lcom/downloader/internal/DownloadTask;->totalBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/downloader/database/DownloadModel;->setTotalBytes(J)V

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/downloader/database/DownloadModel;->setLastModifiedAt(J)V

    .line 284
    invoke-static {}, Lcom/downloader/internal/ComponentHolder;->getInstance()Lcom/downloader/internal/ComponentHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/downloader/internal/ComponentHolder;->getDbHelper()Lcom/downloader/database/DbHelper;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/downloader/database/DbHelper;->insert(Lcom/downloader/database/DownloadModel;)V

    return-void
.end method

.method private deleteTempFile()V
    .locals 2

    .line 231
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->tempPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private getDownloadModelIfAlreadyPresentInDatabase()Lcom/downloader/database/DownloadModel;
    .locals 2

    .line 271
    invoke-static {}, Lcom/downloader/internal/ComponentHolder;->getInstance()Lcom/downloader/internal/ComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/internal/ComponentHolder;->getDbHelper()Lcom/downloader/database/DbHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getDownloadId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/downloader/database/DbHelper;->find(I)Lcom/downloader/database/DownloadModel;

    move-result-object v0

    return-object v0
.end method

.method private isETagChanged(Lcom/downloader/database/DownloadModel;)Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/downloader/internal/DownloadTask;->eTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/downloader/database/DownloadModel;->getETag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p1}, Lcom/downloader/database/DownloadModel;->getETag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/downloader/internal/DownloadTask;->eTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSuccessful()Z
    .locals 2

    .line 239
    iget v0, p0, Lcom/downloader/internal/DownloadTask;->responseCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeNoMoreNeededModelFromDatabase()V
    .locals 2

    .line 288
    invoke-static {}, Lcom/downloader/internal/ComponentHolder;->getInstance()Lcom/downloader/internal/ComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/internal/ComponentHolder;->getDbHelper()Lcom/downloader/database/DbHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getDownloadId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/downloader/database/DbHelper;->remove(I)V

    return-void
.end method

.method private sendProgress()V
    .locals 6

    .line 292
    iget-object v0, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v0}, Lcom/downloader/request/DownloadRequest;->getStatus()Lcom/downloader/Status;

    move-result-object v0

    sget-object v1, Lcom/downloader/Status;->CANCELLED:Lcom/downloader/Status;

    if-eq v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/downloader/internal/DownloadTask;->progressHandler:Lcom/downloader/handler/ProgressHandler;

    if-eqz v0, :cond_0

    .line 294
    new-instance v1, Lcom/downloader/Progress;

    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    .line 296
    invoke-virtual {v2}, Lcom/downloader/request/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/downloader/internal/DownloadTask;->totalBytes:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/downloader/Progress;-><init>(JJ)V

    const/4 v2, 0x1

    .line 295
    invoke-virtual {v0, v2, v1}, Lcom/downloader/handler/ProgressHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private setResumeSupportedOrNot()V
    .locals 2

    .line 244
    iget v0, p0, Lcom/downloader/internal/DownloadTask;->responseCode:I

    const/16 v1, 0xce

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/downloader/internal/DownloadTask;->isResumeSupported:Z

    return-void
.end method

.method private sync(Lcom/downloader/internal/stream/FileDownloadOutputStream;)V
    .locals 6

    .line 317
    :try_start_0
    invoke-interface {p1}, Lcom/downloader/internal/stream/FileDownloadOutputStream;->flushAndSync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    iget-boolean p1, p0, Lcom/downloader/internal/DownloadTask;->isResumeSupported:Z

    if-eqz p1, :cond_0

    .line 324
    invoke-static {}, Lcom/downloader/internal/ComponentHolder;->getInstance()Lcom/downloader/internal/ComponentHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/downloader/internal/ComponentHolder;->getDbHelper()Lcom/downloader/database/DbHelper;

    move-result-object v0

    iget-object p1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    .line 325
    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->getDownloadId()I

    move-result v1

    iget-object p1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    .line 326
    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v2

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 325
    invoke-interface/range {v0 .. v5}, Lcom/downloader/database/DbHelper;->updateProgress(IJJ)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 321
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private syncIfRequired(Lcom/downloader/internal/stream/FileDownloadOutputStream;)V
    .locals 11

    .line 303
    iget-object v0, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v0}, Lcom/downloader/request/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v0

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 305
    iget-wide v4, p0, Lcom/downloader/internal/DownloadTask;->lastSyncBytes:J

    sub-long v4, v0, v4

    .line 306
    iget-wide v6, p0, Lcom/downloader/internal/DownloadTask;->lastSyncTime:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0x10000

    cmp-long v10, v4, v8

    if-lez v10, :cond_0

    const-wide/16 v4, 0x7d0

    cmp-long v8, v6, v4

    if-lez v8, :cond_0

    .line 308
    invoke-direct {p0, p1}, Lcom/downloader/internal/DownloadTask;->sync(Lcom/downloader/internal/stream/FileDownloadOutputStream;)V

    .line 309
    iput-wide v0, p0, Lcom/downloader/internal/DownloadTask;->lastSyncBytes:J

    .line 310
    iput-wide v2, p0, Lcom/downloader/internal/DownloadTask;->lastSyncTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method run()Lcom/downloader/Response;
    .locals 10

    .line 55
    new-instance v0, Lcom/downloader/Response;

    invoke-direct {v0}, Lcom/downloader/Response;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getStatus()Lcom/downloader/Status;

    move-result-object v1

    sget-object v2, Lcom/downloader/Status;->CANCELLED:Lcom/downloader/Status;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 58
    invoke-virtual {v0, v3}, Lcom/downloader/Response;->setCancelled(Z)V

    return-object v0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getStatus()Lcom/downloader/Status;

    move-result-object v1

    sget-object v2, Lcom/downloader/Status;->PAUSED:Lcom/downloader/Status;

    if-ne v1, v2, :cond_1

    .line 61
    invoke-virtual {v0, v3}, Lcom/downloader/Response;->setPaused(Z)V

    return-object v0

    .line 67
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getOnProgressListener()Lcom/downloader/OnProgressListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 68
    new-instance v1, Lcom/downloader/handler/ProgressHandler;

    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v2}, Lcom/downloader/request/DownloadRequest;->getOnProgressListener()Lcom/downloader/OnProgressListener;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/downloader/handler/ProgressHandler;-><init>(Lcom/downloader/OnProgressListener;)V

    iput-object v1, p0, Lcom/downloader/internal/DownloadTask;->progressHandler:Lcom/downloader/handler/ProgressHandler;

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getDirPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v2}, Lcom/downloader/request/DownloadRequest;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/downloader/utils/Utils;->getTempPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/downloader/internal/DownloadTask;->tempPath:Ljava/lang/String;

    .line 73
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->tempPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/downloader/internal/DownloadTask;->getDownloadModelIfAlreadyPresentInDatabase()Lcom/downloader/database/DownloadModel;

    move-result-object v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_4

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 79
    iget-object v7, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v2}, Lcom/downloader/database/DownloadModel;->getTotalBytes()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/downloader/request/DownloadRequest;->setTotalBytes(J)V

    .line 80
    iget-object v7, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v2}, Lcom/downloader/database/DownloadModel;->getDownloadedBytes()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/downloader/request/DownloadRequest;->setDownloadedBytes(J)V

    goto :goto_0

    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/downloader/internal/DownloadTask;->removeNoMoreNeededModelFromDatabase()V

    .line 83
    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v2, v5, v6}, Lcom/downloader/request/DownloadRequest;->setDownloadedBytes(J)V

    .line 84
    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v2, v5, v6}, Lcom/downloader/request/DownloadRequest;->setTotalBytes(J)V

    move-object v2, v4

    .line 89
    :cond_4
    :goto_0
    invoke-static {}, Lcom/downloader/internal/ComponentHolder;->getInstance()Lcom/downloader/internal/ComponentHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/downloader/internal/ComponentHolder;->getHttpClient()Lcom/downloader/httpclient/HttpClient;

    move-result-object v7

    iput-object v7, p0, Lcom/downloader/internal/DownloadTask;->httpClient:Lcom/downloader/httpclient/HttpClient;

    .line 91
    iget-object v8, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-interface {v7, v8}, Lcom/downloader/httpclient/HttpClient;->connect(Lcom/downloader/request/DownloadRequest;)V

    .line 93
    iget-object v7, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v7}, Lcom/downloader/request/DownloadRequest;->getStatus()Lcom/downloader/Status;

    move-result-object v7

    sget-object v8, Lcom/downloader/Status;->CANCELLED:Lcom/downloader/Status;

    if-ne v7, v8, :cond_5

    .line 94
    invoke-virtual {v0, v3}, Lcom/downloader/Response;->setCancelled(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :goto_1
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->outputStream:Lcom/downloader/internal/stream/FileDownloadOutputStream;

    invoke-direct {p0, v1}, Lcom/downloader/internal/DownloadTask;->closeAllSafely(Lcom/downloader/internal/stream/FileDownloadOutputStream;)V

    return-object v0

    .line 96
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v7}, Lcom/downloader/request/DownloadRequest;->getStatus()Lcom/downloader/Status;

    move-result-object v7

    sget-object v8, Lcom/downloader/Status;->PAUSED:Lcom/downloader/Status;

    if-ne v7, v8, :cond_6

    .line 97
    invoke-virtual {v0, v3}, Lcom/downloader/Response;->setPaused(Z)V

    goto :goto_1

    .line 101
    :cond_6
    iget-object v7, p0, Lcom/downloader/internal/DownloadTask;->httpClient:Lcom/downloader/httpclient/HttpClient;

    iget-object v8, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-static {v7, v8}, Lcom/downloader/utils/Utils;->getRedirectedConnectionIfAny(Lcom/downloader/httpclient/HttpClient;Lcom/downloader/request/DownloadRequest;)Lcom/downloader/httpclient/HttpClient;

    move-result-object v7

    iput-object v7, p0, Lcom/downloader/internal/DownloadTask;->httpClient:Lcom/downloader/httpclient/HttpClient;

    .line 103
    invoke-interface {v7}, Lcom/downloader/httpclient/HttpClient;->getResponseCode()I

    move-result v7

    iput v7, p0, Lcom/downloader/internal/DownloadTask;->responseCode:I

    .line 105
    iget-object v7, p0, Lcom/downloader/internal/DownloadTask;->httpClient:Lcom/downloader/httpclient/HttpClient;

    const-string v8, "ETag"

    invoke-interface {v7, v8}, Lcom/downloader/httpclient/HttpClient;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/downloader/internal/DownloadTask;->eTag:Ljava/lang/String;

    .line 107
    invoke-direct {p0, v2}, Lcom/downloader/internal/DownloadTask;->checkIfFreshStartRequiredAndStart(Lcom/downloader/database/DownloadModel;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    move-object v4, v2

    .line 111
    :goto_2
    invoke-direct {p0}, Lcom/downloader/internal/DownloadTask;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_8

    .line 112
    new-instance v1, Lcom/downloader/Error;

    invoke-direct {v1}, Lcom/downloader/Error;-><init>()V

    .line 113
    invoke-virtual {v1, v3}, Lcom/downloader/Error;->setServerError(Z)V

    .line 114
    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->httpClient:Lcom/downloader/httpclient/HttpClient;

    invoke-interface {v2}, Lcom/downloader/httpclient/HttpClient;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/downloader/internal/DownloadTask;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/downloader/Error;->setServerErrorMessage(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->httpClient:Lcom/downloader/httpclient/HttpClient;

    invoke-interface {v2}, Lcom/downloader/httpclient/HttpClient;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/downloader/Error;->setHeaderFields(Ljava/util/Map;)V

    .line 116
    iget v2, p0, Lcom/downloader/internal/DownloadTask;->responseCode:I

    invoke-virtual {v1, v2}, Lcom/downloader/Error;->setResponseCode(I)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/downloader/Response;->setError(Lcom/downloader/Error;)V

    goto :goto_1

    .line 121
    :cond_8
    invoke-direct {p0}, Lcom/downloader/internal/DownloadTask;->setResumeSupportedOrNot()V

    .line 123
    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v2}, Lcom/downloader/request/DownloadRequest;->getTotalBytes()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/downloader/internal/DownloadTask;->totalBytes:J

    .line 125
    iget-boolean v2, p0, Lcom/downloader/internal/DownloadTask;->isResumeSupported:Z

    if-nez v2, :cond_9

    .line 126
    invoke-direct {p0}, Lcom/downloader/internal/DownloadTask;->deleteTempFile()V

    .line 129
    :cond_9
    iget-wide v7, p0, Lcom/downloader/internal/DownloadTask;->totalBytes:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_a

    .line 130
    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->httpClient:Lcom/downloader/httpclient/HttpClient;

    invoke-interface {v2}, Lcom/downloader/httpclient/HttpClient;->getContentLength()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/downloader/internal/DownloadTask;->totalBytes:J

    .line 131
    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v2, v7, v8}, Lcom/downloader/request/DownloadRequest;->setTotalBytes(J)V

    .line 134
    :cond_a
    iget-boolean v2, p0, Lcom/downloader/internal/DownloadTask;->isResumeSupported:Z

    if-eqz v2, :cond_b

    if-nez v4, :cond_b

    .line 135
    invoke-direct {p0}, Lcom/downloader/internal/DownloadTask;->createAndInsertNewModel()V

    .line 138
    :cond_b
    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v2}, Lcom/downloader/request/DownloadRequest;->getStatus()Lcom/downloader/Status;

    move-result-object v2

    sget-object v4, Lcom/downloader/Status;->CANCELLED:Lcom/downloader/Status;

    if-ne v2, v4, :cond_c

    .line 139
    invoke-virtual {v0, v3}, Lcom/downloader/Response;->setCancelled(Z)V

    goto/16 :goto_1

    .line 141
    :cond_c
    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v2}, Lcom/downloader/request/DownloadRequest;->getStatus()Lcom/downloader/Status;

    move-result-object v2

    sget-object v4, Lcom/downloader/Status;->PAUSED:Lcom/downloader/Status;

    if-ne v2, v4, :cond_d

    .line 142
    invoke-virtual {v0, v3}, Lcom/downloader/Response;->setPaused(Z)V

    goto/16 :goto_1

    .line 146
    :cond_d
    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v2}, Lcom/downloader/request/DownloadRequest;->deliverStartEvent()V

    .line 148
    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->httpClient:Lcom/downloader/httpclient/HttpClient;

    invoke-interface {v2}, Lcom/downloader/httpclient/HttpClient;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/downloader/internal/DownloadTask;->inputStream:Ljava/io/InputStream;

    const/16 v2, 0x1000

    .line 150
    new-array v4, v2, [B

    .line 152
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_f

    .line 153
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_e

    .line 154
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    goto :goto_3

    .line 160
    :cond_e
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 164
    :cond_f
    :goto_3
    invoke-static {v1}, Lcom/downloader/internal/stream/FileDownloadRandomAccessFile;->create(Ljava/io/File;)Lcom/downloader/internal/stream/FileDownloadOutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/downloader/internal/DownloadTask;->outputStream:Lcom/downloader/internal/stream/FileDownloadOutputStream;

    .line 166
    iget-boolean v1, p0, Lcom/downloader/internal/DownloadTask;->isResumeSupported:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-eqz v1, :cond_10

    .line 167
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->outputStream:Lcom/downloader/internal/stream/FileDownloadOutputStream;

    iget-object v5, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v5}, Lcom/downloader/request/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v5

    invoke-interface {v1, v5, v6}, Lcom/downloader/internal/stream/FileDownloadOutputStream;->seek(J)V

    .line 170
    :cond_10
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getStatus()Lcom/downloader/Status;

    move-result-object v1

    sget-object v5, Lcom/downloader/Status;->CANCELLED:Lcom/downloader/Status;

    if-ne v1, v5, :cond_11

    .line 171
    invoke-virtual {v0, v3}, Lcom/downloader/Response;->setCancelled(Z)V

    goto/16 :goto_1

    .line 173
    :cond_11
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getStatus()Lcom/downloader/Status;

    move-result-object v1

    sget-object v5, Lcom/downloader/Status;->PAUSED:Lcom/downloader/Status;

    if-ne v1, v5, :cond_12

    .line 174
    invoke-virtual {v0, v3}, Lcom/downloader/Response;->setPaused(Z)V

    goto/16 :goto_1

    .line 180
    :cond_12
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->inputStream:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_13

    .line 205
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getDirPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v2}, Lcom/downloader/request/DownloadRequest;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/downloader/utils/Utils;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/downloader/internal/DownloadTask;->tempPath:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/downloader/utils/Utils;->renameFileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, v3}, Lcom/downloader/Response;->setSuccessful(Z)V

    .line 211
    iget-boolean v1, p0, Lcom/downloader/internal/DownloadTask;->isResumeSupported:Z

    if-eqz v1, :cond_16

    .line 212
    invoke-direct {p0}, Lcom/downloader/internal/DownloadTask;->removeNoMoreNeededModelFromDatabase()V

    goto :goto_5

    .line 186
    :cond_13
    iget-object v6, p0, Lcom/downloader/internal/DownloadTask;->outputStream:Lcom/downloader/internal/stream/FileDownloadOutputStream;

    invoke-interface {v6, v4, v5, v1}, Lcom/downloader/internal/stream/FileDownloadOutputStream;->write([BII)V

    .line 188
    iget-object v5, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v5}, Lcom/downloader/request/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v6

    int-to-long v8, v1

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/downloader/request/DownloadRequest;->setDownloadedBytes(J)V

    .line 190
    invoke-direct {p0}, Lcom/downloader/internal/DownloadTask;->sendProgress()V

    .line 192
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->outputStream:Lcom/downloader/internal/stream/FileDownloadOutputStream;

    invoke-direct {p0, v1}, Lcom/downloader/internal/DownloadTask;->syncIfRequired(Lcom/downloader/internal/stream/FileDownloadOutputStream;)V

    .line 194
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getStatus()Lcom/downloader/Status;

    move-result-object v1

    sget-object v5, Lcom/downloader/Status;->CANCELLED:Lcom/downloader/Status;

    if-ne v1, v5, :cond_14

    .line 195
    invoke-virtual {v0, v3}, Lcom/downloader/Response;->setCancelled(Z)V

    goto/16 :goto_1

    .line 197
    :cond_14
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getStatus()Lcom/downloader/Status;

    move-result-object v1

    sget-object v5, Lcom/downloader/Status;->PAUSED:Lcom/downloader/Status;

    if-ne v1, v5, :cond_12

    .line 198
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->outputStream:Lcom/downloader/internal/stream/FileDownloadOutputStream;

    invoke-direct {p0, v1}, Lcom/downloader/internal/DownloadTask;->sync(Lcom/downloader/internal/stream/FileDownloadOutputStream;)V

    .line 199
    invoke-virtual {v0, v3}, Lcom/downloader/Response;->setPaused(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 216
    :goto_4
    :try_start_2
    iget-boolean v2, p0, Lcom/downloader/internal/DownloadTask;->isResumeSupported:Z

    if-nez v2, :cond_15

    .line 217
    invoke-direct {p0}, Lcom/downloader/internal/DownloadTask;->deleteTempFile()V

    .line 219
    :cond_15
    new-instance v2, Lcom/downloader/Error;

    invoke-direct {v2}, Lcom/downloader/Error;-><init>()V

    .line 220
    invoke-virtual {v2, v3}, Lcom/downloader/Error;->setConnectionError(Z)V

    .line 221
    invoke-virtual {v2, v1}, Lcom/downloader/Error;->setConnectionException(Ljava/lang/Throwable;)V

    .line 222
    invoke-virtual {v0, v2}, Lcom/downloader/Response;->setError(Lcom/downloader/Error;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    :cond_16
    :goto_5
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->outputStream:Lcom/downloader/internal/stream/FileDownloadOutputStream;

    invoke-direct {p0, v1}, Lcom/downloader/internal/DownloadTask;->closeAllSafely(Lcom/downloader/internal/stream/FileDownloadOutputStream;)V

    return-object v0

    :goto_6
    iget-object v1, p0, Lcom/downloader/internal/DownloadTask;->outputStream:Lcom/downloader/internal/stream/FileDownloadOutputStream;

    invoke-direct {p0, v1}, Lcom/downloader/internal/DownloadTask;->closeAllSafely(Lcom/downloader/internal/stream/FileDownloadOutputStream;)V

    .line 225
    throw v0
.end method
