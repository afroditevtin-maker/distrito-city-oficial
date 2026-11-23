.class public Lcom/downloader/request/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# instance fields
.field private connectTimeout:I

.field private dirPath:Ljava/lang/String;

.field private downloadId:I

.field private downloadedBytes:J

.field private fileName:Ljava/lang/String;

.field private future:Ljava/util/concurrent/Future;

.field private headerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private onCancelListener:Lcom/downloader/OnCancelListener;

.field private onDownloadListener:Lcom/downloader/OnDownloadListener;

.field private onPauseListener:Lcom/downloader/OnPauseListener;

.field private onProgressListener:Lcom/downloader/OnProgressListener;

.field private onStartOrResumeListener:Lcom/downloader/OnStartOrResumeListener;

.field private priority:Lcom/downloader/Priority;

.field private readTimeout:I

.field private sequenceNumber:I

.field private status:Lcom/downloader/Status;

.field private tag:Ljava/lang/Object;

.field private totalBytes:J

.field private url:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/downloader/request/DownloadRequestBuilder;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-object v0, p1, Lcom/downloader/request/DownloadRequestBuilder;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/downloader/request/DownloadRequest;->url:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/downloader/request/DownloadRequestBuilder;->dirPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/downloader/request/DownloadRequest;->dirPath:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/downloader/request/DownloadRequestBuilder;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/downloader/request/DownloadRequest;->fileName:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/downloader/request/DownloadRequestBuilder;->headerMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/downloader/request/DownloadRequest;->headerMap:Ljava/util/HashMap;

    .line 54
    iget-object v0, p1, Lcom/downloader/request/DownloadRequestBuilder;->priority:Lcom/downloader/Priority;

    iput-object v0, p0, Lcom/downloader/request/DownloadRequest;->priority:Lcom/downloader/Priority;

    .line 55
    iget-object v0, p1, Lcom/downloader/request/DownloadRequestBuilder;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lcom/downloader/request/DownloadRequest;->tag:Ljava/lang/Object;

    .line 57
    iget v0, p1, Lcom/downloader/request/DownloadRequestBuilder;->readTimeout:I

    if-eqz v0, :cond_0

    .line 58
    iget v0, p1, Lcom/downloader/request/DownloadRequestBuilder;->readTimeout:I

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/downloader/request/DownloadRequest;->getReadTimeoutFromConfig()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/downloader/request/DownloadRequest;->readTimeout:I

    .line 61
    iget v0, p1, Lcom/downloader/request/DownloadRequestBuilder;->connectTimeout:I

    if-eqz v0, :cond_1

    .line 62
    iget v0, p1, Lcom/downloader/request/DownloadRequestBuilder;->connectTimeout:I

    goto :goto_1

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/downloader/request/DownloadRequest;->getConnectTimeoutFromConfig()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/downloader/request/DownloadRequest;->connectTimeout:I

    .line 64
    iget-object p1, p1, Lcom/downloader/request/DownloadRequestBuilder;->userAgent:Ljava/lang/String;

    iput-object p1, p0, Lcom/downloader/request/DownloadRequest;->userAgent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/downloader/request/DownloadRequest;)Lcom/downloader/OnDownloadListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/downloader/request/DownloadRequest;->onDownloadListener:Lcom/downloader/OnDownloadListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/downloader/request/DownloadRequest;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/downloader/request/DownloadRequest;->finish()V

    return-void
.end method

.method static synthetic access$200(Lcom/downloader/request/DownloadRequest;)Lcom/downloader/OnStartOrResumeListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/downloader/request/DownloadRequest;->onStartOrResumeListener:Lcom/downloader/OnStartOrResumeListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/downloader/request/DownloadRequest;)Lcom/downloader/OnPauseListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/downloader/request/DownloadRequest;->onPauseListener:Lcom/downloader/OnPauseListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/downloader/request/DownloadRequest;)Lcom/downloader/OnCancelListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/downloader/request/DownloadRequest;->onCancelListener:Lcom/downloader/OnCancelListener;

    return-object p0
.end method

.method private deliverCancelEvent()V
    .locals 2

    .line 279
    invoke-static {}, Lcom/downloader/core/Core;->getInstance()Lcom/downloader/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/core/Core;->getExecutorSupplier()Lcom/downloader/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/downloader/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/downloader/request/DownloadRequest$5;

    invoke-direct {v1, p0}, Lcom/downloader/request/DownloadRequest$5;-><init>(Lcom/downloader/request/DownloadRequest;)V

    .line 280
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lcom/downloader/request/DownloadRequest;->onProgressListener:Lcom/downloader/OnProgressListener;

    .line 305
    iput-object v0, p0, Lcom/downloader/request/DownloadRequest;->onDownloadListener:Lcom/downloader/OnDownloadListener;

    .line 306
    iput-object v0, p0, Lcom/downloader/request/DownloadRequest;->onStartOrResumeListener:Lcom/downloader/OnStartOrResumeListener;

    .line 307
    iput-object v0, p0, Lcom/downloader/request/DownloadRequest;->onPauseListener:Lcom/downloader/OnPauseListener;

    .line 308
    iput-object v0, p0, Lcom/downloader/request/DownloadRequest;->onCancelListener:Lcom/downloader/OnCancelListener;

    return-void
