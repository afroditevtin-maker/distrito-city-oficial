.class final Lcom/xyron/game/main/PhoneNoticeBanner;
.super Ljava/lang/Object;
.source "PhoneNoticeBanner.java"


# instance fields
.field private final audio:Lcom/xyron/game/main/AngraPhoneAudio;

.field private awaiting:Z

.field private enabled:Z

.field private final game:Lcom/xyron/game/main/SAMP;

.field private final handler:Landroid/os/Handler;

.field private final hide:Ljava/lang/Runnable;

.field private incoming:Z

.field private incomingPeer:I

.field private pending:Lorg/json/JSONObject;

.field private previews:Z

.field private ready:Z

.field private final seen:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->handler:Landroid/os/Handler;

    .line 19
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->seen:Ljava/util/LinkedHashSet;

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->enabled:Z

    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->previews:Z

    .line 26
    new-instance v0, Lcom/xyron/game/main/PhoneNoticeBanner$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/PhoneNoticeBanner$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/PhoneNoticeBanner;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->hide:Ljava/lang/Runnable;

    .line 27
    iput-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->game:Lcom/xyron/game/main/SAMP;

    new-instance v0, Lcom/xyron/game/main/AngraPhoneAudio;

    invoke-direct {v0, p1}, Lcom/xyron/game/main/AngraPhoneAudio;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->audio:Lcom/xyron/game/main/AngraPhoneAudio;

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/main/PhoneNoticeBanner;)Lcom/xyron/game/main/SAMP;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->game:Lcom/xyron/game/main/SAMP;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xyron/game/main/PhoneNoticeBanner;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->incoming:Z

    return p0
.end method

