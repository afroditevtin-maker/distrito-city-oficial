.class public Lcom/downloader/internal/DownloadRunnable;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final priority:Lcom/downloader/Priority;

.field public final request:Lcom/downloader/request/DownloadRequest;

.field public final sequence:I


# direct methods
.method constructor <init>(Lcom/downloader/request/DownloadRequest;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/downloader/internal/DownloadRunnable;->request:Lcom/downloader/request/DownloadRequest;

    .line 21
    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->getPriority()Lcom/downloader/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/downloader/internal/DownloadRunnable;->priority:Lcom/downloader/Priority;

    .line 22
    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->getSequenceNumber()I

    move-result p1

    iput p1, p0, Lcom/downloader/internal/DownloadRunnable;->sequence:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/downloader/internal/DownloadRunnable;->request:Lcom/downloader/request/DownloadRequest;

    sget-object v1, Lcom/downloader/Status;->RUNNING:Lcom/downloader/Status;

    invoke-virtual {v0, v1}, Lcom/downloader/request/DownloadRequest;->setStatus(Lcom/downloader/Status;)V

    .line 28
    iget-object v0, p0, Lcom/downloader/internal/DownloadRunnable;->request:Lcom/downloader/request/DownloadRequest;

    invoke-static {v0}, Lcom/downloader/internal/DownloadTask;->create(Lcom/downloader/request/DownloadRequest;)Lcom/downloader/internal/DownloadTask;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/downloader/internal/DownloadTask;->run()Lcom/downloader/Response;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/downloader/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/downloader/internal/DownloadRunnable;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v0}, Lcom/downloader/request/DownloadRequest;->deliverSuccess()V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/downloader/Response;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    iget-object v0, p0, Lcom/downloader/internal/DownloadRunnable;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v0}, Lcom/downloader/request/DownloadRequest;->deliverPauseEvent()V

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/downloader/Response;->getError()Lcom/downloader/Error;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 35
    iget-object v1, p0, Lcom/downloader/internal/DownloadRunnable;->request:Lcom/downloader/request/DownloadRequest;

    invoke-virtual {v0}, Lcom/downloader/Response;->getError()Lcom/downloader/Error;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/downloader/request/DownloadRequest;->deliverError(Lcom/downloader/Error;)V

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v0}, Lcom/downloader/Response;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/downloader/internal/DownloadRunnable;->request:Lcom/downloader/request/DownloadRequest;

    new-instance v1, Lcom/downloader/Error;

    invoke-direct {v1}, Lcom/downloader/Error;-><init>()V

    invoke-virtual {v0, v1}, Lcom/downloader/request/DownloadRequest;->deliverError(Lcom/downloader/Error;)V

    :cond_3
    :goto_0
    return-void
.end method
