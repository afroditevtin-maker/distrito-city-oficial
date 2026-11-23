.class public final synthetic Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/ui/AttachEdit;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/ui/AttachEdit;ZLandroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/ui/AttachEdit;

    iput-boolean p2, p0, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda0;->f$2:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/ui/AttachEdit;

    iget-boolean v1, p0, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda0;->f$2:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/xyron/game/main/ui/AttachEdit;->lambda$bindHold$7$com-xyron-game-main-ui-AttachEdit(ZLandroid/widget/Button;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
