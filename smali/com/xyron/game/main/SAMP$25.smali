.class Lcom/xyron/game/main/SAMP$25;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP;->showhud()V
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

    .line 2437
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2574
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-xyron-game-main-SAMP$25(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2481
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2482
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$7500(Lcom/xyron/game/main/SAMP;)V

    :cond_0
    return p2
.end method

.method synthetic lambda$run$1$com-xyron-game-main-SAMP$25()V
    .locals 3

    .line 0
    const/4 v0, 0x2

    .line 2487
    new-array v0, v0, [I

    .line 2488
    iget-object v1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v1}, Lcom/xyron/game/main/SAMP;->access$4800(Lcom/xyron/game/main/SAMP;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2489
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Alvo do minimapa: x="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " w="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    .line 2491
    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$4800(Lcom/xyron/game/main/SAMP;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    .line 2492
    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$4800(Lcom/xyron/game/main/SAMP;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2489
    const-string v1, "SAMP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$run$10$com-xyron-game-main-SAMP$25(Landroid/view/View;)V
    .locals 0

    .line 2692
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->showInventoryOverlay()V

    return-void
.end method

.method synthetic lambda$run$11$com-xyron-game-main-SAMP$25(Landroid/view/View;)V
    .locals 1

    .line 2693
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v0, "/recompensa"

    invoke-static {p1, v0}, Lcom/xyron/game/main/SAMP;->access$6700(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$run$12$com-xyron-game-main-SAMP$25(Landroid/widget/ImageButton;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 2697
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2, p1}, Lcom/xyron/game/main/SAMP;->access$6900(Lcom/xyron/game/main/SAMP;Landroid/widget/ImageButton;)V

    return-void
.end method

.method synthetic lambda$run$13$com-xyron-game-main-SAMP$25(Landroid/widget/ImageButton;)V
    .locals 1

    .line 2698
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$6900(Lcom/xyron/game/main/SAMP;Landroid/widget/ImageButton;)V

    return-void
.end method

.method synthetic lambda$run$14$com-xyron-game-main-SAMP$25(Landroid/widget/ImageButton;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 2698
    new-instance p2, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/SAMP$25;Landroid/widget/ImageButton;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$run$15$com-xyron-game-main-SAMP$25(Landroid/widget/ImageButton;)V
    .locals 1

    .line 2699
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$6900(Lcom/xyron/game/main/SAMP;Landroid/widget/ImageButton;)V

    return-void
.end method

.method synthetic lambda$run$16$com-xyron-game-main-SAMP$25(Landroid/view/View;)V
    .locals 1

    .line 2701
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$6600(Lcom/xyron/game/main/SAMP;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$6800(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/PhoneApps;

    move-result-object p1

    const-string/jumbo v0, "{\"type\":\"admin:open\"}"

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/PhoneApps;->postMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$run$17$com-xyron-game-main-SAMP$25(Landroid/view/View;)V
    .locals 1

    .line 2703
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v0, "/pass"

    invoke-static {p1, v0}, Lcom/xyron/game/main/SAMP;->access$6700(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$run$18$com-xyron-game-main-SAMP$25(Landroid/view/View;)V
    .locals 2

    .line 2704
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shop|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|0|0|1|0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    return-void
.end method

.method synthetic lambda$run$2$com-xyron-game-main-SAMP$25([F[ZLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2500
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 2501
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    aput p3, p1, v0

    aput p3, p1, v1

    .line 2502
    aput-boolean v1, p2, v1

    goto :goto_0

    .line 2503
    :cond_0
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    .line 2504
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    aget v2, p1, v1

    sub-float/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float p3, p3, v2

    if-lez p3, :cond_1

    .line 2505
    aput-boolean v0, p2, v1

    .line 2506
    :cond_1
    aget-boolean p3, p2, v1

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/xyron/game/main/SAMP;->access$500()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aget v3, p1, v0

    sub-float/2addr v2, v3

    invoke-virtual {p3, v2}, Lcom/xyron/game/main/SAMP;->scrollHudFixChat(F)V

    .line 2507
    :cond_2
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    aput p3, p1, v0

    .line 2509
    :cond_3
    :goto_0
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_4

    aget-boolean p1, p2, v1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    .line 2511
    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$7000(Lcom/xyron/game/main/SAMP;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    .line 2512
    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$7100(Lcom/xyron/game/main/SAMP;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    .line 2513
    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$7200(Lcom/xyron/game/main/SAMP;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    .line 2514
    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$7300(Lcom/xyron/game/main/SAMP;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    .line 2515
    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$7400(Lcom/xyron/game/main/SAMP;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 2517
    :try_start_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->openHudFixChatInput()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2519
    const-string p2, "SAMP"

    const-string p3, "Native chat touch helper unavailable"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return v0
.end method

.method synthetic lambda$run$4$com-xyron-game-main-SAMP$25(Landroid/view/View;)V
    .locals 2

    .line 2568
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$4200(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/AngraServerBridge;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$4200(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/AngraServerBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xyron/game/main/AngraServerBridge;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2569
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$4200(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/AngraServerBridge;

    move-result-object p1

    const-string v0, "tasks"

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    return-void

    .line 2571
    :cond_0
    new-instance p1, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p1, v0}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string v0, "Tarefas"

    .line 2572
    invoke-virtual {p1, v0}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    const-string v0, "N\u00e3o h\u00e1 tarefas dispon\u00edveis no momento."

    .line 2573
    invoke-virtual {p1, v0}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    new-instance v0, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda10;-><init>()V

    .line 2574
    const-string v1, "Voltar"

    invoke-virtual {p1, v1, v0}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$run$5$com-xyron-game-main-SAMP$25(Landroid/view/View;)V
    .locals 0

    .line 2595
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$3700(Lcom/xyron/game/main/SAMP;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->EsconderTeclas()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->MostrarTeclas()V

    :goto_0
    return-void
.end method

.method synthetic lambda$run$6$com-xyron-game-main-SAMP$25(Landroid/view/View;)V
    .locals 1

    .line 2599
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v0, "/farol"

    invoke-static {p1, v0}, Lcom/xyron/game/main/SAMP;->access$6700(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$run$7$com-xyron-game-main-SAMP$25(Landroid/view/View;)V
    .locals 1

    .line 2603
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v0, "/motor"

    invoke-static {p1, v0}, Lcom/xyron/game/main/SAMP;->access$6700(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$run$8$com-xyron-game-main-SAMP$25(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2651
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "LogCat"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2652
    const-string p2, "ALT pressed"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2654
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3f666666    # 0.9f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x2d

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2655
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1, v3}, Lcom/xyron/game/main/SAMP;->access$3600(Lcom/xyron/game/main/SAMP;Z)V

    return v3

    .line 2658
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 2659
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v3

    .line 2660
    :cond_2
    :goto_0
    const-string v0, "ALT released"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$3600(Lcom/xyron/game/main/SAMP;Z)V

    .line 2662
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2663
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-ne p2, v3, :cond_3

    .line 2664
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_3
    return v3
.end method

.method synthetic lambda$run$9$com-xyron-game-main-SAMP$25(Landroid/view/View;)V
    .locals 0

    .line 2691
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->showPhoneOverlay()V

    return-void
.end method

.method public run()V
    .locals 11

    .line 2440
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    return-void

    .line 2441
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$4200(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/AngraServerBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$4200(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/AngraServerBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraServerBridge;->onGameplayHudShown()V

    .line 2442
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$4300(Lcom/xyron/game/main/SAMP;)V

    .line 2443
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    # Mantém vida/colete/fome fora do HUD, mesmo se um estilo posterior reativar o painel.
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;
    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;
    const v2, 0x7f0a01d4
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;
    move-result-object v0
    const/16 v2, 0x8
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2444
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v2, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a0302

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/xyron/game/main/SAMP;->access$602(Lcom/xyron/game/main/SAMP;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2445
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v2, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a0300

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/xyron/game/main/SAMP;->access$702(Lcom/xyron/game/main/SAMP;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2446
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$900(Lcom/xyron/game/main/SAMP;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    const-string v2, "America/Sao_Paulo"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2447
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/xyron/game/main/SAMP;->access$402(Lcom/xyron/game/main/SAMP;Z)Z

    .line 2448
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$100(Lcom/xyron/game/main/SAMP;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$4400(Lcom/xyron/game/main/SAMP;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2449
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$100(Lcom/xyron/game/main/SAMP;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$4400(Lcom/xyron/game/main/SAMP;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2450
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v3, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v4, 0x7f0a01cd

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v3, v0, Lcom/xyron/game/main/SAMP;->hud1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2452
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud1:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 2453
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud1:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    .line 2454
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$4500(Lcom/xyron/game/main/SAMP;)V

    .line 2455
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$4600(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/AngraHudExperiment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$4600(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/AngraHudExperiment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraHudExperiment;->style()V

    .line 2456
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$4700(Lcom/xyron/game/main/SAMP;)V

    .line 2457
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v3, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v4, 0x7f0a0304

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xyron/game/main/SAMP;->access$4802(Lcom/xyron/game/main/SAMP;Landroid/view/View;)Landroid/view/View;

    .line 2458
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v3, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v4, 0x7f0a0307

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/xyron/game/main/SAMP;->access$4902(Lcom/xyron/game/main/SAMP;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2459
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v3, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v4, 0x7f0a030c

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xyron/game/main/SAMP;->access$5002(Lcom/xyron/game/main/SAMP;Landroid/view/View;)Landroid/view/View;

    .line 2460
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v3, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v4, 0x7f0a030b

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/xyron/game/main/SAMP;->access$5102(Lcom/xyron/game/main/SAMP;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2461
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v3, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v4, 0x7f0a0310

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/xyron/game/main/SAMP;->access$5202(Lcom/xyron/game/main/SAMP;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2462
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v3, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    iget-object v4, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v4}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08021c

    invoke-direct {v3, v4, v5, v2}, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;-><init>(Landroid/content/res/Resources;IZ)V

    invoke-static {v0, v3}, Lcom/xyron/game/main/SAMP;->access$5302(Lcom/xyron/game/main/SAMP;Lcom/xyron/game/main/ui/RioVehicleIconDrawable;)Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    .line 2463
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v3, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    iget-object v4, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v4}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080219

    invoke-direct {v3, v4, v5, v2}, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;-><init>(Landroid/content/res/Resources;IZ)V

    invoke-static {v0, v3}, Lcom/xyron/game/main/SAMP;->access$5402(Lcom/xyron/game/main/SAMP;Lcom/xyron/game/main/ui/RioVehicleIconDrawable;)Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    .line 2464
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a0311

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$5300(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2465
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a030f

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$5400(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2466
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a02f7

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v4, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    iget-object v5, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    .line 2467
    invoke-virtual {v5}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08021a

    invoke-direct {v4, v5, v6, v1}, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;-><init>(Landroid/content/res/Resources;IZ)V

    .line 2466
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2468
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v4, 0x7f0a02f6

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v5, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    iget-object v6, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    .line 2469
    invoke-virtual {v6}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080218

    invoke-direct {v5, v6, v7, v1}, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;-><init>(Landroid/content/res/Resources;IZ)V

    .line 2468
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2470
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v5, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v6, 0x7f0a0313

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/xyron/game/main/SAMP;->access$5502(Lcom/xyron/game/main/SAMP;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2471
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v5, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v6, 0x7f0a0312

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/xyron/game/main/SAMP;->access$5602(Lcom/xyron/game/main/SAMP;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2472
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    const v5, 0x7f0a02fa

    invoke-virtual {v0, v5}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xyron/game/main/SAMP;->access$5702(Lcom/xyron/game/main/SAMP;Landroid/view/View;)Landroid/view/View;

    .line 2473
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    const v5, 0x7f0a02fb

    invoke-virtual {v0, v5}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/xyron/game/main/SAMP;->access$5802(Lcom/xyron/game/main/SAMP;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2474
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    const v5, 0x7f0a02fe

    invoke-virtual {v0, v5}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/xyron/game/main/SAMP;->access$5902(Lcom/xyron/game/main/SAMP;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2475
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    const v5, 0x7f0a02fc

    invoke-virtual {v0, v5}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/xyron/game/main/SAMP;->access$6002(Lcom/xyron/game/main/SAMP;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2476
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$6100(Lcom/xyron/game/main/SAMP;)V

    .line 2477
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$4800(Lcom/xyron/game/main/SAMP;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2478
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$4800(Lcom/xyron/game/main/SAMP;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 2479
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v5, 0x7f0a0303

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2480
    new-instance v5, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda11;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2486
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$4800(Lcom/xyron/game/main/SAMP;)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2495
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v5, 0x7f0a02f4

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v5, 0x2

    .line 2497
    new-array v5, v5, [F

    fill-array-data v5, :array_0

    .line 2498
    new-array v6, v2, [Z

    aput-boolean v1, v6, v1

    .line 2499
    new-instance v7, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, v5, v6}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/SAMP$25;[F[Z)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2525
    :cond_4
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, v2}, Lcom/xyron/game/main/SAMP;->access$1002(Lcom/xyron/game/main/SAMP;Z)Z

    .line 2526
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$100(Lcom/xyron/game/main/SAMP;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$6200(Lcom/xyron/game/main/SAMP;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2527
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$100(Lcom/xyron/game/main/SAMP;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$6200(Lcom/xyron/game/main/SAMP;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v5, 0x1c2

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2533
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v2, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v5, 0x7f0a0164

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/xyron/game/main/SAMP;->access$3402(Lcom/xyron/game/main/SAMP;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2534
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$3400(Lcom/xyron/game/main/SAMP;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2537
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v6, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v7, 0x7f0a03b7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/xyron/game/main/SAMP;->access$3502(Lcom/xyron/game/main/SAMP;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2538
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$3500(Lcom/xyron/game/main/SAMP;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2540
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v6, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v8, 0x7f0a01e3

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/xyron/game/main/SAMP;->hud_y_v:Landroid/widget/TextView;

    .line 2541
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v6, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v9, 0x7f0a01d1

    invoke-virtual {v6, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/xyron/game/main/SAMP;->hud_f_v:Landroid/widget/TextView;

    .line 2542
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v6, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v10, 0x7f0a01ce

    invoke-virtual {v6, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/xyron/game/main/SAMP;->hud_alt_v:Landroid/widget/TextView;

    .line 2543
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_y_v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2544
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_f_v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2545
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_alt_v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2546
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$3702(Lcom/xyron/game/main/SAMP;Z)Z

    .line 2547
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$6300(Lcom/xyron/game/main/SAMP;)V

    .line 2549
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0010

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$1;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$1;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2558
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a009b

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$2;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$2;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2567
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0306

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2576
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0092

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$3;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$3;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2585
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0091

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$4;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$4;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2594
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0094

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2597
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2599
    new-instance v2, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2601
    :cond_5
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2603
    new-instance v2, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda6;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2605
    :cond_6
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$5;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$5;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2614
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$6;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$6;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2629
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$7;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$7;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2639
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$8;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$8;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2650
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda7;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2670
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0197

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v3}, Lcom/xyron/game/main/SAMP;->isHudChatVisible()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    goto :goto_0

    :cond_7
    const/high16 v3, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    .line 2671
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$9;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$9;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2682
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0095

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$10;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$10;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2691
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0099

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda8;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2692
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0097

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda9;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2693
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0096

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda12;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2694
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a004c

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$6600(Lcom/xyron/game/main/SAMP;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_1

    :cond_8
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2695
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$4600(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/AngraHudExperiment;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$4600(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/AngraHudExperiment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraHudExperiment;->layoutGeometry()V

    .line 2696
    :cond_9
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0093

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 2697
    new-instance v1, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, v0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda13;-><init>(Lcom/xyron/game/main/SAMP$25;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2698
    iget-object v1, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v1, v1, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a030e

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, v0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda14;-><init>(Lcom/xyron/game/main/SAMP$25;Landroid/widget/ImageButton;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2699
    new-instance v1, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, v0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda15;-><init>(Lcom/xyron/game/main/SAMP$25;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    .line 2700
    new-instance v1, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda16;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2703
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda17;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2704
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda18;-><init>(Lcom/xyron/game/main/SAMP$25;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
