.class public final Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;
.super Ljava/lang/Object;
.source "PickupStudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/PickupStudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExportResult"
.end annotation


# instance fields
.field public final absolutePath:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final pickupCount:I

.field public final success:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-boolean p1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;->success:Z

    .line 459
    iput-object p2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;->message:Ljava/lang/String;

    .line 460
    iput-object p3, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;->absolutePath:Ljava/lang/String;

    .line 461
    iput p4, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;->pickupCount:I

    return-void
.end method

.method static error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;
    .locals 3

    .line 465
    new-instance v0, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Falha ao exportar."

    :cond_0
    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1, v2}, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;-><init>(ZLjava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
