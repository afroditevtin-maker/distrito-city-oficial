.class final Lcom/xyron/game/main/GameDeviceOverlay;
.super Ljava/lang/Object;
.source "GameDeviceOverlay.java"


# instance fields
.field private anchorDirty:Z

.field private anchorHeight:I

.field private anchorWidth:I

.field private volatile bottom:F

.field private bound:Z

.field private connected:Z

.field private disposed:Z

.field private final game:Lcom/xyron/game/main/SAMP;

.field private final geometryListener:Landroid/view/View$OnLayoutChangeListener;

.field private geometryRoot:Landroid/view/View;

.field private final handler:Landroid/os/Handler;

.field private held:Z

.field private final hudChange:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private hudPreferences:Landroid/content/SharedPreferences;

.field private final keepAlive:Ljava/lang/Runnable;

.field private volatile left:F

.field private members:Lorg/json/JSONObject;

.field private panel:Ljava/lang/String;

.field private powered:Z

.field private radioButton:Landroid/view/View;

.field private radioState:Lorg/json/JSONObject;

.field private ready:Z

.field private volatile right:F

.field private spectateState:Lorg/json/JSONObject;

.field private token:I

.field private volatile top:F

.field private wasEditing:Z

.field private web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->handler:Landroid/os/Handler;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->anchorDirty:Z

    .line 32
    new-instance v0, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/GameDeviceOverlay;)V

    iput-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->hudChange:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 33
    new-instance v1, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/GameDeviceOverlay;)V

    iput-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->geometryListener:Landroid/view/View$OnLayoutChangeListener;

    .line 35
    new-instance v1, Lcom/xyron/game/main/GameDeviceOverlay$1;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/GameDeviceOverlay$1;-><init>(Lcom/xyron/game/main/GameDeviceOverlay;)V

    iput-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->keepAlive:Ljava/lang/Runnable;

    .line 34
    iput-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    const-string v1, "angra_hud_buttons_v1"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->hudPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->bindButton()V

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/main/GameDeviceOverlay;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->held:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xyron/game/main/GameDeviceOverlay;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->disposed:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/xyron/game/main/GameDeviceOverlay;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->ready:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/xyron/game/main/GameDeviceOverlay;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->publish()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xyron/game/main/GameDeviceOverlay;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xyron/game/main/GameDeviceOverlay;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->token:I

    return p0
.end method

