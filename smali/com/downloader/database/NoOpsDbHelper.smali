.class public Lcom/downloader/database/NoOpsDbHelper;
.super Ljava/lang/Object;
.source "NoOpsDbHelper.java"

# interfaces
.implements Lcom/downloader/database/DbHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public find(I)Lcom/downloader/database/DownloadModel;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getUnwantedModels(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/downloader/database/DownloadModel;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Lcom/downloader/database/DownloadModel;)V
    .locals 0

    return-void
.end method

.method public remove(I)V
    .locals 0

    return-void
.end method

.method public update(Lcom/downloader/database/DownloadModel;)V
    .locals 0

    return-void
.end method

.method public updateProgress(IJJ)V
    .locals 0

    return-void
.end method
