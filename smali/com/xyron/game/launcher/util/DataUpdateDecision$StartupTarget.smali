.class public final enum Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;
.super Ljava/lang/Enum;
.source "DataUpdateDecision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/DataUpdateDecision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartupTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

.field public static final enum APK_UPDATE:Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

.field public static final enum DATA_INSTALL:Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

.field public static final enum HOME:Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;


# direct methods
.method private static synthetic $values()[Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;
    .locals 3

    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    sget-object v1, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;->HOME:Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;->DATA_INSTALL:Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;->APK_UPDATE:Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    const-string v1, "HOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;->HOME:Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    new-instance v0, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    const-string v1, "DATA_INSTALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;->DATA_INSTALL:Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    new-instance v0, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    const-string v1, "APK_UPDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;->APK_UPDATE:Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    invoke-static {}, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;->$values()[Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;->$VALUES:[Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;
    .locals 1

    .line 15
    const-class v0, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    return-object p0
.end method

.method public static values()[Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;
    .locals 1

    .line 15
    sget-object v0, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;->$VALUES:[Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    invoke-virtual {v0}, [Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    return-object v0
.end method
