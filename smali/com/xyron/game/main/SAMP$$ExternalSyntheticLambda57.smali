.class public final synthetic Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/SAMP;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/SAMP;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda57;->f$0:Lcom/xyron/game/main/SAMP;

    iput p2, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda57;->f$1:I

    iput-boolean p3, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda57;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda57;->f$0:Lcom/xyron/game/main/SAMP;

    iget v1, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda57;->f$1:I

    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda57;->f$2:Z

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/xyron/game/main/SAMP;->lambda$prepareNativeOverlayMotion$44$com-xyron-game-main-SAMP(IZLjava/lang/String;)V

    return-void
.end method
