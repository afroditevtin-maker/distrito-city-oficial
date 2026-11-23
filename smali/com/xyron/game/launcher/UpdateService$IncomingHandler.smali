.class Lcom/xyron/game/launcher/UpdateService$IncomingHandler;
.super Landroid/os/Handler;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/UpdateService;


# direct methods
.method public constructor <init>(Lcom/xyron/game/launcher/UpdateService;Landroid/os/Looper;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    .line 176
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "GPU not found"

    const-string/jumbo v2, "x1y2z"

    const-string v3, "gputype"

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/xyron/game/launcher/UpdateService;->mGpuType:I

    .line 186
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget v0, v0, Lcom/xyron/game/launcher/UpdateService;->mGpuType:I

    if-nez v0, :cond_0

    .line 188
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v0, p1}, Lcom/xyron/game/launcher/UpdateService;->access$300(Lcom/xyron/game/launcher/UpdateService;Landroid/os/Message;)V

    .line 192
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-virtual {p1}, Lcom/xyron/game/launcher/UpdateService;->startUpdating()V

    goto/16 :goto_0

    .line 193
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 194
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-virtual {p1}, Lcom/xyron/game/launcher/UpdateService;->startGameUpdateChecking()V

    goto/16 :goto_0

    .line 195
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 196
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-virtual {p1}, Lcom/xyron/game/launcher/UpdateService;->updateGame()V

    goto/16 :goto_0

    .line 197
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v4, "status"

    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    .line 198
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object p1, p1, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    invoke-static {p1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v1, v1, Lcom/xyron/game/launcher/UpdateService;->mUpdateStatus:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {v1}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    .line 201
    iget-object v1, v0, Lcom/xyron/game/launcher/UpdateService;->mMessenger:Landroid/os/Messenger;

    iput-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 202
    iget-object v0, v0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    .line 204
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 206
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 208
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x5

    if-ne v0, v5, :cond_5

    .line 209
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object p1, p1, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    invoke-static {p1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v1, v1, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    invoke-virtual {v1}, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v0, v0, Lcom/xyron/game/launcher/UpdateService;->mMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 213
    :try_start_1
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v0, v0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 215
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 218
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-ne v0, v4, :cond_7

    .line 219
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/xyron/game/launcher/UpdateService;->mGpuType:I

    .line 220
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget v0, v0, Lcom/xyron/game/launcher/UpdateService;->mGpuType:I

    if-nez v0, :cond_6

    .line 222
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 225
    :cond_6
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v0, p1}, Lcom/xyron/game/launcher/UpdateService;->access$300(Lcom/xyron/game/launcher/UpdateService;Landroid/os/Message;)V

    .line 226
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-virtual {p1}, Lcom/xyron/game/launcher/UpdateService;->startUpdating()V

    :cond_7
    :goto_0
    return-void
.end method
