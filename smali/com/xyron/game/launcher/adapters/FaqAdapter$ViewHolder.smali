.class public Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FaqAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/adapters/FaqAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mFaqText:Landroid/widget/TextView;

.field public mMain:Landroid/widget/ImageView;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/xyron/game/launcher/adapters/FaqAdapter;


# direct methods
.method public constructor <init>(Lcom/xyron/game/launcher/adapters/FaqAdapter;Landroid/view/View;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;->this$0:Lcom/xyron/game/launcher/adapters/FaqAdapter;

    .line 99
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 100
    iput-object p2, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;->mView:Landroid/view/View;

    const p1, 0x7f0a0169

    .line 101
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;->mMain:Landroid/widget/ImageView;

    const p1, 0x7f0a016a

    .line 102
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;->mFaqText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;->mView:Landroid/view/View;

    return-object v0
.end method
