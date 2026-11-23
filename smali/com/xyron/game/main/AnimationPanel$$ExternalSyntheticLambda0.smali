.class public final synthetic Lcom/xyron/game/main/AnimationPanel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/AnimationPanel;

.field public final synthetic f$1:Lcom/xyron/game/main/SAMP;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/AnimationPanel;Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/AnimationPanel$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/AnimationPanel;

    iput-object p2, p0, Lcom/xyron/game/main/AnimationPanel$$ExternalSyntheticLambda0;->f$1:Lcom/xyron/game/main/SAMP;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/AnimationPanel$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/AnimationPanel;

    iget-object v1, p0, Lcom/xyron/game/main/AnimationPanel$$ExternalSyntheticLambda0;->f$1:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v1, p1}, Lcom/xyron/game/main/AnimationPanel;->lambda$new$0$com-xyron-game-main-AnimationPanel(Lcom/xyron/game/main/SAMP;Landroid/content/DialogInterface;)V

    return-void
.end method
