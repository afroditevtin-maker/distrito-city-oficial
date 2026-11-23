.class public Lcom/xyron/game/launcher/util/ButtonAnimator;
.super Ljava/lang/Object;
.source "ButtonAnimator.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final PRESSED_SCALE:F = 0.96f

.field private static final PRESS_ANIMATION_MS:J = 0x41L

.field private static final RELEASE_ANIMATION_MS:J = 0x55L


# instance fields
.field private final target:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/xyron/game/launcher/util/ButtonAnimator;->target:Landroid/view/View;

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private animateTo(FJ)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xyron/game/launcher/util/ButtonAnimator;->target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 36
    iget-object v0, p0, Lcom/xyron/game/launcher/util/ButtonAnimator;->target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 39
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const p1, 0x3f75c28f    # 0.96f

    const-wide/16 v0, 0x41

    .line 23
    invoke-direct {p0, p1, v0, v1}, Lcom/xyron/game/launcher/util/ButtonAnimator;->animateTo(FJ)V

    return p2

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    const-wide/16 v0, 0x55

    .line 28
    invoke-direct {p0, p1, v0, v1}, Lcom/xyron/game/launcher/util/ButtonAnimator;->animateTo(FJ)V

    :cond_2
    return p2
.end method
