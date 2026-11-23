.class public Lcom/downloader/PRDownloader;
.super Ljava/lang/Object;
.source "PRDownloader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(I)V
    .locals 1

    .line 84
    invoke-static {}, Lcom/downloader/internal/DownloadRequestQueue;->getInstance()Lcom/downloader/internal/DownloadRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/downloader/internal/DownloadRequestQueue;->cancel(I)V

    return-void
.end method

.method public static cancel(Ljava/lang/Object;)V
    .locals 1

    .line 93
    invoke-static {}, Lcom/downloader/internal/DownloadRequestQueue;->getInstance()Lcom/downloader/internal/DownloadRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/downloader/internal/DownloadRequestQueue;->cancel(Ljava/lang/Object;)V

    return-void
.end method

.method public static cancelAll()V
    .locals 1

    .line 100
    invoke-static {}, Lcom/downloader/internal/DownloadRequestQueue;->getInstance()Lcom/downloader/internal/DownloadRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/internal/DownloadRequestQueue;->cancelAll()V

    return-void
.end method

.method public static cleanUp(I)V
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/downloader/utils/Utils;->deleteUnwantedModelsAndTempFiles(I)V

    return-void
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/downloader/request/DownloadRequestBuilder;
    .locals 1

    .line 57
    new-instance v0, Lcom/downloader/request/DownloadRequestBuilder;

    invoke-direct {v0, p0, p1, p2}, Lcom/downloader/request/DownloadRequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStatus(I)Lcom/downloader/Status;
    .locals 1

    .line 110
    invoke-static {}, Lcom/downloader/internal/DownloadRequestQueue;->getInstance()Lcom/downloader/internal/DownloadRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/downloader/internal/DownloadRequestQueue;->getStatus(I)Lcom/downloader/Status;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-static {}, Lcom/downloader/PRDownloaderConfig;->newBuilder()Lcom/downloader/PRDownloaderConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/PRDownloaderConfig$Builder;->build()Lcom/downloader/PRDownloaderConfig;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/downloader/PRDownloader;->initialize(Landroid/content/Context;Lcom/downloader/PRDownloaderConfig;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/downloader/PRDownloaderConfig;)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/downloader/internal/ComponentHolder;->getInstance()Lcom/downloader/internal/ComponentHolder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/downloader/internal/ComponentHolder;->init(Landroid/content/Context;Lcom/downloader/PRDownloaderConfig;)V

    .line 45
    invoke-static {}, Lcom/downloader/internal/DownloadRequestQueue;->initialize()V

    return-void
.end method

.method public static pause(I)V
    .locals 1

    .line 66
    invoke-static {}, Lcom/downloader/internal/DownloadRequestQueue;->getInstance()Lcom/downloader/internal/DownloadRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/downloader/internal/DownloadRequestQueue;->pause(I)V

    return-void
.end method

.method public static resume(I)V
    .locals 1

    .line 75
    invoke-static {}, Lcom/downloader/internal/DownloadRequestQueue;->getInstance()Lcom/downloader/internal/DownloadRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/downloader/internal/DownloadRequestQueue;->resume(I)V

    return-void
.end method

.method public static shutDown()V
    .locals 0

    .line 126
    invoke-static {}, Lcom/downloader/core/Core;->shutDown()V

    return-void
.end method
