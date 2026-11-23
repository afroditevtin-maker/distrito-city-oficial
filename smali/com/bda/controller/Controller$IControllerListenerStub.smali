.class Lcom/bda/controller/Controller$IControllerListenerStub;
.super Lcom/bda/controller/IControllerListener$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IControllerListenerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bda/controller/Controller;


# direct methods
.method constructor <init>(Lcom/bda/controller/Controller;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/bda/controller/Controller$IControllerListenerStub;->this$0:Lcom/bda/controller/Controller;

    invoke-direct {p0}, Lcom/bda/controller/IControllerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Lcom/bda/controller/KeyEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getControllerId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 459
    iget-object v0, p0, Lcom/bda/controller/Controller$IControllerListenerStub;->this$0:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/ControllerListener;

    if-eqz v0, :cond_1

    .line 460
    new-instance v0, Lcom/bda/controller/Controller$KeyRunnable;

    iget-object v1, p0, Lcom/bda/controller/Controller$IControllerListenerStub;->this$0:Lcom/bda/controller/Controller;

    invoke-direct {v0, v1, p1}, Lcom/bda/controller/Controller$KeyRunnable;-><init>(Lcom/bda/controller/Controller;Lcom/bda/controller/KeyEvent;)V

    .line 461
    iget-object p1, p0, Lcom/bda/controller/Controller$IControllerListenerStub;->this$0:Lcom/bda/controller/Controller;

    iget-object p1, p1, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 462
    iget-object p1, p0, Lcom/bda/controller/Controller$IControllerListenerStub;->this$0:Lcom/bda/controller/Controller;

    iget-object p1, p1, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 464
    :cond_0
    invoke-virtual {v0}, Lcom/bda/controller/Controller$KeyRunnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    invoke-virtual {p1}, Lcom/bda/controller/MotionEvent;->getControllerId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 473
    iget-object v0, p0, Lcom/bda/controller/Controller$IControllerListenerStub;->this$0:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/ControllerListener;

    if-eqz v0, :cond_1

    .line 474
    new-instance v0, Lcom/bda/controller/Controller$MotionRunnable;

    iget-object v1, p0, Lcom/bda/controller/Controller$IControllerListenerStub;->this$0:Lcom/bda/controller/Controller;

    invoke-direct {v0, v1, p1}, Lcom/bda/controller/Controller$MotionRunnable;-><init>(Lcom/bda/controller/Controller;Lcom/bda/controller/MotionEvent;)V

    .line 475
    iget-object p1, p0, Lcom/bda/controller/Controller$IControllerListenerStub;->this$0:Lcom/bda/controller/Controller;

    iget-object p1, p1, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 476
    iget-object p1, p0, Lcom/bda/controller/Controller$IControllerListenerStub;->this$0:Lcom/bda/controller/Controller;

    iget-object p1, p1, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {v0}, Lcom/bda/controller/Controller$MotionRunnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStateEvent(Lcom/bda/controller/StateEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getControllerId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 487
    iget-object v0, p0, Lcom/bda/controller/Controller$IControllerListenerStub;->this$0:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/ControllerListener;

    if-eqz v0, :cond_1

    .line 488
    new-instance v0, Lcom/bda/controller/Controller$StateRunnable;

    iget-object v1, p0, Lcom/bda/controller/Controller$IControllerListenerStub;->this$0:Lcom/bda/controller/Controller;

    invoke-direct {v0, v1, p1}, Lcom/bda/controller/Controller$StateRunnable;-><init>(Lcom/bda/controller/Controller;Lcom/bda/controller/StateEvent;)V

    .line 489
    iget-object p1, p0, Lcom/bda/controller/Controller$IControllerListenerStub;->this$0:Lcom/bda/controller/Controller;

    iget-object p1, p1, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 490
    iget-object p1, p0, Lcom/bda/controller/Controller$IControllerListenerStub;->this$0:Lcom/bda/controller/Controller;

    iget-object p1, p1, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {v0}, Lcom/bda/controller/Controller$StateRunnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method
