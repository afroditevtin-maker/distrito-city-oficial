.class public final enum Lcom/xyron/game/launcher/UpdateActivity$eGPUType;
.super Ljava/lang/Enum;
.source "UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/UpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eGPUType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xyron/game/launcher/UpdateActivity$eGPUType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

.field public static final enum DXT:Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

.field public static final enum ETC:Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

.field public static final enum PVR:Lcom/xyron/game/launcher/UpdateActivity$eGPUType;


# direct methods
.method private static synthetic $values()[Lcom/xyron/game/launcher/UpdateActivity$eGPUType;
    .locals 3

    const/4 v0, 0x3

    .line 86
    new-array v0, v0, [Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;->DXT:Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;->PVR:Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;->ETC:Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 87
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    const-string v1, "DXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;->DXT:Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    .line 88
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    const-string v1, "PVR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;->PVR:Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    .line 89
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    const-string v1, "ETC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;->ETC:Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    .line 86
    invoke-static {}, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;->$values()[Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;->$VALUES:[Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xyron/game/launcher/UpdateActivity$eGPUType;
    .locals 1

    .line 86
    const-class v0, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    return-object p0
.end method

.method public static values()[Lcom/xyron/game/launcher/UpdateActivity$eGPUType;
    .locals 1

    .line 86
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;->$VALUES:[Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    invoke-virtual {v0}, [Lcom/xyron/game/launcher/UpdateActivity$eGPUType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    return-object v0
.end method
