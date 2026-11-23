.class public Lcom/downloader/internal/ComponentHolder;
.super Ljava/lang/Object;
.source "ComponentHolder.java"


# static fields
.field private static final INSTANCE:Lcom/downloader/internal/ComponentHolder;


# instance fields
.field private connectTimeout:I

.field private dbHelper:Lcom/downloader/database/DbHelper;

.field private httpClient:Lcom/downloader/httpclient/HttpClient;

.field private readTimeout:I

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/downloader/internal/ComponentHolder;

    invoke-direct {v0}, Lcom/downloader/internal/ComponentHolder;-><init>()V

    sput-object v0, Lcom/downloader/internal/ComponentHolder;->INSTANCE:Lcom/downloader/internal/ComponentHolder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/downloader/internal/ComponentHolder;
    .locals 1

    .line 28
    sget-object v0, Lcom/downloader/internal/ComponentHolder;->INSTANCE:Lcom/downloader/internal/ComponentHolder;

    return-object v0
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 2

    .line 54
    iget v0, p0, Lcom/downloader/internal/ComponentHolder;->connectTimeout:I

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/downloader/internal/ComponentHolder;

    monitor-enter v0

    .line 56
    :try_start_0
    iget v1, p0, Lcom/downloader/internal/ComponentHolder;->connectTimeout:I

    if-nez v1, :cond_0

    const/16 v1, 0x4e20

    .line 57
    iput v1, p0, Lcom/downloader/internal/ComponentHolder;->connectTimeout:I

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :goto_0
    iget v0, p0, Lcom/downloader/internal/ComponentHolder;->connectTimeout:I

    return v0
.end method

.method public getDbHelper()Lcom/downloader/database/DbHelper;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/downloader/internal/ComponentHolder;->dbHelper:Lcom/downloader/database/DbHelper;

    if-nez v0, :cond_1

    .line 77
    const-class v0, Lcom/downloader/internal/ComponentHolder;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/downloader/internal/ComponentHolder;->dbHelper:Lcom/downloader/database/DbHelper;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/downloader/database/NoOpsDbHelper;

    invoke-direct {v1}, Lcom/downloader/database/NoOpsDbHelper;-><init>()V

    iput-object v1, p0, Lcom/downloader/internal/ComponentHolder;->dbHelper:Lcom/downloader/database/DbHelper;

    .line 81
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/downloader/internal/ComponentHolder;->dbHelper:Lcom/downloader/database/DbHelper;

    return-object v0
.end method

.method public getHttpClient()Lcom/downloader/httpclient/HttpClient;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/downloader/internal/ComponentHolder;->httpClient:Lcom/downloader/httpclient/HttpClient;

    if-nez v0, :cond_1

    .line 88
    const-class v0, Lcom/downloader/internal/ComponentHolder;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/downloader/internal/ComponentHolder;->httpClient:Lcom/downloader/httpclient/HttpClient;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/downloader/httpclient/DefaultHttpClient;

    invoke-direct {v1}, Lcom/downloader/httpclient/DefaultHttpClient;-><init>()V

    iput-object v1, p0, Lcom/downloader/internal/ComponentHolder;->httpClient:Lcom/downloader/httpclient/HttpClient;

    .line 92
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 94
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/downloader/internal/ComponentHolder;->httpClient:Lcom/downloader/httpclient/HttpClient;

    invoke-interface {v0}, Lcom/downloader/httpclient/HttpClient;->clone()Lcom/downloader/httpclient/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 2

    .line 43
    iget v0, p0, Lcom/downloader/internal/ComponentHolder;->readTimeout:I

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/downloader/internal/ComponentHolder;

    monitor-enter v0

    .line 45
    :try_start_0
    iget v1, p0, Lcom/downloader/internal/ComponentHolder;->readTimeout:I

    if-nez v1, :cond_0

    const/16 v1, 0x4e20

    .line 46
    iput v1, p0, Lcom/downloader/internal/ComponentHolder;->readTimeout:I

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    iget v0, p0, Lcom/downloader/internal/ComponentHolder;->readTimeout:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/downloader/internal/ComponentHolder;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 66
    const-class v0, Lcom/downloader/internal/ComponentHolder;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/downloader/internal/ComponentHolder;->userAgent:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 68
    const-string v1, "PRDownloader"

    iput-object v1, p0, Lcom/downloader/internal/ComponentHolder;->userAgent:Ljava/lang/String;

    .line 70
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/downloader/internal/ComponentHolder;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/downloader/PRDownloaderConfig;)V
    .locals 1

    .line 32
    invoke-virtual {p2}, Lcom/downloader/PRDownloaderConfig;->getReadTimeout()I

    move-result v0

    iput v0, p0, Lcom/downloader/internal/ComponentHolder;->readTimeout:I

    .line 33
    invoke-virtual {p2}, Lcom/downloader/PRDownloaderConfig;->getConnectTimeout()I

    move-result v0

    iput v0, p0, Lcom/downloader/internal/ComponentHolder;->connectTimeout:I

    .line 34
    invoke-virtual {p2}, Lcom/downloader/PRDownloaderConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/downloader/internal/ComponentHolder;->userAgent:Ljava/lang/String;

    .line 35
    invoke-virtual {p2}, Lcom/downloader/PRDownloaderConfig;->getHttpClient()Lcom/downloader/httpclient/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/downloader/internal/ComponentHolder;->httpClient:Lcom/downloader/httpclient/HttpClient;

    .line 36
    invoke-virtual {p2}, Lcom/downloader/PRDownloaderConfig;->isDatabaseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/downloader/database/AppDbHelper;

    invoke-direct {v0, p1}, Lcom/downloader/database/AppDbHelper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/downloader/database/NoOpsDbHelper;

    invoke-direct {v0}, Lcom/downloader/database/NoOpsDbHelper;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/downloader/internal/ComponentHolder;->dbHelper:Lcom/downloader/database/DbHelper;

    .line 37
    invoke-virtual {p2}, Lcom/downloader/PRDownloaderConfig;->isDatabaseEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1e

    .line 38
    invoke-static {p1}, Lcom/downloader/PRDownloader;->cleanUp(I)V

    :cond_1
    return-void
.end method
