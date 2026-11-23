.class Lcom/xyron/game/launcher/UpdateService$6;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Lcom/downloader/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/launcher/UpdateService;->startDataUpdating()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/UpdateService;

.field final synthetic val$arrayList:Ljava/util/ArrayList;

.field final synthetic val$arrayList1:Ljava/util/ArrayList;

.field final synthetic val$arrayList2:Ljava/util/ArrayList;

.field final synthetic val$arrayList3:Ljava/util/ArrayList;

.field final synthetic val$intRef:Lcom/xyron/game/launcher/Ref$IntRef;

.field final synthetic val$longRef1:Lcom/xyron/game/launcher/Ref$LongRef;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/UpdateService;Lcom/xyron/game/launcher/Ref$LongRef;Ljava/util/ArrayList;Lcom/xyron/game/launcher/Ref$IntRef;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1007
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService$6;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iput-object p2, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$longRef1:Lcom/xyron/game/launcher/Ref$LongRef;

    iput-object p3, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$arrayList2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$intRef:Lcom/xyron/game/launcher/Ref$IntRef;

    iput-object p5, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$arrayList:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$arrayList1:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$arrayList3:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete()V
    .locals 5

    .line 1010
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$6;->this$0:Lcom/xyron/game/launcher/UpdateService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 1011
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$longRef1:Lcom/xyron/game/launcher/Ref$LongRef;

    iget-wide v1, v0, Lcom/xyron/game/launcher/Ref$LongRef;->element:J

    iget-object v3, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$arrayList2:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$intRef:Lcom/xyron/game/launcher/Ref$IntRef;

    iget v4, v4, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/xyron/game/launcher/Ref$LongRef;->element:J

    .line 1012
    const-string/jumbo v0, "x1y2z"

    const-string v1, "completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Lcom/downloader/Error;)V
    .locals 3

    .line 1017
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$6;->this$0:Lcom/xyron/game/launcher/UpdateService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 1018
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$6;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v0, v0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFiles:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$arrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$intRef:Lcom/xyron/game/launcher/Ref$IntRef;

    iget v2, v2, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$6;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v0, v0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesName:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$arrayList1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$intRef:Lcom/xyron/game/launcher/Ref$IntRef;

    iget v2, v2, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$6;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v0, v0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesSize:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$arrayList2:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$intRef:Lcom/xyron/game/launcher/Ref$IntRef;

    iget v2, v2, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$6;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v0, v0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesUrl:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$arrayList3:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService$6;->val$intRef:Lcom/xyron/game/launcher/Ref$IntRef;

    iget v2, v2, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error downloadgamedata: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "x1y2z"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
