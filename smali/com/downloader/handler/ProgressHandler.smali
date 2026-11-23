.class public Lcom/downloader/handler/ProgressHandler;
.super Landroid/os/Handler;
.source "ProgressHandler.java"


# instance fields
.field private final listener:Lcom/downloader/OnProgressListener;


# direct methods
.method public constructor <init>(Lcom/downloader/OnProgressListener;)V
    .locals 1

    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    iput-object p1, p0, Lcom/downloader/handler/ProgressHandler;->listener:Lcom/downloader/OnProgressListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 26
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 34
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/downloader/handler/ProgressHandler;->listener:Lcom/downloader/OnProgressListener;

    if-eqz v0, :cond_1

    .line 29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/downloader/Progress;

    .line 30
    iget-object v0, p0, Lcom/downloader/handler/ProgressHandler;->listener:Lcom/downloader/OnProgressListener;

    invoke-interface {v0, p1}, Lcom/downloader/OnProgressListener;->onProgress(Lcom/downloader/Progress;)V

    :cond_1
    :goto_0
    return-void
.end method
