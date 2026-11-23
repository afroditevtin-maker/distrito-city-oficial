.class public final synthetic Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/SAMP;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/SAMP;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda30;->f$0:Lcom/xyron/game/main/SAMP;

    iput-object p2, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda30;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda30;->f$0:Lcom/xyron/game/main/SAMP;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda30;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/xyron/game/main/SAMP;->lambda$installSystemUiWatcher$17$com-xyron-game-main-SAMP(Landroid/view/View;I)V

    return-void
.end method
