.class final Lcom/xyron/game/main/PhoneApps;
.super Ljava/lang/Object;
.source "PhoneApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/PhoneApps$TabletBridge;,
        Lcom/xyron/game/main/PhoneApps$PanelBridge;
    }
.end annotation


# instance fields
.field private adminSession:Lorg/json/JSONObject;

.field private bankDescription:Ljava/lang/String;

.field private bankRequest:Ljava/lang/String;

.field private bankVisible:Z

.field private bankWire:I

.field private final game:Lcom/xyron/game/main/SAMP;

.field private groupSequence:J

.field private groupSession:Lorg/json/JSONObject;

.field private inlineMetadata:Lorg/json/JSONObject;

.field private inlineParts:[Ljava/lang/String;

.field private inlineToken:I

.field private final iphone:Lcom/xyron/game/main/IPhoneBridge;

.field private lastPhoneState:Lorg/json/JSONObject;

.field private lastSettings:Lorg/json/JSONObject;

.field private marketVisible:Z

.field private final notices:Lcom/xyron/game/main/PhoneNoticeBanner;

.field private final openExpired:Ljava/lang/Runnable;

.field private final openHandler:Landroid/os/Handler;

.field private pendingInlineForm:Lorg/json/JSONObject;

.field private phoneOpenWire:I

.field private final preferences:Lcom/xyron/game/main/LocalPhonePreferences;

.field private sequence:I

.field private volatile settingsAccount:I

.field private tablet:Landroid/webkit/WebView;

.field private tabletKind:Ljava/lang/String;

.field private tabletReady:Z


# direct methods
.method public static synthetic $r8$lambda$BoGgBuHsBaywWRkSuxOd8nlwX-M(Lcom/xyron/game/main/PhoneApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/PhoneApps;->expireOpen()V

    return-void
.end method

.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 20
    iput v0, p0, Lcom/xyron/game/main/PhoneApps;->sequence:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->bankRequest:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->bankDescription:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->openHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/xyron/game/main/PhoneApps$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/PhoneApps$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/main/PhoneApps;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->openExpired:Ljava/lang/Runnable;

    .line 212
    const-string v0, "admin"

    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tabletKind:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v0, Lcom/xyron/game/main/IPhoneBridge;

    invoke-direct {v0, p1, p0}, Lcom/xyron/game/main/IPhoneBridge;-><init>(Lcom/xyron/game/main/SAMP;Lcom/xyron/game/main/PhoneApps;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->iphone:Lcom/xyron/game/main/IPhoneBridge;

    new-instance v0, Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-direct {v0, p1}, Lcom/xyron/game/main/PhoneNoticeBanner;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->notices:Lcom/xyron/game/main/PhoneNoticeBanner;

    .line 34
    const-string v0, "angra_phone_local_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/xyron/game/main/LocalPhonePreferences;

    new-instance v1, Lcom/xyron/game/main/PhoneApps$1;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/PhoneApps$1;-><init>(Lcom/xyron/game/main/PhoneApps;Landroid/content/SharedPreferences;)V

    invoke-direct {v0, v1}, Lcom/xyron/game/main/LocalPhonePreferences;-><init>(Lcom/xyron/game/main/LocalPhonePreferences$Store;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->preferences:Lcom/xyron/game/main/LocalPhonePreferences;

    return-void
.end method

.method static synthetic access$1000(Lcom/xyron/game/main/PhoneApps;)Lorg/json/JSONObject;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xyron/game/main/PhoneApps;->adminSession:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xyron/game/main/PhoneApps;Lorg/json/JSONObject;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/xyron/game/main/PhoneApps;->publishTablet(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xyron/game/main/PhoneApps;)Landroid/webkit/WebView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xyron/game/main/PhoneApps;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/xyron/game/main/PhoneApps;->tabletReady:Z

    return p1
.end method

.method static synthetic access$500(Lcom/xyron/game/main/PhoneApps;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xyron/game/main/PhoneApps;->publishTabletBounds()V

    return-void
.end method

.method static synthetic access$600(Lcom/xyron/game/main/PhoneApps;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xyron/game/main/PhoneApps;->publishTabletSession()V

    return-void
.end method

.method static synthetic access$700(Lcom/xyron/game/main/PhoneApps;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xyron/game/main/PhoneApps;->closeTablet()V

    return-void
.end method

.method static synthetic access$800(Lcom/xyron/game/main/PhoneApps;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xyron/game/main/PhoneApps;->tabletKind:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$904(Lcom/xyron/game/main/PhoneApps;)J
    .locals 4

    .line 15
    iget-wide v0, p0, Lcom/xyron/game/main/PhoneApps;->groupSequence:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xyron/game/main/PhoneApps;->groupSequence:J

    return-wide v0
.end method

.method private closeTablet()V
    .locals 4

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->pendingInlineForm:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->inlineParts:[Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xyron/game/main/PhoneApps;->tabletReady:Z

    iget-object v2, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->setAngraAuthOverlay(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->setAngraSystemPanelVisible(Z)V

    :cond_1
    return-void
.end method

.method private expireOpen()V
    .locals 3

    .line 70
    iget v0, p0, Lcom/xyron/game/main/PhoneApps;->phoneOpenWire:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phone|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xyron/game/main/PhoneApps;->phoneOpenWire:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|17|0|||0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->cancelAngraQueued(Ljava/lang/String;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/xyron/game/main/PhoneApps;->phoneOpenWire:I

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    const-string v1, "N\u00e3o foi poss\u00edvel abrir seu telefone. Confira sua conex\u00e3o e tente novamente."

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 83
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 84
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 86
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v3, v2, 0xff

    mul-int/lit8 v4, v1, 0x2

    ushr-int/lit8 v3, v3, 0x4

    const-string v5, "0123456789abcdef"

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method static synthetic lambda$publishTabletBounds$4(Ljava/lang/String;)V
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AngraPanel"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private openGroup(Lorg/json/JSONObject;)V
    .locals 4

    .line 217
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "orgPanel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "org"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "family"

    .line 218
    :goto_0
    iget-object v2, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xyron/game/main/PhoneApps;->tabletKind:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->groupSession:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    const-string v2, "orgId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/xyron/game/main/PhoneApps;->groupSession:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/xyron/game/main/PhoneApps;->publishGroup(Lorg/json/JSONObject;)V

    return-void

    .line 219
    :cond_2
    invoke-direct {p0}, Lcom/xyron/game/main/PhoneApps;->closeTablet()V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tabletKind:Ljava/lang/String;

    iput-object p1, p0, Lcom/xyron/game/main/PhoneApps;->groupSession:Lorg/json/JSONObject;

    .line 220
    iget-wide v0, p0, Lcom/xyron/game/main/PhoneApps;->groupSequence:J

    const-string v2, "requestBase"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xyron/game/main/PhoneApps;->groupSequence:J

    invoke-direct {p0}, Lcom/xyron/game/main/PhoneApps;->openTablet()V

    return-void
.end method

.method private openTablet()V
    .locals 10

    .line 223
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tabletKind:Ljava/lang/String;

    const-string v1, "admin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->adminSession:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v3, "adminLevel"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v2, :cond_1

    :cond_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/xyron/game/main/PhoneApps;->publishTabletSession()V

    return-void

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlay()V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlay()V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v2}, Lcom/xyron/game/main/SAMP;->setAngraAuthOverlay(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v2}, Lcom/xyron/game/main/SAMP;->setAngraSystemPanelVisible(Z)V

    .line 226
    new-instance v0, Lcom/xyron/game/main/AdminTabletWebView;

    iget-object v3, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v0, v3}, Lcom/xyron/game/main/AdminTabletWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 227
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 228
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 229
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    new-instance v3, Lcom/xyron/game/main/PhoneApps$TabletBridge;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/xyron/game/main/PhoneApps$TabletBridge;-><init>(Lcom/xyron/game/main/PhoneApps;Lcom/xyron/game/main/PhoneApps$1;)V

    const-string v5, "AngraTablet"

    invoke-virtual {v0, v3, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    new-instance v3, Lcom/xyron/game/main/PhoneApps$PanelBridge;

    invoke-direct {v3, p0, v4}, Lcom/xyron/game/main/PhoneApps$PanelBridge;-><init>(Lcom/xyron/game/main/PhoneApps;Lcom/xyron/game/main/PhoneApps$1;)V

    const-string v5, "AngraBridge"

    invoke-virtual {v0, v3, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    new-instance v3, Lcom/xyron/game/main/PhoneApps$PanelBridge;

    invoke-direct {v3, p0, v4}, Lcom/xyron/game/main/PhoneApps$PanelBridge;-><init>(Lcom/xyron/game/main/PhoneApps;Lcom/xyron/game/main/PhoneApps$1;)V

    const-string v4, "AngraNative"

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    new-instance v3, Lcom/xyron/game/main/PhoneApps$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/xyron/game/main/PhoneApps$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/PhoneApps;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 233
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    new-instance v3, Lcom/xyron/game/main/PhoneApps$2;

    invoke-direct {v3, p0}, Lcom/xyron/game/main/PhoneApps$2;-><init>(Lcom/xyron/game/main/PhoneApps;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 239
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tabletKind:Ljava/lang/String;

    const-string v3, "family"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "familia"

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tabletKind:Ljava/lang/String;

    const-string v3, "org"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v8, "verdes"

    const-string v9, "roxos"

    const-string v3, ""

    const-string v4, "policia"

    const-string v5, "hospital"

    const-string v6, "angratv"

    const-string v7, "exercito"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->groupSession:Lorg/json/JSONObject;

    const-string v3, "orgId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v2, :cond_5

    const/4 v2, 0x7

    if-lt v1, v2, :cond_4

    goto :goto_0

    :cond_4
    aget-object v1, v0, v1

    goto :goto_1

    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/xyron/game/main/PhoneApps;->closeTablet()V

    return-void

    .line 241
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file:///android_asset/interfaces/paineis/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->bringToFront()V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    return-void
.end method

.method private publishGroup(Lorg/json/JSONObject;)V
    .locals 4

    .line 257
    const-string v0, "org"

    .line 0
    const-string/jumbo v1, "window."

    if-nez p1, :cond_0

    return-void

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/xyron/game/main/PhoneApps;->tabletKind:Ljava/lang/String;

    const-string v3, "family"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p1, p0, Lcom/xyron/game/main/PhoneApps;->groupSession:Lorg/json/JSONObject;

    .line 259
    :cond_1
    iget-object v2, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/xyron/game/main/PhoneApps;->tabletReady:Z

    if-nez v2, :cond_2

    goto :goto_2

    .line 261
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xyron/game/main/PhoneApps;->tabletKind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "AngraPanel"

    goto :goto_0

    :cond_3
    const-string p1, "AngraFamily"

    .line 262
    :goto_0
    iget-object v3, p0, Lcom/xyron/game/main/PhoneApps;->tabletKind:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "event"

    const-string v3, "orgUiData"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    const-string v0, "type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    :goto_1
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&&window."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".receive("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_2
    return-void
.end method

.method private publishInlineForm()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/xyron/game/main/PhoneApps;->tabletReady:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->pendingInlineForm:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.AngraInlineForm&&window.AngraInlineForm.receive("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xyron/game/main/PhoneApps;->pendingInlineForm:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private publishTablet(Lorg/json/JSONObject;)V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/main/PhoneApps;->tabletReady:Z

    if-eqz v0, :cond_1

    const-string v0, "payload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "window.AngraAdmin&&window.AngraAdmin.receive("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_1
    return-void
.end method

.method private publishTabletBounds()V
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xyron/game/main/PhoneApps;->tabletReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget-object v2, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    const/4 v0, 0x0

    cmpg-float v3, v1, v0

    if-lez v3, :cond_2

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tablet:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "window.AngraPanelBounds={width:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",height:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "};window.AngraPanelLayout&&window.AngraPanelLayout.fit();JSON.stringify({width:window.AngraPanelBounds.width,height:window.AngraPanelBounds.height,rect:document.querySelector(\'.tablet\').getBoundingClientRect().toJSON()});"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xyron/game/main/PhoneApps$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/xyron/game/main/PhoneApps$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private publishTabletSession()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->tabletKind:Ljava/lang/String;

    const-string v1, "admin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->groupSession:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/xyron/game/main/PhoneApps;->publishGroup(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "angra-admin:init"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "payload"

    iget-object v2, p0, Lcom/xyron/game/main/PhoneApps;->adminSession:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/main/PhoneApps;->publishTablet(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    invoke-direct {p0}, Lcom/xyron/game/main/PhoneApps;->publishInlineForm()V

    return-void
.end method

.method private receiveInlineForm(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "panelFormClear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/xyron/game/main/PhoneApps;->pendingInlineForm:Lorg/json/JSONObject;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xyron/game/main/PhoneApps;->inlineParts:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/xyron/game/main/PhoneApps;->publishInlineForm()V

    return-void

    .line 247
    :cond_0
    const-string v0, "token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "part"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "parts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v0, v3, :cond_8

    if-lt v2, v3, :cond_8

    const/16 v4, 0xc

    if-gt v2, v4, :cond_8

    if-lt v1, v3, :cond_8

    if-le v1, v2, :cond_1

    goto :goto_1

    .line 249
    :cond_1
    iget-object v4, p0, Lcom/xyron/game/main/PhoneApps;->inlineParts:[Ljava/lang/String;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/xyron/game/main/PhoneApps;->inlineToken:I

    if-eq v0, v4, :cond_3

    :cond_2
    iput v0, p0, Lcom/xyron/game/main/PhoneApps;->inlineToken:I

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->inlineParts:[Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->inlineMetadata:Lorg/json/JSONObject;

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->inlineParts:[Ljava/lang/String;

    array-length v4, v0

    if-eq v4, v2, :cond_4

    return-void

    :cond_4
    sub-int/2addr v1, v3

    const-string v2, "bodyHex"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->inlineParts:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    if-nez v3, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x5dc0

    if-le v0, v1, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->inlineMetadata:Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xyron/game/main/PanelTextCodec;->decodeHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "body"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/xyron/game/main/PhoneApps;->inlineMetadata:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/xyron/game/main/PhoneApps;->pendingInlineForm:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/xyron/game/main/PhoneApps;->publishInlineForm()V

    :cond_8
    :goto_1
    return-void
.end method

.method private saveLocalSettings(Ljava/lang/String;Z)Z
    .locals 2

    .line 50
    :try_start_0
    iget v0, p0, Lcom/xyron/game/main/PhoneApps;->settingsAccount:I

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->preferences:Lcom/xyron/game/main/LocalPhonePreferences;

    invoke-virtual {v1, v0, p1, p2}, Lcom/xyron/game/main/LocalPhonePreferences;->save(ILjava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/PhoneApps$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p1}, Lcom/xyron/game/main/PhoneApps$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/main/PhoneApps;ILorg/json/JSONObject;)V

    invoke-virtual {p2, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 52
    const-string p2, "AngraPhone"

    const-string v0, "Local preferences were not saved"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method static unhex(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 90
    const-string v0, ""

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 91
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    mul-int/lit8 v4, v3, 0x2

    .line 92
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v5, :cond_2

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    .line 93
    :cond_3
    new-instance p0, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method applyPhoneSettings(Lorg/json/JSONObject;)V
    .locals 1

    .line 37
    iput-object p1, p0, Lcom/xyron/game/main/PhoneApps;->lastSettings:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->notices:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/PhoneNoticeBanner;->settings(Lorg/json/JSONObject;)V

    return-void
.end method

.method destroy()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->openHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->openExpired:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->iphone:Lcom/xyron/game/main/IPhoneBridge;

    invoke-virtual {v0}, Lcom/xyron/game/main/IPhoneBridge;->reset()V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->notices:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-virtual {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->destroy()V

    invoke-direct {p0}, Lcom/xyron/game/main/PhoneApps;->closeTablet()V

    return-void
.end method

.method hasPending()Z
    .locals 1

    .line 46
    iget v0, p0, Lcom/xyron/game/main/PhoneApps;->phoneOpenWire:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->iphone:Lcom/xyron/game/main/IPhoneBridge;

    invoke-virtual {v0}, Lcom/xyron/game/main/IPhoneBridge;->hasPending()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method incomingAction(ZI)V
    .locals 7

    .line 40
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->lastPhoneState:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    const-string v1, "callState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->lastPhoneState:Lorg/json/JSONObject;

    const-string v1, "peer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p2, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->notices:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-virtual {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->awaitingCallAction()V

    invoke-virtual {p0}, Lcom/xyron/game/main/PhoneApps;->stopIncomingSound()V

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    const/16 v2, 0x9

    :goto_0
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/xyron/game/main/PhoneApps;->sendPhone(IILjava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_2

    .line 42
    :try_start_0
    iget-object p1, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "app"

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "reference"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/SAMP;->openPhoneNotification(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method synthetic lambda$openTablet$3$com-xyron-game-main-PhoneApps(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 0
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/PhoneApps;->publishTabletBounds()V

    :cond_1
    return-void
.end method

.method synthetic lambda$postMessage$2$com-xyron-game-main-PhoneApps(Ljava/lang/String;)V
    .locals 17

    .line 0
    move-object/from16 v6, p0

    .line 104
    const-string v0, "kind"

    const-string v1, "type"

    const-string v2, "payload"

    .line 0
    const-string v3, "phonebank|"

    const-string v4, "bank|"

    const-string v5, "shop|"

    const-string v7, "admin|"

    .line 104
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v9, p1

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_0

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 105
    :cond_0
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v14, -0x1

    const/4 v15, 0x0

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v10, "contact:edit"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v10, "call:start"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v10, "contact:delete"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v10, "call:accept"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v10, "admin:open"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto/16 :goto_1

    :sswitch_5
    const-string v10, "phone:closed"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0xd

    goto/16 :goto_1

    :sswitch_6
    const-string v10, "contact:add"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x6

    goto :goto_1

    :sswitch_7
    const-string v10, "call:end"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0xc

    goto :goto_1

    :sswitch_8
    const-string v10, "bank:ready"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0xe

    goto :goto_1

    :sswitch_9
    const-string v10, "message:send"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x9

    goto :goto_1

    :sswitch_a
    const-string v10, "contacts:ready"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :sswitch_b
    const-string v10, "bank:transfer:request"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0xf

    goto :goto_1

    :sswitch_c
    const-string v10, "phone:support"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x3

    goto :goto_1

    :sswitch_d
    const-string v10, "phone:page"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x5

    goto :goto_1

    :sswitch_e
    const-string v10, "market:request"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    goto :goto_1

    :sswitch_f
    const-string v10, "shop:open"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_1

    const/4 v8, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, -0x1

    :goto_1
    const-string v10, "text"

    const-string v13, "id"

    const-string/jumbo v11, "|"

    const-string v12, "market|"

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_4

    .line 130
    :pswitch_0
    :try_start_1
    const-string v0, "amount"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v0, "recipientId"

    invoke-virtual {v9, v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 131
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, "error"

    const-string v12, "success"

    const-string v13, "bank:transfer:result"

    const-string v14, "requestId"

    cmpl-double v16, v4, v7

    if-nez v16, :cond_4

    const-wide v7, 0x408f400000000000L    # 1000.0

    cmpg-double v16, v4, v7

    if-ltz v16, :cond_4

    const-wide v7, 0x412e848000000000L    # 1000000.0

    cmpl-double v16, v4, v7

    if-gtz v16, :cond_4

    if-ltz v0, :cond_4

    const/16 v7, 0x64

    if-lt v0, v7, :cond_2

    goto/16 :goto_2

    .line 132
    :cond_2
    :try_start_2
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/xyron/game/main/PhoneApps;->bankRequest:Ljava/lang/String;

    iget-object v7, v6, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v7}, Lcom/xyron/game/main/SAMP;->nextAngraBankRequest()I

    move-result v7

    iput v7, v6, Lcom/xyron/game/main/PhoneApps;->bankWire:I

    .line 133
    const-string v7, "description"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v8, v8

    const/16 v9, 0x5f

    if-le v8, v9, :cond_3

    iget-object v0, v6, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, v6, Lcom/xyron/game/main/PhoneApps;->bankRequest:Ljava/lang/String;

    invoke-virtual {v3, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Descri\u00e7\u00e3o deve ter at\u00e9 95 bytes."

    invoke-virtual {v3, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V

    const-string v0, ""

    iput-object v0, v6, Lcom/xyron/game/main/PhoneApps;->bankRequest:Ljava/lang/String;

    goto/16 :goto_4

    .line 134
    :cond_3
    iput-object v7, v6, Lcom/xyron/game/main/PhoneApps;->bankDescription:Ljava/lang/String;

    .line 135
    iget-object v1, v6, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v6, Lcom/xyron/game/main/PhoneApps;->bankWire:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 131
    :cond_4
    :goto_2
    iget-object v0, v6, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Informe o ID de um jogador conectado e um valor inteiro de R$ 1.000 a R$ 1.000.000."

    invoke-virtual {v3, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V

    goto/16 :goto_4

    :pswitch_1
    const/4 v0, 0x1

    .line 128
    iput-boolean v0, v6, Lcom/xyron/game/main/PhoneApps;->bankVisible:Z

    iget-object v0, v6, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2}, Lcom/xyron/game/main/SAMP;->nextAngraBankRequest()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|1|0|0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 127
    :pswitch_2
    iput-boolean v15, v6, Lcom/xyron/game/main/PhoneApps;->bankVisible:Z

    iget-boolean v0, v6, Lcom/xyron/game/main/PhoneApps;->marketVisible:Z

    if-eqz v0, :cond_9

    iput-boolean v15, v6, Lcom/xyron/game/main/PhoneApps;->marketVisible:Z

    iget-object v0, v6, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Lcom/xyron/game/main/PhoneApps;->sequence:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v6, Lcom/xyron/game/main/PhoneApps;->sequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|8|0|0|0|||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 126
    :pswitch_3
    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xyron/game/main/PhoneApps;->sendPhone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 125
    :pswitch_4
    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xyron/game/main/PhoneApps;->sendPhone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 124
    :pswitch_5
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v1, 0x7

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xyron/game/main/PhoneApps;->sendPhone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 123
    :pswitch_6
    const-string v0, "to"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v1, 0x6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xyron/game/main/PhoneApps;->sendPhone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 122
    :pswitch_7
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xyron/game/main/PhoneApps;->sendPhone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 120
    :pswitch_8
    const-string v0, "contact"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "family"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "favorite"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v1, 0x4

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xyron/game/main/PhoneApps;->sendPhone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 118
    :pswitch_9
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v1, 0x2

    goto :goto_3

    :cond_6
    const/4 v1, 0x3

    :goto_3
    const-string v0, "number"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, ""

    const-string v4, ""

    const-string v0, "offset"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xyron/game/main/PhoneApps;->sendPhone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 112
    :pswitch_a
    const-string v0, "op"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "value"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "flag"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 113
    const-string v4, "a"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "b"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "c"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-ltz v0, :cond_8

    const/16 v8, 0x8

    if-gt v0, v8, :cond_8

    if-ltz v1, :cond_8

    const v8, 0xc350

    if-gt v1, v8, :cond_8

    if-ltz v2, :cond_8

    if-ltz v3, :cond_8

    .line 114
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v8, v8

    const/16 v9, 0xf0

    if-gt v8, v9, :cond_8

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v8, v8

    const/16 v10, 0x30

    if-gt v8, v10, :cond_8

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v8, v8

    if-gt v8, v9, :cond_8

    if-nez v0, :cond_7

    const/4 v8, 0x1

    .line 115
    iput-boolean v8, v6, Lcom/xyron/game/main/PhoneApps;->marketVisible:Z

    .line 116
    :cond_7
    iget-object v8, v6, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v6, Lcom/xyron/game/main/PhoneApps;->sequence:I

    const/4 v12, 0x1

    add-int/2addr v10, v12

    iput v10, v6, Lcom/xyron/game/main/PhoneApps;->sequence:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    goto :goto_4

    .line 114
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid market request"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :pswitch_b
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    const/16 v1, 0xb

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xyron/game/main/PhoneApps;->sendPhone(IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 109
    :pswitch_c
    iget-object v0, v6, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|0|0|1|0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    goto :goto_4

    .line 108
    :pswitch_d
    iget-object v0, v6, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Lcom/xyron/game/main/PhoneApps;->sequence:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v6, Lcom/xyron/game/main/PhoneApps;->sequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|open|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    goto :goto_4

    .line 107
    :pswitch_e
    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xyron/game/main/PhoneApps;->sendPhone(IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 139
    :catch_0
    iget-object v0, v6, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    const-string v1, "Solicita\u00e7\u00e3o inv\u00e1lida. Confira os dados."

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f6ff7b2 -> :sswitch_f
        -0x71ea4aaf -> :sswitch_e
        -0x6ec252e5 -> :sswitch_d
        -0x6653663d -> :sswitch_c
        -0x559d4082 -> :sswitch_b
        -0x51467c44 -> :sswitch_a
        -0x4eb1f0e5 -> :sswitch_9
        -0x2589a91b -> :sswitch_8
        -0xa55fe41 -> :sswitch_7
        0x263ea47 -> :sswitch_6
        0x22f6b8f8 -> :sswitch_5
        0x26f82f95 -> :sswitch_4
        0x2b73e1a4 -> :sswitch_3
        0x2e6dea45 -> :sswitch_2
        0x33f89446 -> :sswitch_1
        0x4a1b3124 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$requestOpen$1$com-xyron-game-main-PhoneApps()V
    .locals 4

    .line 75
    iget v0, p0, Lcom/xyron/game/main/PhoneApps;->phoneOpenWire:I

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->preparePhoneDocument()V

    .line 77
    invoke-virtual {p0}, Lcom/xyron/game/main/PhoneApps;->nextSequence()I

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/PhoneApps;->phoneOpenWire:I

    .line 78
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->openHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->openExpired:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->openHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->openExpired:Ljava/lang/Runnable;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phone|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xyron/game/main/PhoneApps;->phoneOpenWire:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|17|0|||0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->openHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->openExpired:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xyron/game/main/PhoneApps;->phoneOpenWire:I

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    const-string v1, "N\u00e3o foi poss\u00edvel enviar o pedido. Confira sua conex\u00e3o e tente novamente."

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$saveLocalSettings$0$com-xyron-game-main-PhoneApps(ILorg/json/JSONObject;)V
    .locals 1

    .line 51
    iget v0, p0, Lcom/xyron/game/main/PhoneApps;->settingsAccount:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/xyron/game/main/PhoneApps;->applyPhoneSettings(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method localSettingsRequest(Lorg/json/JSONObject;)Z
    .locals 14

    .line 55
    const-string v0, "ok"

    const-string v1, "response"

    const-string v2, "type"

    const-string v3, "id"

    const-string v4, "document"

    const-string v5, "action"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    const-string v6, "settings:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    const-string v6, "wallpaper:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    return v7

    :cond_0
    const/4 v6, 0x1

    .line 59
    :try_start_0
    const-string v8, "settings:get"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "rows"

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "settingsHex"

    iget-object v12, p0, Lcom/xyron/game/main/PhoneApps;->preferences:Lcom/xyron/game/main/LocalPhonePreferences;

    iget v13, p0, Lcom/xyron/game/main/PhoneApps;->settingsAccount:I

    invoke-virtual {v12, v13}, Lcom/xyron/game/main/LocalPhonePreferences;->load(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_0

    .line 60
    :cond_1
    const-string v8, "settings:save"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 61
    const-string v5, "payload"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 62
    iget-object v8, p0, Lcom/xyron/game/main/PhoneApps;->preferences:Lcom/xyron/game/main/LocalPhonePreferences;

    iget v9, p0, Lcom/xyron/game/main/PhoneApps;->settingsAccount:I

    const-string v10, "settings"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v9, v5, v7}, Lcom/xyron/game/main/LocalPhonePreferences;->save(ILjava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/xyron/game/main/PhoneApps;->applyPhoneSettings(Lorg/json/JSONObject;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "saved"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 64
    :goto_0
    iget-object v8, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v9, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "data"

    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 61
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "Ajustes inv\u00e1lidos."

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 63
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "Escolha um dos pap\u00e9is de parede dispon\u00edveis no celular."

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    .line 65
    :try_start_1
    iget-object v8, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v9, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "error"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_1
    return v6
.end method

.method nextSequence()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/xyron/game/main/PhoneApps;->sequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xyron/game/main/PhoneApps;->sequence:I

    return v0
.end method

.method onDocumentReady()V
    .locals 4

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->lastPhoneState:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v0}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->lastSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    const-string v3, "phoneSettings"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "settingsHex"

    iget-object v3, p0, Lcom/xyron/game/main/PhoneApps;->lastSettings:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method onWireSent(Ljava/lang/String;)V
    .locals 4

    .line 71
    iget v0, p0, Lcom/xyron/game/main/PhoneApps;->phoneOpenWire:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "phone|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xyron/game/main/PhoneApps;->phoneOpenWire:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|17|0|||0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->openHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->openExpired:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->openHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->openExpired:Ljava/lang/Runnable;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->iphone:Lcom/xyron/game/main/IPhoneBridge;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/IPhoneBridge;->onWireSent(Ljava/lang/String;)V

    return-void
.end method

.method postMessage(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/PhoneApps$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/PhoneApps$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/PhoneApps;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method receive(Lorg/json/JSONObject;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 144
    const-string v3, "operation"

    const-string v0, "accountId"

    const-string v4, "AngraPhone"

    const-string v5, "phoneResult"

    const-string v6, "balance"

    const-string v7, "adminLevel"

    const-string v8, "settingsHex"

    const-string v9, "phoneState"

    const-string v10, "phoneSettings"

    const-string v11, "event"

    .line 0
    const-string v12, "bank|"

    const-string v13, "Opera\u00e7\u00e3o recusada pela GM (c\u00f3digo "

    .line 144
    :try_start_0
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 145
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/xyron/game/main/PhoneApps;->settingsAccount:I

    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->preferences:Lcom/xyron/game/main/LocalPhonePreferences;

    iget v14, v1, Lcom/xyron/game/main/PhoneApps;->settingsAccount:I

    invoke-virtual {v0, v14}, Lcom/xyron/game/main/LocalPhonePreferences;->load(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xyron/game/main/PhoneApps;->applyPhoneSettings(Lorg/json/JSONObject;)V

    .line 146
    :cond_0
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget v0, v1, Lcom/xyron/game/main/PhoneApps;->settingsAccount:I

    const/4 v14, 0x1

    if-ge v0, v14, :cond_1

    return-void

    .line 148
    :cond_1
    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->preferences:Lcom/xyron/game/main/LocalPhonePreferences;

    iget v14, v1, Lcom/xyron/game/main/PhoneApps;->settingsAccount:I

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xyron/game/main/PhoneApps;->unhex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Lcom/xyron/game/main/LocalPhonePreferences;->importLegacy(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    const-string v14, "Phone preference recovery failed"

    invoke-static {v4, v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 152
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->iphone:Lcom/xyron/game/main/IPhoneBridge;

    invoke-virtual {v0, v2}, Lcom/xyron/game/main/IPhoneBridge;->receive(Lorg/json/JSONObject;)V

    .line 154
    :try_start_1
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string v14, "jbl"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v2}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V

    return-void

    .line 156
    :cond_3
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v14, :cond_4

    :try_start_2
    new-instance v14, Lorg/json/JSONObject;

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xyron/game/main/PhoneApps;->unhex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lcom/xyron/game/main/PhoneApps;->applyPhoneSettings(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    :catch_1
    :cond_4
    :try_start_3
    const-string v14, "phoneNotification"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v14, v1, Lcom/xyron/game/main/PhoneApps;->notices:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-virtual {v14, v2}, Lcom/xyron/game/main/PhoneNoticeBanner;->show(Lorg/json/JSONObject;)V

    .line 158
    :cond_5
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-string v15, "phoneProtocol"

    if-eqz v14, :cond_6

    :try_start_4
    iput-object v2, v1, Lcom/xyron/game/main/PhoneApps;->lastPhoneState:Lorg/json/JSONObject;

    iget-object v14, v1, Lcom/xyron/game/main/PhoneApps;->iphone:Lcom/xyron/game/main/IPhoneBridge;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v17, v4

    :try_start_5
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v14, v4}, Lcom/xyron/game/main/IPhoneBridge;->protocol(I)V

    iget-object v4, v1, Lcom/xyron/game/main/PhoneApps;->notices:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-virtual {v4, v2}, Lcom/xyron/game/main/PhoneNoticeBanner;->callState(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_6
    move-object/from16 v17, v4

    .line 159
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const-string v14, "success"

    if-eqz v4, :cond_8

    :try_start_6
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v18, v8

    const/16 v8, 0x8

    if-eq v4, v8, :cond_7

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_9

    :cond_7
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v1, Lcom/xyron/game/main/PhoneApps;->lastPhoneState:Lorg/json/JSONObject;

    if-eqz v3, :cond_9

    iget-object v4, v1, Lcom/xyron/game/main/PhoneApps;->notices:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-virtual {v4, v3}, Lcom/xyron/game/main/PhoneNoticeBanner;->failedCallAction(Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_8
    move-object/from16 v18, v8

    .line 160
    :cond_9
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v1, Lcom/xyron/game/main/PhoneApps;->iphone:Lcom/xyron/game/main/IPhoneBridge;

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xyron/game/main/IPhoneBridge;->protocol(I)V

    .line 161
    :cond_a
    const-string v3, "phoneOpen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/xyron/game/main/PhoneApps;->requestOpen()V

    return-void

    .line 162
    :cond_b
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const/4 v4, 0x0

    const-string v5, "requestId"

    if-eqz v3, :cond_d

    :try_start_7
    iget v3, v1, Lcom/xyron/game/main/PhoneApps;->phoneOpenWire:I

    if-eqz v3, :cond_d

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iget v8, v1, Lcom/xyron/game/main/PhoneApps;->phoneOpenWire:I

    if-ne v3, v8, :cond_d

    .line 163
    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->openHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/xyron/game/main/PhoneApps;->openExpired:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    iput v4, v1, Lcom/xyron/game/main/PhoneApps;->phoneOpenWire:I

    .line 165
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->notices:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-virtual {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->hideForOpen()V

    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->showPhoneOverlayAuthorized()V

    goto :goto_3

    .line 166
    :cond_c
    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    const-string v2, "Voc\u00ea precisa de um celular na mochila para us\u00e1-lo."

    invoke-virtual {v0, v2}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    :goto_3
    return-void

    .line 169
    :cond_d
    const-string v3, "panelForm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "panelFormClear"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto/16 :goto_f

    .line 170
    :cond_e
    const-string v3, "orgPanel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v3, "familyPanel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_e

    .line 171
    :cond_f
    const-string v3, "orgData"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "familyData"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_d

    .line 172
    :cond_10
    const-string v3, "systemPanelClose"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/PhoneApps;->closeTablet()V

    return-void

    .line 173
    :cond_11
    const-string v3, "adminPanelClose"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/PhoneApps;->closeTablet()V

    return-void

    .line 174
    :cond_12
    const-string v3, "bank"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iput-boolean v4, v1, Lcom/xyron/game/main/PhoneApps;->bankVisible:Z

    .line 175
    :cond_13
    const-string v3, "death"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "visible"

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_14
    const-string v3, "accountWarning"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "rating"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/PhoneApps;->closeTablet()V

    .line 176
    :cond_16
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const-string v8, "admin"

    const-string v15, "payload"

    const-string v4, "type"

    if-nez v3, :cond_26

    :try_start_8
    const-string v3, "market"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_b

    .line 186
    :cond_17
    const-string v3, "supportChanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "angra-admin:refreshTickets"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xyron/game/main/PhoneApps;->publishTablet(Lorg/json/JSONObject;)V

    return-void

    .line 187
    :cond_18
    const-string v3, "adminInit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->tabletKind:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/PhoneApps;->closeTablet()V

    :cond_19
    iput-object v8, v1, Lcom/xyron/game/main/PhoneApps;->tabletKind:Ljava/lang/String;

    iput-object v2, v1, Lcom/xyron/game/main/PhoneApps;->adminSession:Lorg/json/JSONObject;

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/PhoneApps;->openTablet()V

    return-void

    .line 188
    :cond_1a
    const-string v3, "adminData"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "adminResult"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "adminTeam"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "adminState"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_9

    .line 192
    :cond_1b
    const-string v3, "bankUpdate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    const-string v7, "otherId"

    const-string v8, "title"

    const-string v9, "id"

    const-string v10, "amount"

    if-eqz v3, :cond_1d

    :try_start_9
    iget-boolean v3, v1, Lcom/xyron/game/main/PhoneApps;->bankVisible:Z

    if-eqz v3, :cond_1d

    .line 193
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "playerName"

    move-object/from16 v20, v0

    const-string v0, "name"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "account"

    iget-object v11, v1, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v11}, Lcom/xyron/game/main/SAMP;->phoneAccountId()I

    move-result v11

    invoke-virtual {v0, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "playerId"

    iget-object v11, v1, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v11}, Lcom/xyron/game/main/SAMP;->phoneAccountId()I

    move-result v11

    invoke-virtual {v0, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "agency"

    const-string v11, "0001"

    invoke-virtual {v0, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 194
    iget-object v3, v1, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v21, v12

    const-string v12, "bank:init"

    invoke-virtual {v11, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V

    .line 195
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iget v3, v1, Lcom/xyron/game/main/PhoneApps;->bankWire:I

    if-ne v0, v3, :cond_1e

    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->bankRequest:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 196
    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_4

    :cond_1c
    const/4 v0, 0x0

    .line 197
    :goto_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "receipt"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v11, "out"

    invoke-virtual {v3, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v11, "recipientName"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v11, "recipientId"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v11, "note"

    iget-object v12, v1, Lcom/xyron/game/main/PhoneApps;->bankDescription:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 198
    iget-object v11, v1, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v18, v10

    const-string v10, "bank:transfer:result"

    invoke-virtual {v12, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v22, v4

    iget-object v4, v1, Lcom/xyron/game/main/PhoneApps;->bankRequest:Ljava/lang/String;

    invoke-virtual {v12, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "transaction"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V

    .line 199
    const-string v0, ""

    iput-object v0, v1, Lcom/xyron/game/main/PhoneApps;->bankRequest:Ljava/lang/String;

    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v4}, Lcom/xyron/game/main/SAMP;->nextAngraBankRequest()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|1|0|0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    goto :goto_5

    :cond_1d
    move-object/from16 v20, v0

    :cond_1e
    move-object/from16 v22, v4

    move-object/from16 v18, v10

    .line 202
    :goto_5
    const-string v0, "bankHistory"

    move-object/from16 v3, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-boolean v0, v1, Lcom/xyron/game/main/PhoneApps;->bankVisible:Z

    if-eqz v0, :cond_2d

    .line 203
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "rows"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x0

    :goto_6
    if-eqz v2, :cond_21

    .line 204
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_21

    .line 205
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 206
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ANGRA-"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "otherName"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_1f
    const-string v6, "otherName"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_7
    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "note"

    const-string v10, "noteHex"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/xyron/game/main/PhoneApps;->unhex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "incoming"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "in"

    goto :goto_8

    :cond_20
    const-string v6, "out"

    :goto_8
    move-object/from16 v12, v22

    invoke-virtual {v5, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v6, v18

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "date"

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v13, "dd/MM/yyyy HH:mm"

    const-string v14, "pt-BR"

    invoke-static {v14}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v14

    invoke-direct {v11, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v13, Ljava/util/Date;

    const-string v14, "timestamp"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    move-object/from16 p1, v2

    mul-long v2, v18, v20

    invoke-direct {v13, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p1

    move-object/from16 v18, v6

    move-object/from16 v22, v12

    goto/16 :goto_6

    :cond_21
    move-object/from16 v12, v22

    .line 208
    iget-object v2, v1, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "bank:transactions"

    invoke-virtual {v3, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "transactions"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V

    goto/16 :goto_11

    :cond_22
    :goto_9
    move-object v3, v0

    move-object v12, v4

    .line 189
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "adminState"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v3, "angra-admin:state"

    goto :goto_a

    :cond_23
    const-string v4, "adminTeam"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v3, "angra-admin:team"

    goto :goto_a

    :cond_24
    const-string v4, "adminData"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "angra-admin:data"

    goto :goto_a

    :cond_25
    const-string v3, "angra-admin:result"

    :goto_a
    invoke-virtual {v2, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xyron/game/main/PhoneApps;->publishTablet(Lorg/json/JSONObject;)V

    return-void

    :cond_26
    :goto_b
    move-object v3, v0

    move-object v12, v4

    .line 177
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->adminSession:Lorg/json/JSONObject;

    if-eqz v0, :cond_28

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 178
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x1

    if-ge v0, v4, :cond_27

    const/4 v0, 0x0

    .line 179
    iput-object v0, v1, Lcom/xyron/game/main/PhoneApps;->adminSession:Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->tabletKind:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/PhoneApps;->closeTablet()V

    goto :goto_c

    .line 180
    :cond_27
    iget-object v4, v1, Lcom/xyron/game/main/PhoneApps;->adminSession:Lorg/json/JSONObject;

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-eq v0, v4, :cond_28

    iget-object v4, v1, Lcom/xyron/game/main/PhoneApps;->adminSession:Lorg/json/JSONObject;

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "angra-admin:session"

    invoke-virtual {v0, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v4, v1, Lcom/xyron/game/main/PhoneApps;->adminSession:Lorg/json/JSONObject;

    invoke-virtual {v0, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xyron/game/main/PhoneApps;->publishTablet(Lorg/json/JSONObject;)V

    .line 182
    :cond_28
    :goto_c
    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v2}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V

    .line 183
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->lastSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_29

    iget-object v0, v1, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, v1, Lcom/xyron/game/main/PhoneApps;->lastSettings:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V

    :cond_29
    return-void

    .line 171
    :cond_2a
    :goto_d
    invoke-direct/range {p0 .. p1}, Lcom/xyron/game/main/PhoneApps;->publishGroup(Lorg/json/JSONObject;)V

    return-void

    .line 170
    :cond_2b
    :goto_e
    invoke-direct/range {p0 .. p1}, Lcom/xyron/game/main/PhoneApps;->openGroup(Lorg/json/JSONObject;)V

    return-void

    .line 169
    :cond_2c
    :goto_f
    invoke-direct/range {p0 .. p1}, Lcom/xyron/game/main/PhoneApps;->receiveInlineForm(Lorg/json/JSONObject;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    return-void

    :catch_2
    move-exception v0

    goto :goto_10

    :catch_3
    move-exception v0

    move-object/from16 v17, v4

    .line 210
    :goto_10
    const-string v2, "Invalid server application event"

    move-object/from16 v3, v17

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    :goto_11
    return-void
.end method

.method refreshAudioMix()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->notices:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-virtual {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->refreshAudioMix()V

    return-void
.end method

.method requestIPhone(Ljava/lang/String;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->iphone:Lcom/xyron/game/main/IPhoneBridge;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/IPhoneBridge;->request(Ljava/lang/String;)V

    return-void
.end method

.method requestOpen()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/PhoneApps$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/PhoneApps$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/main/PhoneApps;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method reset()V
    .locals 4

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/xyron/game/main/PhoneApps;->settingsAccount:I

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->openHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xyron/game/main/PhoneApps;->openExpired:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->iphone:Lcom/xyron/game/main/IPhoneBridge;

    invoke-virtual {v1}, Lcom/xyron/game/main/IPhoneBridge;->reset()V

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps;->notices:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-virtual {v1}, Lcom/xyron/game/main/PhoneNoticeBanner;->reset()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xyron/game/main/PhoneApps;->lastSettings:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/xyron/game/main/PhoneApps;->lastPhoneState:Lorg/json/JSONObject;

    iput v0, p0, Lcom/xyron/game/main/PhoneApps;->phoneOpenWire:I

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/xyron/game/main/PhoneApps;->sequence:I

    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneApps;->bankVisible:Z

    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneApps;->marketVisible:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/main/PhoneApps;->bankRequest:Ljava/lang/String;

    iput-object v1, p0, Lcom/xyron/game/main/PhoneApps;->adminSession:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/xyron/game/main/PhoneApps;->closeTablet()V

    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    const-string v3, "phoneReset"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method sendPhone(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 97
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xf0

    if-gt v0, v1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phone|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xyron/game/main/PhoneApps;->sequence:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/xyron/game/main/PhoneApps;->sequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    return-void

    .line 97
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xyron/game/main/PhoneApps;->game:Lcom/xyron/game/main/SAMP;

    const-string p2, "Texto muito longo."

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    return-void
.end method

.method stageSettings(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/xyron/game/main/PhoneApps;->saveLocalSettings(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method stageSettingsPatch(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/xyron/game/main/PhoneApps;->saveLocalSettings(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method stopIncomingSound()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps;->notices:Lcom/xyron/game/main/PhoneNoticeBanner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/PhoneNoticeBanner;->callState(I)V

    return-void
.end method
