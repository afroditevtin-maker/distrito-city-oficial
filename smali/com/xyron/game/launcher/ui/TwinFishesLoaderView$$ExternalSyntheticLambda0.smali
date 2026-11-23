.class public final synthetic Lcom/xyron/game/launcher/ui/TwinFishesLoaderView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;

    iput p2, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;

    iget v1, p0, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/xyron/game/launcher/ui/TwinFishesLoaderView;->lambda$initialize$0$com-xyron-game-launcher-ui-TwinFishesLoaderView(ILandroid/animation/ValueAnimator;)V

    return-void
.end method
