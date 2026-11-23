.class public Lcom/xyron/game/main/ui/AttachEdit;
.super Ljava/lang/Object;
.source "AttachEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/ui/AttachEdit$VisibilityListener;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final handler:Landroid/os/Handler;

.field private final heading:Landroid/widget/TextView;

.field private final hint:Landroid/widget/TextView;

.field public isShow:Z

.field private final menu:Landroid/widget/LinearLayout;

.field private final minus:Landroid/widget/Button;

.field private final modes:[Landroid/widget/Button;

.field private final plus:Landroid/widget/Button;

.field private positive:Z

.field private precision:I

.field private final repeat:Ljava/lang/Runnable;

.field private repeating:Z

.field private final root:Landroid/widget/FrameLayout;

.field private selected:I

.field private final speeds:[Landroid/widget/Button;

.field private final tools:Landroid/widget/LinearLayout;

.field private final visibility:Lcom/xyron/game/main/ui/AttachEdit$VisibilityListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 37
    new-instance v0, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/xyron/game/main/ui/AttachEdit;-><init>(Landroid/app/Activity;Lcom/xyron/game/main/ui/AttachEdit$VisibilityListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/xyron/game/main/ui/AttachEdit$VisibilityListener;)V
    .locals 12

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->handler:Landroid/os/Handler;

    const/4 v0, 0x7

    .line 27
    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->modes:[Landroid/widget/Button;

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/xyron/game/main/ui/AttachEdit;->speeds:[Landroid/widget/Button;

    const/4 v1, 0x1

    .line 28
    iput v1, p0, Lcom/xyron/game/main/ui/AttachEdit;->selected:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/xyron/game/main/ui/AttachEdit;->precision:I

    .line 98
    new-instance v3, Lcom/xyron/game/main/ui/AttachEdit$1;

    invoke-direct {v3, p0}, Lcom/xyron/game/main/ui/AttachEdit$1;-><init>(Lcom/xyron/game/main/ui/AttachEdit;)V

    iput-object v3, p0, Lcom/xyron/game/main/ui/AttachEdit;->repeat:Ljava/lang/Runnable;

    .line 39
    iput-object p1, p0, Lcom/xyron/game/main/ui/AttachEdit;->activity:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lcom/xyron/game/main/ui/AttachEdit;->visibility:Lcom/xyron/game/main/ui/AttachEdit$VisibilityListener;

    .line 41
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xyron/game/main/ui/AttachEdit;->root:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 42
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0xf5

    .line 45
    invoke-direct {p0, v5}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v5

    const/16 v6, 0xaf

    invoke-direct {p0, v6}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v6

    const/16 v7, 0x20

    invoke-direct {p0, v7}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v8

    sub-int/2addr v3, v8

    div-int/2addr v3, v0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 46
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 47
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->column()Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/xyron/game/main/ui/AttachEdit;->menu:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 48
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v9, 0xb4

    invoke-direct {p0, v9}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v10

    invoke-direct {p0, v7}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v11

    sub-int v11, v4, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    const v11, 0x800013

    invoke-direct {v8, v3, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v10, 0xc

    .line 49
    invoke-direct {p0, v10}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v11

    iput v11, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p2, v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    const-string p2, "AJUSTAR ACESSORIO"

    const/16 v5, 0x10

    invoke-direct {p0, p2, v5, v1}, Lcom/xyron/game/main/ui/AttachEdit;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    const-string p2, "Escolha o que deseja mudar"

    invoke-direct {p0, p2, v10, v2}, Lcom/xyron/game/main/ui/AttachEdit;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 52
    :goto_0
    iget-object v6, p0, Lcom/xyron/game/main/ui/AttachEdit;->modes:[Landroid/widget/Button;

    array-length v8, v6

    if-ge p2, v8, :cond_0

    .line 54
    sget-object v8, Lcom/xyron/game/main/ui/AccessoryEditorControls;->LABELS:[Ljava/lang/String;

    aget-object v8, v8, p2

    invoke-direct {p0, v8}, Lcom/xyron/game/main/ui/AttachEdit;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v8

    aput-object v8, v6, p2

    iget-object v6, p0, Lcom/xyron/game/main/ui/AttachEdit;->menu:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/xyron/game/main/ui/AttachEdit;->modes:[Landroid/widget/Button;

    aget-object v8, v8, p2

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    iget-object v6, p0, Lcom/xyron/game/main/ui/AttachEdit;->modes:[Landroid/widget/Button;

    aget-object v6, v6, p2

    new-instance v8, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, p2}, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/ui/AttachEdit;I)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->column()Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/xyron/game/main/ui/AttachEdit;->tools:Landroid/widget/LinearLayout;

    .line 58
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const v11, 0x800015

    invoke-direct {v6, v3, v8, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 59
    invoke-direct {p0, v10}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v3

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-direct {p0, v9}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v3

    invoke-direct {p0, v7}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v7

    sub-int/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 60
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/xyron/game/main/ui/AttachEdit;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const-string v3, ""

    invoke-direct {p0, v3, v5, v1}, Lcom/xyron/game/main/ui/AttachEdit;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/xyron/game/main/ui/AttachEdit;->heading:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    const-string v4, "Toque para ajustar. Segure para continuar."

    invoke-direct {p0, v4, v10, v2}, Lcom/xyron/game/main/ui/AttachEdit;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/xyron/game/main/ui/AttachEdit;->hint:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v3}, Lcom/xyron/game/main/ui/AttachEdit;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, p0, Lcom/xyron/game/main/ui/AttachEdit;->minus:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lcom/xyron/game/main/ui/AttachEdit;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/xyron/game/main/ui/AttachEdit;->plus:Landroid/widget/Button;

    .line 64
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x34

    invoke-direct {p0, v7}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v7}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v7

    invoke-direct {v6, v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    invoke-direct {p0, v5, v2}, Lcom/xyron/game/main/ui/AttachEdit;->bindHold(Landroid/widget/Button;Z)V

    invoke-direct {p0, v3, v1}, Lcom/xyron/game/main/ui/AttachEdit;->bindHold(Landroid/widget/Button;Z)V

    .line 67
    const-string v3, "Velocidade do ajuste"

    invoke-direct {p0, v3, v10, v1}, Lcom/xyron/game/main/ui/AttachEdit;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const-string v1, "Normal"

    const-string v3, "Rapido"

    const-string v4, "Fino"

    filled-new-array {v4, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x2c

    if-ge v3, v0, :cond_1

    .line 70
    iget-object v5, p0, Lcom/xyron/game/main/ui/AttachEdit;->speeds:[Landroid/widget/Button;

    aget-object v6, v1, v3

    invoke-direct {p0, v6}, Lcom/xyron/game/main/ui/AttachEdit;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v5, p0, Lcom/xyron/game/main/ui/AttachEdit;->speeds:[Landroid/widget/Button;

    aget-object v5, v5, v3

    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 71
    iget-object v5, p0, Lcom/xyron/game/main/ui/AttachEdit;->speeds:[Landroid/widget/Button;

    aget-object v5, v5, v3

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v4}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v4

    invoke-direct {v6, v2, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v4, p0, Lcom/xyron/game/main/ui/AttachEdit;->speeds:[Landroid/widget/Button;

    aget-object v4, v4, v3

    new-instance v5, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v3}, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/main/ui/AttachEdit;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->tools:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const-string v0, "Desfazer"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/AttachEdit;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Reiniciar"

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/AttachEdit;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 76
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v4}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v5

    invoke-direct {v3, v2, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v4}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v4

    invoke-direct {v3, v2, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/xyron/game/main/ui/AttachEdit;->tools:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    new-instance p2, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/main/ui/AttachEdit;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance p2, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/main/ui/AttachEdit;)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p2, p0, Lcom/xyron/game/main/ui/AttachEdit;->tools:Landroid/widget/LinearLayout;

    const-string v0, "Reiniciar volta ao inicio desta edicao. Cancelar preserva o encaixe salvo."

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1, v2}, Lcom/xyron/game/main/ui/AttachEdit;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "Cancelar"

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/AttachEdit;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "Salvar"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/AttachEdit;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x30

    invoke-direct {p0, v3}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v4

    invoke-direct {v1, v2, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v3

    invoke-direct {v1, v2, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/xyron/game/main/ui/AttachEdit;->tools:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const p2, -0x57d8cb

    .line 82
    invoke-direct {p0, p2}, Lcom/xyron/game/main/ui/AttachEdit;->background(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda6;-><init>(Lcom/xyron/game/main/ui/AttachEdit;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance p2, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda7;-><init>(Lcom/xyron/game/main/ui/AttachEdit;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->refresh()V

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/main/ui/AttachEdit;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/xyron/game/main/ui/AttachEdit;->repeating:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xyron/game/main/ui/AttachEdit;)Landroid/widget/FrameLayout;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xyron/game/main/ui/AttachEdit;->root:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xyron/game/main/ui/AttachEdit;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/xyron/game/main/ui/AttachEdit;->selected:I

    return p0
.end method

.method static synthetic access$300(Lcom/xyron/game/main/ui/AttachEdit;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/xyron/game/main/ui/AttachEdit;->precision:I

    return p0
.end method

.method static synthetic access$400(Lcom/xyron/game/main/ui/AttachEdit;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/xyron/game/main/ui/AttachEdit;->positive:Z

    return p0
.end method

.method static synthetic access$500(Lcom/xyron/game/main/ui/AttachEdit;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xyron/game/main/ui/AttachEdit;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private background(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 87
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result p1

    const v1, -0xb8aea1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method private bindHold(Landroid/widget/Button;Z)V
    .locals 1

    .line 100
    new-instance v0, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/xyron/game/main/ui/AttachEdit$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/ui/AttachEdit;ZLandroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private button(Ljava/lang/String;)Landroid/widget/Button;
    .locals 6

    .line 90
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/xyron/game/main/ui/AttachEdit;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v2, 0x2c

    invoke-direct {p0, v2}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinWidth(I)V

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v5

    invoke-virtual {v0, v4, p1, v5, p1}, Landroid/widget/Button;->setPadding(IIII)V

    const p1, -0xddd2c5

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/AttachEdit;->background(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v3}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private column()Landroid/widget/LinearLayout;
    .locals 5

    .line 88
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xyron/game/main/ui/AttachEdit;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v1, -0x11efe8e0

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/AttachEdit;->background(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 86
    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method static synthetic lambda$new$0(Z)V
    .locals 0

    return-void
.end method

.method private refresh()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    const v3, -0x63d9cb

    const v4, -0xddd2c5

    if-ge v1, v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/xyron/game/main/ui/AttachEdit;->modes:[Landroid/widget/Button;

    aget-object v2, v2, v1

    iget v5, p0, Lcom/xyron/game/main/ui/AttachEdit;->selected:I

    if-ne v1, v5, :cond_0

    goto :goto_1

    :cond_0
    const v3, -0xddd2c5

    :goto_1
    invoke-direct {p0, v3}, Lcom/xyron/game/main/ui/AttachEdit;->background(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/xyron/game/main/ui/AttachEdit;->speeds:[Landroid/widget/Button;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/xyron/game/main/ui/AttachEdit;->precision:I

    if-ne v0, v2, :cond_2

    const v2, -0x63d9cb

    goto :goto_3

    :cond_2
    const v2, -0xddd2c5

    :goto_3
    invoke-direct {p0, v2}, Lcom/xyron/game/main/ui/AttachEdit;->background(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->heading:Landroid/widget/TextView;

    sget-object v1, Lcom/xyron/game/main/ui/AccessoryEditorControls;->LABELS:[Ljava/lang/String;

    iget v2, p0, Lcom/xyron/game/main/ui/AttachEdit;->selected:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->minus:Landroid/widget/Button;

    iget v1, p0, Lcom/xyron/game/main/ui/AttachEdit;->selected:I

    invoke-static {v1}, Lcom/xyron/game/main/ui/AccessoryEditorControls;->minus(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->plus:Landroid/widget/Button;

    iget v1, p0, Lcom/xyron/game/main/ui/AttachEdit;->selected:I

    invoke-static {v1}, Lcom/xyron/game/main/ui/AccessoryEditorControls;->plus(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->minus:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ajustar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xyron/game/main/ui/AttachEdit;->minus:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->plus:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xyron/game/main/ui/AttachEdit;->plus:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private stopRepeat()V
    .locals 2

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->repeating:Z

    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/ui/AttachEdit;->repeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .locals 3

    .line 89
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xyron/game/main/ui/AttachEdit;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result p2

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result p1

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/AttachEdit;->dp(I)I

    move-result v1

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method native AttachClick(IZ)V
.end method

.method native Exit()V
.end method

.method native Save()V
.end method

.method public hide()V
    .locals 3

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->stopRepeat()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->isShow:Z

    iget-object v1, p0, Lcom/xyron/game/main/ui/AttachEdit;->root:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/xyron/game/main/ui/AttachEdit;->visibility:Lcom/xyron/game/main/ui/AttachEdit$VisibilityListener;

    invoke-interface {v1, v0}, Lcom/xyron/game/main/ui/AttachEdit$VisibilityListener;->changed(Z)V

    return-void
.end method

.method public hideWithoutReset()V
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->stopRepeat()V

    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->root:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$bindHold$7$com-xyron-game-main-ui-AttachEdit(ZLandroid/widget/Button;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 101
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->stopRepeat()V

    iput-boolean p1, p0, Lcom/xyron/game/main/ui/AttachEdit;->positive:Z

    iput-boolean v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->repeating:Z

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setPressed(Z)V

    iget p1, p0, Lcom/xyron/game/main/ui/AttachEdit;->selected:I

    iget p2, p0, Lcom/xyron/game/main/ui/AttachEdit;->precision:I

    invoke-static {p1, p2}, Lcom/xyron/game/main/ui/AccessoryEditorControls;->action(II)I

    move-result p1

    iget-boolean p2, p0, Lcom/xyron/game/main/ui/AttachEdit;->positive:Z

    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/main/ui/AttachEdit;->AttachClick(IZ)V

    iget-object p1, p0, Lcom/xyron/game/main/ui/AttachEdit;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xyron/game/main/ui/AttachEdit;->repeat:Ljava/lang/Runnable;

    const-wide/16 p3, 0x15e

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    .line 102
    :cond_0
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v0, :cond_2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->stopRepeat()V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setPressed(Z)V

    return v0
.end method

.method synthetic lambda$new$1$com-xyron-game-main-ui-AttachEdit(ILandroid/view/View;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->stopRepeat()V

    iput p1, p0, Lcom/xyron/game/main/ui/AttachEdit;->selected:I

    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->refresh()V

    return-void
.end method

.method synthetic lambda$new$2$com-xyron-game-main-ui-AttachEdit(ILandroid/view/View;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->stopRepeat()V

    iput p1, p0, Lcom/xyron/game/main/ui/AttachEdit;->precision:I

    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->refresh()V

    return-void
.end method

.method synthetic lambda$new$3$com-xyron-game-main-ui-AttachEdit(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->stopRepeat()V

    const/16 p1, 0x16

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xyron/game/main/ui/AttachEdit;->AttachClick(IZ)V

    return-void
.end method

.method synthetic lambda$new$4$com-xyron-game-main-ui-AttachEdit(Landroid/view/View;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->stopRepeat()V

    const/16 p1, 0x15

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xyron/game/main/ui/AttachEdit;->AttachClick(IZ)V

    return-void
.end method

.method synthetic lambda$new$5$com-xyron-game-main-ui-AttachEdit(Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->stopRepeat()V

    invoke-virtual {p0}, Lcom/xyron/game/main/ui/AttachEdit;->hide()V

    invoke-virtual {p0}, Lcom/xyron/game/main/ui/AttachEdit;->Save()V

    return-void
.end method

.method synthetic lambda$new$6$com-xyron-game-main-ui-AttachEdit(Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->stopRepeat()V

    invoke-virtual {p0}, Lcom/xyron/game/main/ui/AttachEdit;->hide()V

    invoke-virtual {p0}, Lcom/xyron/game/main/ui/AttachEdit;->Exit()V

    return-void
.end method

.method public show()V
    .locals 3

    .line 106
    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->stopRepeat()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->selected:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/xyron/game/main/ui/AttachEdit;->precision:I

    invoke-direct {p0}, Lcom/xyron/game/main/ui/AttachEdit;->refresh()V

    iput-boolean v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->isShow:Z

    iget-object v2, p0, Lcom/xyron/game/main/ui/AttachEdit;->visibility:Lcom/xyron/game/main/ui/AttachEdit$VisibilityListener;

    invoke-interface {v2, v0}, Lcom/xyron/game/main/ui/AttachEdit$VisibilityListener;->changed(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->root:Landroid/widget/FrameLayout;

    const v2, 0x469c4200    # 20001.0f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setElevation(F)V

    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public showWithoutReset()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/xyron/game/main/ui/AttachEdit;->root:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