.method static synthetic access$1400(Lcom/xyron/game/main/GameDeviceOverlay;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->close()V

    return-void
.end method

.method static synthetic access$200(Lcom/xyron/game/main/GameDeviceOverlay;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/xyron/game/main/GameDeviceOverlay;->wire(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xyron/game/main/GameDeviceOverlay;)Landroid/os/Handler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xyron/game/main/GameDeviceOverlay;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->left:F

    return p0
.end method

.method static synthetic access$500(Lcom/xyron/game/main/GameDeviceOverlay;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->right:F

    return p0
.end method

.method static synthetic access$600(Lcom/xyron/game/main/GameDeviceOverlay;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->top:F

    return p0
.end method

.method static synthetic access$700(Lcom/xyron/game/main/GameDeviceOverlay;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->bottom:F

    return p0
.end method

.method static synthetic access$800(Lcom/xyron/game/main/GameDeviceOverlay;)Lcom/xyron/game/main/SAMP;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xyron/game/main/GameDeviceOverlay;)Landroid/webkit/WebView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    return-object p0
.end method

.method private bindButton()V
    .locals 3

    .line 38
    iget-boolean v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->bound:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    const v1, 0x7f0a0056

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->radioButton:Landroid/view/View;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->bound:Z

    .line 39
    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    const-string v2, "Transmitir pelo r\u00e1dio"

    invoke-static {v1, v2}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 40
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 41
    :cond_2
    new-instance v1, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/main/GameDeviceOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private close()V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    const-string v1, "radio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "radio|4|0"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/GameDeviceOverlay;->wire(Ljava/lang/String;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    const-string v1, "telagem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xyron/game/main/GameDeviceOverlay;->ptt(Z)V

    const-string v2, ""

    iput-object v2, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->ready:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/xyron/game/main/GameDeviceOverlay;->bottom:F

    iput v2, p0, Lcom/xyron/game/main/GameDeviceOverlay;->right:F

    iput v2, p0, Lcom/xyron/game/main/GameDeviceOverlay;->top:F

    iput v2, p0, Lcom/xyron/game/main/GameDeviceOverlay;->left:F

    .line 152
    iget-object v2, p0, Lcom/xyron/game/main/GameDeviceOverlay;->geometryRoot:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/xyron/game/main/GameDeviceOverlay;->geometryListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v3, p0, Lcom/xyron/game/main/GameDeviceOverlay;->geometryRoot:Landroid/view/View;

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    if-eqz v2, :cond_3

    iput-object v3, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    const-string v3, "StarsBridge"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    :cond_3
    if-eqz v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->setDeviceSpectateHud(Z)V

    :cond_4
    return-void
.end method

.method private layoutPanel()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    const-string v1, "radio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->radioPanelViewport()Landroid/graphics/Rect;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 115
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, v2, :cond_2

    return-void

    .line 116
    :cond_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x33

    .line 117
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private open(Ljava/lang/String;)V
    .locals 4

    .line 89
    iget-boolean v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->publish()V

    return-void

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->close()V

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlay()V

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlay()V

    iput-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->ready:Z

    .line 91
    const-string v1, "telagem"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->closeSystemsForSpectating()V

    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->setDeviceSpectateHud(Z)V

    .line 92
    :cond_2
    new-instance v1, Lcom/xyron/game/main/GameDeviceOverlay$2;

    iget-object v3, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v1, p0, v3}, Lcom/xyron/game/main/GameDeviceOverlay$2;-><init>(Lcom/xyron/game/main/GameDeviceOverlay;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    .line 98
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    const-string v1, "StarsBridge"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    new-instance v1, Lcom/xyron/game/main/GameDeviceOverlay$3;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/GameDeviceOverlay$3;-><init>(Lcom/xyron/game/main/GameDeviceOverlay;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 105
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->geometryRoot:Landroid/view/View;

    .line 106
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->geometryRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->geometryListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->layoutPanel()V

    .line 108
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///android_asset/interfaces/systems_angra/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".html"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private ptt(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 69
    iget-boolean v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->connected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->powered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->disposed:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 70
    :cond_1
    iget-boolean v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->held:Z

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->held:Z

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->keepAlive:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    const v1, 0x7f0a0056

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    if-eqz p1, :cond_4

    .line 73
    const-string v0, "radio|2|0"

    goto :goto_0

    :cond_4
    const-string v0, "radio|3|0"

    :goto_0
    invoke-direct {p0, v0}, Lcom/xyron/game/main/GameDeviceOverlay;->wire(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->keepAlive:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method private publish()V
    .locals 8

    .line 120
    const-string v0, "channel"

    iget-boolean v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->ready:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    const-string v2, "radio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ");"

    if-eqz v1, :cond_2

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->radioState:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "type"

    const-string v5, "AngraRadio.receive("

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/xyron/game/main/GameDeviceOverlay;->radioState:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "radio:state"

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v6, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->members:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/xyron/game/main/GameDeviceOverlay;->radioState:Lorg/json/JSONObject;

    if-eqz v6, :cond_3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iget-object v6, p0, Lcom/xyron/game/main/GameDeviceOverlay;->radioState:Lorg/json/JSONObject;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/xyron/game/main/GameDeviceOverlay;->members:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "radio:members"

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    const-string v1, "telagem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->spectateState:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->web:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "AngraTelagem.open("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xyron/game/main/GameDeviceOverlay;->spectateState:Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private wire(Ljava/lang/String;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method back()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    const-string v1, "telagem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sp|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->token:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/main/GameDeviceOverlay;->wire(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->close()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public bounds(FFFF)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 127
    invoke-static {p1}, Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge$$ExternalSyntheticBackport0;->m(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge$$ExternalSyntheticBackport0;->m(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge$$ExternalSyntheticBackport0;->m(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge$$ExternalSyntheticBackport0;->m(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->left:F

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->top:F

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/xyron/game/main/GameDeviceOverlay;->right:F

    invoke-static {p1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->bottom:F

    :cond_0
    return-void
.end method

.method destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->disposed:Z

    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->close()V

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->hudPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->hudChange:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->radioButton:Landroid/view/View;

    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method hud(ZZ)V
    .locals 11

    .line 49
    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->bindButton()V

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->radioButton:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 50
    iget-boolean v3, p0, Lcom/xyron/game/main/GameDeviceOverlay;->connected:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/xyron/game/main/GameDeviceOverlay;->powered:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 51
    :goto_0
    iget-boolean v4, p0, Lcom/xyron/game/main/GameDeviceOverlay;->wasEditing:Z

    if-eqz v4, :cond_2

    if-nez p2, :cond_2

    iput-boolean v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->anchorDirty:Z

    :cond_2
    iput-boolean p2, p0, Lcom/xyron/game/main/GameDeviceOverlay;->wasEditing:Z

    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    .line 53
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/xyron/game/main/GameDeviceOverlay;->anchorWidth:I

    if-ne v5, v6, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/xyron/game/main/GameDeviceOverlay;->anchorHeight:I

    if-eq v5, v6, :cond_5

    :cond_4
    iput-boolean v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->anchorDirty:Z

    :cond_5
    const/4 v5, 0x4

    if-eqz v3, :cond_8

    if-nez p2, :cond_8

    .line 54
    iget-boolean v6, p0, Lcom/xyron/game/main/GameDeviceOverlay;->anchorDirty:Z

    if-eqz v6, :cond_8

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/xyron/game/main/GameDeviceOverlay;->hudPreferences:Landroid/content/SharedPreferences;

    const-string v6, "radio.x"

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 55
    iget-object v4, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v4}, Lcom/xyron/game/main/SAMP;->radioDefaultAnchor()[F

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v4, :cond_8

    .line 56
    array-length v7, v4

    if-lt v7, v5, :cond_8

    aget v7, v4, v2

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_8

    aget v7, v4, v1

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    if-lez v7, :cond_8

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 58
    aget v8, v4, v2

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v8, v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v9, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    sub-int/2addr v9, v10

    aget v1, v4, v1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 59
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getMarginStart()I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v8, :cond_6

    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    if-ne v4, v1, :cond_6

    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq v4, v9, :cond_7

    .line 60
    :cond_6
    iput v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v9, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v9, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    iput v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iput v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->anchorWidth:I

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->anchorHeight:I

    iput-boolean v2, p0, Lcom/xyron/game/main/GameDeviceOverlay;->anchorDirty:Z

    :cond_8
    if-eqz v0, :cond_b

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v3, :cond_9

    const/4 v4, 0x0

    goto :goto_2

    :cond_9
    const/4 v4, 0x4

    :goto_2
    if-eq v1, v4, :cond_b

    if-eqz v3, :cond_a

    const/4 v5, 0x0

    :cond_a
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    .line 66
    invoke-direct {p0, v2}, Lcom/xyron/game/main/GameDeviceOverlay;->ptt(Z)V

    :cond_c
    return-void
.end method

.method synthetic lambda$bindButton$2$com-xyron-game-main-GameDeviceOverlay(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    .line 45
    iget-boolean p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->held:Z

    return p1

    .line 44
    :cond_0
    invoke-direct {p0, v0}, Lcom/xyron/game/main/GameDeviceOverlay;->ptt(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    return v1

    .line 43
    :cond_1
    iget-boolean p2, p0, Lcom/xyron/game/main/GameDeviceOverlay;->connected:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/xyron/game/main/GameDeviceOverlay;->powered:Z

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/xyron/game/main/GameDeviceOverlay;->ptt(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method synthetic lambda$new$0$com-xyron-game-main-GameDeviceOverlay(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->anchorDirty:Z

    return-void
.end method

.method synthetic lambda$new$1$com-xyron-game-main-GameDeviceOverlay(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->layoutPanel()V

    return-void
.end method

.method synthetic lambda$postMessage$3$com-xyron-game-main-GameDeviceOverlay(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 130
    const-string v0, "telagem"

    .line 0
    const-string v1, "sp|"

    const-string v2, "radio|0|"

    const-string v3, "radio|6|"

    .line 130
    :try_start_0
    iget-object v4, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->token:I

    if-eq p2, p1, :cond_0

    goto/16 :goto_2

    .line 131
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "type"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 132
    iget-object p3, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    const-string v4, "radio"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    const-string p3, "angra:radio:"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    const/16 p3, 0xc

    .line 133
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "channel"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    .line 134
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "members"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "power"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "leave"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "join"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "ptt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_7

    if-eq p2, v8, :cond_6

    if-eq p2, v6, :cond_5

    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_3

    if-eq p2, v1, :cond_2

    goto/16 :goto_3

    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->close()V

    goto/16 :goto_3

    .line 139
    :cond_3
    const-string p2, "pressed"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/GameDeviceOverlay;->ptt(Z)V

    goto/16 :goto_3

    .line 138
    :cond_4
    invoke-direct {p0, v7}, Lcom/xyron/game/main/GameDeviceOverlay;->ptt(Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "on"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/GameDeviceOverlay;->wire(Ljava/lang/String;)V

    goto :goto_3

    .line 137
    :cond_5
    const-string p1, "radio|5|0"

    invoke-direct {p0, p1}, Lcom/xyron/game/main/GameDeviceOverlay;->wire(Ljava/lang/String;)V

    goto :goto_3

    .line 136
    :cond_6
    invoke-direct {p0, v7}, Lcom/xyron/game/main/GameDeviceOverlay;->ptt(Z)V

    const-string p1, "radio|1|0"

    invoke-direct {p0, p1}, Lcom/xyron/game/main/GameDeviceOverlay;->wire(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-lt p3, v8, :cond_a

    const/16 p1, 0x3e7

    if-gt p3, p1, :cond_a

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/GameDeviceOverlay;->wire(Ljava/lang/String;)V

    goto :goto_3

    .line 142
    :cond_8
    iget-object p3, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    const-string p3, "angra:telagem"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 143
    const-string p2, "action"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "close|ban|mute|jail|kick|tp_me|tp_player|prev|next"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/xyron/game/main/GameDeviceOverlay;->token:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "|"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/GameDeviceOverlay;->wire(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_9
    :goto_2
    return-void

    :catch_0
    move-exception p1

    .line 145
    const-string p2, "AngraDevice"

    const-string p3, "Rejected panel action"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1b2f0 -> :sswitch_5
        0x31dd2a -> :sswitch_4
        0x5a5ddf8 -> :sswitch_3
        0x6214eb7 -> :sswitch_2
        0x65e8905 -> :sswitch_1
        0x388ec919 -> :sswitch_0
    .end sparse-switch
.end method

.method pause()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, v0}, Lcom/xyron/game/main/GameDeviceOverlay;->ptt(Z)V

    return-void
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->token:I

    iget-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    iget-object v2, p0, Lcom/xyron/game/main/GameDeviceOverlay;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/GameDeviceOverlay;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method receive(Lorg/json/JSONObject;)Z
    .locals 6

    .line 76
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "radioState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "radioClose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "spectateClose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "radioMembers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "spectate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 86
    :goto_0
    const-string v0, "open"

    const-string v1, "telagem"

    const-string v5, "radio"

    packed-switch v4, :pswitch_data_0

    return v3

    .line 79
    :pswitch_0
    iput-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->radioState:Lorg/json/JSONObject;

    const-string v1, "connected"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->connected:Z

    const-string v1, "powered"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->powered:Z

    iget-boolean v4, p0, Lcom/xyron/game/main/GameDeviceOverlay;->connected:Z

    if-eqz v4, :cond_5

    if-nez v1, :cond_6

    :cond_5
    invoke-direct {p0, v3}, Lcom/xyron/game/main/GameDeviceOverlay;->ptt(Z)V

    .line 80
    :cond_6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, v5}, Lcom/xyron/game/main/GameDeviceOverlay;->open(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->publish()V

    :cond_8
    iget-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->refreshGameDeviceHud()V

    return v2

    .line 82
    :pswitch_1
    iput-boolean v3, p0, Lcom/xyron/game/main/GameDeviceOverlay;->connected:Z

    iput-boolean v3, p0, Lcom/xyron/game/main/GameDeviceOverlay;->powered:Z

    invoke-direct {p0, v3}, Lcom/xyron/game/main/GameDeviceOverlay;->ptt(Z)V

    iget-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->close()V

    :cond_9
    iget-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->refreshGameDeviceHud()V

    return v2

    .line 85
    :pswitch_2
    iget-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->close()V

    :cond_a
    return v2

    .line 81
    :pswitch_3
    iput-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->members:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->publish()V

    :cond_b
    return v2

    .line 84
    :pswitch_4
    iput-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->spectateState:Lorg/json/JSONObject;

    const-string v3, "token"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/xyron/game/main/GameDeviceOverlay;->token:I

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0, v1}, Lcom/xyron/game/main/GameDeviceOverlay;->open(Ljava/lang/String;)V

    :cond_c
    iget-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->publish()V

    :cond_d
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7f1c2827 -> :sswitch_4
        -0x45111362 -> :sswitch_3
        -0x12e6ea61 -> :sswitch_2
        -0x1ace143 -> :sswitch_1
        -0xc7faaa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->connected:Z

    iput-boolean v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->powered:Z

    invoke-direct {p0}, Lcom/xyron/game/main/GameDeviceOverlay;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->members:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->spectateState:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/xyron/game/main/GameDeviceOverlay;->radioState:Lorg/json/JSONObject;

    iput v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->token:I

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->refreshGameDeviceHud()V

    return-void
.end method

.method spectating()Z
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay;->panel:Ljava/lang/String;

    const-string v1, "telagem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
