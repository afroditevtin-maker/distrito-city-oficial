.class Lcom/downloader/request/DownloadRequest$5;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/downloader/request/DownloadRequest;->deliverCancelEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/downloader/request/DownloadRequest;


# direct methods
.method constructor <init>(Lcom/downloader/request/DownloadRequest;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest$5;->this$0:Lcom/downloader/request/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest$5;->this$0:Lcom/downloader/request/DownloadRequest;

    invoke-static {v0}, Lcom/downloader/request/DownloadRequest;->access$400(Lcom/downloader/request/DownloadRequest;)Lcom/downloader/OnCancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest$5;->this$0:Lcom/downloader/request/DownloadRequest;

    invoke-static {v0}, Lcom/downloader/request/DownloadRequest;->access$400(Lcom/downloader/request/DownloadRequest;)Lcom/downloader/OnCancelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/downloader/OnCancelListener;->onCancel()V

    :cond_0
    return-void
.end method
