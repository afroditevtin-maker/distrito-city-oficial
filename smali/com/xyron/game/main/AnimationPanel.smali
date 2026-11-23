.class final Lcom/xyron/game/main/AnimationPanel;
.super Ljava/lang/Object;
.source "AnimationPanel.java"


# instance fields
.field private final dialog:Landroid/app/Dialog;

.field private final game:Lcom/xyron/game/main/SAMP;

.field private final web:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$ov4QQmKa0Gw8TyQ2kEYYO5ra2HY(Lcom/xyron/game/main/AnimationPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/AnimationPanel;->pollStatus()V

    return-void
.end method

.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xyron/game/main/AnimationPanel;->game:Lcom/xyron/game/main/SAMP;

    .line 20
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xyron/game/main/AnimationPanel;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 22
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xyron/game/main/AnimationPanel;->web:Landroid/webkit/WebView;

    const/4 v3, 0x0

    .line 23
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 24
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 25
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 26
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 27
    const-string v1, "Android"

    invoke-virtual {v2, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Lcom/xyron/game/main/AnimationPanel$1;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/AnimationPanel$1;-><init>(Lcom/xyron/game/main/AnimationPanel;Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 32
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 33
    new-instance v1, Lcom/xyron/game/main/AnimationPanel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/AnimationPanel$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/AnimationPanel;Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 34
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private pollStatus()V
    .locals 6

    .line 66
    iget-object v0, p0, Lcom/xyron/game/main/AnimationPanel;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AnimationPanel;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->customAnimationStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 68
    const-string v2, "Toque para executar. \u2605 salva nos favoritos."

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    .line 69
    const-string v2, "Anima\u00e7\u00f5es Angra indispon\u00edveis: arquivo ou capacidade do cliente."

    goto :goto_0

    .line 70
    :cond_2
    const-string v2, "Preparando anima\u00e7\u00f5es Angra..."

    .line 71
    :goto_0
    iget-object v3, p0, Lcom/xyron/game/main/AnimationPanel;->web:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "window.AngraAnimationStatus("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    if-nez v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/xyron/game/main/AnimationPanel;->web:Landroid/webkit/WebView;

    new-instance v1, Lcom/xyron/game/main/AnimationPanel$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/AnimationPanel$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/AnimationPanel;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-xyron-game-main-AnimationPanel(Lcom/xyron/game/main/SAMP;Landroid/content/DialogInterface;)V
    .locals 0

    .line 33
    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->animationPanelClosed()V

    iget-object p1, p0, Lcom/xyron/game/main/AnimationPanel;->web:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method synthetic lambda$postMessage$1$com-xyron-game-main-AnimationPanel(Ljava/lang/String;)V
    .locals 2

    .line 53
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    const-string p1, "action"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    const-string v1, "close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AnimationPanel;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 56
    :cond_0
    const-string v1, "stop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/AnimationPanel;->game:Lcom/xyron/game/main/SAMP;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->playAngraAnimation(I)V

    goto :goto_0

    .line 57
    :cond_1
    const-string v1, "play"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    const-string p1, "id"

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_3

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/xyron/game/main/AnimationPanel;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/SAMP;->playAngraAnimation(I)V

    goto :goto_0

    .line 60
    :cond_2
    const-string v0, "ready"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/xyron/game/main/AnimationPanel;->pollStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/xyron/game/main/AnimationPanel;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/AnimationPanel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/AnimationPanel$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/AnimationPanel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method show()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/xyron/game/main/AnimationPanel;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 39
    iget-object v0, p0, Lcom/xyron/game/main/AnimationPanel;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x2

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v1, -0x1

    .line 44
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AnimationPanel;->web:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/interfaces/animations/index.html"

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
