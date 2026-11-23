.class Lcom/xyron/game/main/SAMP$3;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/SAMP;
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

    .line 612
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$3;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 615
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$3;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$1000(Lcom/xyron/game/main/SAMP;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$3;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 622
    :cond_0
    invoke-static {}, Lcom/xyron/game/main/SAMP;->access$500()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$3;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getHudFixVehicleState()[I

    move-result-object v0

    if-eqz v0, :cond_8

    .line 625
    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_8

    .line 626
    aget v2, v0, v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 627
    :goto_0
    :try_start_1
    aget v4, v0, v3
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v5, 0x2

    .line 628
    :try_start_2
    aget v5, v0, v5
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    .line 629
    :try_start_3
    array-length v6, v0

    const/16 v7, 0x8

    if-lt v6, v7, :cond_2

    iget-object v6, p0, Lcom/xyron/game/main/SAMP$3;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v6, v0}, Lcom/xyron/game/main/SAMP;->access$1100(Lcom/xyron/game/main/SAMP;[I)V

    .line 630
    :cond_2
    array-length v6, v0

    const/16 v8, 0xa

    if-lt v6, v8, :cond_5

    .line 631
    iget-object v6, p0, Lcom/xyron/game/main/SAMP$3;->this$0:Lcom/xyron/game/main/SAMP;

    aget v7, v0, v7

    if-ne v7, v3, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6, v7}, Lcom/xyron/game/main/SAMP;->toggleLockButton(Z)V

    .line 632
    iget-object v6, p0, Lcom/xyron/game/main/SAMP$3;->this$0:Lcom/xyron/game/main/SAMP;

    const/16 v7, 0x9

    aget v7, v0, v7

    if-ne v7, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v6, v1}, Lcom/xyron/game/main/SAMP;->togglePassengerButton(Z)V

    .line 634
    :cond_5
    array-length v1, v0

    const/16 v6, 0xb

    if-lt v1, v6, :cond_7

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$3;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v1, v1, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_7

    .line 635
    iget-object v1, p0, Lcom/xyron/game/main/SAMP$3;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v1, v1, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v6, 0x7f0a0308

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 636
    aget v0, v0, v8

    if-ne v0, v3, :cond_6

    const v0, 0x7f08020e

    goto :goto_2

    :cond_6
    const v0, 0x7f08020f

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_0

    :cond_7
    move v1, v2

    goto :goto_6

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_5

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_4

    :catch_2
    move-exception v0

    move v1, v2

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    const/4 v4, 0x0

    :goto_4
    const/4 v5, 0x0

    .line 641
    :goto_5
    const-string v2, "SAMP"

    const-string v3, "Native vehicle HUD helper unavailable"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 644
    :goto_6
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$3;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v1, v4, v5}, Lcom/xyron/game/main/SAMP;->updateAngraVehicleHud(ZII)V

    .line 645
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$3;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$100(Lcom/xyron/game/main/SAMP;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 616
    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$3;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v1, v1, v1}, Lcom/xyron/game/main/SAMP;->updateAngraVehicleHud(ZII)V

    return-void
.end method
