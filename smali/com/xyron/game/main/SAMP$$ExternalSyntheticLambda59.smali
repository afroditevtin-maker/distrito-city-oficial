.class public final synthetic Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda59;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/SAMP;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/SAMP;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda59;->f$0:Lcom/xyron/game/main/SAMP;

    iput p2, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda59;->f$1:I

    iput p3, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda59;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda59;->f$0:Lcom/xyron/game/main/SAMP;

    iget v1, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda59;->f$1:I

    iget v2, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda59;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/xyron/game/main/SAMP;->lambda$runNativeOverlayMotion$41$com-xyron-game-main-SAMP(IILandroid/animation/ValueAnimator;)V

    return-void
.end method
