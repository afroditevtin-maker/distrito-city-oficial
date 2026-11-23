.class public final synthetic Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;[ZLjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda13;->f$0:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    iput-object p2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda13;->f$1:[Z

    iput-object p3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda13;->f$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda13;->f$0:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda13;->f$1:[Z

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda13;->f$3:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->lambda$startVoiceCommand$28$com-xyron-game-main-SAMP$RuntimeOverlayBridge([ZLjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
