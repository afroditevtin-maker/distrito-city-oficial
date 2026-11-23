.class Lcom/xyron/game/main/ui/dialog/DialogManager$1;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/ui/dialog/DialogManager;->loadSizes()V
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

    .line 336
    iput-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v0, v0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogBody:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v1, v1, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogList:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v0, v0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogBody:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v1, v1, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v0, v0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 341
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 342
    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v1, v1, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v0, v0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogList:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 345
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 346
    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v1, v1, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogList:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v0, v0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListRecycler:Lcom/xyron/game/launcher/util/CustomRecyclerView;

    invoke-virtual {v0}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 348
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 349
    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v1, v1, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListRecycler:Lcom/xyron/game/launcher/util/CustomRecyclerView;

    invoke-virtual {v1, v0}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v0, v0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mListAdapter:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->setMatchParent(Z)V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v0, v0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mListAdapter:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    invoke-virtual {v0, v2}, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->setMatchParent(Z)V

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget v0, v0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogStyle:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 355
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    .line 356
    iget-object v1, v0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mListAdapter:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    iget-object v3, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v3, v3, Lcom/xyron/game/main/ui/dialog/DialogManager;->mTabSizes:[I

    invoke-virtual {v1, v3}, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mergeTabSizes([I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mTabSizes:[I

    :goto_1
    const/4 v0, 0x4

    if-ge v2, v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v0, v0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTabField:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v1, v1, Lcom/xyron/game/main/ui/dialog/DialogManager;->mTabSizes:[I

    aget v1, v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 360
    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iget-object v1, v1, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTabField:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
