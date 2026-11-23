.class public Lcom/xyron/game/main/ui/RadialMenu;
.super Ljava/lang/Object;
.source "RadialMenu.java"


# static fields
.field private static final RADIAL_BACKDROP_COLOR:I = 0x66120b18

.field private static final RADIAL_ICON_COLOR:I = -0xa61f5

.field private static final RADIAL_TEXT_COLOR:I = -0x91528

.field private static final RADIAL_TEXT_SHADOW:I = 0x70000000

.field public static menuVisible:Z


# instance fields
.field private final activity:Landroid/app/Activity;

.field private classicMenu:Landroid/webkit/WebView;

.field private mRadialVehicles:Lcom/xyron/game/main/ui/RadialVehicles;

.field private radialLayout:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/xyron/game/main/ui/RadialMenu;->activity:Landroid/app/Activity;

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a02b6

    .line 50
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/xyron/game/main/ui/RadialMenu;->radialLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    .line 51
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 52
    invoke-direct {p0}, Lcom/xyron/game/main/ui/RadialMenu;->applyTheme()V

    .line 58
    invoke-direct {p0}, Lcom/xyron/game/main/ui/RadialMenu;->setListeners()V

    const/4 p1, 0x0

    .line 59
    sput-boolean p1, Lcom/xyron/game/main/ui/RadialMenu;->menuVisible:Z

    .line 62
    iget-object v0, p0, Lcom/xyron/game/main/ui/RadialMenu;->radialLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, p1}, Lcom/xyron/game/launcher/util/Util;->HideLayout(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/main/ui/RadialMenu;)Landroid/app/Activity;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xyron/game/main/ui/RadialMenu;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xyron/game/main/ui/RadialMenu;Landroid/webkit/WebView;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xyron/game/main/ui/RadialMenu;->closeClassicMenu(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/xyron/game/main/ui/RadialMenu;)Landroid/webkit/WebView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xyron/game/main/ui/RadialMenu;->classicMenu:Landroid/webkit/WebView;

    return-object p0
.end method

