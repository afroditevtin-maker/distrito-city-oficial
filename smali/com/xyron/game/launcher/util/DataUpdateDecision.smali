.class public final Lcom/xyron/game/launcher/util/DataUpdateDecision;
.super Ljava/lang/Object;
.source "DataUpdateDecision.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareVersions(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 6
    const-string v1, "[1-9][0-9]*(?:\\.[0-9]+)*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 8
    :goto_0
    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 9
    new-instance v2, Ljava/math/BigInteger;

    array-length v3, p0

    const-string v4, "0"

    if-ge v1, v3, :cond_1

    aget-object v3, p0, v1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v3, Ljava/math/BigInteger;

    array-length v5, p1

    if-ge v1, v5, :cond_2

    aget-object v4, p1, v1

    :cond_2
    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-eqz v2, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v0
.end method

.method public static required(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, p1, p2, v0}, Lcom/xyron/game/launcher/util/DataUpdateDecision;->required(ZLjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static required(ZLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/xyron/game/launcher/util/DataUpdateDecision;->required(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static required(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    if-eqz p2, :cond_4

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p4, p5}, Lcom/xyron/game/launcher/util/DataUpdateDecision;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_3

    return p0

    .line 36
    :cond_3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    :cond_4
    :goto_0
    return p0
.end method

.method public static startupTarget(ZZ)Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;
    .locals 0

    if-eqz p1, :cond_0

    .line 18
    sget-object p0, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;->APK_UPDATE:Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 21
    sget-object p0, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;->HOME:Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;->DATA_INSTALL:Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    :goto_0
    return-object p0
.end method
