.class public final Lcom/xyron/game/launcher/ui/ServerCardDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ServerCardDrawable.java"


# instance fields
.field private final badge:Z

.field private final density:F

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(FZ)V
    .locals 2

    .line 13
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->paint:Landroid/graphics/Paint;

    .line 13
    iput p1, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->density:F

    iput-boolean p2, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->badge:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 15
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    iget v2, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->density:F

    mul-float v2, v2, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 16
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 18
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 19
    iget-object v3, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object v3, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->paint:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/LinearGradient;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v4

    iget-boolean v4, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->badge:Z

    if-eqz v4, :cond_0

    const/16 v9, -0x51ac

    goto :goto_0

    :cond_0
    const v9, -0xad4dec1

    :goto_0
    if-eqz v4, :cond_1

    const v4, -0x41abd7

    const v10, -0x41abd7

    goto :goto_1

    :cond_1
    const v4, -0xdede8d8

    const v10, -0xdede8d8

    :goto_1
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 21
    iget-object v3, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 22
    iget-object v3, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->paint:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->badge:Z

    if-eqz v4, :cond_2

    const v4, 0x44ffe8c8

    goto :goto_2

    :cond_2
    const v4, 0x667d6d9b

    :goto_2
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->density:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 23
    iget-object v2, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iget-boolean v2, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->badge:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->paint:Landroid/graphics/Paint;

    const v3, -0x85eb5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    iget v6, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->density:F

    mul-float v6, v6, v3

    add-float/2addr v6, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float v7, v0, v1

    iget-object v8, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ui/ServerCardDrawable;->invalidateSelf()V

    return-void
.end method
