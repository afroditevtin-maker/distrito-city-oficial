.class public Lcom/downloader/internal/DownloadRequestQueue;
.super Ljava/lang/Object;
.source "DownloadRequestQueue.java"


# static fields
.field private static instance:Lcom/downloader/internal/DownloadRequestQueue;


# instance fields
.field private final currentRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/downloader/request/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final sequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/downloader/internal/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/downloader/internal/DownloadRequestQueue;->sequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private cancelAndRemoveFromMap(Lcom/downloader/request/DownloadRequest;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->cancel()V

    .line 66
    iget-object v0, p0, Lcom/downloader/internal/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->getDownloadId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/downloader/internal/DownloadRequestQueue;
    .locals 2

    .line 31
    sget-object v0, Lcom/downloader/internal/DownloadRequestQueue;->instance:Lcom/downloader/internal/DownloadRequestQueue;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/downloader/internal/DownloadRequestQueue;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/downloader/internal/DownloadRequestQueue;->instance:Lcom/downloader/internal/DownloadRequestQueue;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/downloader/internal/DownloadRequestQueue;

    invoke-direct {v1}, Lcom/downloader/internal/DownloadRequestQueue;-><init>()V

    sput-object v1, Lcom/downloader/internal/DownloadRequestQueue;->instance:Lcom/downloader/internal/DownloadRequestQueue;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/downloader/internal/DownloadRequestQueue;->instance:Lcom/downloader/internal/DownloadRequestQueue;

    return-object v0
.end method

.method private getSequenceNumber()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/downloader/internal/DownloadRequestQueue;->sequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public static initialize()V
    .locals 0

    .line 27
    invoke-static {}, Lcom/downloader/internal/DownloadRequestQueue;->getInstance()Lcom/downloader/internal/DownloadRequestQueue;

    return-void
.end method


# virtual methods
.method public addRequest(Lcom/downloader/request/DownloadRequest;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/downloader/internal/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->getDownloadId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/downloader/Status;->QUEUED:Lcom/downloader/Status;

    invoke-virtual {p1, v0}, Lcom/downloader/request/DownloadRequest;->setStatus(Lcom/downloader/Status;)V

    .line 108
    invoke-direct {p0}, Lcom/downloader/internal/DownloadRequestQueue;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/downloader/request/DownloadRequest;->setSequenceNumber(I)V

    .line 109
    invoke-static {}, Lcom/downloader/core/Core;->getInstance()Lcom/downloader/core/Core;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/downloader/core/Core;->getExecutorSupplier()Lcom/downloader/core/ExecutorSupplier;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lcom/downloader/core/ExecutorSupplier;->forDownloadTasks()Lcom/downloader/core/DownloadExecutor;

    move-result-object v0

    new-instance v1, Lcom/downloader/internal/DownloadRunnable;

    invoke-direct {v1, p1}, Lcom/downloader/internal/DownloadRunnable;-><init>(Lcom/downloader/request/DownloadRequest;)V

    .line 112
    invoke-virtual {v0, v1}, Lcom/downloader/core/DownloadExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lcom/downloader/request/DownloadRequest;->setFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public cancel(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/downloader/internal/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/downloader/request/DownloadRequest;

    .line 72
    invoke-direct {p0, p1}, Lcom/downloader/internal/DownloadRequestQueue;->cancelAndRemoveFromMap(Lcom/downloader/request/DownloadRequest;)V

    return-void
.end method

.method public cancel(Ljava/lang/Object;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/downloader/internal/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/downloader/request/DownloadRequest;

    .line 78
    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-direct {p0, v1}, Lcom/downloader/internal/DownloadRequestQueue;->cancelAndRemoveFromMap(Lcom/downloader/request/DownloadRequest;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v1}, Lcom/downloader/request/DownloadRequest;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-direct {p0, v1}, Lcom/downloader/internal/DownloadRequestQueue;->cancelAndRemoveFromMap(Lcom/downloader/request/DownloadRequest;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public cancelAll()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/downloader/internal/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/downloader/request/DownloadRequest;

    .line 93
    invoke-direct {p0, v1}, Lcom/downloader/internal/DownloadRequestQueue;->cancelAndRemoveFromMap(Lcom/downloader/request/DownloadRequest;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public finish(Lcom/downloader/request/DownloadRequest;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/downloader/internal/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->getDownloadId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getStatus(I)Lcom/downloader/Status;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/downloader/internal/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/downloader/request/DownloadRequest;

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->getStatus()Lcom/downloader/Status;

    move-result-object p1

    return-object p1

    .line 102
    :cond_0
    sget-object p1, Lcom/downloader/Status;->UNKNOWN:Lcom/downloader/Status;

    return-object p1
.end method

.method public pause(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/downloader/internal/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/downloader/request/DownloadRequest;

    if-eqz p1, :cond_0

    .line 48
    sget-object v0, Lcom/downloader/Status;->PAUSED:Lcom/downloader/Status;

    invoke-virtual {p1, v0}, Lcom/downloader/request/DownloadRequest;->setStatus(Lcom/downloader/Status;)V

    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/downloader/internal/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/downloader/request/DownloadRequest;

    if-eqz p1, :cond_0

    .line 55
    sget-object v0, Lcom/downloader/Status;->QUEUED:Lcom/downloader/Status;

    invoke-virtual {p1, v0}, Lcom/downloader/request/DownloadRequest;->setStatus(Lcom/downloader/Status;)V

    .line 56
    invoke-static {}, Lcom/downloader/core/Core;->getInstance()Lcom/downloader/core/Core;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/downloader/core/Core;->getExecutorSupplier()Lcom/downloader/core/ExecutorSupplier;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Lcom/downloader/core/ExecutorSupplier;->forDownloadTasks()Lcom/downloader/core/DownloadExecutor;

    move-result-object v0

    new-instance v1, Lcom/downloader/internal/DownloadRunnable;

    invoke-direct {v1, p1}, Lcom/downloader/internal/DownloadRunnable;-><init>(Lcom/downloader/request/DownloadRequest;)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/downloader/core/DownloadExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Lcom/downloader/request/DownloadRequest;->setFuture(Ljava/util/concurrent/Future;)V

    :cond_0
    return-void
.end method
