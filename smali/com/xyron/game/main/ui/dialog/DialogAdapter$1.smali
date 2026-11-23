.class Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;
.super Ljava/lang/Object;
.source "DialogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/ui/dialog/DialogAdapter;->onBindViewHolder(Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

.field final synthetic val$viewHolder:Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/ui/dialog/DialogAdapter;Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    iput-object p2, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->val$viewHolder:Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->val$viewHolder:Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    iget v1, v1, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mCurrentSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    iget-object p1, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mCurrentSelectedView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    iget-object p1, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mCurrentSelectedView:Landroid/view/View;

    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    iget-object v0, v0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->buttonHide:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    iget-object p1, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mCurrentSelectedView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->val$viewHolder:Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    iput v0, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mCurrentSelectedPosition:I

    .line 197
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->val$viewHolder:Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;

    iget-object v0, v0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mRowBg:Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mCurrentSelectedView:Landroid/view/View;

    .line 198
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->val$viewHolder:Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;

    iget-object p1, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mRowBg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    iget-object v0, v0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->buttonShow:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 199
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->val$viewHolder:Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;

    iget-object p1, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mRowBg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    iget-object p1, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mOnClickListener:Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnClickListener;

    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->val$viewHolder:Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->val$viewHolder:Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;

    iget-object v2, v2, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnClickListener;->onClick(ILjava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    iget-object v0, v0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mOnDoubleClickListener:Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnDoubleClickListener;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    iget-object v0, v0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->buttonScale:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 204
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;->this$0:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    iget-object p1, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mOnDoubleClickListener:Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnDoubleClickListener;

    invoke-interface {p1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnDoubleClickListener;->onDoubleClick()V

    :cond_2
    :goto_0
    return-void
.end method
