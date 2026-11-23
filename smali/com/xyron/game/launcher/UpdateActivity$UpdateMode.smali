.class public final enum Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;
.super Ljava/lang/Enum;
.source "UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/UpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

.field public static final enum FullReinstall:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

.field public static final enum GameDataUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

.field public static final enum Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;


# direct methods
.method private static synthetic $values()[Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;
    .locals 3

    const/4 v0, 0x3

    .line 63
    new-array v0, v0, [Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->GameDataUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->FullReinstall:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    const-string v1, "Undefined"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    .line 65
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    const-string v1, "GameDataUpdate"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->GameDataUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    .line 66
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    const-string v1, "FullReinstall"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->FullReinstall:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    .line 63
    invoke-static {}, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->$values()[Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->$VALUES:[Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;
    .locals 1

    .line 63
    const-class v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    return-object p0
.end method

.method public static values()[Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;
    .locals 1

    .line 63
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->$VALUES:[Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    invoke-virtual {v0}, [Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    return-object v0
.end method
