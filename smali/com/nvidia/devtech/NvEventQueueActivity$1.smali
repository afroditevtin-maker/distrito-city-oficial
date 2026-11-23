.class Lcom/nvidia/devtech/NvEventQueueActivity$1;
.super Ljava/lang/Object;
.source "NvEventQueueActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/devtech/NvEventQueueActivity;->systemInit()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/devtech/NvEventQueueActivity;


# direct methods
.method constructor <init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 842
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Surface changed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 843
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {p1, p3}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$302(Lcom/nvidia/devtech/NvEventQueueActivity;I)I

    .line 844
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {p1, p4}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$402(Lcom/nvidia/devtech/NvEventQueueActivity;I)I

    .line 845
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$300(Lcom/nvidia/devtech/NvEventQueueActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {p3}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$400(Lcom/nvidia/devtech/NvEventQueueActivity;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/nvidia/devtech/NvEventQueueActivity;->setGameWindowSize(II)V

    .line 846
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-virtual {p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->hideSystemUI()V

    .line 847
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$500(Lcom/nvidia/devtech/NvEventQueueActivity;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 809
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {v0}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$000(Lcom/nvidia/devtech/NvEventQueueActivity;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 810
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {v2}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$100(Lcom/nvidia/devtech/NvEventQueueActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 811
    :try_start_0
    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-object p1, v3, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 812
    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$202(Lcom/nvidia/devtech/NvEventQueueActivity;Z)Z

    .line 813
    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/nvidia/devtech/NvEventQueueActivity;->viewIsActive:Z

    .line 814
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {v2, v1}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$002(Lcom/nvidia/devtech/NvEventQueueActivity;Z)Z

    .line 819
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v2, v2, Lcom/nvidia/devtech/NvEventQueueActivity;->supportPauseResume:Z

    if-nez v2, :cond_0

    .line 820
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v3, v2, Lcom/nvidia/devtech/NvEventQueueActivity;->GetGLExtensions:Z

    invoke-virtual {v2, v3}, Lcom/nvidia/devtech/NvEventQueueActivity;->init(Z)Z

    .line 823
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "surfaceCreated: w:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {v4}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$300(Lcom/nvidia/devtech/NvEventQueueActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {v4}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$400(Lcom/nvidia/devtech/NvEventQueueActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 824
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {v2}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$300(Lcom/nvidia/devtech/NvEventQueueActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {v4}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$400(Lcom/nvidia/devtech/NvEventQueueActivity;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/nvidia/devtech/NvEventQueueActivity;->setGameWindowSize(II)V

    .line 825
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v2, v2, Lcom/nvidia/devtech/NvEventQueueActivity;->GetGLExtensions:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v2, v2, Lcom/nvidia/devtech/NvEventQueueActivity;->supportPauseResume:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 826
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-virtual {v2, v1}, Lcom/nvidia/devtech/NvEventQueueActivity;->init(Z)Z

    :cond_1
    if-eqz v0, :cond_2

    .line 830
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-virtual {v0, p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->GamepadReportSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 832
    :cond_2
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$500(Lcom/nvidia/devtech/NvEventQueueActivity;)V

    return-void

    :catchall_0
    move-exception p1

    .line 814
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 858
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$100(Lcom/nvidia/devtech/NvEventQueueActivity;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 859
    :try_start_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$202(Lcom/nvidia/devtech/NvEventQueueActivity;Z)Z

    .line 860
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 861
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 862
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$600(Lcom/nvidia/devtech/NvEventQueueActivity;)V

    .line 863
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$100(Lcom/nvidia/devtech/NvEventQueueActivity;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 864
    :try_start_1
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-virtual {p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->destroyEGLSurface()V

    .line 865
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v1, p1, Lcom/nvidia/devtech/NvEventQueueActivity;->viewIsActive:Z

    .line 866
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    .line 861
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
