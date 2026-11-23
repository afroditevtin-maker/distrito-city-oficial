.class public final synthetic Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/ui/PickupCreatorOverlay;

.field public final synthetic f$1:Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/ui/PickupCreatorOverlay;Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda2;->f$0:Lcom/xyron/game/main/ui/PickupCreatorOverlay;

    iput-object p2, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda2;->f$1:Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda2;->f$0:Lcom/xyron/game/main/ui/PickupCreatorOverlay;

    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda2;->f$1:Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->lambda$bindPickupItem$6$com-xyron-game-main-ui-PickupCreatorOverlay(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    return-void
.end method
