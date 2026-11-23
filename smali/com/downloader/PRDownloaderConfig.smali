.class public Lcom/downloader/PRDownloaderConfig;
.super Ljava/lang/Object;
.source "PRDownloaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/downloader/PRDownloaderConfig$Builder;
    }
.end annotation


# instance fields
.field private connectTimeout:I

.field private databaseEnabled:Z

.field private httpClient:Lcom/downloader/httpclient/HttpClient;

.field private readTimeout:I

.field private userAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/downloader/PRDownloaderConfig$Builder;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget v0, p1, Lcom/downloader/PRDownloaderConfig$Builder;->readTimeout:I

    iput v0, p0, Lcom/downloader/PRDownloaderConfig;->readTimeout:I

    .line 20
    iget v0, p1, Lcom/downloader/PRDownloaderConfig$Builder;->connectTimeout:I

    iput v0, p0, Lcom/downloader/PRDownloaderConfig;->connectTimeout:I

    .line 21
    iget-object v0, p1, Lcom/downloader/PRDownloaderConfig$Builder;->userAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/downloader/PRDownloaderConfig;->userAgent:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lcom/downloader/PRDownloaderConfig$Builder;->httpClient:Lcom/downloader/httpclient/HttpClient;

    iput-object v0, p0, Lcom/downloader/PRDownloaderConfig;->httpClient:Lcom/downloader/httpclient/HttpClient;

    .line 23
    iget-boolean p1, p1, Lcom/downloader/PRDownloaderConfig$Builder;->databaseEnabled:Z

    iput-boolean p1, p0, Lcom/downloader/PRDownloaderConfig;->databaseEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/downloader/PRDownloaderConfig$Builder;Lcom/downloader/PRDownloaderConfig$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/downloader/PRDownloaderConfig;-><init>(Lcom/downloader/PRDownloaderConfig$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/downloader/PRDownloaderConfig$Builder;
    .locals 1

    .line 67
    new-instance v0, Lcom/downloader/PRDownloaderConfig$Builder;

    invoke-direct {v0}, Lcom/downloader/PRDownloaderConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/downloader/PRDownloaderConfig;->connectTimeout:I

    return v0
.end method

.method public getHttpClient()Lcom/downloader/httpclient/HttpClient;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/downloader/PRDownloaderConfig;->httpClient:Lcom/downloader/httpclient/HttpClient;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/downloader/PRDownloaderConfig;->readTimeout:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/downloader/PRDownloaderConfig;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isDatabaseEnabled()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/downloader/PRDownloaderConfig;->databaseEnabled:Z

    return v0
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/downloader/PRDownloaderConfig;->connectTimeout:I

    return-void
.end method

.method public setDatabaseEnabled(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/downloader/PRDownloaderConfig;->databaseEnabled:Z

    return-void
.end method

.method public setHttpClient(Lcom/downloader/httpclient/HttpClient;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/downloader/PRDownloaderConfig;->httpClient:Lcom/downloader/httpclient/HttpClient;

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/downloader/PRDownloaderConfig;->readTimeout:I

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/downloader/PRDownloaderConfig;->userAgent:Ljava/lang/String;

    return-void
.end method
