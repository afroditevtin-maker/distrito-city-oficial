.class public Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;
.super Landroid/view/SurfaceView;
.source "NvEventQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/devtech/NvEventQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "gSurfaceView"
.end annotation


# instance fields
.field myActivity:Lcom/nvidia/devtech/NvEventQueueActivity;

.field final synthetic this$0:Lcom/nvidia/devtech/NvEventQueueActivity;


# direct methods
.method public constructor <init>(Lcom/nvidia/devtech/NvEventQueueActivity;Landroid/content/Context;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    .line 162
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;->myActivity:Lcom/nvidia/devtech/NvEventQueueActivity;

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 166
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean p1, p1, Lcom/nvidia/devtech/NvEventQueueActivity;->IsShowingKeyboard:Z

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;->myActivity:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-virtual {p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->imeClosed()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
