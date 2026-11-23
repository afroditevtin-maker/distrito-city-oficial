.class public Lcom/downloader/request/DownloadRequestBuilder;
.super Ljava/lang/Object;
.source "DownloadRequestBuilder.java"

# interfaces
.implements Lcom/downloader/request/RequestBuilder;


# instance fields
.field connectTimeout:I

.field dirPath:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field headerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field priority:Lcom/downloader/Priority;

.field readTimeout:I

.field tag:Ljava/lang/Object;

.field url:Ljava/lang/String;

.field userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/downloader/Priority;->MEDIUM:Lcom/downloader/Priority;

    iput-object v0, p0, Lcom/downloader/request/DownloadRequestBuilder;->priority:Lcom/downloader/Priority;

    .line 26
    iput-object p1, p0, Lcom/downloader/request/DownloadRequestBuilder;->url:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/downloader/request/DownloadRequestBuilder;->dirPath:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/downloader/request/DownloadRequestBuilder;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/downloader/request/DownloadRequest;
    .locals 1

    .line 78
    new-instance v0, Lcom/downloader/request/DownloadRequest;

    invoke-direct {v0, p0}, Lcom/downloader/request/DownloadRequest;-><init>(Lcom/downloader/request/DownloadRequestBuilder;)V

    return-object v0
.end method

.method public setConnectTimeout(I)Lcom/downloader/request/DownloadRequestBuilder;
    .locals 0

    .line 67
    iput p1, p0, Lcom/downloader/request/DownloadRequestBuilder;->connectTimeout:I

    return-object p0
.end method

.method public bridge synthetic setConnectTimeout(I)Lcom/downloader/request/RequestBuilder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/downloader/request/DownloadRequestBuilder;->setConnectTimeout(I)Lcom/downloader/request/DownloadRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/downloader/request/DownloadRequestBuilder;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/downloader/request/DownloadRequestBuilder;->headerMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/downloader/request/DownloadRequestBuilder;->headerMap:Ljava/util/HashMap;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/downloader/request/DownloadRequestBuilder;->headerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/downloader/request/DownloadRequestBuilder;->headerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 42
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method

.method public bridge synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/downloader/request/RequestBuilder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/downloader/request/DownloadRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/downloader/request/DownloadRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPriority(Lcom/downloader/Priority;)Lcom/downloader/request/DownloadRequestBuilder;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/downloader/request/DownloadRequestBuilder;->priority:Lcom/downloader/Priority;

    return-object p0
.end method

.method public bridge synthetic setPriority(Lcom/downloader/Priority;)Lcom/downloader/request/RequestBuilder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/downloader/request/DownloadRequestBuilder;->setPriority(Lcom/downloader/Priority;)Lcom/downloader/request/DownloadRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setReadTimeout(I)Lcom/downloader/request/DownloadRequestBuilder;
    .locals 0

    .line 61
    iput p1, p0, Lcom/downloader/request/DownloadRequestBuilder;->readTimeout:I

    return-object p0
.end method

.method public bridge synthetic setReadTimeout(I)Lcom/downloader/request/RequestBuilder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/downloader/request/DownloadRequestBuilder;->setReadTimeout(I)Lcom/downloader/request/DownloadRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTag(Ljava/lang/Object;)Lcom/downloader/request/DownloadRequestBuilder;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/downloader/request/DownloadRequestBuilder;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)Lcom/downloader/request/RequestBuilder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/downloader/request/DownloadRequestBuilder;->setTag(Ljava/lang/Object;)Lcom/downloader/request/DownloadRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/downloader/request/DownloadRequestBuilder;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/downloader/request/DownloadRequestBuilder;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)Lcom/downloader/request/RequestBuilder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/downloader/request/DownloadRequestBuilder;->setUserAgent(Ljava/lang/String;)Lcom/downloader/request/DownloadRequestBuilder;

    move-result-object p1

    return-object p1
.end method
