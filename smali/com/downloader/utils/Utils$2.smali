.class Lcom/downloader/utils/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/downloader/utils/Utils;->deleteUnwantedModelsAndTempFiles(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$days:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput p1, p0, Lcom/downloader/utils/Utils$2;->val$days:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 78
    invoke-static {}, Lcom/downloader/internal/ComponentHolder;->getInstance()Lcom/downloader/internal/ComponentHolder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/downloader/internal/ComponentHolder;->getDbHelper()Lcom/downloader/database/DbHelper;

    move-result-object v0

    iget v1, p0, Lcom/downloader/utils/Utils$2;->val$days:I

    .line 80
    invoke-interface {v0, v1}, Lcom/downloader/database/DbHelper;->getUnwantedModels(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/downloader/database/DownloadModel;

    .line 83
    invoke-virtual {v1}, Lcom/downloader/database/DownloadModel;->getDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/downloader/database/DownloadModel;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/downloader/utils/Utils;->getTempPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {}, Lcom/downloader/internal/ComponentHolder;->getInstance()Lcom/downloader/internal/ComponentHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/downloader/internal/ComponentHolder;->getDbHelper()Lcom/downloader/database/DbHelper;

    move-result-object v3

    invoke-virtual {v1}, Lcom/downloader/database/DownloadModel;->getId()I

    move-result v1

    invoke-interface {v3, v1}, Lcom/downloader/database/DbHelper;->remove(I)V

    .line 85
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-void
.end method
