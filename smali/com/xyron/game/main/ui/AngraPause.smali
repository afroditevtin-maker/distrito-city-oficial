.class public final Lcom/xyron/game/main/ui/AngraPause;
.super Ljava/lang/Object;
.source "AngraPause.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final canvas:Landroid/widget/FrameLayout;

.field private final handler:Landroid/os/Handler;

.field private final host:Landroid/widget/FrameLayout;

.field private final latencyReader:Ljava/util/function/IntSupplier;

.field private opened:J

.field private final ping:Landroid/widget/TextView;

.field private serverLatency:I

.field private final temperature:Landroid/widget/TextView;

.field private final tick:Ljava/lang/Runnable;

.field private final timer:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/IntSupplier;)V
    .locals 12

    move-object v7, p0

    move-object v8, p1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v7, Lcom/xyron/game/main/ui/AngraPause;->handler:Landroid/os/Handler;

    const/4 v9, -0x1

    .line 28
    iput v9, v7, Lcom/xyron/game/main/ui/AngraPause;->serverLatency:I

    .line 29
    new-instance v0, Lcom/xyron/game/main/ui/AngraPause$1;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/ui/AngraPause$1;-><init>(Lcom/xyron/game/main/ui/AngraPause;)V

    iput-object v0, v7, Lcom/xyron/game/main/ui/AngraPause;->tick:Ljava/lang/Runnable;

    .line 41
    iput-object v8, v7, Lcom/xyron/game/main/ui/AngraPause;->activity:Landroid/app/Activity;

    move-object/from16 v0, p8

    .line 42
    iput-object v0, v7, Lcom/xyron/game/main/ui/AngraPause;->latencyReader:Ljava/util/function/IntSupplier;

    .line 43
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v7, Lcom/xyron/game/main/ui/AngraPause;->host:Landroid/widget/FrameLayout;

    const v0, -0x4ae5e5e6

    .line 44
    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v0, 0x1

    .line 45
    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 46
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lcom/xyron/game/main/ui/AngraPause;->canvas:Landroid/widget/FrameLayout;

    .line 47
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x2c

    const/16 v6, 0x1a

    .line 48
    const-string v1, ""

    const/16 v2, 0x42

    const/16 v3, 0x48

    const/16 v4, 0x10a

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/xyron/game/main/ui/AngraPause;->label(Ljava/lang/String;IIIII)Landroid/widget/TextView;

    move-result-object v11

    iput-object v11, v7, Lcom/xyron/game/main/ui/AngraPause;->temperature:Landroid/widget/TextView;

    .line 49
    const-string v1, ""

    const/16 v2, 0x4d6

    invoke-direct/range {v0 .. v6}, Lcom/xyron/game/main/ui/AngraPause;->label(Ljava/lang/String;IIIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v7, Lcom/xyron/game/main/ui/AngraPause;->ping:Landroid/widget/TextView;

    const/16 v1, 0x11

    .line 50
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v3, 0x8c

    const v4, 0x7f0801bc

    .line 52
    const-string v1, "Configura\u00e7\u00f5es"

    const/16 v2, 0x42

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/ui/AngraPause;->button(Ljava/lang/String;IIILjava/lang/Runnable;)V

    .line 53
    new-instance v5, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda2;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v5, p0, v0, v1}, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/ui/AngraPause;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-string v1, "Suporte"

    const/16 v3, 0xfe

    const v4, 0x7f0801b8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/ui/AngraPause;->button(Ljava/lang/String;IIILjava/lang/Runnable;)V

    const v4, 0x7f0801bb

    const/4 v5, 0x0

    .line 54
    const-string v1, "Regras"

    const/16 v3, 0x16f

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/ui/AngraPause;->button(Ljava/lang/String;IIILjava/lang/Runnable;)V

    const v4, 0x7f0801b7

    .line 55
    const-string v1, "F\u00f3rum"

    const/16 v3, 0x1e0

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/ui/AngraPause;->button(Ljava/lang/String;IIILjava/lang/Runnable;)V

    const/16 v5, 0x2a

    .line 56
    const-string v1, ""

    const/16 v3, 0x250

    const/16 v4, 0x1b8

    invoke-direct/range {v0 .. v6}, Lcom/xyron/game/main/ui/AngraPause;->label(Ljava/lang/String;IIIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v7, Lcom/xyron/game/main/ui/AngraPause;->timer:Landroid/widget/TextView;

    const/16 v3, 0x8c

    const v4, 0x7f0801b6

    .line 57
    const-string v1, "Continuar"

    const/16 v2, 0x4d6

    move-object v0, p0

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/ui/AngraPause;->button(Ljava/lang/String;IIILjava/lang/Runnable;)V

    const/16 v3, 0xfe

    const v4, 0x7f0801ba

    .line 58
    const-string v1, "Mapa"

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/ui/AngraPause;->button(Ljava/lang/String;IIILjava/lang/Runnable;)V

    .line 59
    new-instance v0, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda3;

    move-object/from16 v1, p7

    invoke-direct {v0, p1, v1}, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    const-string v1, "Sair do jogo"

    const/16 v3, 0x1e0

    const v4, 0x7f0801b9

    move-object p2, p0

    move-object p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v4

    move-object/from16 p7, v0

    invoke-direct/range {p2 .. p7}, Lcom/xyron/game/main/ui/AngraPause;->button(Ljava/lang/String;IIILjava/lang/Runnable;)V

    .line 66
    new-instance v0, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/main/ui/AngraPause;)V

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/16 v0, 0x8

    .line 83
    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 84
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v10, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/main/ui/AngraPause;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/xyron/game/main/ui/AngraPause;->opened:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/xyron/game/main/ui/AngraPause;)Landroid/app/Activity;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xyron/game/main/ui/AngraPause;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xyron/game/main/ui/AngraPause;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xyron/game/main/ui/AngraPause;->timer:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xyron/game/main/ui/AngraPause;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AngraPause;->updatePing()V

    return-void
