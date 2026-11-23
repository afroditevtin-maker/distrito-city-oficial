.class public Lcom/xyron/game/launcher/adapters/FaqAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FaqAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private builder:Landroid/app/AlertDialog$Builder;

.field private mActivity:Landroid/app/Activity;

.field private mItemsInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsMain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsMain:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsInfo:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mActivity:Landroid/app/Activity;

    .line 36
    iget-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsMain:Ljava/util/ArrayList;

    const-string v0, "O servidor n\u00c3\u00a3o respondeu. Tente novamente"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsMain:Ljava/util/ArrayList;

    const-string v0, "Voc\u00c3\u00aa est\u00c3\u00a1 banido deste servidor"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsMain:Ljava/util/ArrayList;

    const-string v0, "O servidor enviou as linhas em azul"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsMain:Ljava/util/ArrayList;

    const-string v0, "Janela de login, sem meu registro"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsMain:Ljava/util/ArrayList;

    const-string v0, "N\u00c3\u00a3o concordo com a decis\u00c3\u00a3o do administrador"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsInfo:Ljava/util/ArrayList;

    const-string v0, "Tente reiniciar o inicializador e fa\u00c3\u00a7a login novamente. E se n\u00c3\u00a3o ajudar, escreva para n\u00c3\u00b3s na se\u00c3\u00a7\u00c3\u00a3o t\u00c3\u00a9cnica"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsInfo:Ljava/util/ArrayList;

    const-string v0, "Entre novamente no jogo, se n\u00c3\u00a3o ajudar, desligue o WI-FI, tente fazer login na Internet m\u00c3\u00b3vel. Se ambos os m\u00c3\u00a9todos n\u00c3\u00a3o ajudarem, escreva-nos no discord"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsInfo:Ljava/util/ArrayList;

    const-string v0, "Isso significa que seu apelido n\u00c3\u00a3o atende aos requisitos do SAMP. O apelido deve ter de 6 a 21 caracteres e ter \'_\'."

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsInfo:Ljava/util/ArrayList;

    const-string v0, "Isso significa que seu apelido j\u00c3\u00a1 est\u00c3\u00a1 em uso. Altere no inicializador e tente novamente"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsInfo:Ljava/util/ArrayList;

    const-string v0, "Escreva-nos uma reclama\u00c3\u00a7\u00c3\u00a3o no discord e iremos consider\u00c3\u00a1-la dentro de 48 horas!"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance p1, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    iget-object v0, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->builder:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/launcher/adapters/FaqAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsInfo:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xyron/game/launcher/adapters/FaqAdapter;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->builder:Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xyron/game/launcher/adapters/FaqAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsMain:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsMain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/adapters/FaqAdapter;->onBindViewHolder(Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;I)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsMain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 63
    iget-object v0, p1, Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;->mFaqText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mItemsMain:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p2, p1, Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;->mMain:Landroid/widget/ImageView;

    new-instance v0, Lcom/xyron/game/launcher/util/ButtonAnimator;

    iget-object v1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, p1, Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;->mMain:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/launcher/util/ButtonAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    iget-object p2, p1, Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;->mMain:Landroid/widget/ImageView;

    new-instance v0, Lcom/xyron/game/launcher/adapters/FaqAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/launcher/adapters/FaqAdapter$1;-><init>(Lcom/xyron/game/launcher/adapters/FaqAdapter;Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/adapters/FaqAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;
    .locals 2

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d003f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;-><init>(Lcom/xyron/game/launcher/adapters/FaqAdapter;Landroid/view/View;)V

    return-object p2
.end method
