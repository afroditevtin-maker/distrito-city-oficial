.class Lcom/xyron/game/launcher/UpdateService$8;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Lcom/downloader/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/launcher/UpdateService;->downloadGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/UpdateService;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/UpdateService;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1168
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService$8;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iput-object p2, p0, Lcom/xyron/game/launcher/UpdateService$8;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete()V
    .locals 4

    .line 1171
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$8;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v0, v0, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1172
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1173
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService$8;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apkPath"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$8;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v1, v1, Lcom/xyron/game/launcher/UpdateService;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1175
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$8;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v1, v1, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 1177
    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$8;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v1, v1, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1179
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1182
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$8;->this$0:Lcom/xyron/game/launcher/UpdateService;

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {v0, v1}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    .line 1183
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$8;->this$0:Lcom/xyron/game/launcher/UpdateService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 1184
    const-string/jumbo v0, "x1y2z"

    const-string v1, "completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Lcom/downloader/Error;)V
    .locals 1

    .line 1189
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$8;->this$0:Lcom/xyron/game/launcher/UpdateService;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 1190
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$8;->this$0:Lcom/xyron/game/launcher/UpdateService;

    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->SourceUnavailable:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {p1, v0}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    .line 1191
    const-string/jumbo p1, "x1y2z"

    const-string v0, "error downloadgame"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
