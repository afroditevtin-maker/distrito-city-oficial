.class public Lcom/downloader/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private error:Lcom/downloader/Error;

.field private isCancelled:Z

.field private isPaused:Z

.field private isSuccessful:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lcom/downloader/Error;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/downloader/Response;->error:Lcom/downloader/Error;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/downloader/Response;->isCancelled:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/downloader/Response;->isPaused:Z

    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/downloader/Response;->isSuccessful:Z

    return v0
.end method

.method public setCancelled(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/downloader/Response;->isCancelled:Z

    return-void
.end method

.method public setError(Lcom/downloader/Error;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/downloader/Response;->error:Lcom/downloader/Error;

    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/downloader/Response;->isPaused:Z

    return-void
.end method

.method public setSuccessful(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/downloader/Response;->isSuccessful:Z

    return-void
.end method
