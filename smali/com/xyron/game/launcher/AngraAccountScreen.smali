.class final Lcom/xyron/game/launcher/AngraAccountScreen;
.super Ljava/lang/Object;
.source "AngraAccountScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;
    }
.end annotation


# instance fields
.field private final activity:Lcom/xyron/game/launcher/SettingsActivity;

.field private final connected:Z

.field private final delete:Ljava/lang/Runnable;

.field private final logout:Ljava/lang/Runnable;

.field private final logs:Ljava/lang/Runnable;

.field private panel:Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;

.field private final reinstall:Ljava/lang/Runnable;

.field private selected:I

.field private final support:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/SettingsActivity;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->activity:Lcom/xyron/game/launcher/SettingsActivity;

    .line 26
    iput-boolean p2, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->connected:Z

    .line 27
    iput-object p3, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->logs:Ljava/lang/Runnable;

    .line 28
    iput-object p4, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->support:Ljava/lang/Runnable;

    .line 29
    iput-object p5, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->reinstall:Ljava/lang/Runnable;

    .line 30
    iput-object p6, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->delete:Ljava/lang/Runnable;

    .line 31
    iput-object p7, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->logout:Ljava/lang/Runnable;

    .line 32
    invoke-direct {p0}, Lcom/xyron/game/launcher/AngraAccountScreen;->render()V

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/launcher/AngraAccountScreen;)Lcom/xyron/game/launcher/SettingsActivity;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->activity:Lcom/xyron/game/launcher/SettingsActivity;

    return-object p0
.end method

.method private action(Ljava/lang/String;IIILjava/lang/Runnable;)V
    .locals 17

    const/4 v6, -0x1

    const/16 v7, 0xc

    const/16 v4, 0x3c

    const v5, -0x282622

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 120
    invoke-direct/range {v0 .. v7}, Lcom/xyron/game/launcher/AngraAccountScreen;->rectangle(IIIIIII)V

    .line 121
    invoke-direct/range {p0 .. p1}, Lcom/xyron/game/launcher/AngraAccountScreen;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x1

    const v16, -0xeae8e5

    const/16 v13, 0x3c

    const/16 v14, 0x18

    move-object/from16 v8, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v8 .. v16}, Lcom/xyron/game/launcher/AngraAccountScreen;->text(Ljava/lang/String;IIIIIZI)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x11

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    new-instance v1, Lcom/xyron/game/launcher/AngraAccountScreen$$ExternalSyntheticLambda0;

    move-object/from16 v2, p5

    invoke-direct {v1, v2}, Lcom/xyron/game/launcher/AngraAccountScreen$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private block(IIIII)V
    .locals 7

    .line 147
    new-instance v1, Landroid/view/View;

    iget-object v0, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->activity:Lcom/xyron/game/launcher/SettingsActivity;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v1, p5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    iget-object v0, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->panel:Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;->add(Landroid/view/View;IIIII)V

    return-void
.end method

.method private icon(IIIII)Landroid/widget/ImageView;
    .locals 8

    .line 139
    new-instance v7, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->activity:Lcom/xyron/game/launcher/SettingsActivity;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 142
    iget-object v0, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->panel:Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;

    const/4 v6, 0x0

    move-object v1, v7

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;->add(Landroid/view/View;IIIII)V

    return-object v7
.end method

