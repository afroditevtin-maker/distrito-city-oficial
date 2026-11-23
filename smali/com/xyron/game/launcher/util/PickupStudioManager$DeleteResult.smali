.class public final Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;
.super Ljava/lang/Object;
.source "PickupStudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/PickupStudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteResult"
.end annotation


# instance fields
.field public final exportResult:Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

.field public final message:Ljava/lang/String;

.field public final success:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;)V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-boolean p1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;->success:Z

    .line 442
    iput-object p2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;->message:Ljava/lang/String;

    .line 443
    iput-object p3, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;->exportResult:Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    return-void
.end method

.method static error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;
    .locals 3

    .line 447
    new-instance v0, Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;

    const-string v1, ""

    invoke-static {v1}, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;->error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;-><init>(ZLjava/lang/String;Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;)V

    return-object v0
.end method
