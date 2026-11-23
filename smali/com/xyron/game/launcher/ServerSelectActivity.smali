.class public Lcom/xyron/game/launcher/ServerSelectActivity;
.super Lcom/xyron/game/launcher/SampActivity;
.source "ServerSelectActivity.java"


# static fields
.field private static final ACCENT:I = -0x85eb5

.field private static final REGIONS:[Ljava/lang/String;


# instance fields
.field private cards:Landroid/widget/LinearLayout;

.field private displayFont:Landroid/graphics/Typeface;

.field private languages:Landroid/widget/PopupWindow;


# direct methods
.method public static synthetic $r8$lambda$CFq3qvDTkCEOev032jX_mihZv1A(Lcom/xyron/game/launcher/ServerSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->showLanguages(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 30
    const-string v0, "ES"

    const-string v1, "RU"

    const-string v2, "BR"

    const-string v3, "US"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/ServerSelectActivity;->REGIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xyron/game/launcher/SampActivity;-><init>()V

    return-void
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 168
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method static synthetic lambda$populateServers$4(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 85
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 0

    .line 167
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private populateServers()V
    .locals 18

    move-object/from16 v0, p0

    .line 80
    iget-object v1, v0, Lcom/xyron/game/launcher/ServerSelectActivity;->cards:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->ensureSelectedServer(Landroid/content/Context;)Z

    .line 81
    sget-object v1, Lcom/xyron/game/launcher/ServerSelectActivity;->REGIONS:[Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->index(Landroid/content/Context;)I

    move-result v2

    aget-object v1, v1, v2

    .line 82
    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getAvailableServers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 83
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 84
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    .line 85
    iget-object v5, v4, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->country:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->countryName:Ljava/lang/String;

    new-instance v6, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v3, v5, v6}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/LinkedHashMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, v0, Lcom/xyron/game/launcher/ServerSelectActivity;->cards:Landroid/widget/LinearLayout;

    const-string v3, "Nenhum servidor publicado para esta regi\u00e3o."

    invoke-direct {v0, v3}, Lcom/xyron/game/launcher/ServerSelectActivity;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/xyron/game/launcher/ServerSelectActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 90
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x24

    invoke-direct {v0, v6}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v6

    sub-int/2addr v1, v6

    const/16 v6, 0x12

    invoke-direct {v0, v6}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v6

    .line 91
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x1

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v0, v10}, Lcom/xyron/game/launcher/ServerSelectActivity;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10, v2, v5, v7}, Lcom/xyron/game/launcher/ServerSelectActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v10

    .line 93
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v5, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0x8

    invoke-direct {v0, v13}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v13

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v13, v0, Lcom/xyron/game/launcher/ServerSelectActivity;->cards:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    const/4 v10, 0x3

    goto :goto_1

    :cond_4
    const/4 v10, 0x1

    .line 95
    :goto_1
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/16 v11, 0x104

    .line 96
    invoke-direct {v0, v11}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v11

    add-int/lit8 v13, v10, -0x1

    mul-int v14, v6, v13

    sub-int v14, v1, v14

    div-int/2addr v14, v10

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 98
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    .line 99
    rem-int v7, v15, v10

    if-nez v7, :cond_5

    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, v0, Lcom/xyron/game/launcher/ServerSelectActivity;->cards:Landroid/widget/LinearLayout;

    move/from16 v17, v1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    move/from16 v17, v1

    .line 100
    :goto_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x58

    invoke-direct {v0, v4}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v4

    invoke-direct {v1, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    if-ge v7, v13, :cond_6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_6
    add-int/lit8 v4, v8, 0x1

    .line 102
    invoke-direct {v0, v2, v8}, Lcom/xyron/game/launcher/ServerSelectActivity;->serverCard(Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;I)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v14, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v15, v15, 0x1

    move v8, v4

    move/from16 v1, v17

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private progressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 157
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const v2, -0xf2f2e8

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/xyron/game/launcher/ServerSelectActivity;->rounded(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    const v4, -0x85eb5

    invoke-direct {p0, v4, v3}, Lcom/xyron/game/launcher/ServerSelectActivity;->rounded(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct {v2, v4, v5, v6}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x1020000

    .line 158
    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v1, 0x102000d

    invoke-virtual {v0, v6, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    return-object v0
.end method

.method private queryServer(Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 8

    .line 134
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda7;-><init>(Lcom/xyron/game/launcher/ServerSelectActivity;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    const-string p1, "angra-server-query"

    invoke-direct {v0, v7, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private rounded(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 161
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    return-object v0
.end method

.method private selectServer(Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)V
    .locals 3

    .line 150
    iget-boolean v0, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->online:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 151
    const-string v0, "Servidor indispon\u00edvel"

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/ServerSelectActivity;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->offlineMessage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, v1}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 153
    :cond_0
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->saveSelectedServer(Landroid/content/Context;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "N\u00e3o foi poss\u00edvel salvar o servidor selecionado"

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 154
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "server_name"

    iget-object v2, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "server_ip"

    iget-object v2, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "server_port"

    iget p1, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->finish()V

    return-void
.end method

.method private serverCard(Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;I)Landroid/widget/LinearLayout;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 107
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v5, 0xc

    .line 108
    invoke-direct {v0, v5}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v6

    invoke-direct {v0, v5}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v7

    invoke-direct {v0, v5}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v8

    invoke-direct {v0, v5}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 109
    new-instance v6, Lcom/xyron/game/launcher/ui/ServerCardDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v6, v7, v3}, Lcom/xyron/game/launcher/ui/ServerCardDrawable;-><init>(FZ)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x5

    .line 110
    invoke-direct {v0, v6}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setElevation(F)V

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    new-instance v8, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda6;

    invoke-direct {v8, v0, v1}, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda6;-><init>(Lcom/xyron/game/launcher/ServerSelectActivity;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x18

    const/16 v10, -0xc21

    invoke-direct {v0, v8, v9, v10, v7}, Lcom/xyron/game/launcher/ServerSelectActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, v0, Lcom/xyron/game/launcher/ServerSelectActivity;->displayFont:Landroid/graphics/Typeface;

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    new-instance v11, Lcom/xyron/game/launcher/ui/ServerCardDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v11, v12, v7}, Lcom/xyron/game/launcher/ui/ServerCardDrawable;-><init>(FZ)V

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x2c

    invoke-direct {v0, v12}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v12

    const/16 v13, 0x3a

    invoke-direct {v0, v13}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v0, v5}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v5

    iput v5, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 116
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v3, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v8, v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->name:Ljava/lang/String;

    const-string v13, "(?i)servidor \\d+"

    invoke-virtual {v8, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Servidor"

    invoke-direct {v0, v13}, Lcom/xyron/game/launcher/ServerSelectActivity;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->name:Ljava/lang/String;

    iget-object v14, v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->name:Ljava/lang/String;

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    iget-object v8, v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->name:Ljava/lang/String;

    :goto_0
    const/16 v13, 0x14

    .line 118
    invoke-direct {v0, v8, v13, v11, v7}, Lcom/xyron/game/launcher/ServerSelectActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v8

    iget-object v13, v0, Lcom/xyron/game/launcher/ServerSelectActivity;->displayFont:Landroid/graphics/Typeface;

    invoke-virtual {v8, v13, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 119
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v13, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 121
    const-string v4, "Consultando servidor..."

    invoke-direct {v0, v4}, Lcom/xyron/game/launcher/ServerSelectActivity;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v13, -0x424a32

    const/16 v15, 0xa

    invoke-direct {v0, v4, v15, v13, v3}, Lcom/xyron/game/launcher/ServerSelectActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 122
    const-string/jumbo v13, "\u2014"

    invoke-direct {v0, v13, v15, v11, v7}, Lcom/xyron/game/launcher/ServerSelectActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v9

    const v15, 0x800005

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v3, v14, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v4, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v12, 0x4

    invoke-direct {v0, v12}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v3, Landroid/widget/ProgressBar;

    const/4 v8, 0x0

    const v12, 0x1010078

    invoke-direct {v3, v0, v8, v12}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v8, 0x64

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->progressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v10

    invoke-direct {v8, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v0, v6}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v6

    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x1c

    const v6, -0x85eb5

    .line 127
    const-string/jumbo v8, "\u203a"

    invoke-direct {v0, v8, v5, v6, v7}, Lcom/xyron/game/launcher/ServerSelectActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "Entrar"

    invoke-direct {v0, v6}, Lcom/xyron/game/launcher/ServerSelectActivity;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 128
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x1a

    invoke-direct {v0, v7}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v7

    const/16 v8, 0x24

    invoke-direct {v0, v8}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xa

    invoke-direct {v0, v7}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-boolean v5, v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->online:Z

    if-eqz v5, :cond_1

    invoke-direct {v0, v1, v4, v9, v3}, Lcom/xyron/game/launcher/ServerSelectActivity;->queryServer(Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    goto :goto_1

    .line 130
    :cond_1
    const-string v1, "Indispon\u00edvel"

    invoke-direct {v0, v1}, Lcom/xyron/game/launcher/ServerSelectActivity;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0x2b6667

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object v2
.end method

.method private showLanguages(Landroid/view/View;)V
    .locals 12

    .line 63
    iget-object v0, p0, Lcom/xyron/game/launcher/ServerSelectActivity;->languages:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 64
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x8

    .line 65
    invoke-direct {p0, v2}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v3, 0x667c6c94

    const v4, -0xdee2d2

    .line 66
    invoke-direct {p0, v4, v3}, Lcom/xyron/game/launcher/ServerSelectActivity;->rounded(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    const-string/jumbo v3, "\ud83c\uddea\ud83c\uddf8"

    const-string/jumbo v5, "\ud83c\uddf7\ud83c\uddfa"

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddf7"

    const-string/jumbo v7, "\ud83c\uddfa\ud83c\uddf8"

    filled-new-array {v6, v7, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 68
    :goto_0
    sget-object v7, Lcom/xyron/game/launcher/util/AngraLanguage;->CODES:[Ljava/lang/String;

    array-length v7, v7

    const/16 v8, 0x10

    if-ge v6, v7, :cond_3

    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v3, v6

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "   "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/xyron/game/launcher/util/AngraLanguage;->LABELS:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->index(Landroid/content/Context;)I

    move-result v9

    if-ne v6, v9, :cond_1

    const-string v9, "   \u2713"

    goto :goto_1

    :cond_1
    const-string v9, ""

    :goto_1
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->index(Landroid/content/Context;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v6, v9, :cond_2

    const v9, -0x85eb5

    goto :goto_2

    :cond_2
    const/4 v9, -0x1

    :goto_2
    const/16 v11, 0xf

    invoke-direct {p0, v7, v11, v9, v5}, Lcom/xyron/game/launcher/ServerSelectActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 71
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v8, 0xc

    invoke-direct {p0, v8}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v8

    invoke-direct {p0, v2}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v9

    invoke-virtual {v7, v8, v5, v9, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 72
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x2e

    invoke-direct {p0, v9}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v9

    invoke-direct {v8, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v8, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda9;

    invoke-direct {v8, p0, v6}, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda9;-><init>(Lcom/xyron/game/launcher/ServerSelectActivity;I)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 75
    :cond_3
    new-instance v3, Landroid/widget/PopupWindow;

    const/16 v6, 0xf0

    invoke-direct {p0, v6}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v6

    const/4 v7, -0x2

    invoke-direct {v3, v0, v6, v7, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/xyron/game/launcher/ServerSelectActivity;->languages:Landroid/widget/PopupWindow;

    .line 76
    invoke-direct {p0, v4, v5}, Lcom/xyron/game/launcher/ServerSelectActivity;->rounded(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/xyron/game/launcher/ServerSelectActivity;->languages:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/xyron/game/launcher/ServerSelectActivity;->languages:Landroid/widget/PopupWindow;

    invoke-direct {p0, v8}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 77
    iget-object v0, p0, Lcom/xyron/game/launcher/ServerSelectActivity;->languages:Landroid/widget/PopupWindow;

    invoke-direct {p0, v2}, Lcom/xyron/game/launcher/ServerSelectActivity;->dp(I)I

    move-result v1

    const v2, 0x800005

    invoke-virtual {v0, p1, v5, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method private t(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 166
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private text(Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .locals 1

    .line 164
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p4, :cond_0

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-xyron-game-launcher-ServerSelectActivity(Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-xyron-game-launcher-ServerSelectActivity()V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->populateServers()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$2$com-xyron-game-launcher-ServerSelectActivity()V
    .locals 3

    .line 53
    :try_start_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/RemoteConfiguration;->refreshServers(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda8;-><init>(Lcom/xyron/game/launcher/ServerSelectActivity;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/ServerSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    const-string v1, "AngraServers"

    const-string v2, "Keeping last valid server catalog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method synthetic lambda$queryServer$6$com-xyron-game-launcher-ServerSelectActivity([Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 142
    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 143
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/xyron/game/launcher/ServerSelectActivity;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 144
    const-string v1, "Online"

    invoke-direct {p0, v1}, Lcom/xyron/game/launcher/ServerSelectActivity;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0x8d2653

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p2, v0

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float p2, p2, p3

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 145
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/16 p2, 0x64

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    .line 142
    :cond_2
    :goto_0
    const-string p1, "Indispon\u00edvel"

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x2b6667

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo p1, "\u2014"

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method synthetic lambda$queryServer$7$com-xyron-game-launcher-ServerSelectActivity(Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 10

    .line 0
    const/4 v0, 0x0

    .line 136
    :try_start_0
    new-instance v1, Lcom/xyron/game/launcher/util/SampQueryApi;

    iget-object v2, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    iget p1, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    const/16 v3, 0x44c

    invoke-direct {v1, v2, p1, v3}, Lcom/xyron/game/launcher/util/SampQueryApi;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lcom/xyron/game/launcher/util/SampQueryApi;->getInfo()[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 137
    :goto_0
    :try_start_2
    const-string v2, "AngraServers"

    const-string v3, "Query unavailable"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 138
    :goto_1
    invoke-virtual {v1}, Lcom/xyron/game/launcher/util/SampQueryApi;->close()V

    :cond_0
    move-object v6, v0

    .line 140
    new-instance p1, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda2;

    move-object v4, p1

    move-object v5, p0

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/launcher/ServerSelectActivity;[Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Lcom/xyron/game/launcher/util/SampQueryApi;->close()V

    :cond_1
    throw p1
.end method

.method synthetic lambda$serverCard$5$com-xyron-game-launcher-ServerSelectActivity(Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->selectServer(Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)V

    return-void
.end method

.method synthetic lambda$showLanguages$3$com-xyron-game-launcher-ServerSelectActivity(ILandroid/view/View;)V
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->select(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/xyron/game/launcher/ServerSelectActivity;->languages:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->recreate()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 33
    invoke-super {p0, p1}, Lcom/xyron/game/launcher/SampActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->setContentView(I)V

    .line 34
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->startMusic(Landroid/content/Context;)V

    const/high16 p1, 0x7f090000

    .line 35
    invoke-static {p0, p1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/ServerSelectActivity;->displayFont:Landroid/graphics/Typeface;

    const p1, 0x7f0a0339

    .line 36
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/xyron/game/launcher/ServerSelectActivity;->cards:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0336

    .line 37
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/launcher/ServerSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0337

    .line 38
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f080094

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f0a0340

    .line 40
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const v2, -0x66e9eddc

    const v3, 0x66101220

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0a0342

    .line 41
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 42
    const-string v0, "Selecione um servidor"

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/ServerSelectActivity;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/xyron/game/launcher/ServerSelectActivity;->displayFont:Landroid/graphics/Typeface;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v0, 0x41d00000    # 26.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, 0x7f0a033a

    .line 44
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const p1, 0x7f0a033e

    .line 45
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xyron/game/launcher/util/AngraLanguage;->LABELS:[Ljava/lang/String;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->index(Landroid/content/Context;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  \u25be"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/launcher/ServerSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/launcher/ServerSelectActivity;->populateServers()V

    .line 51
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/launcher/ServerSelectActivity;)V

    const-string v1, "angra-server-catalog"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/xyron/game/launcher/ServerSelectActivity;->languages:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onDestroy()V

    return-void
.end method
