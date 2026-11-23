.class Lcom/xyron/game/launcher/UpdateService$7;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Lcom/downloader/OnProgressListener;


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

.field final synthetic val$intRef:Lcom/xyron/game/launcher/Ref$IntRef;

.field final synthetic val$longRef:Lcom/xyron/game/launcher/Ref$LongRef;

.field final synthetic val$longRef1:Lcom/xyron/game/launcher/Ref$LongRef;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/UpdateService;Lcom/xyron/game/launcher/Ref$LongRef;Lcom/xyron/game/launcher/Ref$LongRef;Ljava/util/ArrayList;Lcom/xyron/game/launcher/Ref$IntRef;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 983
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService$7;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iput-object p2, p0, Lcom/xyron/game/launcher/UpdateService$7;->val$longRef:Lcom/xyron/game/launcher/Ref$LongRef;

    iput-object p3, p0, Lcom/xyron/game/launcher/UpdateService$7;->val$longRef1:Lcom/xyron/game/launcher/Ref$LongRef;

    iput-object p4, p0, Lcom/xyron/game/launcher/UpdateService$7;->val$arrayList1:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/xyron/game/launcher/UpdateService$7;->val$intRef:Lcom/xyron/game/launcher/Ref$IntRef;

    iput-object p6, p0, Lcom/xyron/game/launcher/UpdateService$7;->val$arrayList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/downloader/Progress;)V
    .locals 6

    .line 986
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$7;->this$0:Lcom/xyron/game/launcher/UpdateService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$7;->val$longRef:Lcom/xyron/game/launcher/Ref$LongRef;

    iget-wide v4, v0, Lcom/xyron/game/launcher/Ref$LongRef;->element:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$7;->val$longRef:Lcom/xyron/game/launcher/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xyron/game/launcher/Ref$LongRef;->element:J

    .line 989
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$7;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v0, v0, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 990
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->DownloadGameData:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {v3}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "withProgress"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService$7;->val$longRef1:Lcom/xyron/game/launcher/Ref$LongRef;

    iget-wide v2, v2, Lcom/xyron/game/launcher/Ref$LongRef;->element:J

    iget-wide v4, p1, Lcom/downloader/Progress;->currentBytes:J

    add-long/2addr v2, v4

    const-string p1, "current"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 993
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$7;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-wide v1, v1, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameDataSize:J

    const-string v3, "total"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 994
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$7;->val$arrayList1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService$7;->val$intRef:Lcom/xyron/game/launcher/Ref$IntRef;

    iget v2, v2, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "filename"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$7;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "totalfiles"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 996
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$7;->val$intRef:Lcom/xyron/game/launcher/Ref$IntRef;

    iget v1, v1, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    int-to-long v1, v1

    const-string v3, "currentfile"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 997
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$7;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object p1, p1, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    if-eqz p1, :cond_0

    .line 999
    :try_start_0
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$7;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object p1, p1, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1001
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
