.class public final Lcom/xyron/game/main/ui/PauseGeometry;
.super Ljava/lang/Object;
.source "PauseGeometry.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bounds(IIIIII)[I
    .locals 3

    .line 7
    invoke-static {p0, p1}, Lcom/xyron/game/main/ui/PauseGeometry;->scale(II)F

    move-result v0

    int-to-float p0, p0

    const/high16 v1, 0x44f00000    # 1920.0f

    mul-float v1, v1, v0

    sub-float/2addr p0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    int-to-float p1, p1

    const/high16 v2, 0x44870000    # 1080.0f

    mul-float v2, v2, v0

    sub-float/2addr p1, v2

    div-float/2addr p1, v1

    int-to-float p2, p2

    mul-float p2, p2, v0

    add-float/2addr p0, p2

    .line 8
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p2, p3

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p4

    mul-float p2, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p4, p5

    mul-float p4, p4, v0

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    filled-new-array {p0, p1, p2, p3}, [I

    move-result-object p0

    return-object p0
.end method

.method public static scale(II)F
    .locals 2

    const/4 v0, 0x1

    .line 5
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x44f00000    # 1920.0f

    div-float/2addr p0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x44870000    # 1080.0f

    div-float/2addr p1, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method
