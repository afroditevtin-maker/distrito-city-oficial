.class final Lcom/xyron/game/main/HudControlBox;
.super Ljava/lang/Object;
.source "HudControlBox.java"


# instance fields
.field height:F

.field width:F

.field x:F

.field y:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xyron/game/main/HudControlBox;->x:F

    iput p2, p0, Lcom/xyron/game/main/HudControlBox;->y:F

    iput p3, p0, Lcom/xyron/game/main/HudControlBox;->width:F

    iput p4, p0, Lcom/xyron/game/main/HudControlBox;->height:F

    return-void
.end method

.method private static finite(F)Z
    .locals 1

    .line 9
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method clamp()V
    .locals 3

    .line 10
    iget v0, p0, Lcom/xyron/game/main/HudControlBox;->width:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v2, 0x3a83126f    # 0.001f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/HudControlBox;->width:F

    iget v0, p0, Lcom/xyron/game/main/HudControlBox;->height:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/HudControlBox;->height:F

    iget v0, p0, Lcom/xyron/game/main/HudControlBox;->width:F

    sub-float v0, v1, v0

    iget v2, p0, Lcom/xyron/game/main/HudControlBox;->x:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/HudControlBox;->x:F

    iget v0, p0, Lcom/xyron/game/main/HudControlBox;->height:F

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/xyron/game/main/HudControlBox;->y:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/HudControlBox;->y:F

    return-void
.end method

.method copy()Lcom/xyron/game/main/HudControlBox;
    .locals 5

    .line 7
    new-instance v0, Lcom/xyron/game/main/HudControlBox;

    iget v1, p0, Lcom/xyron/game/main/HudControlBox;->x:F

    iget v2, p0, Lcom/xyron/game/main/HudControlBox;->y:F

    iget v3, p0, Lcom/xyron/game/main/HudControlBox;->width:F

    iget v4, p0, Lcom/xyron/game/main/HudControlBox;->height:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xyron/game/main/HudControlBox;-><init>(FFFF)V

    return-object v0
.end method

.method move(FFFF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-lez v1, :cond_1

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, p3

    .line 11
    iput p1, p0, Lcom/xyron/game/main/HudControlBox;->x:F

    div-float/2addr p2, p4

    iput p2, p0, Lcom/xyron/game/main/HudControlBox;->y:F

    invoke-virtual {p0}, Lcom/xyron/game/main/HudControlBox;->clamp()V

    :cond_1
    :goto_0
    return-void
.end method

.method resize(FFFFF)V
    .locals 3

    .line 13
    invoke-static {p1}, Lcom/xyron/game/main/HudControlBox;->finite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_2

    cmpg-float v1, p2, v0

    if-lez v1, :cond_2

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget v1, p0, Lcom/xyron/game/main/HudControlBox;->width:F

    mul-float v1, v1, p2

    iget v2, p0, Lcom/xyron/game/main/HudControlBox;->height:F

    mul-float v2, v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/xyron/game/main/HudControlBox;->width:F

    mul-float v2, v2, p2

    iget p2, p0, Lcom/xyron/game/main/HudControlBox;->height:F

    mul-float p2, p2, p3

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    cmpg-float p3, v1, v0

    if-lez p3, :cond_2

    cmpg-float p3, p2, v0

    if-gtz p3, :cond_1

    goto :goto_0

    :cond_1
    div-float/2addr p4, v1

    div-float/2addr p5, p2

    .line 16
    invoke-static {p5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 17
    iget p2, p0, Lcom/xyron/game/main/HudControlBox;->width:F

    const/high16 p3, 0x3f800000    # 1.0f

    div-float p2, p3, p2

    iget p4, p0, Lcom/xyron/game/main/HudControlBox;->height:F

    div-float/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 18
    iget p2, p0, Lcom/xyron/game/main/HudControlBox;->x:F

    iget p3, p0, Lcom/xyron/game/main/HudControlBox;->width:F

    const/high16 p4, 0x40000000    # 2.0f

    div-float p5, p3, p4

    add-float/2addr p2, p5

    iget p5, p0, Lcom/xyron/game/main/HudControlBox;->y:F

    iget v0, p0, Lcom/xyron/game/main/HudControlBox;->height:F

    div-float v1, v0, p4

    add-float/2addr p5, v1

    mul-float p3, p3, p1

    iput p3, p0, Lcom/xyron/game/main/HudControlBox;->width:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/xyron/game/main/HudControlBox;->height:F

    div-float/2addr p3, p4

    sub-float/2addr p2, p3

    iput p2, p0, Lcom/xyron/game/main/HudControlBox;->x:F

    div-float/2addr v0, p4

    sub-float/2addr p5, v0

    iput p5, p0, Lcom/xyron/game/main/HudControlBox;->y:F

    invoke-virtual {p0}, Lcom/xyron/game/main/HudControlBox;->clamp()V

    :cond_2
    :goto_0
    return-void
.end method

.method valid()Z
    .locals 3

    .line 8
    iget v0, p0, Lcom/xyron/game/main/HudControlBox;->x:F

    invoke-static {v0}, Lcom/xyron/game/main/HudControlBox;->finite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xyron/game/main/HudControlBox;->y:F

    invoke-static {v0}, Lcom/xyron/game/main/HudControlBox;->finite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xyron/game/main/HudControlBox;->width:F

    invoke-static {v0}, Lcom/xyron/game/main/HudControlBox;->finite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xyron/game/main/HudControlBox;->height:F

    invoke-static {v0}, Lcom/xyron/game/main/HudControlBox;->finite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xyron/game/main/HudControlBox;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xyron/game/main/HudControlBox;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xyron/game/main/HudControlBox;->width:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    iget v2, p0, Lcom/xyron/game/main/HudControlBox;->height:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    cmpg-float v0, v2, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
