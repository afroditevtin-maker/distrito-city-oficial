.class Lcom/xyron/game/main/SAMP$9;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP;->hideWithoutReset()V
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

    .line 1030
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$9;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1033
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$9;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1034
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$9;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2300(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/dialog/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/dialog/DialogManager;->hideWithoutReset()V

    .line 1035
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$9;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2400(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/AttachEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/AttachEdit;->hideWithoutReset()V

    return-void
.end method
