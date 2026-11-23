.class public Lcom/downloader/Error;
.super Ljava/lang/Object;
.source "Error.java"


# instance fields
.field private connectionException:Ljava/lang/Throwable;

.field private headerFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private isConnectionError:Z

.field private isServerError:Z

.field private responseCode:I

.field private serverErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectionException()Ljava/lang/Throwable;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/downloader/Error;->connectionException:Ljava/lang/Throwable;

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

    .line 48
    iget-object v0, p0, Lcom/downloader/Error;->headerFields:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/downloader/Error;->responseCode:I

    return v0
.end method

.method public getServerErrorMessage()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/downloader/Error;->serverErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isConnectionError()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/downloader/Error;->isConnectionError:Z

    return v0
.end method

.method public isServerError()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/downloader/Error;->isServerError:Z

    return v0
.end method

.method public setConnectionError(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/downloader/Error;->isConnectionError:Z

    return-void
.end method

.method public setConnectionException(Ljava/lang/Throwable;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/downloader/Error;->connectionException:Ljava/lang/Throwable;

    return-void
.end method

.method public setHeaderFields(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/downloader/Error;->headerFields:Ljava/util/Map;

    return-void
.end method

.method public setResponseCode(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/downloader/Error;->responseCode:I

    return-void
.end method

.method public setServerError(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/downloader/Error;->isServerError:Z

    return-void
.end method

.method public setServerErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/downloader/Error;->serverErrorMessage:Ljava/lang/String;

    return-void
.end method
