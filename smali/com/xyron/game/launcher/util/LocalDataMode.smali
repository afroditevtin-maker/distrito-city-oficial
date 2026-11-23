.class public final Lcom/xyron/game/launcher/util/LocalDataMode;
.super Ljava/lang/Object;
.source "LocalDataMode.java"


# static fields
.field public static final MARKER:Ljava/lang/String; = ".angra-local-data-test"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enabled(ZZZZ)Z
    .locals 0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
