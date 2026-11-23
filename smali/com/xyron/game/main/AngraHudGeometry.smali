.class final Lcom/xyron/game/main/AngraHudGeometry;
.super Ljava/lang/Object;
.source "AngraHudGeometry.java"


# static fields
.field static final HEALTH_RADIUS:F = 178.62f

.field static final LEFT_ANCHOR_X:F = 64.0f

.field static final LEFT_ANCHOR_Y:F = 32.0f

.field static final LEFT_SCALE:F = 0.78f

.field static final RADAR_RADIUS:F = 149.76f

.field static final RADAR_X:F

.field static final RADAR_Y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x43a28000    # 325.0f

    .line 10
    invoke-static {v0}, Lcom/xyron/game/main/AngraHudGeometry;->leftX(F)F

    move-result v0

    sput v0, Lcom/xyron/game/main/AngraHudGeometry;->RADAR_X:F

    const/high16 v0, 0x438a0000    # 276.0f

    invoke-static {v0}, Lcom/xyron/game/main/AngraHudGeometry;->leftY(F)F

    move-result v0

    sput v0, Lcom/xyron/game/main/AngraHudGeometry;->RADAR_Y:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cash(F)[F
    .locals 5

    const/high16 v0, 0x45200000    # 2560.0f

    div-float v0, p0, v0

    const/high16 v1, 0x44070000    # 540.0f

    mul-float v1, v1, v0

    sub-float v1, p0, v1

    const/high16 v2, 0x434f0000    # 207.0f

    mul-float v2, v2, v0

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v3, v3, v0

    sub-float/2addr p0, v3

    const v3, 0x438b8000    # 279.0f

    mul-float v0, v0, v3

    const/4 v3, 0x4

    .line 11
    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    const/4 v1, 0x2

    aput p0, v3, v1

    const/4 p0, 0x3

    aput v0, v3, p0

    return-object v3
.end method

.method static leftX(F)F
    .locals 2

    const/high16 v0, 0x42800000    # 64.0f

    sub-float/2addr p0, v0

    const v1, 0x3f47ae14    # 0.78f

    mul-float p0, p0, v1

    add-float/2addr p0, v0

    return p0
.end method

.method static leftY(F)F
    .locals 2

    const/high16 v0, 0x42000000    # 32.0f

    sub-float/2addr p0, v0

    const v1, 0x3f47ae14    # 0.78f

    mul-float p0, p0, v1

    add-float/2addr p0, v0

    return p0
.end method

.method static menuLeft(FZ)F
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x2ce

    goto :goto_0

    :cond_0
    const/16 p1, 0x256

    :goto_0
    int-to-float p1, p1

    const/high16 v0, 0x45200000    # 2560.0f

    div-float v0, p0, v0

    mul-float p1, p1, v0

    sub-float/2addr p0, p1

    return p0
.end method

.method static radar(F)[F
    .locals 5

    const/high16 v0, 0x45200000    # 2560.0f

    div-float/2addr p0, v0

    .line 14
    sget v0, Lcom/xyron/game/main/AngraHudGeometry;->RADAR_X:F

    const v1, 0x4315c28f    # 149.76f

    sub-float v2, v0, v1

    mul-float v2, v2, p0

    sget v3, Lcom/xyron/game/main/AngraHudGeometry;->RADAR_Y:F

    sub-float v4, v3, v1

    mul-float v4, v4, p0

    add-float/2addr v0, v1

    mul-float v0, v0, p0

    add-float/2addr v3, v1

    mul-float v3, v3, p0

    const/4 p0, 0x4

    new-array p0, p0, [F

    const/4 v1, 0x0

    aput v2, p0, v1

    const/4 v1, 0x1

    aput v4, p0, v1

    const/4 v1, 0x2

    aput v0, p0, v1

    const/4 v0, 0x3

    aput v3, p0, v0

    return-object p0
.end method

.method static xp(F)[F
    .locals 5

    const/high16 v0, 0x45200000    # 2560.0f

    div-float v0, p0, v0

    const/high16 v1, 0x44070000    # 540.0f

    mul-float v1, v1, v0

    sub-float v1, p0, v1

    const/high16 v2, 0x439e0000    # 316.0f

    mul-float v2, v2, v0

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v3, v3, v0

    sub-float/2addr p0, v3

    const/high16 v3, 0x43c20000    # 388.0f

    mul-float v0, v0, v3

    const/4 v3, 0x4

    .line 12
    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    const/4 v1, 0x2

    aput p0, v3, v1

    const/4 p0, 0x3

    aput v0, v3, p0

    return-object v3
.end method
