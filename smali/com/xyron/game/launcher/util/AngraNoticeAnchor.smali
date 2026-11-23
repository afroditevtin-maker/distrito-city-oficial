.class public final Lcom/xyron/game/launcher/util/AngraNoticeAnchor;
.super Ljava/lang/Object;
.source "AngraNoticeAnchor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultRadar(I)[I
    .locals 3

    const/4 v0, 0x0

    .line 18
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x45200000    # 2560.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x43400000    # 192.0f

    mul-float v0, v0, p0

    .line 19
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    mul-float v1, v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x43980000    # 304.0f

    mul-float p0, p0, v2

    .line 20
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    filled-new-array {v0, v1, v2, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static entranceOffset(II)F
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p0, p1

    neg-int p0, p0

    int-to-float p0, p0

    return p0
.end method

.method public static position(IIIIIIIIII)[I
    .locals 3

    sub-int/2addr p0, p6

    const/4 v0, 0x0

    .line 9
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 10
    invoke-static {v0, p9}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 11
    invoke-static {v0, p9}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr p0, v2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p2, p2

    int-to-float p4, p4

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float p4, p4, v2

    add-float/2addr p2, p4

    int-to-float p4, p6

    mul-float p4, p4, v2

    sub-float/2addr p2, p4

    .line 12
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p1, p7

    .line 13
    invoke-static {v0, p9}, Ljava/lang/Math;->max(II)I

    move-result p4

    sub-int/2addr p1, p4

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p3, p5

    .line 14
    invoke-static {v0, p8}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/2addr p3, p4

    .line 15
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method
