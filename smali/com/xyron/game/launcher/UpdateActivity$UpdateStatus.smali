.class public final enum Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;
.super Ljava/lang/Enum;
.source "UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/UpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

.field public static final enum CheckFiles:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

.field public static final enum CheckUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

.field public static final enum DownloadGame:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

.field public static final enum DownloadGameData:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

.field public static final enum ExtractGameData:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

.field public static final enum SourceUnavailable:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

.field public static final enum Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;


# direct methods
.method private static synthetic $values()[Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;
    .locals 3

    const/4 v0, 0x7

    .line 76
    new-array v0, v0, [Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->CheckUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->CheckFiles:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->DownloadGame:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->DownloadGameData:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->ExtractGameData:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->SourceUnavailable:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const-string v1, "Undefined"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    .line 78
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const-string v1, "CheckUpdate"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->CheckUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    .line 79
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const-string v1, "CheckFiles"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->CheckFiles:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    .line 80
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const-string v1, "DownloadGame"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->DownloadGame:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    .line 81
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const-string v1, "DownloadGameData"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->DownloadGameData:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    .line 82
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const-string v1, "ExtractGameData"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->ExtractGameData:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    .line 83
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const-string v1, "SourceUnavailable"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->SourceUnavailable:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    .line 76
    invoke-static {}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->$values()[Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->$VALUES:[Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;
    .locals 1

    .line 76
    const-class v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    return-object p0
.end method

.method public static values()[Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;
    .locals 1

    .line 76
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->$VALUES:[Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {v0}, [Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    return-object v0
.end method
