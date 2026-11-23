.class final Lcom/xyron/game/main/DevicePanelGeometry;
.super Ljava/lang/Object;
.source "DevicePanelGeometry.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static phone(II)Landroid/graphics/Rect;
    .locals 5

    if-lez p0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, p0

    const/high16 v1, 0x45200000    # 2560.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x445c0000    # 880.0f

    mul-float v1, v1, v0

    .line 11
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v2, v2, v0

    int-to-float v3, p1

    const v4, 0x44c08000    # 1540.0f

    mul-float v4, v4, v0

    sub-float/2addr v3, v4

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x44b40000    # 1440.0f

    mul-float v3, v3, v0

    .line 13
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr p1, v2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v0, v0, v3

    .line 14
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 15
    new-instance v3, Landroid/graphics/Rect;

    sub-int/2addr p0, v0

    sub-int v0, p0, v1

    add-int/2addr p1, v2

    invoke-direct {v3, v0, v2, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    .line 9
    :cond_1
    :goto_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method
