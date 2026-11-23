.class public interface abstract Lcom/downloader/database/DbHelper;
.super Ljava/lang/Object;
.source "DbHelper.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract find(I)Lcom/downloader/database/DownloadModel;
.end method

.method public abstract getUnwantedModels(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/downloader/database/DownloadModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/downloader/database/DownloadModel;)V
.end method

.method public abstract remove(I)V
.end method

.method public abstract update(Lcom/downloader/database/DownloadModel;)V
.end method

.method public abstract updateProgress(IJJ)V
.end method