.end method

.method private finish()V
    .locals 1

    .line 299
    invoke-direct {p0}, Lcom/downloader/request/DownloadRequest;->destroy()V

    .line 300
    invoke-static {}, Lcom/downloader/internal/DownloadRequestQueue;->getInstance()Lcom/downloader/internal/DownloadRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/downloader/internal/DownloadRequestQueue;->finish(Lcom/downloader/request/DownloadRequest;)V

    return-void
.end method

.method private getConnectTimeoutFromConfig()I
    .locals 1

    .line 316
    invoke-static {}, Lcom/downloader/internal/ComponentHolder;->getInstance()Lcom/downloader/internal/ComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/internal/ComponentHolder;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method private getReadTimeoutFromConfig()I
    .locals 1

    .line 312
    invoke-static {}, Lcom/downloader/internal/ComponentHolder;->getInstance()Lcom/downloader/internal/ComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/internal/ComponentHolder;->getReadTimeout()I

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 290
    sget-object v0, Lcom/downloader/Status;->CANCELLED:Lcom/downloader/Status;

    iput-object v0, p0, Lcom/downloader/request/DownloadRequest;->status:Lcom/downloader/Status;

    .line 291
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 292
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/downloader/request/DownloadRequest;->deliverCancelEvent()V

    .line 295
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->dirPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/downloader/request/DownloadRequest;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/downloader/utils/Utils;->getTempPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/downloader/request/DownloadRequest;->downloadId:I

    invoke-static {v0, v1}, Lcom/downloader/utils/Utils;->deleteTempFileAndDatabaseEntryInBackground(Ljava/lang/String;I)V

    return-void
.end method

