.class final Lcom/xyron/game/main/ReferencePanels;
.super Ljava/lang/Object;
.source "ReferencePanels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/ReferencePanels$SoundAction;,
        Lcom/xyron/game/main/ReferencePanels$Sender;,
        Lcom/xyron/game/main/ReferencePanels$SpawnAction;,
        Lcom/xyron/game/main/ReferencePanels$Bridge;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final handler:Landroid/os/Handler;

.field private items:Lorg/json/JSONArray;

.field private loaded:Z

.field private panel:Ljava/lang/String;

.field private final prefs:Landroid/content/SharedPreferences;

.field private savedTemplatesReadable:Z

.field private final sender:Lcom/xyron/game/main/ReferencePanels$Sender;

.field private sending:Z

.field private showing:Z

.field private soundAction:Lcom/xyron/game/main/ReferencePanels$SoundAction;

.field private spawnAction:Lcom/xyron/game/main/ReferencePanels$SpawnAction;

.field private spawnChoices:Lorg/json/JSONArray;

.field private spawnPending:Z

.field private web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xyron/game/main/ReferencePanels$Sender;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/xyron/game/main/ReferencePanels;->savedTemplatesReadable:Z

    .line 37
    const-string v0, "binder"

    iput-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->panel:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xyron/game/main/ReferencePanels;->sender:Lcom/xyron/game/main/ReferencePanels$Sender;

    .line 47
    const-string p2, "angra_message_templates_v1"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->prefs:Landroid/content/SharedPreferences;

    .line 48
    :try_start_0
    new-instance p2, Lorg/json/JSONArray;

    const-string v1, "items"

    const-string v2, "[]"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xyron/game/main/ReferencePanels;->items:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->items:Lorg/json/JSONArray;

    .line 52
    iput-boolean v0, p0, Lcom/xyron/game/main/ReferencePanels;->savedTemplatesReadable:Z

    .line 54
    :goto_0
    invoke-direct {p0}, Lcom/xyron/game/main/ReferencePanels;->createWebView()V

    return-void
.end method

.method static synthetic access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xyron/game/main/ReferencePanels;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xyron/game/main/ReferencePanels;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/xyron/game/main/ReferencePanels;->sending:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/xyron/game/main/ReferencePanels;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/xyron/game/main/ReferencePanels;->sending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/xyron/game/main/ReferencePanels;)Lorg/json/JSONArray;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xyron/game/main/ReferencePanels;->items:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xyron/game/main/ReferencePanels;)Lcom/xyron/game/main/ReferencePanels$Sender;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xyron/game/main/ReferencePanels;->sender:Lcom/xyron/game/main/ReferencePanels$Sender;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xyron/game/main/ReferencePanels;Lorg/json/JSONArray;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ReferencePanels;->save(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xyron/game/main/ReferencePanels;)Lcom/xyron/game/main/ReferencePanels$SoundAction;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xyron/game/main/ReferencePanels;->soundAction:Lcom/xyron/game/main/ReferencePanels$SoundAction;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xyron/game/main/ReferencePanels;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/xyron/game/main/ReferencePanels;->loaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/xyron/game/main/ReferencePanels;)Landroid/webkit/WebView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xyron/game/main/ReferencePanels;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xyron/game/main/ReferencePanels;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xyron/game/main/ReferencePanels;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xyron/game/main/ReferencePanels;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xyron/game/main/ReferencePanels;->refresh()V

    return-void
.end method

