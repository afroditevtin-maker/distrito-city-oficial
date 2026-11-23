.class Lcom/xyron/game/main/SAMP$26;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP;->hidehud()V
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

    .line 2713
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2716
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    return-void

    .line 2717
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$302(Lcom/xyron/game/main/SAMP;I)I

    .line 2718
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$1002(Lcom/xyron/game/main/SAMP;Z)Z

    .line 2719
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$402(Lcom/xyron/game/main/SAMP;Z)Z

    .line 2720
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$100(Lcom/xyron/game/main/SAMP;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$6200(Lcom/xyron/game/main/SAMP;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2721
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$100(Lcom/xyron/game/main/SAMP;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$4400(Lcom/xyron/game/main/SAMP;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2722
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v1, v1, v1}, Lcom/xyron/game/main/SAMP;->updateAngraVehicleHud(ZII)V

    .line 2723
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$3600(Lcom/xyron/game/main/SAMP;Z)V

    .line 2724
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$7600(Lcom/xyron/game/main/SAMP;Z)V

    .line 2725
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$6100(Lcom/xyron/game/main/SAMP;)V

    .line 2726
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$7700(Lcom/xyron/game/main/SAMP;)V

    .line 2727
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$7800(Lcom/xyron/game/main/SAMP;)V

    .line 2728
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$7900(Lcom/xyron/game/main/SAMP;)V

    .line 2729
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$8000(Lcom/xyron/game/main/SAMP;)V

    .line 2730
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$8100(Lcom/xyron/game/main/SAMP;)V

    .line 2731
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$8200(Lcom/xyron/game/main/SAMP;Z)V

    .line 2732
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$8300(Lcom/xyron/game/main/SAMP;)V

    .line 2733
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 2734
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v2, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a01cd

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, v0, Lcom/xyron/game/main/SAMP;->hud1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2737
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud1:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 2738
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$26;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud1:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    return-void
.end method
