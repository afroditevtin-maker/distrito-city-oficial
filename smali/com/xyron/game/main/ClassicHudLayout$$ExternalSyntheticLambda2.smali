.class public final synthetic Lcom/xyron/game/main/ClassicHudLayout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/ClassicHudLayout;

.field public final synthetic f$1:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/ClassicHudLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/ClassicHudLayout$$ExternalSyntheticLambda2;->f$0:Lcom/xyron/game/main/ClassicHudLayout;

    iput-object p2, p0, Lcom/xyron/game/main/ClassicHudLayout$$ExternalSyntheticLambda2;->f$1:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout$$ExternalSyntheticLambda2;->f$0:Lcom/xyron/game/main/ClassicHudLayout;

    iget-object v1, p0, Lcom/xyron/game/main/ClassicHudLayout$$ExternalSyntheticLambda2;->f$1:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/ClassicHudLayout;->lambda$new$1$com-xyron-game-main-ClassicHudLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)Z

    move-result v0

    return v0
.end method
