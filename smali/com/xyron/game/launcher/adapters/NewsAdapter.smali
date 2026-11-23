.class public Lcom/xyron/game/launcher/adapters/NewsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/NewsAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 44
    sget-object v0, Lcom/xyron/game/launcher/data/Config;->mNewsDescription:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/adapters/NewsAdapter;->onBindViewHolder(Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;I)V
    .locals 3

    .line 36
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/xyron/game/launcher/adapters/NewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/xyron/game/launcher/data/Config;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 37
    iget-object v1, p1, Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object v0, p1, Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;->mMainText:Landroid/widget/TextView;

    sget-object v1, Lcom/xyron/game/launcher/data/Config;->mNewsTitle:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p1, p1, Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;->mMainInfo:Landroid/widget/TextView;

    sget-object v0, Lcom/xyron/game/launcher/data/Config;->mNewsDescription:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/adapters/NewsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;
    .locals 2

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d007e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 31
    new-instance p2, Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/xyron/game/launcher/adapters/NewsAdapter$ViewHolder;-><init>(Lcom/xyron/game/launcher/adapters/NewsAdapter;Landroid/view/View;)V

    return-object p2
.end method
