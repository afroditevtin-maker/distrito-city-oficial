.class public Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;
.super Landroid/view/View;
.source "TwinFishesLoaderView.java"


# static fields
.field private static final ANIMATION_DURATION_MS:J = 0x6a4L

.field private static final CIRCLE_COUNT:I = 0xa


# instance fields
.field private final animators:[Landroid/animation/ValueAnimator;

.field private bottomY:F

.field private centerX:F

.field private centerY:F

.field private final paint:Landroid/graphics/Paint;

.field private final radii:[F

.field private final rotations:[F

.field private topY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->paint:Landroid/graphics/Paint;

    const/16 p1, 0xa

    .line 16
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->rotations:[F

    .line 17
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->radii:[F

    .line 18
    new-array p1, p1, [Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->animators:[Landroid/animation/ValueAnimator;

    .line 24
    invoke-direct {p0}, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->paint:Landroid/graphics/Paint;

    const/16 p1, 0xa

    .line 16
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->rotations:[F

    .line 17
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->radii:[F

    .line 18
    new-array p1, p1, [Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->animators:[Landroid/animation/ValueAnimator;

    .line 25
    invoke-direct {p0}, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->paint:Landroid/graphics/Paint;

    const/16 p1, 0xa

    .line 16
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->rotations:[F

    .line 17
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->radii:[F

    .line 18
    new-array p1, p1, [Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->animators:[Landroid/animation/ValueAnimator;

    .line 28
    invoke-direct {p0}, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->initialize()V

    return-void
.end method

.method private cancelAnimations()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->animators:[Landroid/animation/ValueAnimator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initialize()V
    .locals 7

    .line 32
    iget-object v0, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    const/4 v2, 0x2

    .line 35
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-wide/16 v3, 0x6a4

    .line 37
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    add-int/lit8 v3, v0, -0x5

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    int-to-long v3, v3

    const-wide/16 v5, 0x64

    mul-long v3, v3, v5

    .line 38
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 39
    new-instance v3, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    iget-object v3, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->animators:[Landroid/animation/ValueAnimator;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private startAnimations()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->animators:[Landroid/animation/ValueAnimator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method synthetic lambda$initialize$0$com-xyron-game-launcher-ui-TwinFishesLoaderView(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->rotations:[F

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, p1

    .line 41
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 62
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->startAnimations()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->cancelAnimations()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 84
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 87
    iget-object v1, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->rotations:[F

    aget v1, v1, v0

    iget v2, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->centerX:F

    iget v3, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->centerY:F

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 88
    iget v1, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->centerX:F

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->topY:F

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->bottomY:F

    :goto_1
    iget-object v3, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->radii:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 50
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x41200000    # 10.0f

    div-float p4, p3, p4

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 52
    iput p1, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->centerX:F

    int-to-float p1, p2

    div-float/2addr p1, v0

    .line 53
    iput p1, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->centerY:F

    .line 54
    iput p4, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->topY:F

    sub-float/2addr p3, p4

    .line 55
    iput p3, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->bottomY:F

    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0xa

    if-ge p1, p2, :cond_1

    const/4 p2, 0x5

    if-lt p1, p2, :cond_0

    add-int/lit8 p2, p1, -0x5

    goto :goto_1

    :cond_0
    move p2, p1

    .line 58
    :goto_1
    iget-object p3, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->radii:[F

    int-to-float p2, p2

    mul-float p2, p2, p4

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p2, v0

    sub-float p2, p4, p2

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->startAnimations()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->cancelAnimations()V

    :cond_1
    :goto_0
    return-void
.end method
