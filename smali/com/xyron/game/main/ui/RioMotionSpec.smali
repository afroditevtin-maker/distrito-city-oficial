.class public final Lcom/xyron/game/main/ui/RioMotionSpec;
.super Ljava/lang/Object;
.source "RioMotionSpec.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cubic(DDDDD)D
    .locals 14

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-lez v2, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p0, v2

    if-ltz v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    move-wide v4, v0

    move-wide v7, v2

    const/4 v6, 0x0

    :goto_0
    const/16 v9, 0x18

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    if-ge v6, v9, :cond_2

    add-double v0, v4, v7

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v12

    sub-double v12, v2, v0

    mul-double v10, v10, v12

    mul-double v12, v12, v10

    mul-double v12, v12, v0

    mul-double v12, v12, p2

    mul-double v10, v10, v0

    mul-double v10, v10, v0

    mul-double v10, v10, p6

    add-double/2addr v12, v10

    mul-double v9, v0, v0

    mul-double v9, v9, v0

    add-double/2addr v12, v9

    cmpg-double v9, v12, p0

    if-gez v9, :cond_1

    move-wide v4, v0

    goto :goto_1

    :cond_1
    move-wide v7, v0

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    sub-double/2addr v2, v0

    mul-double v10, v10, v2

    mul-double v2, v2, v10

    mul-double v2, v2, v0

    mul-double v2, v2, p4

    mul-double v10, v10, v0

    mul-double v10, v10, v0

    mul-double v10, v10, p8

    add-double/2addr v2, v10

    mul-double v4, v0, v0

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    return-wide v2

    :cond_3
    :goto_2
    return-wide p0
.end method

.method public static external(D)[D
    .locals 18

    const-wide v2, 0x3fcfd9d3458cd20bL    # 0.248835

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, p0

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/xyron/game/main/ui/RioMotionSpec;->segment(DDD)D

    move-result-wide v6

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/16 v10, 0x0

    invoke-static/range {v6 .. v15}, Lcom/xyron/game/main/ui/RioMotionSpec;->cubic(DDDDD)D

    move-result-wide v0

    const-wide v4, 0x3fcfd9d3458cd20bL    # 0.248835

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v2, p0

    .line 30
    invoke-static/range {v2 .. v7}, Lcom/xyron/game/main/ui/RioMotionSpec;->segment(DDD)D

    move-result-wide v8

    const-wide v14, 0x3fe28f5c28f5c28fL    # 0.58

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fdae147ae147ae1L    # 0.42

    const-wide/16 v12, 0x0

    invoke-static/range {v8 .. v17}, Lcom/xyron/game/main/ui/RioMotionSpec;->cubic(DDDDD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v6, v0, v4

    const-wide/high16 v8, -0x3f7a000000000000L    # -704.0

    mul-double v8, v8, v2

    const-wide/high16 v10, -0x3fa2000000000000L    # -120.0

    mul-double v2, v2, v10

    const-wide v10, -0x4006dd2f1a9fbe77L    # -1.571

    mul-double v0, v0, v10

    const/4 v10, 0x5

    .line 31
    new-array v10, v10, [D

    const/4 v11, 0x0

    aput-wide v4, v10, v11

    const/4 v4, 0x1

    aput-wide v6, v10, v4

    const/4 v4, 0x2

    aput-wide v8, v10, v4

    const/4 v4, 0x3

    aput-wide v2, v10, v4

    const/4 v2, 0x4

    aput-wide v0, v10, v2

    return-object v10
.end method

.method public static panel(D)D
    .locals 16

    const-wide v2, 0x3fe029fe004b7f5aL    # 0.505126

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, p0

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/xyron/game/main/ui/RioMotionSpec;->segment(DDD)D

    move-result-wide v6

    const-wide v12, 0x3fe28f5c28f5c28fL    # 0.58

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v6 .. v15}, Lcom/xyron/game/main/ui/RioMotionSpec;->cubic(DDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static phone(ZD)[D
    .locals 34

    if-eqz p0, :cond_0

    const-wide v2, 0x3fe07d73c9257860L    # 0.515314

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, p1

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/xyron/game/main/ui/RioMotionSpec;->segment(DDD)D

    move-result-wide v6

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v6 .. v15}, Lcom/xyron/game/main/ui/RioMotionSpec;->cubic(DDDDD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v4, 0x3fdc48cb4aec8d5cL    # 0.441943

    const-wide v6, 0x3fec75c6c11a1123L    # 0.889377

    move-wide/from16 v2, p1

    .line 23
    invoke-static/range {v2 .. v7}, Lcom/xyron/game/main/ui/RioMotionSpec;->segment(DDD)D

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x4

    const-wide/high16 v5, -0x3f9c000000000000L    # -160.0

    const/4 v7, 0x3

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    const/4 v10, 0x2

    const-wide v11, 0x3fc999999999999aL    # 0.2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x5

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-eqz p0, :cond_1

    .line 24
    new-array v15, v15, [D

    const-wide v20, 0x3fe07d73c9257860L    # 0.515314

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, p1

    invoke-static/range {v18 .. v23}, Lcom/xyron/game/main/ui/RioMotionSpec;->segment(DDD)D

    move-result-wide v24

    const-wide v30, 0x3fe28f5c28f5c28fL    # 0.58

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    invoke-static/range {v24 .. v33}, Lcom/xyron/game/main/ui/RioMotionSpec;->cubic(DDDDD)D

    move-result-wide v18

    aput-wide v18, v15, v14

    const-wide v18, 0x3fe999999999999aL    # 0.8

    mul-double v11, v11, v0

    add-double v11, v11, v18

    aput-wide v11, v15, v13

    sub-double v16, v16, v0

    mul-double v8, v8, v16

    aput-wide v8, v15, v10

    mul-double v16, v16, v5

    aput-wide v16, v15, v7

    aput-wide v2, v15, v4

    goto :goto_1

    .line 26
    :cond_1
    new-array v15, v15, [D

    const-wide v20, 0x3fdc48cb4aec8d5cL    # 0.441943

    const-wide v22, 0x3fe565d3996fa82fL    # 0.66868

    move-wide/from16 v18, p1

    invoke-static/range {v18 .. v23}, Lcom/xyron/game/main/ui/RioMotionSpec;->segment(DDD)D

    move-result-wide v18

    sub-double v18, v16, v18

    aput-wide v18, v15, v14

    mul-double v11, v11, v0

    sub-double v16, v16, v11

    aput-wide v16, v15, v13

    mul-double v8, v8, v0

    aput-wide v8, v15, v10

    mul-double v0, v0, v5

    aput-wide v0, v15, v7

    aput-wide v2, v15, v4

    :goto_1
    return-object v15
.end method

.method public static segment(DDD)D
    .locals 0

    sub-double/2addr p0, p2

    sub-double/2addr p4, p2

    div-double/2addr p0, p4

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 7
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method
