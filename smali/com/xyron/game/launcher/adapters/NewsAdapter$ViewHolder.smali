.class public Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/adapters/NewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mImage:Landroid/widget/ImageView;

.field public mMainInfo:Landroid/widget/TextView;

.field public mMainText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/xyron/game/launcher/adapters/NewsAdapter;


# direct methods
.method public constructor <init>(Lcom/xyron/game/launcher/adapters/NewsAdapter;Landroid/view/View;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;->this$0:Lcom/xyron/game/launcher/adapters/NewsAdapter;

    .line 55
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 56
    iput-object p2, p0, Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;->mView:Landroid/view/View;

    const p1, 0x7f0a026a

    .line 57
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const p1, 0x7f0a026c

    .line 58
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;->mMainText:Landroid/widget/TextView;

    const p1, 0x7f0a026b

    .line 59
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;->mMainInfo:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;->mView:Landroid/view/View;

    return-object v0
.end method
