.class public final Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;
.super Ljava/lang/Object;
.source "PickupStudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/PickupStudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SaveResult"
.end annotation


# instance fields
.field public final exportResult:Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

.field public final message:Ljava/lang/String;

.field public final pickup:Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

.field public final success:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;)V
    .locals 0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-boolean p1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->success:Z

    .line 425
    iput-object p2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->message:Ljava/lang/String;

    .line 426
    iput-object p3, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->pickup:Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    .line 427
    iput-object p4, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->exportResult:Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    return-void
.end method

.method static error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;
    .locals 4

    .line 431
    new-instance v0, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;

    const-string v1, ""

    invoke-static {v1}, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;->error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v3, v1}, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;-><init>(ZLjava/lang/String;Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;)V

    return-object v0
.end method
