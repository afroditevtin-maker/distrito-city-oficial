.class final Lcom/xyron/game/main/AngraHudExperiment$Ring;
.super Landroid/graphics/drawable/Drawable;
.source "AngraHudExperiment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/AngraHudExperiment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Ring"
.end annotation


# instance fields
.field private final p:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/xyron/game/main/AngraHudExperiment;


# direct methods
.method private constructor <init>(Lcom/xyron/game/main/AngraHudExperiment;)V
    .locals 1

    .line 353
    iput-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment$Ring;->this$0:Lcom/xyron/game/main/AngraHudExperiment;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 355
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment$Ring;->p:Landroid/graphics/Paint;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xyron/game/main/AngraHudExperiment;Lcom/xyron/game/main/AngraHudExperiment$1;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/xyron/game/main/AngraHudExperiment$Ring;-><init>(Lcom/xyron/game/main/AngraHudExperiment;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 357
    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment$Ring;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43c00000    # 384.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment$Ring;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment$Ring;->p:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/xyron/game/main/AngraHudExperiment$Ring;->this$0:Lcom/xyron/game/main/AngraHudExperiment;

    invoke-static {v3}, Lcom/xyron/game/main/AngraHudExperiment;->access$400(Lcom/xyron/game/main/AngraHudExperiment;)Lcom/xyron/game/main/ClassicHudLayout;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    const/16 v3, 0xb

    :goto_0
    int-to-float v3, v3

    mul-float v3, v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment$Ring;->p:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/xyron/game/main/AngraHudExperiment$Ring;->this$0:Lcom/xyron/game/main/AngraHudExperiment;

    invoke-static {v3}, Lcom/xyron/game/main/AngraHudExperiment;->access$400(Lcom/xyron/game/main/AngraHudExperiment;)Lcom/xyron/game/main/ClassicHudLayout;

    move-result-object v3

    if-eqz v3, :cond_1

    const v3, -0xd9b9ac

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/xyron/game/main/AngraHudExperiment$Ring;->this$0:Lcom/xyron/game/main/AngraHudExperiment;

    invoke-static {v3}, Lcom/xyron/game/main/AngraHudExperiment;->access$500(Lcom/xyron/game/main/AngraHudExperiment;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, -0x8a2753

    goto :goto_1

    :cond_2
    const v3, -0xb3abe

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v0, v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v1, v1, v4

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment$Ring;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/16 v0, 0x180

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/16 v0, 0x180

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment$Ring;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment$Ring;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment$Ring;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment$Ring;->invalidateSelf()V

    return-void
.end method
