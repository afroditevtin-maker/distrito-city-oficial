.class public final Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;
.super Ljava/lang/Object;
.source "ServerConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/ServerConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerOption"
.end annotation


# instance fields
.field public final country:Ljava/lang/String;

.field public final countryName:Ljava/lang/String;

.field public final favorite:Z

.field public final host:Ljava/lang/String;

.field public final hud:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final mapId:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final offlineMessage:Ljava/lang/String;

.field public final online:Z

.field public final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 11

    .line 504
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "legacy-"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 p4, 0x2671

    if-ne p3, p4, :cond_0

    const-string p4, "angra-classico"

    goto :goto_0

    :cond_0
    const-string p4, "angra-novo"

    :goto_0
    move-object v6, p4

    const/4 v9, 0x1

    const-string v10, ""

    const-string v7, "BR"

    const-string v8, "Brasil"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v10}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 12

    .line 508
    const-string v0, "angra-classico"

    move-object/from16 v6, p5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "retro"

    goto :goto_0

    :cond_0
    const-string v0, "atual"

    :goto_0
    move-object v11, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p10, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->hud:Ljava/lang/String;

    .line 513
    iput-object p1, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->id:Ljava/lang/String;

    invoke-static {p2, p3, p4}, Lcom/xyron/game/launcher/util/ServerConfigManager;->access$000(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->name:Ljava/lang/String;

    invoke-static {p3}, Lcom/xyron/game/launcher/util/ServerConfigManager;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    iput p4, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->favorite:Z

    .line 514
    iput-object p5, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->mapId:Ljava/lang/String;

    iput-object p6, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->country:Ljava/lang/String;

    iput-object p7, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->countryName:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->online:Z

    iput-object p9, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->offlineMessage:Ljava/lang/String;

    return-void
.end method

.method public static empty()Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;
    .locals 4

    .line 518
    new-instance v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, "Nenhum servidor"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 522
    invoke-virtual {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Adicione um servidor"

    :goto_0
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    invoke-static {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->access$200(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matches(Ljava/lang/String;I)Z
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    invoke-static {p1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
