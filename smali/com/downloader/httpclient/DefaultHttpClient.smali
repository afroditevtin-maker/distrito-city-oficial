.class public Lcom/downloader/httpclient/DefaultHttpClient;
.super Ljava/lang/Object;
.source "DefaultHttpClient.java"

# interfaces
.implements Lcom/downloader/httpclient/HttpClient;


# instance fields
.field private connection:Ljava/net/URLConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addHeaders(Lcom/downloader/request/DownloadRequest;)V
    .locals 4

    .line 96
    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    iget-object v3, p0, Lcom/downloader/httpclient/DefaultHttpClient;->connection:Ljava/net/URLConnection;

    invoke-virtual {v3, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Lcom/downloader/httpclient/HttpClient;
    .locals 1

    .line 32
    new-instance v0, Lcom/downloader/httpclient/DefaultHttpClient;

    invoke-direct {v0}, Lcom/downloader/httpclient/DefaultHttpClient;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/downloader/httpclient/DefaultHttpClient;->clone()Lcom/downloader/httpclient/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public connect(Lcom/downloader/request/DownloadRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/downloader/httpclient/DefaultHttpClient;->connection:Ljava/net/URLConnection;

    .line 38
    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->getReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 39
    iget-object v0, p0, Lcom/downloader/httpclient/DefaultHttpClient;->connection:Ljava/net/URLConnection;

    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->getConnectTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 40
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 41
    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 40
    const-string v1, "bytes=%d-"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/downloader/httpclient/DefaultHttpClient;->connection:Ljava/net/URLConnection;

    const-string v2, "Range"

    invoke-virtual {v1, v2, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/downloader/httpclient/DefaultHttpClient;->connection:Ljava/net/URLConnection;

    const-string v1, "User-Agent"

    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/downloader/httpclient/DefaultHttpClient;->addHeaders(Lcom/downloader/request/DownloadRequest;)V

    .line 45
    iget-object p1, p0, Lcom/downloader/httpclient/DefaultHttpClient;->connection:Ljava/net/URLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    return-void
.end method

.method public getContentLength()J
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/downloader/httpclient/DefaultHttpClient;->connection:Ljava/net/URLConnection;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/downloader/httpclient/DefaultHttpClient;->connection:Ljava/net/URLConnection;

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/downloader/httpclient/DefaultHttpClient;->connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/downloader/httpclient/DefaultHttpClient;->connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/downloader/httpclient/DefaultHttpClient;->connection:Ljava/net/URLConnection;

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 52
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/downloader/httpclient/DefaultHttpClient;->connection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
