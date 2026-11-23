.class public Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/ui/dialog/DialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public mFields:[Landroid/widget/TextView;

.field public mRowBg:Landroid/widget/ImageView;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 53
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x4

    .line 48
    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    .line 54
    iput-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mView:Landroid/view/View;

    const v0, 0x7f0a01fc

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mRowBg:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    const v1, 0x7f0a01fd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 57
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    const v1, 0x7f0a01fe

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 58
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    const v1, 0x7f0a01ff

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 59
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    const v1, 0x7f0a0200

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    return-void
.end method


# virtual methods
.method public getMView()Landroid/view/View;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mView:Landroid/view/View;

    return-object v0
.end method
