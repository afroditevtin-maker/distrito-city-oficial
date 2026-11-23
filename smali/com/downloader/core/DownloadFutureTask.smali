.class public Lcom/downloader/core/DownloadFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "DownloadFutureTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/downloader/internal/DownloadRunnable;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/downloader/core/DownloadFutureTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final runnable:Lcom/downloader/internal/DownloadRunnable;


# direct methods
.method constructor <init>(Lcom/downloader/internal/DownloadRunnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 18
    iput-object p1, p0, Lcom/downloader/core/DownloadFutureTask;->runnable:Lcom/downloader/internal/DownloadRunnable;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/downloader/core/DownloadFutureTask;)I
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/downloader/core/DownloadFutureTask;->runnable:Lcom/downloader/internal/DownloadRunnable;

    iget-object v0, v0, Lcom/downloader/internal/DownloadRunnable;->priority:Lcom/downloader/Priority;

    .line 24
    iget-object v1, p1, Lcom/downloader/core/DownloadFutureTask;->runnable:Lcom/downloader/internal/DownloadRunnable;

    iget-object v1, v1, Lcom/downloader/internal/DownloadRunnable;->priority:Lcom/downloader/Priority;

    if-ne v0, v1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/downloader/core/DownloadFutureTask;->runnable:Lcom/downloader/internal/DownloadRunnable;

    iget v0, v0, Lcom/downloader/internal/DownloadRunnable;->sequence:I

    iget-object p1, p1, Lcom/downloader/core/DownloadFutureTask;->runnable:Lcom/downloader/internal/DownloadRunnable;

    iget p1, p1, Lcom/downloader/internal/DownloadRunnable;->sequence:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/downloader/Priority;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/downloader/Priority;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/downloader/core/DownloadFutureTask;

    invoke-virtual {p0, p1}, Lcom/downloader/core/DownloadFutureTask;->compareTo(Lcom/downloader/core/DownloadFutureTask;)I

    move-result p1

    return p1
.end method
