.class public final Lcom/xyron/game/launcher/util/AngraNoticeLayout;
.super Ljava/lang/Object;
.source "AngraNoticeLayout.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bottom(I)I
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    .line 12
    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraNoticeLayout;->scale(I)F

    move-result p0

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static height(I)I
    .locals 1

    const/high16 v0, 0x428c0000    # 70.0f

    .line 11
    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraNoticeLayout;->scale(I)F

    move-result p0

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static markWidth(I)I
    .locals 1

    const/high16 v0, 0x42700000    # 60.0f

    .line 13
    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraNoticeLayout;->scale(I)F

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

.method public static width(IIF)I
    .locals 2

    .line 8
    invoke-static {p1}, Lcom/xyron/game/launcher/util/AngraNoticeLayout;->scale(I)F

    move-result p1

    int-to-float p0, p0

    const v0, 0x3f333333    # 0.7f

    mul-float p0, p0, v0

    .line 9
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/high16 v0, 0x43a50000    # 330.0f

    mul-float v0, v0, p1

    const/high16 v1, 0x42bc0000    # 94.0f

    mul-float p1, p1, v1

    add-float/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
