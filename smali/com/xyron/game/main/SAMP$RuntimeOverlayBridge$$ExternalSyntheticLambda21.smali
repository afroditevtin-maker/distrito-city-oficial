.class public final synthetic Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda21;->f$0:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    iput-boolean p2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda21;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda21;->f$0:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda21;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->lambda$setPhoneExpanded$1$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Z)V

    return-void
.end method
