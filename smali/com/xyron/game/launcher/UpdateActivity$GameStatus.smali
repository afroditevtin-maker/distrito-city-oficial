.class public final enum Lcom/xyron/game/launcher/UpdateActivity$GameStatus;
.super Ljava/lang/Enum;
.source "UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/UpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xyron/game/launcher/UpdateActivity$GameStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

.field public static final enum GameUpdateRequired:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

.field public static final enum Unknown:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

.field public static final enum UpdateRequired:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

.field public static final enum Updated:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;


# direct methods
.method private static synthetic $values()[Lcom/xyron/game/launcher/UpdateActivity$GameStatus;
    .locals 3

    const/4 v0, 0x4

    .line 69
    new-array v0, v0, [Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->Unknown:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->GameUpdateRequired:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->UpdateRequired:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->Updated:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->Unknown:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    .line 71
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    const-string v1, "GameUpdateRequired"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->GameUpdateRequired:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    .line 72
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    const-string v1, "UpdateRequired"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->UpdateRequired:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    .line 73
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    const-string v1, "Updated"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->Updated:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    .line 69
    invoke-static {}, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->$values()[Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->$VALUES:[Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xyron/game/launcher/UpdateActivity$GameStatus;
    .locals 1

    .line 69
    const-class v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    return-object p0
.end method

.method public static values()[Lcom/xyron/game/launcher/UpdateActivity$GameStatus;
    .locals 1

    .line 69
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->$VALUES:[Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    invoke-virtual {v0}, [Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    return-object v0
.end method
