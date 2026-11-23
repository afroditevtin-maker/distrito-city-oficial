.class public final enum Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;
.super Ljava/lang/Enum;
.source "SAMPServerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/SAMPServerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Official"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

.field public static final enum CUSTOM:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

.field public static final enum HOSTED:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

.field public static final enum OFFICIAL:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;


# direct methods
.method private static synthetic $values()[Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;
    .locals 3

    const/4 v0, 0x3

    .line 24
    new-array v0, v0, [Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    sget-object v1, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;->OFFICIAL:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;->HOSTED:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;->CUSTOM:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    const-string v1, "OFFICIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;->OFFICIAL:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    .line 26
    new-instance v0, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    const-string v1, "HOSTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;->HOSTED:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    .line 27
    new-instance v0, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    const-string v1, "CUSTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;->CUSTOM:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    .line 24
    invoke-static {}, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;->$values()[Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;->$VALUES:[Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;
    .locals 1

    .line 24
    const-class v0, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    return-object p0
.end method

.method public static values()[Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;
    .locals 1

    .line 24
    sget-object v0, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;->$VALUES:[Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    invoke-virtual {v0}, [Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    return-object v0
.end method
