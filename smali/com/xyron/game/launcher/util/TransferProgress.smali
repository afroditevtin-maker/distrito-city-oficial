.class public final Lcom/xyron/game/launcher/util/TransferProgress;
.super Ljava/lang/Object;
.source "TransferProgress.java"


# instance fields
.field private previousBytes:J

.field private previousTime:J

.field private speed:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/xyron/game/launcher/util/TransferProgress;->previousBytes:J

    return-void
.end method

.method public static mb(J)Ljava/lang/String;
    .locals 3

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    long-to-double p0, p0

    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    const-string p0, "%.1f"

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static percent(JJ)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/xyron/game/launcher/util/TransferProgress;->units(JJ)I

    move-result p0

    int-to-double p0, p0

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const-string p0, "%.1f%%"

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Preparando\u2026"

    :goto_0
    return-object p0
.end method

.method public static units(JJ)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 12
    :cond_0
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x2710

    mul-long p0, p0, v0

    div-long/2addr p0, p2

    long-to-int p1, p0

    return p1
.end method


# virtual methods
.method public reset()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lcom/xyron/game/launcher/util/TransferProgress;->previousBytes:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xyron/game/launcher/util/TransferProgress;->previousTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xyron/game/launcher/util/TransferProgress;->speed:D

    return-void
.end method

.method public speed(JJ)Ljava/lang/String;
    .locals 11

    .line 19
    iget-wide v0, p0, Lcom/xyron/game/launcher/util/TransferProgress;->previousBytes:J

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v2

    if-ltz v6, :cond_2

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/xyron/game/launcher/util/TransferProgress;->previousTime:J

    cmp-long v6, p3, v2

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    sub-long v6, p3, v2

    const-wide/16 v8, 0x1f4

    cmp-long v10, v6, v8

    if-ltz v10, :cond_3

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v6

    sub-long v2, p3, v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 23
    iget-wide v2, p0, Lcom/xyron/game/launcher/util/TransferProgress;->speed:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v4

    mul-double v0, v0, v4

    add-double/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/xyron/game/launcher/util/TransferProgress;->speed:D

    .line 24
    iput-wide p1, p0, Lcom/xyron/game/launcher/util/TransferProgress;->previousBytes:J

    iput-wide p3, p0, Lcom/xyron/game/launcher/util/TransferProgress;->previousTime:J

    goto :goto_2

    .line 20
    :cond_2
    :goto_1
    iput-wide p1, p0, Lcom/xyron/game/launcher/util/TransferProgress;->previousBytes:J

    iput-wide p3, p0, Lcom/xyron/game/launcher/util/TransferProgress;->previousTime:J

    iput-wide v4, p0, Lcom/xyron/game/launcher/util/TransferProgress;->speed:D

    .line 26
    :cond_3
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-wide p2, p0, Lcom/xyron/game/launcher/util/TransferProgress;->speed:D

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    const-string p2, "%.1f MB/s"

    invoke-static {p1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
