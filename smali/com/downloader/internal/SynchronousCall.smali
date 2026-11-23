.class public Lcom/downloader/internal/SynchronousCall;
.super Ljava/lang/Object;
.source "SynchronousCall.java"


# instance fields
.field public final request:Lcom/downloader/request/DownloadRequest;


# direct methods
.method public constructor <init>(Lcom/downloader/request/DownloadRequest;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/downloader/internal/SynchronousCall;->request:Lcom/downloader/request/DownloadRequest;

    return-void
.end method


# virtual methods
.method public execute()Lcom/downloader/Response;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/downloader/internal/SynchronousCall;->request:Lcom/downloader/request/DownloadRequest;

    invoke-static {v0}, Lcom/downloader/internal/DownloadTask;->create(Lcom/downloader/request/DownloadRequest;)Lcom/downloader/internal/DownloadTask;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/downloader/internal/DownloadTask;->run()Lcom/downloader/Response;

    move-result-object v0

    return-object v0
.end method