.method static synthetic access$600(Lcom/xyron/game/main/ReferencePanels;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xyron/game/main/ReferencePanels;->panel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xyron/game/main/ReferencePanels;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/xyron/game/main/ReferencePanels;->spawnPending:Z

    return p0
.end method

.method static synthetic access$800(Lcom/xyron/game/main/ReferencePanels;)Lcom/xyron/game/main/ReferencePanels$SpawnAction;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xyron/game/main/ReferencePanels;->spawnAction:Lcom/xyron/game/main/ReferencePanels$SpawnAction;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xyron/game/main/ReferencePanels;Ljava/lang/String;)I
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ReferencePanels;->find(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private createWebView()V
    .locals 4

    .line 57
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xyron/game/main/ReferencePanels;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 59
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 61
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 62
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebView;Z)V

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebSettings;I)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 65
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 66
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 67
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 68
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    new-instance v1, Lcom/xyron/game/main/ReferencePanels$Bridge;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xyron/game/main/ReferencePanels$Bridge;-><init>(Lcom/xyron/game/main/ReferencePanels;Lcom/xyron/game/main/ReferencePanels$1;)V

    const-string v2, "Reference"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    new-instance v1, Lcom/xyron/game/main/ReferencePanels$1;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/ReferencePanels$1;-><init>(Lcom/xyron/game/main/ReferencePanels;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/interfaces/reference/index.html"

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private find(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/xyron/game/main/ReferencePanels;->items:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/ReferencePanels;->items:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private refresh()V
    .locals 4

    .line 110
    iget-boolean v0, p0, Lcom/xyron/game/main/ReferencePanels;->loaded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.renderPanel("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xyron/game/main/ReferencePanels;->panel:Ljava/lang/String;

    invoke-static {v2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xyron/game/main/ReferencePanels;->items:Lorg/json/JSONArray;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xyron/game/main/ReferencePanels;->spawnAction:Lcom/xyron/game/main/ReferencePanels$SpawnAction;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xyron/game/main/ReferencePanels;->spawnChoices:Lorg/json/JSONArray;

    if-nez v2, :cond_1

    const-string v2, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");window.setSpawnPending("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xyron/game/main/ReferencePanels;->spawnPending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_2
    return-void
.end method

.method private save(Lorg/json/JSONArray;)V
    .locals 4

    .line 117
    iget-boolean v0, p0, Lcom/xyron/game/main/ReferencePanels;->savedTemplatesReadable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->activity:Landroid/app/Activity;

    const-string v0, "N\u00e3o foi poss\u00edvel ler as mensagens salvas."

    invoke-static {p1, v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "items"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->items:Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/xyron/game/main/ReferencePanels;->refresh()V

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->activity:Landroid/app/Activity;

    const-string v0, "N\u00e3o foi poss\u00edvel salvar a mensagem."

    invoke-static {p1, v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 3

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/xyron/game/main/ReferencePanels;->showing:Z

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const-string v2, "Reference"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method hide()V
    .locals 3

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/xyron/game/main/ReferencePanels;->showing:Z

    .line 102
    iput-boolean v0, p0, Lcom/xyron/game/main/ReferencePanels;->spawnPending:Z

    .line 103
    iget-object v1, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/ReferencePanels;->activity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    .line 105
    iget-object v2, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFocus()V

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method isSpawnActive()Z
    .locals 2

    .line 98
    iget-boolean v0, p0, Lcom/xyron/game/main/ReferencePanels;->showing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->spawnAction:Lcom/xyron/game/main/ReferencePanels$SpawnAction;

    if-eqz v0, :cond_0

    const-string v0, "spawn"

    iget-object v1, p0, Lcom/xyron/game/main/ReferencePanels;->panel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSpawnVisible()Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/xyron/game/main/ReferencePanels;->isSpawnActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/main/ReferencePanels;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isVisible()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setSoundAction(Lcom/xyron/game/main/ReferencePanels$SoundAction;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->soundAction:Lcom/xyron/game/main/ReferencePanels$SoundAction;

    return-void
.end method

.method setSpawnAction(Lcom/xyron/game/main/ReferencePanels$SpawnAction;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->spawnAction:Lcom/xyron/game/main/ReferencePanels$SpawnAction;

    invoke-direct {p0}, Lcom/xyron/game/main/ReferencePanels;->refresh()V

    return-void
.end method

.method setSpawnChoices(Lorg/json/JSONArray;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->spawnChoices:Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/xyron/game/main/ReferencePanels;->refresh()V

    return-void
.end method

.method setSpawnPending(Z)V
    .locals 3

    .line 40
    iput-boolean p1, p0, Lcom/xyron/game/main/ReferencePanels;->spawnPending:Z

    .line 41
    iget-boolean v0, p0, Lcom/xyron/game/main/ReferencePanels;->loaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.setSpawnPending("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method show(Ljava/lang/String;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/main/ReferencePanels;->createWebView()V

    :cond_0
    const-string v0, "spawn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    const-string p1, "binder"

    :goto_0
    iput-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->panel:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xyron/game/main/ReferencePanels;->showing:Z

    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->bringToFront()V

    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->web:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    invoke-direct {p0}, Lcom/xyron/game/main/ReferencePanels;->refresh()V

    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->panel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels;->soundAction:Lcom/xyron/game/main/ReferencePanels$SoundAction;

    if-eqz p1, :cond_2

    const/16 v0, 0x1c96

    invoke-interface {p1, v0}, Lcom/xyron/game/main/ReferencePanels$SoundAction;->play(I)V

    :cond_2
    return-void
.end method
