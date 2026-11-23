.class Lcom/xyron/game/main/SAMP$15;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Lcom/xyron/game/main/ui/PickupCreatorOverlay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/SAMP;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 1205
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$15;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public captureCurrentPlacement()[F
    .locals 3

    .line 1209
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$15;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getPlayerPlacementSnapshot()[F

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1211
    const-string v1, "SAMP"

    const-string v2, "Nao foi possivel capturar a posicao atual do player."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public previewPickup(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1222
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/main/SAMP$15;->this$0:Lcom/xyron/game/main/SAMP;

    iget v2, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->modelId:I

    iget v3, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->pickupType:I

    iget v4, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->x:F

    iget v5, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->y:F

    iget v6, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->z:F

    invoke-virtual/range {v1 .. v6}, Lcom/xyron/game/main/SAMP;->showLocalPickupPreview(IIFFF)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1230
    const-string v1, "SAMP"

    const-string v2, "Nao foi possivel criar o preview local do pickup."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
