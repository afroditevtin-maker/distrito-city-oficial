.class public final Lcom/xyron/game/launcher/IntroActivity;
.super Lcom/xyron/game/launcher/SampActivity;
.source "IntroActivity.java"


# instance fields
.field private final advance:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private navigated:Z

.field private started:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/xyron/game/launcher/SampActivity;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/IntroActivity;->handler:Landroid/os/Handler;

    .line 16
    new-instance v0, Lcom/xyron/game/launcher/IntroActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/IntroActivity$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/launcher/IntroActivity;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/IntroActivity;->advance:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-xyron-game-launcher-IntroActivity()V
    .locals 2

    .line 17
    iget-boolean v0, p0, Lcom/xyron/game/launcher/IntroActivity;->navigated:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xyron/game/launcher/IntroActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xyron/game/launcher/IntroActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/xyron/game/launcher/IntroActivity;->navigated:Z

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xyron/game/launcher/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {p0}, Lcom/xyron/game/launcher/IntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/IntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/IntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 21
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/IntroActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/launcher/IntroActivity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/IntroActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 24
    invoke-super {p0, p1}, Lcom/xyron/game/launcher/SampActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-string v0, "introStarted"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/xyron/game/launcher/IntroActivity;->started:J

    .line 26
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, -0xefefed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 27
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v1, 0x7f08007f

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/IntroActivity;->setContentView(Landroid/view/View;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x28a

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/xyron/game/launcher/IntroActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/xyron/game/launcher/IntroActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/launcher/IntroActivity;->advance:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 31
    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onResume()V

    iget-object v0, p0, Lcom/xyron/game/launcher/IntroActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/launcher/IntroActivity;->advance:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xyron/game/launcher/IntroActivity;->started:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f40

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    const-string v0, "introStarted"

    iget-wide v1, p0, Lcom/xyron/game/launcher/IntroActivity;->started:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-super {p0, p1}, Lcom/xyron/game/launcher/SampActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
