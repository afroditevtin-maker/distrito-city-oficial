.class public final Lcom/xyron/game/launcher/util/AngraScene;
.super Landroid/graphics/drawable/Drawable;
.source "AngraScene.java"


# static fields
.field public static final CITY:I = 0x2

.field public static final DOWNLOAD:I = 0x3

.field public static final HOME:I = 0x1

.field public static final LOGIN:I = 0x4

.field public static final SPLASH:I


# instance fields
.field private background:Landroid/graphics/Bitmap;

.field private final context:Landroid/content/Context;

.field private final paint:Landroid/graphics/Paint;

.field private final scene:I

.field private wideSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xyron/game/launcher/util/AngraScene;->paint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/util/AngraScene;->context:Landroid/content/Context;

    const/4 p1, 0x4

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/xyron/game/launcher/util/AngraScene;->scene:I

    return-void
.end method

.method private decode(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/16 v0, 0xb

    const/16 v1, 0x17

    const/16 v2, 0xd

    .line 37
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 38
    invoke-virtual {p0}, Lcom/xyron/game/launcher/util/AngraScene;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 40
    iget-object v2, p0, Lcom/xyron/game/launcher/util/AngraScene;->background:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xyron/game/launcher/util/AngraScene;->background:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/xyron/game/launcher/util/AngraScene;->background:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 43
    iget-object v3, p0, Lcom/xyron/game/launcher/util/AngraScene;->background:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    iget-object v4, p0, Lcom/xyron/game/launcher/util/AngraScene;->background:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v3, v5

    sub-float/2addr v2, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    div-float v5, v4, v5

    sub-float/2addr v0, v5

    .line 45
    iget-object v5, p0, Lcom/xyron/game/launcher/util/AngraScene;->background:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v3, v2

    add-float/2addr v4, v0

    invoke-direct {v6, v2, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/xyron/game/launcher/util/AngraScene;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v5, v2, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 47
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    const p1, 0x3ff9999a    # 1.95f

    const/4 v1, 0x1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/xyron/game/launcher/util/AngraScene;->background:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xyron/game/launcher/util/AngraScene;->wideSelected:Z

    if-eq p1, v0, :cond_6

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/launcher/util/AngraScene;->context:Landroid/content/Context;

    iget v2, p0, Lcom/xyron/game/launcher/util/AngraScene;->scene:I

    const-string v3, "sunset_loading_bg"

    if-ne v2, v1, :cond_3

    const-string v1, "sunset_home_bg"

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    if-ne v2, v1, :cond_4

    const-string v1, "launcher_secondary_bg"

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/launcher/util/AngraScene;->decode(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/launcher/util/AngraScene;->background:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 32
    iget-object v0, p0, Lcom/xyron/game/launcher/util/AngraScene;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v3}, Lcom/xyron/game/launcher/util/AngraScene;->decode(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/launcher/util/AngraScene;->background:Landroid/graphics/Bitmap;

    .line 33
    :cond_5
    iput-boolean p1, p0, Lcom/xyron/game/launcher/util/AngraScene;->wideSelected:Z

    :cond_6
    :goto_2
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xyron/game/launcher/util/AngraScene;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/util/AngraScene;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xyron/game/launcher/util/AngraScene;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/xyron/game/launcher/util/AngraScene;->invalidateSelf()V

    return-void
.end method