.method private applyTheme()V
    .locals 10

    .line 66
    iget-object v0, p0, Lcom/xyron/game/main/ui/RadialMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f09000d

    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    const/16 v1, 0xa

    .line 67
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 79
    new-array v3, v1, [I

    fill-array-data v3, :array_1

    .line 92
    iget-object v4, p0, Lcom/xyron/game/main/ui/RadialMenu;->radialLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v5, 0x66120b18

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 94
    iget-object v4, p0, Lcom/xyron/game/main/ui/RadialMenu;->activity:Landroid/app/Activity;

    const v5, 0x7f0a01ef

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, -0x91528

    .line 95
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    .line 97
    aget v7, v2, v6

    .line 98
    iget-object v8, p0, Lcom/xyron/game/main/ui/RadialMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, -0xa61f5

    .line 99
    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 102
    aget v6, v3, v2

    .line 103
    iget-object v7, p0, Lcom/xyron/game/main/ui/RadialMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 104
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 v7, 0x1

    .line 106
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v7, 0x2

    const/high16 v8, 0x41140000    # 9.25f

    .line 107
    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v8, 0x70000000

    const/4 v9, 0x0

    .line 108
    invoke-virtual {v6, v7, v9, v9, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a02c3
        0x7f0a02c4
        0x7f0a02c5
        0x7f0a02c6
        0x7f0a02c7
        0x7f0a02c8
        0x7f0a02c9
        0x7f0a02ca
        0x7f0a02cb
        0x7f0a02cc
    .end array-data

    :array_1
    .array-data 4
        0x7f0a02cd
        0x7f0a02ce
        0x7f0a02cf
        0x7f0a02d0
        0x7f0a02d1
        0x7f0a02d2
        0x7f0a02d3
        0x7f0a02d4
        0x7f0a02d5
        0x7f0a02d6
    .end array-data
.end method

.method private closeClassicMenu(Landroid/webkit/WebView;Z)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/xyron/game/main/ui/RadialMenu;->classicMenu:Landroid/webkit/WebView;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/xyron/game/main/ui/RadialMenu;->classicMenu:Landroid/webkit/WebView;

    const/4 v0, 0x0

    .line 270
    sput-boolean v0, Lcom/xyron/game/main/ui/RadialMenu;->menuVisible:Z

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez p2, :cond_2

    .line 275
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 276
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/xyron/game/main/ui/RadialMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f0a02c1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/ui/RadialMenu$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/ui/RadialMenu$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/ui/RadialMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b7

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/ui/RadialMenu;->setRadialButtonClick(II)V

    const v0, 0x7f0a02b8

    const/4 v1, 0x1

    .line 124
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/ui/RadialMenu;->setRadialButtonClick(II)V

    const v0, 0x7f0a02b9

    const/4 v1, 0x2

    .line 125
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/ui/RadialMenu;->setRadialButtonClick(II)V

    const v0, 0x7f0a02ba

    const/4 v1, 0x3

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/ui/RadialMenu;->setRadialButtonClick(II)V

    const v0, 0x7f0a02bb

    const/4 v1, 0x4

    .line 127
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/ui/RadialMenu;->setRadialButtonClick(II)V

    const v0, 0x7f0a02bc

    const/4 v1, 0x5

    .line 128
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/ui/RadialMenu;->setRadialButtonClick(II)V

    const v0, 0x7f0a02bd

    const/4 v1, 0x6

    .line 129
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/ui/RadialMenu;->setRadialButtonClick(II)V

    const v0, 0x7f0a02be

    const/4 v1, 0x7

    .line 130
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/ui/RadialMenu;->setRadialButtonClick(II)V

    const v0, 0x7f0a02bf

    const/16 v1, 0x8

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/ui/RadialMenu;->setRadialButtonClick(II)V

    const v0, 0x7f0a02c0

    const/16 v1, 0x9

    .line 132
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/ui/RadialMenu;->setRadialButtonClick(II)V

    return-void
.end method

.method private setRadialButtonClick(II)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xyron/game/main/ui/RadialMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/xyron/game/main/ui/RadialMenu$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/xyron/game/main/ui/RadialMenu$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/ui/RadialMenu;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showClassicMenu(Lcom/xyron/game/main/SAMP;)V
    .locals 4

    .line 223
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xyron/game/main/ui/RadialMenu;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 224
    iput-object v0, p0, Lcom/xyron/game/main/ui/RadialMenu;->classicMenu:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 225
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 226
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 227
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 228
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 229
    new-instance v1, Lcom/xyron/game/main/ui/RadialMenu$1;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/ui/RadialMenu$1;-><init>(Lcom/xyron/game/main/ui/RadialMenu;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 246
    new-instance v1, Lcom/xyron/game/main/ui/RadialMenu$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/xyron/game/main/ui/RadialMenu$2;-><init>(Lcom/xyron/game/main/ui/RadialMenu;Landroid/webkit/WebView;Lcom/xyron/game/main/SAMP;)V

    const-string p1, "BCBridge"

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcom/xyron/game/main/ui/RadialMenu;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    const-string p1, "file:///android_asset/interfaces/classic_radial/index.html"

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 212
    sget-boolean v0, Lcom/xyron/game/main/ui/RadialMenu;->menuVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 214
    sput-boolean v0, Lcom/xyron/game/main/ui/RadialMenu;->menuVisible:Z

    .line 215
    iget-object v1, p0, Lcom/xyron/game/main/ui/RadialMenu;->classicMenu:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 216
    invoke-direct {p0, v1, v0}, Lcom/xyron/game/main/ui/RadialMenu;->closeClassicMenu(Landroid/webkit/WebView;Z)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/ui/RadialMenu;->radialLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/Util;->HideLayout(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$setListeners$0$com-xyron-game-main-ui-RadialMenu(Landroid/view/View;)V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    return-void
.end method

.method synthetic lambda$setRadialButtonClick$1$com-xyron-game-main-ui-RadialMenu(ILandroid/view/View;)V
    .locals 1

    .line 0
    if-nez p1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 141
    iget-object p2, p0, Lcom/xyron/game/main/ui/RadialMenu;->activity:Landroid/app/Activity;

    instance-of v0, p2, Lcom/xyron/game/main/SAMP;

    if-eqz v0, :cond_0

    .line 142
    check-cast p2, Lcom/xyron/game/main/SAMP;

    invoke-virtual {p2}, Lcom/xyron/game/main/SAMP;->showPhoneOverlay()V

    return-void

    .line 145
    :cond_0
    const-string p2, "/c"

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xyron/game/main/ui/RadialMenu;->sendCommand([B)V

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 150
    const-string p2, "/gps"

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xyron/game/main/ui/RadialMenu;->sendCommand([B)V

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 154
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 155
    iget-object p2, p0, Lcom/xyron/game/main/ui/RadialMenu;->activity:Landroid/app/Activity;

    instance-of v0, p2, Lcom/xyron/game/main/SAMP;

    if-eqz v0, :cond_3

    .line 156
    check-cast p2, Lcom/xyron/game/main/SAMP;

    invoke-virtual {p2}, Lcom/xyron/game/main/SAMP;->showInventoryOverlay()V

    return-void

    .line 159
    :cond_3
    const-string p2, "/m"

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xyron/game/main/ui/RadialMenu;->sendCommand([B)V

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 163
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 164
    const-string p2, "/eloc"

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xyron/game/main/ui/RadialMenu;->sendCommand([B)V

    :cond_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    .line 168
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 169
    const-string p2, "/casa"

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xyron/game/main/ui/RadialMenu;->sendCommand([B)V

    :cond_6
    const/4 p2, 0x5

    if-ne p1, p2, :cond_7

    .line 173
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 174
    const-string p2, "/ajuda"

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xyron/game/main/ui/RadialMenu;->sendCommand([B)V

    :cond_7
    const/4 p2, 0x6

    if-ne p1, p2, :cond_8

    .line 178
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 179
    const-string p2, "/loja"

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xyron/game/main/ui/RadialMenu;->sendCommand([B)V

    :cond_8
    const/4 p2, 0x7

    if-ne p1, p2, :cond_9

    .line 183
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 184
    const-string p2, "/atm"

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xyron/game/main/ui/RadialMenu;->sendCommand([B)V

    :cond_9
    const/16 p2, 0x8

    if-ne p1, p2, :cond_a

    .line 188
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 189
    const-string p2, "/anim"

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xyron/game/main/ui/RadialMenu;->sendCommand([B)V

    :cond_a
    const/16 p2, 0x9

    if-ne p1, p2, :cond_b

    .line 193
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 194
    const-string p1, "/doc"

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/ui/RadialMenu;->sendCommand([B)V

    :cond_b
    return-void
.end method

.method native sendCommand([B)V
.end method

.method public show()V
    .locals 3

    .line 200
    sget-boolean v0, Lcom/xyron/game/main/ui/RadialMenu;->menuVisible:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/xyron/game/main/ui/RadialVehicles;->menuVisibleV:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 202
    sput-boolean v0, Lcom/xyron/game/main/ui/RadialMenu;->menuVisible:Z

    .line 203
    iget-object v1, p0, Lcom/xyron/game/main/ui/RadialMenu;->activity:Landroid/app/Activity;

    instance-of v2, v1, Lcom/xyron/game/main/SAMP;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->usesRetroHud(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/xyron/game/main/ui/RadialMenu;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/xyron/game/main/SAMP;

    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/RadialMenu;->showClassicMenu(Lcom/xyron/game/main/SAMP;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/ui/RadialMenu;->radialLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1, v0}, Lcom/xyron/game/launcher/util/Util;->ShowLayout(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method
