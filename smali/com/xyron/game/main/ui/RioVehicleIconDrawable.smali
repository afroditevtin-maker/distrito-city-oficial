.class public final Lcom/xyron/game/main/ui/RioVehicleIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RioVehicleIconDrawable.java"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final levelIcon:Z

.field private final paint:Landroid/graphics/Paint;

.field private percent:F

.field private final viewport:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IZ)V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v0, -0x40800000    # -1.0f

    .line 21
    iput v0, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->percent:F

    .line 24
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 26
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_0

    .line 30
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {p2, v1, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 31
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    const/16 p1, 0x40

    invoke-direct {p2, v1, v1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    iput-object p2, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->viewport:Landroid/graphics/Rect;

    .line 32
    iput-boolean p3, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->levelIcon:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 41
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 42
    iget-boolean v1, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->levelIcon:Z

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 44
    iget-object v1, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->viewport:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x40ffffff    # 7.9999995f

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 48
    iget-object v1, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->viewport:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 49
    iget v1, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->percent:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    return-void

    :cond_1
    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2

    const v1, -0xbabb

    goto :goto_0

    :cond_2
    const/high16 v2, 0x41c80000    # 25.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/16 v1, -0x30b9

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 53
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->percent:F

    mul-float v4, v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 55
    iget-object v2, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->viewport:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 56
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPercent(F)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    .line 36
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 37
    iget v0, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->percent:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->percent:F

    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
