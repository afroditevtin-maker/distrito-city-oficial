.class public final synthetic Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/GameDeviceOverlay;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/GameDeviceOverlay;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda2;->f$0:Lcom/xyron/game/main/GameDeviceOverlay;

    iput-object p2, p0, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda2;->f$0:Lcom/xyron/game/main/GameDeviceOverlay;

    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xyron/game/main/GameDeviceOverlay;->lambda$postMessage$3$com-xyron-game-main-GameDeviceOverlay(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
