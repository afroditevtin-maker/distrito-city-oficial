.class public Lcom/downloader/core/DownloadExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "DownloadExecutor.java"


# direct methods
.method constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 8

    .line 18
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/downloader/core/DownloadFutureTask;

    check-cast p1, Lcom/downloader/internal/DownloadRunnable;

    invoke-direct {v0, p1}, Lcom/downloader/core/DownloadFutureTask;-><init>(Lcom/downloader/internal/DownloadRunnable;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/downloader/core/DownloadExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
