.class public final synthetic Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;F)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda18;->f$0:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    iput p2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda18;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda18;->f$0:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    iget v1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda18;->f$1:F

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->lambda$setChatScale$18$com-xyron-game-main-SAMP$RuntimeOverlayBridge(F)V

    return-void
.end method