.end method

.method static synthetic access$400(Lcom/xyron/game/main/ui/AngraPause;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xyron/game/main/ui/AngraPause;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private button(Ljava/lang/String;IIILjava/lang/Runnable;)V
    .locals 8

    .line 105
    iget-object v0, p0, Lcom/xyron/game/main/ui/AngraPause;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v6, 0x64

    const/16 v7, 0x18

    const/16 v5, 0x10a

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 106
    invoke-direct/range {v1 .. v7}, Lcom/xyron/game/main/ui/AngraPause;->label(Ljava/lang/String;IIIII)Landroid/widget/TextView;

    move-result-object p2

    .line 107
    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    const/4 v0, 0x5

    const/4 v1, 0x1

    aput v1, p3, v0

    .line 108
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 109
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez p5, :cond_0

    const p1, 0x3f51eb85    # 0.82f

    .line 111
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 p1, 0x0

    .line 112
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance p1, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda7;

    invoke-direct {p1, p5}, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private label(Ljava/lang/String;IIIII)Landroid/widget/TextView;
    .locals 7

    .line 95
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xyron/game/main/ui/AngraPause;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x10

    .line 98
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 99
    filled-new-array/range {v1 .. v6}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lcom/xyron/game/main/ui/AngraPause;->canvas:Landroid/widget/FrameLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic lambda$button$5(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 114
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$new$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 64
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$new$2(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3

    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Confirmar sa\u00edda"

    .line 61
    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Tem certeza de que deseja sair do jogo?"

    .line 62
    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "N\u00e3o"

    .line 63
    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Sim"

    .line 64
    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic lambda$showSupport$4(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    .line 90
    :goto_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private showSupport(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/xyron/game/main/ui/AngraPause;->activity:Landroid/app/Activity;

    const-string v1, "Abrir chamado"

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/ui/AngraPause;->activity:Landroid/app/Activity;

    const-string v2, "Reportar jogador"

    invoke-static {v1, v2}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xyron/game/main/ui/AngraPause;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xyron/game/main/ui/AngraPause;->activity:Landroid/app/Activity;

    const-string v3, "Suporte"

    invoke-static {v2, v3}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, p2}, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/xyron/game/main/ui/AngraPause;->activity:Landroid/app/Activity;

    const-string v0, "Fechar"

    .line 91
    invoke-static {p2, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updatePing()V
    .locals 7

    .line 128
    iget-object v0, p0, Lcom/xyron/game/main/ui/AngraPause;->latencyReader:Ljava/util/function/IntSupplier;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/IntSupplier;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget v0, p0, Lcom/xyron/game/main/ui/AngraPause;->serverLatency:I

    :goto_0
    const/16 v1, 0x78

    if-gez v0, :cond_1

    const v2, 0x7f0801c2

    goto :goto_1

    :cond_1
    const/16 v2, 0x50

    if-ge v0, v2, :cond_2

    const v2, 0x7f0801c1

    goto :goto_1

    :cond_2
    if-ge v0, v1, :cond_3

    const v2, 0x7f0801c0

    goto :goto_1

    :cond_3
    const/16 v2, 0xa0

    if-ge v0, v2, :cond_4

    const v2, 0x7f0801bf

    goto :goto_1

    :cond_4
    const v2, 0x7f0801be

    .line 132
    :goto_1
    iget-object v3, p0, Lcom/xyron/game/main/ui/AngraPause;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 133
    iget-object v3, p0, Lcom/xyron/game/main/ui/AngraPause;->host:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41b00000    # 22.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x44340000    # 720.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    .line 134
    invoke-virtual {v2, v5, v5, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    iget-object v3, p0, Lcom/xyron/game/main/ui/AngraPause;->ping:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v2, p0, Lcom/xyron/game/main/ui/AngraPause;->ping:Landroid/widget/TextView;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 137
    iget-object v2, p0, Lcom/xyron/game/main/ui/AngraPause;->ping:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 138
    iget-object v2, p0, Lcom/xyron/game/main/ui/AngraPause;->ping:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xyron/game/main/ui/AngraPause;->host:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42960000    # 75.0f

    mul-float v3, v3, v4

    const v4, 0x44c44000    # 1570.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 139
    iget-object v2, p0, Lcom/xyron/game/main/ui/AngraPause;->ping:Landroid/widget/TextView;

    if-gez v0, :cond_5

    const-string/jumbo v3, "\u2014 ms"

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, p0, Lcom/xyron/game/main/ui/AngraPause;->ping:Landroid/widget/TextView;

    if-gez v0, :cond_6

    const v0, -0x484849

    goto :goto_3

    :cond_6
    if-ge v0, v1, :cond_7

    const v0, -0x8a35ac

    goto :goto_3

    :cond_7
    const v0, -0x8fb5

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/AngraPause;->hide()V

    iget-object v0, p0, Lcom/xyron/game/main/ui/AngraPause;->host:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xyron/game/main/ui/AngraPause;->host:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public hide()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/xyron/game/main/ui/AngraPause;->host:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xyron/game/main/ui/AngraPause;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/ui/AngraPause;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xyron/game/main/ui/AngraPause;->host:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$new$0$com-xyron-game-main-ui-AngraPause(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/xyron/game/main/ui/AngraPause;->showSupport(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$new$3$com-xyron-game-main-ui-AngraPause(Landroid/view/View;IIIIIIII)V
    .locals 4

    .line 0
    sub-int/2addr p5, p3

    int-to-float p1, p5

    const/high16 p3, 0x44340000    # 720.0f

    div-float/2addr p1, p3

    sub-int/2addr p4, p2

    int-to-float p2, p4

    const p3, 0x44c44000    # 1570.0f

    div-float/2addr p2, p3

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 69
    :goto_0
    iget-object p5, p0, Lcom/xyron/game/main/ui/AngraPause;->canvas:Landroid/widget/FrameLayout;

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_1

    .line 70
    iget-object p5, p0, Lcom/xyron/game/main/ui/AngraPause;->canvas:Landroid/widget/FrameLayout;

    invoke-virtual {p5, p4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    .line 71
    invoke-virtual {p5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, [I

    .line 72
    aget p7, p6, p3

    int-to-float p7, p7

    mul-float p7, p7, p2

    invoke-static {p7}, Ljava/lang/Math;->round(F)I

    move-result p7

    const/4 p8, 0x1

    aget p9, p6, p8

    int-to-float p9, p9

    mul-float p9, p9, p1

    invoke-static {p9}, Ljava/lang/Math;->round(F)I

    move-result p9

    const/4 v0, 0x2

    aget v1, p6, v0

    int-to-float v1, v1

    mul-float v1, v1, p2

    .line 73
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x3

    aget v3, p6, v2

    int-to-float v3, v3

    mul-float v3, v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    filled-new-array {p7, p9, v1, v3}, [I

    move-result-object p7

    .line 74
    new-instance p9, Landroid/widget/FrameLayout$LayoutParams;

    aget v0, p7, v0

    aget v1, p7, v2

    invoke-direct {p9, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    aget v0, p7, p3

    iput v0, p9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 76
    aget p7, p7, p8

    iput p7, p9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 77
    invoke-virtual {p5, p9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p7, 0x4

    .line 78
    aget p7, p6, p7

    int-to-float p7, p7

    mul-float p7, p7, p1

    const/high16 p9, 0x41400000    # 12.0f

    invoke-static {p9, p7}, Ljava/lang/Math;->max(FF)F

    move-result p7

    invoke-virtual {p5, p3, p7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p7, 0x5

    .line 79
    aget p6, p6, p7

    if-ne p6, p8, :cond_0

    const/high16 p6, 0x429e0000    # 79.0f

    mul-float p6, p6, p2

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    goto :goto_1

    :cond_0
    const/4 p6, 0x0

    :goto_1
    invoke-virtual {p5, p6, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEnvironment(II)V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/xyron/game/main/ui/AngraPause;->temperature:Landroid/widget/TextView;

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    const-string/jumbo p1, "\u2014 \u00b0C"

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "%d.0 \u00b0C"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p1, p0, Lcom/xyron/game/main/ui/AngraPause;->temperature:Landroid/widget/TextView;

    const v0, -0x8930aa

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iput p2, p0, Lcom/xyron/game/main/ui/AngraPause;->serverLatency:I

    .line 124
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AngraPause;->updatePing()V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 2

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xyron/game/main/ui/AngraPause;->opened:J

    .line 144
    iget-object p1, p0, Lcom/xyron/game/main/ui/AngraPause;->host:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 145
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/ui/AngraPause;->host:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/graphics/RenderEffect;)V

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/ui/AngraPause;->host:Landroid/widget/FrameLayout;

    const v0, 0x469c4400    # 20002.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 147
    iget-object p1, p0, Lcom/xyron/game/main/ui/AngraPause;->host:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lcom/xyron/game/main/ui/AngraPause;->host:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 149
    iget-object p1, p0, Lcom/xyron/game/main/ui/AngraPause;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xyron/game/main/ui/AngraPause;->tick:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    iget-object p1, p0, Lcom/xyron/game/main/ui/AngraPause;->tick:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public view()Landroid/view/View;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xyron/game/main/ui/AngraPause;->host:Landroid/widget/FrameLayout;

    return-object v0
.end method
