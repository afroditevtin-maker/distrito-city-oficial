.class Lcom/xyron/game/main/SAMP$10;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP;->showWithoutReset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/SAMP;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$10;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$10;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$300(Lcom/xyron/game/main/SAMP;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$10;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$10;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2400(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/AttachEdit;

    move-result-object v0

    iget-boolean v0, v0, Lcom/xyron/game/main/ui/AttachEdit;->isShow:Z

    if-eqz v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$10;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2400(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/AttachEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/AttachEdit;->showWithoutReset()V

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$10;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2300(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/dialog/DialogManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/xyron/game/main/ui/dialog/DialogManager;->isShow:Z

    if-eqz v0, :cond_2

    .line 1050
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$10;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2300(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/dialog/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/dialog/DialogManager;->showWithOldContent()V

    :cond_2
    return-void
.end method