.method static synthetic lambda$action$3(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 123
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$menu$2(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 111
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private menu(Ljava/lang/String;IILjava/lang/Runnable;ZZ)V
    .locals 9

    .line 105
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/AngraAccountScreen;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p5, :cond_0

    const/16 v0, 0x21

    const/16 v6, 0x21

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    const/16 v6, 0x18

    :goto_0
    if-eqz p6, :cond_1

    const/16 p6, -0x5560

    const/16 v8, -0x5560

    goto :goto_1

    :cond_1
    const/4 p6, -0x1

    const/4 v8, -0x1

    :goto_1
    const/16 v2, 0x97

    const/16 v4, 0xec

    const/16 v5, 0x46

    move-object v0, p0

    move v3, p3

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/xyron/game/launcher/AngraAccountScreen;->text(Ljava/lang/String;IIIIIZI)Landroid/widget/TextView;

    move-result-object p5

    add-int/lit8 v3, p3, 0x14

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    const/16 v2, 0x65

    move v1, p2

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/launcher/AngraAccountScreen;->icon(IIIII)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p4, :cond_2

    .line 108
    new-instance p2, Landroid/view/View;

    iget-object p6, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->activity:Lcom/xyron/game/launcher/SettingsActivity;

    invoke-direct {p2, p6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/AngraAccountScreen;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->panel:Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;

    const/16 v5, 0x46

    const/4 v6, 0x0

    const/16 v2, 0x50

    const/16 v4, 0x136

    move-object v1, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;->add(Landroid/view/View;IIIII)V

    .line 111
    new-instance p1, Lcom/xyron/game/launcher/AngraAccountScreen$$ExternalSyntheticLambda4;

    invoke-direct {p1, p4}, Lcom/xyron/game/launcher/AngraAccountScreen$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x2

    .line 112
    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    goto :goto_2

    :cond_2
    const p1, 0x3f19999a    # 0.6f

    .line 114
    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 115
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method private provider(Ljava/lang/String;IIZ)V
    .locals 18

    const v6, -0x6c6a6b

    const/16 v7, 0xc

    const/16 v1, 0x1e4

    const/16 v3, 0x3c6

    const/16 v4, 0x51

    const v5, -0x2fd4d2d1

    move-object/from16 v0, p0

    move/from16 v2, p3

    .line 94
    invoke-direct/range {v0 .. v7}, Lcom/xyron/game/launcher/AngraAccountScreen;->rectangle(IIIIIII)V

    add-int/lit8 v11, p3, 0xe

    const/16 v12, 0x36

    const/16 v13, 0x36

    const/16 v10, 0x1fe

    move-object/from16 v8, p0

    move/from16 v9, p2

    .line 95
    invoke-direct/range {v8 .. v13}, Lcom/xyron/game/launcher/AngraAccountScreen;->icon(IIIII)Landroid/widget/ImageView;

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/16 v2, 0x259

    const/16 v4, 0x1cc

    const/16 v5, 0x51

    const/16 v6, 0x1c

    move-object/from16 v1, p1

    move/from16 v3, p3

    .line 96
    invoke-direct/range {v0 .. v8}, Lcom/xyron/game/launcher/AngraAccountScreen;->text(Ljava/lang/String;IIIIIZI)Landroid/widget/TextView;

    add-int/lit8 v0, p3, 0xb

    if-eqz p4, :cond_0

    const v1, 0x50343839

    const v14, 0x50343839

    goto :goto_0

    :cond_0
    const v1, -0x7a7774

    const v14, -0x7a7774

    :goto_0
    if-eqz p4, :cond_1

    const v1, -0x7a7676

    const v15, -0x7a7676

    goto :goto_1

    :cond_1
    const v1, -0x585653

    const v15, -0x585653

    :goto_1
    const/16 v16, 0xc

    const/16 v10, 0x487

    const/16 v12, 0x112

    const/16 v13, 0x3b

    move-object/from16 v9, p0

    move v11, v0

    .line 97
    invoke-direct/range {v9 .. v16}, Lcom/xyron/game/launcher/AngraAccountScreen;->rectangle(IIIIIII)V

    if-eqz p4, :cond_2

    add-int/lit8 v4, p3, 0x17

    const/16 v5, 0x23

    const/16 v6, 0x23

    const v2, 0x7f0801af

    const/16 v3, 0x4bf

    move-object/from16 v1, p0

    .line 98
    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/launcher/AngraAccountScreen;->icon(IIIII)Landroid/widget/ImageView;

    :cond_2
    if-eqz p4, :cond_3

    .line 99
    const-string v1, "Conectado"

    :goto_2
    move-object/from16 v2, p0

    goto :goto_3

    :cond_3
    const-string v1, "Google"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Indispon\u00edvel"

    goto :goto_2

    :cond_4
    const-string v1, "Vincular"

    goto :goto_2

    :goto_3
    invoke-direct {v2, v1}, Lcom/xyron/game/launcher/AngraAccountScreen;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz p4, :cond_5

    const/16 v1, 0x4f1

    const/16 v11, 0x4f1

    goto :goto_4

    :cond_5
    const/16 v1, 0x487

    const/16 v11, 0x487

    :goto_4
    if-eqz p4, :cond_6

    const/16 v1, 0x9e

    const/16 v13, 0x9e

    goto :goto_5

    :cond_6
    const/16 v1, 0x112

    const/16 v13, 0x112

    :goto_5
    xor-int/lit8 v16, p4, 0x1

    if-eqz p4, :cond_7

    const v1, -0x222223

    const v17, -0x222223

    goto :goto_6

    :cond_7
    const v1, -0xcac8c6

    const v17, -0xcac8c6

    :goto_6
    const/16 v14, 0x3b

    const/16 v15, 0x17

    move-object/from16 v9, p0

    move v12, v0

    invoke-direct/range {v9 .. v17}, Lcom/xyron/game/launcher/AngraAccountScreen;->text(Ljava/lang/String;IIIIIZI)Landroid/widget/TextView;

    move-result-object v0

    if-nez p4, :cond_8

    const/16 v1, 0x11

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_8
    return-void
.end method

.method private rectangle(IIIIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 153
    new-instance v8, Landroid/view/View;

    iget-object v1, v0, Lcom/xyron/game/launcher/AngraAccountScreen;->activity:Lcom/xyron/game/launcher/SettingsActivity;

    invoke-direct {v8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 154
    iget-object v1, v0, Lcom/xyron/game/launcher/AngraAccountScreen;->panel:Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;

    const/4 v7, 0x0

    move-object v2, v8

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;->add(Landroid/view/View;IIIII)V

    const/4 v13, 0x0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    .line 155
    filled-new-array/range {v9 .. v16}, [I

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private render()V
    .locals 19

    move-object/from16 v9, p0

    .line 38
    new-instance v0, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;

    invoke-direct {v0, v9}, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;-><init>(Lcom/xyron/game/launcher/AngraAccountScreen;)V

    iput-object v0, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->panel:Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;

    .line 39
    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->activity:Lcom/xyron/game/launcher/SettingsActivity;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0801ad

    .line 40
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 42
    iget-object v1, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->panel:Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;

    const/16 v6, 0x2d0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x622

    invoke-virtual/range {v1 .. v7}, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;->add(Landroid/view/View;IIIII)V

    const/16 v4, 0x2d0

    const v5, -0xcdddbda

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x198

    move-object/from16 v0, p0

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/launcher/AngraAccountScreen;->block(IIIII)V

    const v5, -0x7f000001

    const/16 v1, 0x197

    const/4 v3, 0x2

    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/launcher/AngraAccountScreen;->block(IIIII)V

    .line 46
    iget-object v0, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->activity:Lcom/xyron/game/launcher/SettingsActivity;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/xyron/game/launcher/AngraAccountScreen$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/xyron/game/launcher/AngraAccountScreen$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/launcher/SettingsActivity;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v1, "Conta"

    const v2, 0x7f0801ae

    const/16 v3, 0x2b

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/xyron/game/launcher/AngraAccountScreen;->menu(Ljava/lang/String;IILjava/lang/Runnable;ZZ)V

    .line 47
    const-string v0, "Idioma"

    const-string v1, "Suporte"

    const-string v2, "Vincula\u00e7\u00f5es"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const v0, 0x7f0801b3

    const v1, 0x7f0801c3

    const v2, 0x7f0801b4

    .line 48
    filled-new-array {v2, v0, v1}, [I

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x3

    if-ge v12, v13, :cond_1

    mul-int/lit8 v0, v12, 0x4f

    add-int/lit16 v13, v0, 0x81

    .line 52
    iget v0, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->selected:I

    if-ne v12, v0, :cond_0

    const v6, -0x4b4848

    const/16 v7, 0xf

    const/16 v1, 0x50

    const/16 v3, 0x136

    const/16 v4, 0x46

    const v5, 0x624d4f52

    move-object/from16 v0, p0

    move v2, v13

    invoke-direct/range {v0 .. v7}, Lcom/xyron/game/launcher/AngraAccountScreen;->rectangle(IIIIIII)V

    .line 53
    :cond_0
    aget-object v1, v8, v12

    aget v2, v10, v12

    new-instance v4, Lcom/xyron/game/launcher/AngraAccountScreen$$ExternalSyntheticLambda2;

    invoke-direct {v4, v9, v12}, Lcom/xyron/game/launcher/AngraAccountScreen$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/launcher/AngraAccountScreen;I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lcom/xyron/game/launcher/AngraAccountScreen;->menu(Ljava/lang/String;IILjava/lang/Runnable;ZZ)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    const v5, 0x77ffffff

    const/16 v1, 0x58

    const/16 v2, 0x1fe

    const/16 v3, 0x125

    move-object/from16 v0, p0

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/launcher/AngraAccountScreen;->block(IIIII)V

    .line 56
    iget-object v4, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->delete:Ljava/lang/Runnable;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v1, "Excluir conta"

    const v2, 0x7f0801b0

    const/16 v3, 0x212

    invoke-direct/range {v0 .. v6}, Lcom/xyron/game/launcher/AngraAccountScreen;->menu(Ljava/lang/String;IILjava/lang/Runnable;ZZ)V

    .line 57
    iget-object v4, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->logout:Ljava/lang/Runnable;

    const/4 v6, 0x0

    const-string v1, "Sair"

    const v2, 0x7f0801b1

    const/16 v3, 0x259

    invoke-direct/range {v0 .. v6}, Lcom/xyron/game/launcher/AngraAccountScreen;->menu(Ljava/lang/String;IILjava/lang/Runnable;ZZ)V

    .line 59
    iget v0, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->selected:I

    if-nez v0, :cond_2

    const-string v0, "Contas vinculadas"

    goto :goto_1

    :cond_2
    aget-object v0, v8, v0

    :goto_1
    invoke-direct {v9, v0}, Lcom/xyron/game/launcher/AngraAccountScreen;->title(Ljava/lang/String;)V

    .line 60
    iget v0, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->selected:I

    if-nez v0, :cond_3

    const/16 v0, 0x91

    .line 61
    iget-boolean v1, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->connected:Z

    const-string v2, "Google"

    const v3, 0x7f0801b2

    invoke-direct {v9, v2, v3, v0, v1}, Lcom/xyron/game/launcher/AngraAccountScreen;->provider(Ljava/lang/String;IIZ)V

    const v0, 0x7f0801c5

    const/16 v1, 0xf0

    .line 62
    const-string v2, "VK ID"

    invoke-direct {v9, v2, v0, v1, v11}, Lcom/xyron/game/launcher/AngraAccountScreen;->provider(Ljava/lang/String;IIZ)V

    const v0, 0x7f0801c4

    const/16 v1, 0x14e

    .line 63
    const-string v2, "Telegram"

    invoke-direct {v9, v2, v0, v1, v11}, Lcom/xyron/game/launcher/AngraAccountScreen;->provider(Ljava/lang/String;IIZ)V

    const v0, 0x7f0801b5

    const/16 v1, 0x1ad

    .line 64
    const-string v2, "E-mail"

    invoke-direct {v9, v2, v0, v1, v11}, Lcom/xyron/game/launcher/AngraAccountScreen;->provider(Ljava/lang/String;IIZ)V

    goto/16 :goto_5

    :cond_3
    const/4 v10, 0x1

    if-ne v0, v10, :cond_7

    .line 66
    const-string v0, "Escolha o idioma da interface. As altera\u00e7\u00f5es s\u00e3o aplicadas imediatamente."

    invoke-direct {v9, v0}, Lcom/xyron/game/launcher/AngraAccountScreen;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v2, 0x1e4

    const/16 v3, 0x86

    const/16 v4, 0x3c6

    const/16 v5, 0x38

    const/16 v6, 0x18

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/xyron/game/launcher/AngraAccountScreen;->text(Ljava/lang/String;IIIIIZI)Landroid/widget/TextView;

    .line 68
    const-string v0, "Espa\u00f1ol"

    const-string v1, "Portugu\u00eas"

    const-string/jumbo v2, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    const-string v3, "English"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x2

    .line 69
    filled-new-array {v13, v10, v0, v11}, [I

    move-result-object v13

    const/4 v14, 0x0

    :goto_2
    const/4 v0, 0x4

    if-ge v14, v0, :cond_8

    .line 71
    aget v15, v13, v14

    mul-int/lit8 v8, v14, 0x51

    add-int/lit16 v7, v8, 0xc6

    .line 73
    iget-object v0, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->activity:Lcom/xyron/game/launcher/SettingsActivity;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->index(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v15, :cond_4

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :goto_3
    if-eqz v16, :cond_5

    const v0, -0x5bbb8fa3

    const v5, -0x5bbb8fa3

    goto :goto_4

    :cond_5
    const v0, -0x43d6d3d2

    const v5, -0x43d6d3d2

    :goto_4
    const v6, -0x696566

    const/16 v17, 0xc

    const/16 v1, 0x1e4

    const/16 v3, 0x3c6

    const/16 v4, 0x46

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v18, v7

    move/from16 v7, v17

    .line 74
    invoke-direct/range {v0 .. v7}, Lcom/xyron/game/launcher/AngraAccountScreen;->rectangle(IIIIIII)V

    .line 75
    aget-object v1, v12, v14

    const/4 v7, 0x0

    const/16 v17, -0x1

    const/16 v2, 0x1fa

    const/16 v4, 0x387

    const/16 v5, 0x46

    const/16 v6, 0x18

    move/from16 v3, v18

    move v10, v8

    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/xyron/game/launcher/AngraAccountScreen;->text(Ljava/lang/String;IIIIIZI)Landroid/widget/TextView;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/xyron/game/launcher/AngraAccountScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, v9, v15}, Lcom/xyron/game/launcher/AngraAccountScreen$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/launcher/AngraAccountScreen;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v16, :cond_6

    add-int/lit16 v3, v10, 0xdd

    const/16 v4, 0x19

    const/16 v5, 0x19

    const v1, 0x7f0801af

    const/16 v2, 0x576

    move-object/from16 v0, p0

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/launcher/AngraAccountScreen;->icon(IIIII)Landroid/widget/ImageView;

    :cond_6
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x1

    goto :goto_2

    :cond_7
    const v6, -0x6d6b6b

    const/16 v7, 0xc

    const/16 v1, 0x1e4

    const/16 v2, 0x91

    const/16 v3, 0x3c6

    const/16 v4, 0x119

    const v5, -0x2fd5d3d2

    move-object/from16 v0, p0

    .line 80
    invoke-direct/range {v0 .. v7}, Lcom/xyron/game/launcher/AngraAccountScreen;->rectangle(IIIIIII)V

    const/16 v4, 0x2b

    const/16 v5, 0x2b

    const v1, 0x7f0801c3

    const/16 v2, 0x204

    const/16 v3, 0xad

    .line 81
    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/launcher/AngraAccountScreen;->icon(IIIII)Landroid/widget/ImageView;

    .line 82
    const-string v0, "Envie os registros do aplicativo ao suporte para ajudar na investiga\u00e7\u00e3o."

    invoke-direct {v9, v0}, Lcom/xyron/game/launcher/AngraAccountScreen;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v2, 0x201

    const/16 v3, 0xe6

    const/16 v4, 0x38e

    const/16 v5, 0x44

    const/16 v6, 0x18

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/xyron/game/launcher/AngraAccountScreen;->text(Ljava/lang/String;IIIIIZI)Landroid/widget/TextView;

    const/16 v4, 0x153

    .line 84
    iget-object v5, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->logs:Ljava/lang/Runnable;

    const-string v1, "Enviar logs"

    const/16 v3, 0x153

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/launcher/AngraAccountScreen;->action(Ljava/lang/String;IIILjava/lang/Runnable;)V

    .line 85
    iget-object v5, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->support:Ljava/lang/Runnable;

    const-string v1, "Suporte t\u00e9cnico"

    const/16 v2, 0x1e4

    const/16 v3, 0x1bf

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/launcher/AngraAccountScreen;->action(Ljava/lang/String;IIILjava/lang/Runnable;)V

    .line 86
    iget-object v5, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->reinstall:Ljava/lang/Runnable;

    const-string v1, "Reinstalar jogo"

    const/16 v2, 0x344

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/launcher/AngraAccountScreen;->action(Ljava/lang/String;IIILjava/lang/Runnable;)V

    .line 88
    :cond_8
    :goto_5
    iget-object v0, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->activity:Lcom/xyron/game/launcher/SettingsActivity;

    iget-object v1, v9, Lcom/xyron/game/launcher/AngraAccountScreen;->panel:Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;

    invoke-virtual {v0, v1}, Lcom/xyron/game/launcher/SettingsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private t(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->activity:Lcom/xyron/game/launcher/SettingsActivity;

    invoke-static {v0, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private text(Ljava/lang/String;IIIIIZI)Landroid/widget/TextView;
    .locals 9

    move-object v0, p0

    .line 127
    new-instance v8, Landroid/widget/TextView;

    iget-object v1, v0, Lcom/xyron/game/launcher/AngraAccountScreen;->activity:Lcom/xyron/game/launcher/SettingsActivity;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    .line 128
    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move/from16 v1, p8

    .line 129
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x10

    .line 130
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    .line 131
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 132
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz p7, :cond_0

    .line 133
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 134
    :cond_0
    iget-object v1, v0, Lcom/xyron/game/launcher/AngraAccountScreen;->panel:Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;

    move-object v2, v8

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;->add(Landroid/view/View;IIIII)V

    return-object v8
.end method

.method private title(Ljava/lang/String;)V
    .locals 9

    .line 91
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/AngraAccountScreen;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/16 v2, 0x1e4

    const/16 v3, 0x47

    const/16 v4, 0x3ca

    const/16 v5, 0x38

    const/16 v6, 0x22

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/xyron/game/launcher/AngraAccountScreen;->text(Ljava/lang/String;IIIIIZI)Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method synthetic lambda$render$0$com-xyron-game-launcher-AngraAccountScreen(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->selected:I

    invoke-direct {p0}, Lcom/xyron/game/launcher/AngraAccountScreen;->render()V

    return-void
.end method

.method synthetic lambda$render$1$com-xyron-game-launcher-AngraAccountScreen(ILandroid/view/View;)V
    .locals 0

    .line 76
    iget-object p2, p0, Lcom/xyron/game/launcher/AngraAccountScreen;->activity:Lcom/xyron/game/launcher/SettingsActivity;

    invoke-static {p2, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->select(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/xyron/game/launcher/AngraAccountScreen;->render()V

    return-void
.end method
