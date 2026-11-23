.class Lcom/downloader/utils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/downloader/utils/Utils;->deleteTempFileAndDatabaseEntryInBackground(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadId:I

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput p1, p0, Lcom/downloader/utils/Utils$1;->val$downloadId:I

    iput-object p2, p0, Lcom/downloader/utils/Utils$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    invoke-static {}, Lcom/downloader/internal/ComponentHolder;->getInstance()Lcom/downloader/internal/ComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/internal/ComponentHolder;->getDbHelper()Lcom/downloader/database/DbHelper;

    move-result-object v0

    iget v1, p0, Lcom/downloader/utils/Utils$1;->val$downloadId:I

    invoke-interface {v0, v1}, Lcom/downloader/database/DbHelper;->remove(I)V

    .line 64
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/downloader/utils/Utils$1;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
