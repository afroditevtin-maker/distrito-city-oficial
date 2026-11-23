.class public final Lcom/xyron/game/launcher/util/AngraNoticeStyle;
.super Ljava/lang/Object;
.source "AngraNoticeStyle.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accent(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, -0xab2065

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const p0, -0x857b

    goto :goto_0

    :cond_1
    const p0, -0xa3ba1

    :goto_0
    return p0
.end method

.method public static duration(I)I
    .locals 1

    const/16 v0, 0x2710

    .line 23
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v0, 0x4b0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static heading(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 22
    const-string p0, "SUCESSO"

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "ERRO"

    goto :goto_0

    :cond_1
    const-string p0, "ATEN\u00c7\u00c3O"

    :goto_0
    return-object p0
.end method

.method public static margin(I)I
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    .line 7
    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraNoticeStyle;->scale(I)F

    move-result p0

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static scale(I)F
    .locals 1

    int-to-float p0, p0

    const/high16 v0, 0x44340000    # 720.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static width(II)I
    .locals 2

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    .line 9
    invoke-static {p0, p1, v0, v1}, Lcom/xyron/game/launcher/util/AngraNoticeStyle;->width(IIFF)I

    move-result p0

    return p0
.end method

.method public static width(IIFF)I
    .locals 4

    .line 12
    invoke-static {p1}, Lcom/xyron/game/launcher/util/AngraNoticeStyle;->scale(I)F

    move-result v0

    const/high16 v1, 0x43af0000    # 350.0f

    mul-float v1, v1, v0

    .line 13
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p0

    const v3, 0x3ea3d70a    # 0.32f

    mul-float v2, v2, v3

    .line 14
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p1}, Lcom/xyron/game/launcher/util/AngraNoticeStyle;->margin(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 13
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 16
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 17
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    cmpg-float p3, p2, v1

    if-gez p3, :cond_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    int-to-float p3, p0

    const/high16 v1, 0x43660000    # 230.0f

    mul-float v1, v1, v0

    const/high16 v2, 0x42ac0000    # 86.0f

    mul-float v0, v0, v2

    add-float/2addr p2, v0

    .line 18
    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    .line 19
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
