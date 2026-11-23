.class Lcom/downloader/request/DownloadRequest$1;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/downloader/request/DownloadRequest;->deliverError(Lcom/downloader/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/downloader/request/DownloadRequest;

.field final synthetic val$error:Lcom/downloader/Error;


# direct methods
.method constructor <init>(Lcom/downloader/request/DownloadRequest;Lcom/downloader/Error;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/downloader/request/DownloadRequest$1;->this$0:Lcom/downloader/request/DownloadRequest;

    iput-object p2, p0, Lcom/downloader/request/DownloadRequest$1;->val$error:Lcom/downloader/Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest$1;->this$0:Lcom/downloader/request/DownloadRequest;

    invoke-static {v0}, Lcom/downloader/request/DownloadRequest;->access$000(Lcom/downloader/request/DownloadRequest;)Lcom/downloader/OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest$1;->this$0:Lcom/downloader/request/DownloadRequest;

    invoke-static {v0}, Lcom/downloader/request/DownloadRequest;->access$000(Lcom/downloader/request/DownloadRequest;)Lcom/downloader/OnDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/downloader/request/DownloadRequest$1;->val$error:Lcom/downloader/Error;

    invoke-interface {v0, v1}, Lcom/downloader/OnDownloadListener;->onError(Lcom/downloader/Error;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/downloader/request/DownloadRequest$1;->this$0:Lcom/downloader/request/DownloadRequest;

    invoke-static {v0}, Lcom/downloader/request/DownloadRequest;->access$100(Lcom/downloader/request/DownloadRequest;)V

    return-void
.end method