.method static synthetic access$200(Lcom/xyron/game/main/PhoneNoticeBanner;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->awaiting:Z

    return p0
.end method

.method static synthetic access$300(Lcom/xyron/game/main/PhoneNoticeBanner;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->incomingPeer:I

    return p0
.end method

.method static synthetic access$400(Lcom/xyron/game/main/PhoneNoticeBanner;)Lorg/json/JSONObject;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->pending:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xyron/game/main/PhoneNoticeBanner;)Ljava/lang/Runnable;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->hide:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$602(Lcom/xyron/game/main/PhoneNoticeBanner;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->ready:Z

    return p1
.end method

.method static synthetic access$700(Lcom/xyron/game/main/PhoneNoticeBanner;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xyron/game/main/PhoneNoticeBanner;->render()V

    return-void
.end method

.method private ensureView()V
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 68
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 69
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 70
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    new-instance v1, Lcom/xyron/game/main/PhoneNoticeBanner$1;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/PhoneNoticeBanner$1;-><init>(Lcom/xyron/game/main/PhoneNoticeBanner;)V

    const-string v2, "AngraNotice"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    new-instance v1, Lcom/xyron/game/main/PhoneNoticeBanner$2;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/PhoneNoticeBanner$2;-><init>(Lcom/xyron/game/main/PhoneNoticeBanner;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 82
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 83
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x43c30000    # 390.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v3}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v3, v3, -0x18

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x42d00000    # 104.0f

    mul-float v3, v3, v0

    float-to-int v3, v3

    const/16 v4, 0x31

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v2, 0x41400000    # 12.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 84
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 85
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->game:Lcom/xyron/game/main/SAMP;

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/interfaces/iphone/banner.html"

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private render()V
    .locals 3

    .line 88
    iget-boolean v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->ready:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->pending:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.showNotice("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->pending:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method awaitingCallAction()V
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->awaiting:Z

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->hide:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method callState(I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->audio:Lcom/xyron/game/main/AngraPhoneAudio;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/AngraPhoneAudio;->callState(I)V

    return-void
.end method

.method callState(Lorg/json/JSONObject;)V
    .locals 5

    .line 34
    const-string v0, "callState"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 35
    const-string v1, "peer"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v3, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->incoming:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->awaiting:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->incomingPeer:I

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object v3, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->audio:Lcom/xyron/game/main/AngraPhoneAudio;

    invoke-virtual {v3, v0}, Lcom/xyron/game/main/AngraPhoneAudio;->callState(I)V

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    .line 37
    iget-boolean p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->incoming:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->hide:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iput-boolean v3, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->incoming:Z

    iput-boolean v3, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->awaiting:Z

    iput v3, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->incomingPeer:I

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->incoming:Z

    iput-boolean v3, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->awaiting:Z

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->incomingPeer:I

    .line 39
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "call"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "app"

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "reference"

    iget v2, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->incomingPeer:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "senderHex"

    const-string v2, "peerNameHex"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "bodyHex"

    const-string v1, "Ligacao recebida"

    invoke-static {v1}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->pending:Lorg/json/JSONObject;

    .line 40
    iget-boolean p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->enabled:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->phoneOverlayIsVisible()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/xyron/game/main/PhoneNoticeBanner;->ensureView()V

    iget-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->hide:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->bringToFront()V

    invoke-direct {p0}, Lcom/xyron/game/main/PhoneNoticeBanner;->render()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method destroy()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->audio:Lcom/xyron/game/main/AngraPhoneAudio;

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraPhoneAudio;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->ready:Z

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->hide:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    :cond_1
    iput-object v1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->pending:Lorg/json/JSONObject;

    return-void
.end method

.method failedCallAction(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->awaiting:Z

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/PhoneNoticeBanner;->callState(Lorg/json/JSONObject;)V

    return-void
.end method

.method hideForOpen()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->hide:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method synthetic lambda$new$0$com-xyron-game-main-PhoneNoticeBanner()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$show$1$com-xyron-game-main-PhoneNoticeBanner(Lorg/json/JSONObject;)V
    .locals 4

    .line 49
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    .line 50
    const-string v1, "read"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->seen:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->ownsCellphone()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->seen:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->seen:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    iget-boolean v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->enabled:Z

    if-nez v0, :cond_2

    return-void

    .line 53
    :cond_2
    iget-boolean v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->incoming:Z

    if-eqz v0, :cond_3

    return-void

    .line 55
    :cond_3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->pending:Lorg/json/JSONObject;

    .line 56
    iget-boolean v1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->previews:Z

    if-nez v1, :cond_4

    const-string v1, "senderHex"

    const-string v2, "Angra Phone"

    invoke-static {v2}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->pending:Lorg/json/JSONObject;

    const-string v1, "bodyHex"

    const-string v2, "Voc\u00ea tem uma nova notifica\u00e7\u00e3o."

    invoke-static {v2}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->phoneOverlayIsVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 58
    invoke-direct {p0}, Lcom/xyron/game/main/PhoneNoticeBanner;->ensureView()V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->hide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->bringToFront()V

    .line 59
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    const/high16 v1, -0x3d380000    # -100.0f

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 60
    invoke-direct {p0}, Lcom/xyron/game/main/PhoneNoticeBanner;->render()V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->hide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x157c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    :cond_5
    const-string v0, "app"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->audio:Lcom/xyron/game/main/AngraPhoneAudio;

    invoke-virtual {p1}, Lcom/xyron/game/main/AngraPhoneAudio;->notification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_0
    return-void
.end method

.method refreshAudioMix()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->audio:Lcom/xyron/game/main/AngraPhoneAudio;

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraPhoneAudio;->refreshAudioMix()V

    return-void
.end method

.method reset()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->audio:Lcom/xyron/game/main/AngraPhoneAudio;

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraPhoneAudio;->reset()V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->seen:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->pending:Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->incoming:Z

    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->awaiting:Z

    iput v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->incomingPeer:I

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->hide:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->previews:Z

    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->enabled:Z

    return-void
.end method

.method settings(Lorg/json/JSONObject;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->audio:Lcom/xyron/game/main/AngraPhoneAudio;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/AngraPhoneAudio;->settings(Lorg/json/JSONObject;)V

    .line 45
    const-string v0, "notifications"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->enabled:Z

    .line 46
    const-string v0, "previews"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->previews:Z

    return-void
.end method

.method show(Lorg/json/JSONObject;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/PhoneNoticeBanner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/PhoneNoticeBanner$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/PhoneNoticeBanner;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