.method public deliverError(Lcom/downloader/Error;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->status:Lcom/downloader/Status;

    sget-object v1, Lcom/downloader/Status;->CANCELLED:Lcom/downloader/Status;

    if-eq v0, v1, :cond_0

    .line 224
    sget-object v0, Lcom/downloader/Status;->FAILED:Lcom/downloader/Status;

    invoke-virtual {p0, v0}, Lcom/downloader/request/DownloadRequest;->setStatus(Lcom/downloader/Status;)V

    .line 225
    invoke-static {}, Lcom/downloader/core/Core;->getInstance()Lcom/downloader/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/core/Core;->getExecutorSupplier()Lcom/downloader/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/downloader/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/downloader/request/DownloadRequest$1;

    invoke-direct {v1, p0, p1}, Lcom/downloader/request/DownloadRequest$1;-><init>(Lcom/downloader/request/DownloadRequest;Lcom/downloader/Error;)V

    .line 226
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public deliverPauseEvent()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->status:Lcom/downloader/Status;

    sget-object v1, Lcom/downloader/Status;->CANCELLED:Lcom/downloader/Status;

    if-eq v0, v1, :cond_0

    .line 267
    invoke-static {}, Lcom/downloader/core/Core;->getInstance()Lcom/downloader/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/core/Core;->getExecutorSupplier()Lcom/downloader/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/downloader/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/downloader/request/DownloadRequest$4;

    invoke-direct {v1, p0}, Lcom/downloader/request/DownloadRequest$4;-><init>(Lcom/downloader/request/DownloadRequest;)V

    .line 268
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public deliverStartEvent()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->status:Lcom/downloader/Status;

    sget-object v1, Lcom/downloader/Status;->CANCELLED:Lcom/downloader/Status;

    if-eq v0, v1, :cond_0

    .line 254
    invoke-static {}, Lcom/downloader/core/Core;->getInstance()Lcom/downloader/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/core/Core;->getExecutorSupplier()Lcom/downloader/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/downloader/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/downloader/request/DownloadRequest$3;

    invoke-direct {v1, p0}, Lcom/downloader/request/DownloadRequest$3;-><init>(Lcom/downloader/request/DownloadRequest;)V

    .line 255
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public deliverSuccess()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->status:Lcom/downloader/Status;

    sget-object v1, Lcom/downloader/Status;->CANCELLED:Lcom/downloader/Status;

    if-eq v0, v1, :cond_0

    .line 239
    sget-object v0, Lcom/downloader/Status;->COMPLETED:Lcom/downloader/Status;

    invoke-virtual {p0, v0}, Lcom/downloader/request/DownloadRequest;->setStatus(Lcom/downloader/Status;)V

    .line 240
    invoke-static {}, Lcom/downloader/core/Core;->getInstance()Lcom/downloader/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/core/Core;->getExecutorSupplier()Lcom/downloader/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/downloader/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/downloader/request/DownloadRequest$2;

    invoke-direct {v1, p0}, Lcom/downloader/request/DownloadRequest$2;-><init>(Lcom/downloader/request/DownloadRequest;)V

    .line 241
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public executeSync()Lcom/downloader/Response;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/downloader/request/DownloadRequest;->dirPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/downloader/request/DownloadRequest;->fileName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/downloader/utils/Utils;->getUniqueId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/downloader/request/DownloadRequest;->downloadId:I

    .line 219
    new-instance v0, Lcom/downloader/internal/SynchronousCall;

    invoke-direct {v0, p0}, Lcom/downloader/internal/SynchronousCall;-><init>(Lcom/downloader/request/DownloadRequest;)V

    invoke-virtual {v0}, Lcom/downloader/internal/SynchronousCall;->execute()Lcom/downloader/Response;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/downloader/request/DownloadRequest;->connectTimeout:I

    return v0
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->dirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadId()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/downloader/request/DownloadRequest;->downloadId:I

    return v0
.end method

.method public getDownloadedBytes()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/downloader/request/DownloadRequest;->downloadedBytes:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->headerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOnProgressListener()Lcom/downloader/OnProgressListener;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->onProgressListener:Lcom/downloader/OnProgressListener;

    return-object v0
.end method

.method public getPriority()Lcom/downloader/Priority;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->priority:Lcom/downloader/Priority;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/downloader/request/DownloadRequest;->readTimeout:I

    return v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/downloader/request/DownloadRequest;->sequenceNumber:I

    return v0
.end method

.method public getStatus()Lcom/downloader/Status;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->status:Lcom/downloader/Status;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/downloader/request/DownloadRequest;->totalBytes:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 161
    invoke-static {}, Lcom/downloader/internal/ComponentHolder;->getInstance()Lcom/downloader/internal/ComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/internal/ComponentHolder;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/downloader/request/DownloadRequest;->userAgent:Ljava/lang/String;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/downloader/request/DownloadRequest;->connectTimeout:I

    return-void
.end method

.method public setDirPath(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest;->dirPath:Ljava/lang/String;

    return-void
.end method

.method public setDownloadId(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/downloader/request/DownloadRequest;->downloadId:I

    return-void
.end method

.method public setDownloadedBytes(J)V
    .locals 0

    .line 132
    iput-wide p1, p0, Lcom/downloader/request/DownloadRequest;->downloadedBytes:J

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method public setOnCancelListener(Lcom/downloader/OnCancelListener;)Lcom/downloader/request/DownloadRequest;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest;->onCancelListener:Lcom/downloader/OnCancelListener;

    return-object p0
.end method

.method public setOnPauseListener(Lcom/downloader/OnPauseListener;)Lcom/downloader/request/DownloadRequest;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest;->onPauseListener:Lcom/downloader/OnPauseListener;

    return-object p0
.end method

.method public setOnProgressListener(Lcom/downloader/OnProgressListener;)Lcom/downloader/request/DownloadRequest;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest;->onProgressListener:Lcom/downloader/OnProgressListener;

    return-object p0
.end method

.method public setOnStartOrResumeListener(Lcom/downloader/OnStartOrResumeListener;)Lcom/downloader/request/DownloadRequest;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest;->onStartOrResumeListener:Lcom/downloader/OnStartOrResumeListener;

    return-object p0
.end method

.method public setPriority(Lcom/downloader/Priority;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest;->priority:Lcom/downloader/Priority;

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/downloader/request/DownloadRequest;->readTimeout:I

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/downloader/request/DownloadRequest;->sequenceNumber:I

    return-void
.end method

.method public setStatus(Lcom/downloader/Status;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest;->status:Lcom/downloader/Status;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest;->tag:Ljava/lang/Object;

    return-void
.end method

.method public setTotalBytes(J)V
    .locals 0

    .line 140
    iput-wide p1, p0, Lcom/downloader/request/DownloadRequest;->totalBytes:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public start(Lcom/downloader/OnDownloadListener;)I
    .locals 2

    .line 211
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest;->onDownloadListener:Lcom/downloader/OnDownloadListener;

    .line 212
    iget-object p1, p0, Lcom/downloader/request/DownloadRequest;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/downloader/request/DownloadRequest;->dirPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/downloader/request/DownloadRequest;->fileName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/downloader/utils/Utils;->getUniqueId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/downloader/request/DownloadRequest;->downloadId:I

    .line 213
    invoke-static {}, Lcom/downloader/internal/DownloadRequestQueue;->getInstance()Lcom/downloader/internal/DownloadRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/downloader/internal/DownloadRequestQueue;->addRequest(Lcom/downloader/request/DownloadRequest;)V

    .line 214
    iget p1, p0, Lcom/downloader/request/DownloadRequest;->downloadId:I

    return p1
.end method
