.class public Lcom/xyron/game/launcher/adapters/ServerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ServerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field private pagePosition:I

.field position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter;->position:I

    .line 39
    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter;->pagePosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/launcher/adapters/ServerAdapter;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/adapters/ServerAdapter;->saveSelectedServer(I)V

    return-void
.end method

.method private saveSelectedServer(I)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/xyron/game/launcher/data/Config;->mServersHost:[Ljava/lang/String;

    aget-object v1, v1, p1

    sget-object v2, Lcom/xyron/game/launcher/data/Config;->mServersPort:[I

    aget p1, v2, p1

    invoke-static {v0, v1, p1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->saveSelectedServer(Landroid/content/Context;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 89
    sget-object v0, Lcom/xyron/game/launcher/data/Config;->mServersOnline:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/adapters/ServerAdapter;->onBindViewHolder(Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;I)V
    .locals 4

    .line 52
    iget-object v0, p1, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mServerNameText:Landroid/widget/TextView;

    sget-object v1, Lcom/xyron/game/launcher/data/Config;->mServersName:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p1, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mOnlineText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xyron/game/launcher/data/Config;->mServersOnline:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/300"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p1, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mPing:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xyron/game/launcher/data/Config;->mServersPing:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    sget-object v0, Lcom/xyron/game/launcher/data/Config;->mServersIsNew:[I

    aget v0, v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p1, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mIsNew:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p1, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mIsNew:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    :goto_0
    sget-object v0, Lcom/xyron/game/launcher/data/Config;->mServersDoubling:[I

    aget v0, v0, p2

    if-ne v0, v1, :cond_1

    .line 66
    iget-object v0, p1, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mJoin:Landroid/widget/ImageView;

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 68
    :cond_1
    sget-object v0, Lcom/xyron/game/launcher/data/Config;->mServersDoubling:[I

    aget v0, v0, p2

    if-nez v0, :cond_2

    .line 70
    iget-object v0, p1, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mJoin:Landroid/widget/ImageView;

    const v1, 0x7f080154

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    :cond_2
    :goto_1
    iget-object v0, p1, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mJoin:Landroid/widget/ImageView;

    new-instance v1, Lcom/xyron/game/launcher/util/ButtonAnimator;

    iget-object v2, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mJoin:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Lcom/xyron/game/launcher/util/ButtonAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    iget-object p1, p1, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;->mJoin:Landroid/widget/ImageView;

    new-instance v0, Lcom/xyron/game/launcher/adapters/ServerAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/xyron/game/launcher/adapters/ServerAdapter$1;-><init>(Lcom/xyron/game/launcher/adapters/ServerAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/adapters/ServerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d008f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;-><init>(Lcom/xyron/game/launcher/adapters/ServerAdapter;Landroid/view/View;)V

    return-object p2
.end method
