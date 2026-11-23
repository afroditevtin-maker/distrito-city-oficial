.class final Lcom/xyron/game/main/AngraPaydayOverlay;
.super Ljava/lang/Object;
.source "AngraPaydayOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;
    }
.end annotation


# instance fields
.field private volatile bottom:F

.field private disposed:Z

.field private final game:Lcom/xyron/game/main/SAMP;

.field private volatile left:F

.field private pending:Lorg/json/JSONObject;

.field private ready:Z

.field private volatile right:F

.field private volatile top:F

.field private touching:Z

.field private web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->game:Lcom/xyron/game/main/SAMP;

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/main/AngraPaydayOverlay;)F
    .locals 0

    .line 11
    iget p0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->left:F

    return p0
.end method

.method static synthetic access$002(Lcom/xyron/game/main/AngraPaydayOverlay;F)F
    .locals 0

    .line 11
    iput p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->left:F

    return p1
.end method

.method static synthetic access$100(Lcom/xyron/game/main/AngraPaydayOverlay;)F
    .locals 0

    .line 11
    iget p0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->top:F

    return p0
.end method

.method static synthetic access$1000(Lcom/xyron/game/main/AngraPaydayOverlay;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xyron/game/main/AngraPaydayOverlay;->publish()V

    return-void
.end method

.method static synthetic access$102(Lcom/xyron/game/main/AngraPaydayOverlay;F)F
    .locals 0

    .line 11
    iput p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->top:F

    return p1
.end method

.method static synthetic access$1100(Lcom/xyron/game/main/AngraPaydayOverlay;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xyron/game/main/AngraPaydayOverlay;->destroyView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xyron/game/main/AngraPaydayOverlay;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xyron/game/main/AngraPaydayOverlay;->create()V

    return-void
.end method

.method static synthetic access$200(Lcom/xyron/game/main/AngraPaydayOverlay;)F
    .locals 0

    .line 11
    iget p0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->right:F

    return p0
.end method

.method static synthetic access$202(Lcom/xyron/game/main/AngraPaydayOverlay;F)F
    .locals 0

    .line 11
    iput p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->right:F

    return p1
.end method

.method static synthetic access$300(Lcom/xyron/game/main/AngraPaydayOverlay;)F
    .locals 0

    .line 11
    iget p0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->bottom:F

    return p0
.end method

.method static synthetic access$302(Lcom/xyron/game/main/AngraPaydayOverlay;F)F
    .locals 0

    .line 11
    iput p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->bottom:F

    return p1
.end method

.method static synthetic access$400(Lcom/xyron/game/main/AngraPaydayOverlay;)Lcom/xyron/game/main/SAMP;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->game:Lcom/xyron/game/main/SAMP;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xyron/game/main/AngraPaydayOverlay;)Lorg/json/JSONObject;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->pending:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$502(Lcom/xyron/game/main/AngraPaydayOverlay;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->pending:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xyron/game/main/AngraPaydayOverlay;)Landroid/webkit/WebView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xyron/game/main/AngraPaydayOverlay;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->touching:Z

    return p0
.end method

.method static synthetic access$702(Lcom/xyron/game/main/AngraPaydayOverlay;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->touching:Z

    return p1
.end method

.method static synthetic access$800(Lcom/xyron/game/main/AngraPaydayOverlay;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->disposed:Z

    return p0
.end method

.method static synthetic access$902(Lcom/xyron/game/main/AngraPaydayOverlay;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->ready:Z

    return p1
.end method

.method private create()V
    .locals 4

    .line 28
    new-instance v0, Lcom/xyron/game/main/AngraPaydayOverlay$1;

    iget-object v1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v0, p0, v1}, Lcom/xyron/game/main/AngraPaydayOverlay$1;-><init>(Lcom/xyron/game/main/AngraPaydayOverlay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    .line 32
    new-instance v0, Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;-><init>(Lcom/xyron/game/main/AngraPaydayOverlay;)V

    iget-object v1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    const-string v2, "AngraBridge"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    const-string v2, "AngraPaydayBounds"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setImportantForAccessibility(I)V

    .line 34
    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 35
    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    new-instance v1, Lcom/xyron/game/main/AngraPaydayOverlay$2;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/AngraPaydayOverlay$2;-><init>(Lcom/xyron/game/main/AngraPaydayOverlay;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 41
    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->game:Lcom/xyron/game/main/SAMP;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/interfaces/payday/index.html"

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private destroyView()V
    .locals 2

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->ready:Z

    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    return-void
.end method

.method private publish()V
    .locals 3

    .line 44
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->ready:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->pending:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.AngraPayday&&AngraPayday.receive("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->pending:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ");window.AngraPayday&&AngraPayday.open();"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->disposed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->pending:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/xyron/game/main/AngraPaydayOverlay;->destroyView()V

    return-void
.end method

.method reset()V
    .locals 3

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->pending:Lorg/json/JSONObject;

    const/4 v1, 0x0

    iput v1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->bottom:F

    iput v1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->right:F

    iput v1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->top:F

    iput v1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->left:F

    iget-object v1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "window.AngraPayday&&AngraPayday.reset();"

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method show(Lorg/json/JSONObject;)V
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->pending:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/main/AngraPaydayOverlay;->create()V

    :cond_1
    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay;->web:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->bringToFront()V

    invoke-direct {p0}, Lcom/xyron/game/main/AngraPaydayOverlay;->publish()V

    return-void
.end method
