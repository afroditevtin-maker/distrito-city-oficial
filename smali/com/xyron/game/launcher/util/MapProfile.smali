.class public final Lcom/xyron/game/launcher/util/MapProfile;
.super Ljava/lang/Object;
.source "MapProfile.java"


# static fields
.field public static final CLASSIC:Ljava/lang/String; = "angra-classico"

.field public static final NEW:Ljava/lang/String; = "angra-novo"


# instance fields
.field public final host:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final index:I

.field public final name:Ljava/lang/String;

.field public final port:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/xyron/game/launcher/util/MapProfile;->index:I

    iput-object p2, p0, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/xyron/game/launcher/util/MapProfile;->host:Ljava/lang/String;

    iput p4, p0, Lcom/xyron/game/launcher/util/MapProfile;->port:I

    if-nez p1, :cond_0

    const-string p1, "Rio Novo"

    goto :goto_0

    :cond_0
    const-string p1, "Rio Cl\u00e1ssico"

    :goto_0
    iput-object p1, p0, Lcom/xyron/game/launcher/util/MapProfile;->name:Ljava/lang/String;

    return-void
.end method

.method public static at(I)Lcom/xyron/game/launcher/util/MapProfile;
    .locals 4

    if-nez p0, :cond_0

    .line 12
    new-instance p0, Lcom/xyron/game/launcher/util/MapProfile;

    const-string v0, "149.56.41.54"

    const/16 v1, 0x1e5a

    const/4 v2, 0x0

    const-string v3, "angra-novo"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/xyron/game/launcher/util/MapProfile;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 13
    new-instance p0, Lcom/xyron/game/launcher/util/MapProfile;

    const-string v1, "135.148.164.122"

    const/16 v2, 0x4dc5

    const-string v3, "angra-classico"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/xyron/game/launcher/util/MapProfile;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Servidor oficial inv\u00e1lido"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static named(Ljava/lang/String;)Lcom/xyron/game/launcher/util/MapProfile;
    .locals 1

    .line 17
    const-string v0, "angra-novo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/xyron/game/launcher/util/MapProfile;->at(I)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object p0

    return-object p0

    .line 18
    :cond_0
    const-string v0, "angra-classico"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/xyron/game/launcher/util/MapProfile;->at(I)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object p0

    return-object p0

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mapa inv\u00e1lido"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
