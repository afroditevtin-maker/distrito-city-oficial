.class Lcom/xyron/game/main/SAMP$1;
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

    .line 558
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 560
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$000(Lcom/xyron/game/main/SAMP;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getHudFixNativeEditorState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto/16 :goto_2

    .line 566
    :cond_1
    iget-object v3, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/xyron/game/main/SAMP;->access$002(Lcom/xyron/game/main/SAMP;Z)Z

    .line 567
    iget-object v3, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$200(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/HudButtonEditor;

    move-result-object v3

    const/4 v5, 0x3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$200(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/HudButtonEditor;

    move-result-object v3

    if-ne v0, v5, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3, v6}, Lcom/xyron/game/main/HudButtonEditor;->finish(Z)V

    :cond_3
    if-ne v0, v5, :cond_4

    .line 569
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/ConfigValidator;->markNativeHudLayoutSaved(Landroid/content/Context;)V

    .line 570
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getHudFixVoicePosition()[F

    move-result-object v0

    if-eqz v0, :cond_4

    .line 571
    array-length v3, v0

    const/4 v6, 0x4

    if-lt v3, v6, :cond_4

    aget v3, v0, v4

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_4

    .line 572
    iget-object v3, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    const-string/jumbo v6, "xyron_hud_render_settings"

    invoke-virtual {v3, v6, v4}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "voiceX"

    aget v7, v0, v4

    .line 573
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "voiceY"

    aget v7, v0, v1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "voiceWidth"

    aget v2, v0, v2

    .line 574
    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "voiceHeight"

    aget v0, v0, v5

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 577
    :cond_4
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$300(Lcom/xyron/game/main/SAMP;)I

    move-result v2

    if-ne v2, v1, :cond_5

    goto :goto_1

    :cond_5
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 578
    :cond_6
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->showSettingsOverlay()V

    return-void

    .line 563
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$1;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$100(Lcom/xyron/game/main/SAMP;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_3
    return-void
.end method
