.class Lcom/xyron/game/launcher/UpdateService$10;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/launcher/UpdateService;->sendLoadingScreen(ZLjava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/UpdateService;

.field final synthetic val$current:J

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$total:J

.field final synthetic val$unpacking:Z


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/UpdateService;Ljava/lang/String;ZJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1221
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService$10;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iput-object p2, p0, Lcom/xyron/game/launcher/UpdateService$10;->val$filename:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xyron/game/launcher/UpdateService$10;->val$unpacking:Z

    iput-wide p4, p0, Lcom/xyron/game/launcher/UpdateService$10;->val$current:J

    iput-wide p6, p0, Lcom/xyron/game/launcher/UpdateService$10;->val$total:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1223
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$10;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v0, v0, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1224
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->CheckUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {v2}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "withProgress"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1226
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "filename"

    iget-object v3, p0, Lcom/xyron/game/launcher/UpdateService$10;->val$filename:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "unpacking"

    iget-boolean v3, p0, Lcom/xyron/game/launcher/UpdateService$10;->val$unpacking:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1228
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "current"

    iget-wide v3, p0, Lcom/xyron/game/launcher/UpdateService$10;->val$current:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1229
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "total"

    iget-wide v3, p0, Lcom/xyron/game/launcher/UpdateService$10;->val$total:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1230
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$10;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v1, v1, Lcom/xyron/game/launcher/UpdateService;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1231
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$10;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v1, v1, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 1233
    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$10;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v1, v1, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1235
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
