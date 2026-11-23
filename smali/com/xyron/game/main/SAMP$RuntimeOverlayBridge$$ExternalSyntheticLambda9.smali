.class public final synthetic Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda9;->f$0:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    iput-object p2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda9;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda9;->f$0:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda9;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->lambda$setAudioMix$14$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Ljava/lang/String;I)V

    return-void
.end method
