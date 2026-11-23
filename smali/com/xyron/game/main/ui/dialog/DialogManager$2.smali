.class Lcom/xyron/game/main/ui/dialog/DialogManager$2;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/ui/dialog/DialogManager;->loadButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/ui/dialog/DialogManager;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$2;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$2;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v0, v0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mAnimBtn:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 375
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$2;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    .line 376
    iget v0, p1, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCurrentListitem:I

    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$2;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v1, v1, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCurrentInputtext:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/xyron/game/main/ui/dialog/DialogManager;->SendDialogResponse(IILjava/lang/String;)V

    return-void
.end method
