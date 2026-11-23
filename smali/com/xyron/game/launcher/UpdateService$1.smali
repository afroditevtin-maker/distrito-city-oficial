.class Lcom/xyron/game/launcher/UpdateService$1;
.super Landroid/os/Handler;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/launcher/UpdateService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/UpdateService;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/UpdateService;Landroid/os/Looper;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 153
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v1, v0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    .line 154
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    .line 155
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-boolean v0, v0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    if-nez v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateService;->access$100(Lcom/xyron/game/launcher/UpdateService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {p1}, Lcom/xyron/game/launcher/UpdateService;->access$000(Lcom/xyron/game/launcher/UpdateService;)V

    return-void

    .line 157
    :cond_2
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v0, v0, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    new-instance v1, Lcom/xyron/game/launcher/UpdateService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/launcher/UpdateService$1$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/launcher/UpdateService$1;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateService;->access$200(Lcom/xyron/game/launcher/UpdateService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-boolean v0, v0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateService;->access$100(Lcom/xyron/game/launcher/UpdateService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateService;->access$200(Lcom/xyron/game/launcher/UpdateService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {p1}, Lcom/xyron/game/launcher/UpdateService;->access$000(Lcom/xyron/game/launcher/UpdateService;)V

    return-void

    .line 163
    :cond_5
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v0, v0, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    new-instance v1, Lcom/xyron/game/launcher/UpdateService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/launcher/UpdateService$1$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/launcher/UpdateService$1;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 161
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {p1}, Lcom/xyron/game/launcher/UpdateService;->access$000(Lcom/xyron/game/launcher/UpdateService;)V

    return-void

    .line 154
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {p1}, Lcom/xyron/game/launcher/UpdateService;->access$000(Lcom/xyron/game/launcher/UpdateService;)V

    return-void
.end method

.method synthetic lambda$handleMessage$0$com-xyron-game-launcher-UpdateService$1(Landroid/os/Message;)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateService;->access$200(Lcom/xyron/game/launcher/UpdateService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v1, v1, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    invoke-virtual {v1, p1}, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v1}, Lcom/xyron/game/launcher/UpdateService;->access$200(Lcom/xyron/game/launcher/UpdateService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v1}, Lcom/xyron/game/launcher/UpdateService;->access$100(Lcom/xyron/game/launcher/UpdateService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v2}, Lcom/xyron/game/launcher/UpdateService;->access$200(Lcom/xyron/game/launcher/UpdateService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v2}, Lcom/xyron/game/launcher/UpdateService;->access$100(Lcom/xyron/game/launcher/UpdateService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    throw v1
.end method

.method synthetic lambda$handleMessage$1$com-xyron-game-launcher-UpdateService$1(Landroid/os/Message;)V
    .locals 3

    .line 0
    const/4 v0, 0x0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v1, v1, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    invoke-virtual {v1, p1}, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v1}, Lcom/xyron/game/launcher/UpdateService;->access$200(Lcom/xyron/game/launcher/UpdateService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService$1;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v2}, Lcom/xyron/game/launcher/UpdateService;->access$200(Lcom/xyron/game/launcher/UpdateService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    throw v1
.end method
