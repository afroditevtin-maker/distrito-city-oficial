.class Lcom/xyron/game/main/ui/AttachEdit$1;
.super Ljava/lang/Object;
.source "AttachEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/ui/AttachEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/ui/AttachEdit;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/ui/AttachEdit;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xyron/game/main/ui/AttachEdit$1;->this$0:Lcom/xyron/game/main/ui/AttachEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit$1;->this$0:Lcom/xyron/game/main/ui/AttachEdit;

    invoke-static {v0}, Lcom/xyron/game/main/ui/AttachEdit;->access$000(Lcom/xyron/game/main/ui/AttachEdit;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit$1;->this$0:Lcom/xyron/game/main/ui/AttachEdit;

    iget-boolean v0, v0, Lcom/xyron/game/main/ui/AttachEdit;->isShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit$1;->this$0:Lcom/xyron/game/main/ui/AttachEdit;

    invoke-static {v0}, Lcom/xyron/game/main/ui/AttachEdit;->access$100(Lcom/xyron/game/main/ui/AttachEdit;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit$1;->this$0:Lcom/xyron/game/main/ui/AttachEdit;

    invoke-static {v0}, Lcom/xyron/game/main/ui/AttachEdit;->access$200(Lcom/xyron/game/main/ui/AttachEdit;)I

    move-result v1

    iget-object v2, p0, Lcom/xyron/game/main/ui/AttachEdit$1;->this$0:Lcom/xyron/game/main/ui/AttachEdit;

    invoke-static {v2}, Lcom/xyron/game/main/ui/AttachEdit;->access$300(Lcom/xyron/game/main/ui/AttachEdit;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xyron/game/main/ui/AccessoryEditorControls;->action(II)I

    move-result v1

    iget-object v2, p0, Lcom/xyron/game/main/ui/AttachEdit$1;->this$0:Lcom/xyron/game/main/ui/AttachEdit;

    invoke-static {v2}, Lcom/xyron/game/main/ui/AttachEdit;->access$400(Lcom/xyron/game/main/ui/AttachEdit;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xyron/game/main/ui/AttachEdit;->AttachClick(IZ)V

    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit$1;->this$0:Lcom/xyron/game/main/ui/AttachEdit;

    invoke-static {v0}, Lcom/xyron/game/main/ui/AttachEdit;->access$500(Lcom/xyron/game/main/ui/AttachEdit;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
