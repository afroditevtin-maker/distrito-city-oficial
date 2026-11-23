.class public Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ServerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/adapters/ServerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mIsNew:Landroid/widget/ImageView;

.field public mJoin:Landroid/widget/ImageView;

.field public mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mOnlineText:Landroid/widget/TextView;

.field public mPing:Landroid/widget/TextView;

.field public mServerNameText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/xyron/game/launcher/adapters/ServerAdapter;


# direct methods
.method public constructor <init>(Lcom/xyron/game/launcher/adapters/ServerAdapter;Landroid/view/View;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->this$0:Lcom/xyron/game/launcher/adapters/ServerAdapter;

    .line 103
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 104
    iput-object p2, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mView:Landroid/view/View;

    const p1, 0x7f0a033c

    .line 105
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p1, 0x7f0a0395

    .line 106
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mServerNameText:Landroid/widget/TextView;

    const p1, 0x7f0a027c

    .line 107
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mOnlineText:Landroid/widget/TextView;

    const p1, 0x7f0a033d

    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mJoin:Landroid/widget/ImageView;

    const p1, 0x7f0a02ab

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mPing:Landroid/widget/TextView;

    const p1, 0x7f0a0269

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mIsNew:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mView:Landroid/view/View;

    return-object v0
.end method
