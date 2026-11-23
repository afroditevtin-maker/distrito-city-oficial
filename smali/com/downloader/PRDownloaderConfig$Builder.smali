.class public Lcom/downloader/PRDownloaderConfig$Builder;
.super Ljava/lang/Object;
.source "PRDownloaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/downloader/PRDownloaderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field connectTimeout:I

.field databaseEnabled:Z

.field httpClient:Lcom/downloader/httpclient/HttpClient;

.field readTimeout:I

.field userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    .line 72
    iput v0, p0, Lcom/downloader/PRDownloaderConfig$Builder;->readTimeout:I

    .line 73
    iput v0, p0, Lcom/downloader/PRDownloaderConfig$Builder;->connectTimeout:I

    .line 74
    const-string v0, "PRDownloader"

    iput-object v0, p0, Lcom/downloader/PRDownloaderConfig$Builder;->userAgent:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/downloader/httpclient/DefaultHttpClient;

    invoke-direct {v0}, Lcom/downloader/httpclient/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/downloader/PRDownloaderConfig$Builder;->httpClient:Lcom/downloader/httpclient/HttpClient;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/downloader/PRDownloaderConfig$Builder;->databaseEnabled:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/downloader/PRDownloaderConfig;
    .locals 2

    .line 104
    new-instance v0, Lcom/downloader/PRDownloaderConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/downloader/PRDownloaderConfig;-><init>(Lcom/downloader/PRDownloaderConfig$Builder;Lcom/downloader/PRDownloaderConfig$1;)V

    return-object v0
.end method

.method public setConnectTimeout(I)Lcom/downloader/PRDownloaderConfig$Builder;
    .locals 0

    .line 84
    iput p1, p0, Lcom/downloader/PRDownloaderConfig$Builder;->connectTimeout:I

    return-object p0
.end method

.method public setDatabaseEnabled(Z)Lcom/downloader/PRDownloaderConfig$Builder;
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/downloader/PRDownloaderConfig$Builder;->databaseEnabled:Z

    return-object p0
.end method

.method public setHttpClient(Lcom/downloader/httpclient/HttpClient;)Lcom/downloader/PRDownloaderConfig$Builder;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/downloader/PRDownloaderConfig$Builder;->httpClient:Lcom/downloader/httpclient/HttpClient;

    return-object p0
.end method

.method public setReadTimeout(I)Lcom/downloader/PRDownloaderConfig$Builder;
    .locals 0

    .line 79
    iput p1, p0, Lcom/downloader/PRDownloaderConfig$Builder;->readTimeout:I

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/downloader/PRDownloaderConfig$Builder;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/downloader/PRDownloaderConfig$Builder;->userAgent:Ljava/lang/String;

    return-object p0
.end method
