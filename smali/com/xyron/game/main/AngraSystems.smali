.class final Lcom/xyron/game/main/AngraSystems;
.super Ljava/lang/Object;
.source "AngraSystems.java"


# instance fields
.field private bankHistory:Lorg/json/JSONObject;

.field private final bankWireIds:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cashShopRequestedAt:J

.field private companyPurchaseSequence:I

.field private disposed:Z

.field private final game:Lcom/xyron/game/main/SAMP;

.field private final handler:Landroid/os/Handler;

.field private loaded:Z

.field private final lockAudio:Lcom/xyron/game/main/VehicleLockAudio;

.field private panel:Ljava/lang/String;

.field private panelOpenedAt:J

.field private final panelTrace:Ljava/lang/Runnable;

.field private final payday:Lcom/xyron/game/main/AngraPaydayOverlay;

.field private petrolOpening:Lorg/json/JSONObject;

.field private pvpConfig:Lorg/json/JSONObject;

.field private pvpConfigPublished:Z

.field private pvpMatchActive:Z

.field private shopOpening:Lorg/json/JSONObject;

.field private state:Lorg/json/JSONObject;

.field private view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xyron/game/main/AngraSystems;->handler:Landroid/os/Handler;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lcom/xyron/game/main/AngraSystems;->cashShopRequestedAt:J

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/AngraSystems;->bankWireIds:Ljava/util/LinkedHashMap;

    .line 39
    new-instance v0, Lcom/xyron/game/main/AngraSystems$1;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/AngraSystems$1;-><init>(Lcom/xyron/game/main/AngraSystems;)V

    iput-object v0, p0, Lcom/xyron/game/main/AngraSystems;->panelTrace:Ljava/lang/Runnable;

    .line 48
    iput-object p1, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v0, Lcom/xyron/game/main/VehicleLockAudio;

    invoke-direct {v0, p1}, Lcom/xyron/game/main/VehicleLockAudio;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v0, p0, Lcom/xyron/game/main/AngraSystems;->lockAudio:Lcom/xyron/game/main/VehicleLockAudio;

    new-instance v0, Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-direct {v0, p1}, Lcom/xyron/game/main/AngraPaydayOverlay;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v0, p0, Lcom/xyron/game/main/AngraSystems;->payday:Lcom/xyron/game/main/AngraPaydayOverlay;

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/main/AngraSystems;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/xyron/game/main/AngraSystems;->disposed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xyron/game/main/AngraSystems;)Landroid/webkit/WebView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xyron/game/main/AngraSystems;)Lorg/json/JSONObject;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xyron/game/main/AngraSystems;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xyron/game/main/AngraSystems;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xyron/game/main/AngraSystems;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xyron/game/main/AngraSystems;)Lcom/xyron/game/main/SAMP;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xyron/game/main/AngraSystems;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/xyron/game/main/AngraSystems;->panelOpenedAt:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/xyron/game/main/AngraSystems;)Landroid/os/Handler;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/xyron/game/main/AngraSystems;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$602(Lcom/xyron/game/main/AngraSystems;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/xyron/game/main/AngraSystems;->loaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/xyron/game/main/AngraSystems;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xyron/game/main/AngraSystems;->publish()V

    return-void
.end method

.method static synthetic access$800(Lcom/xyron/game/main/AngraSystems;)Lorg/json/JSONObject;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/xyron/game/main/AngraSystems;->shopOpening:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xyron/game/main/AngraSystems;)Lorg/json/JSONObject;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/xyron/game/main/AngraSystems;->petrolOpening:Lorg/json/JSONObject;

    return-object p0
.end method

.method private close()V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v1, "passe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "token"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pass|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|0|0|0|0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v2, "tuning"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "|"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tuning|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v4}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|0|0|0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v3, "showroom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "showroom|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|0|0"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_2
    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraSystems;->pvpConfigPublished:Z

    .line 357
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xyron/game/main/AngraSystems;->panelTrace:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 358
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    iput-object v2, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v0}, Lcom/xyron/game/main/SAMP;->setAngraAuthOverlay(Z)V

    .line 359
    :cond_4
    const-string v1, ""

    iput-object v1, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraSystems;->loaded:Z

    iput-object v2, p0, Lcom/xyron/game/main/AngraSystems;->bankHistory:Lorg/json/JSONObject;

    .line 360
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->bankWireIds:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 361
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v0}, Lcom/xyron/game/main/SAMP;->setAngraSystemPanelVisible(Z)V

    return-void
.end method

.method private open(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .line 136
    const-string v0, "premium_shop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->isAngraJailed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    iput-object p2, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/xyron/game/main/AngraSystems;->publish()V

    return-void

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    iput-object p1, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    iput-object p2, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/xyron/game/main/AngraSystems;->loaded:Z

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xyron/game/main/AngraSystems;->panelOpenedAt:J

    .line 140
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlay()V

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "garage"

    if-nez v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "showroom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tuning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlay()V

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/xyron/game/main/SAMP;->setAngraAuthOverlay(Z)V

    .line 143
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v3}, Lcom/xyron/game/main/SAMP;->setAngraSystemPanelVisible(Z)V

    .line 144
    new-instance v1, Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v1, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    .line 145
    const-string v1, "morreu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 146
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 147
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 148
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 151
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 152
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_0
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 153
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    new-instance v3, Lcom/xyron/game/main/AngraSystems$2;

    invoke-direct {v3, p0, p1}, Lcom/xyron/game/main/AngraSystems$2;-><init>(Lcom/xyron/game/main/AngraSystems;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 165
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 166
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 167
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 168
    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 169
    iget-object p2, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    const-string v1, "StarsBridge"

    invoke-virtual {p2, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    new-instance v1, Lcom/xyron/game/main/AngraSystems$3;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/AngraSystems$3;-><init>(Lcom/xyron/game/main/AngraSystems;)V

    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 184
    iget-object p2, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    const v1, 0x1020002

    invoke-virtual {p2, v1}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object p2, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "pvp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "passe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file:///android_asset/interfaces/systems_angra/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".html"

    goto :goto_2

    :cond_8
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file:///android_asset/interfaces/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/index.html"

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->bringToFront()V

    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 187
    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xyron/game/main/AngraSystems;->panelTrace:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private publish()V
    .locals 8

    .line 190
    const-string v0, "payload"

    .line 0
    const-string/jumbo v1, "window.StarsNative&&window.StarsNative.emit("

    .line 190
    iget-boolean v2, p0, Lcom/xyron/game/main/AngraSystems;->loaded:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v3, "passe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ");"

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.AngraPass&&window.AngraPass.receive("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v5, "pvp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->pvpConfig:Lorg/json/JSONObject;

    const-string/jumbo v1, "window.AngraPVP&&window.AngraPVP.receive("

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraSystems;->pvpConfigPublished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->pvpConfig:Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraSystems;->pvpConfigPublished:Z

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 197
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v5, "lojas"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "bank_display"

    if-eqz v2, :cond_4

    :try_start_1
    const-string v2, "store:mode"

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "bank:update"

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v6, "administracao"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "admin:update"

    goto :goto_0

    :cond_6
    const-string v2, "death:update"

    .line 198
    :goto_0
    iget-object v6, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "event"

    if-eqz v5, :cond_7

    :try_start_2
    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "bankUpdate"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    return-void

    .line 199
    :cond_7
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 200
    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v7, "premium_shop"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "shop:update"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 201
    :cond_8
    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v7, "garage"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "garage:update"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 202
    :cond_9
    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v7, "tuning"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "tuning:update"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 203
    :cond_a
    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v7, "showroom"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "showroom:update"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 204
    :cond_b
    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v7, "posto"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "petrolResult"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "petrol:result"

    goto :goto_1

    :cond_c
    const-string v5, "petrol:update"

    :goto_1
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 205
    :cond_d
    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v7, "market_posto"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "petrolMarket:update"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 206
    :cond_e
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 208
    :catch_0
    invoke-direct {p0}, Lcom/xyron/game/main/AngraSystems;->publishHistory()V

    :cond_f
    :goto_2
    return-void
.end method

.method private publishHistory()V
    .locals 4

    const-string/jumbo v0, "window.StarsNative&&window.StarsNative.emit("

    .line 211
    iget-boolean v1, p0, Lcom/xyron/game/main/AngraSystems;->loaded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->bankHistory:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v2, "bank_display"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    const-string v3, "bank:history"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "payload"

    iget-object v3, p0, Lcom/xyron/game/main/AngraSystems;->bankHistory:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private replyInvite(Lorg/json/JSONObject;I)V
    .locals 5

    .line 50
    const-string v0, "expires"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    const-string p2, "Esse convite expirou."

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pvp|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mode"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "gun"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "bet"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "lobby"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "team"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method back()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v1, "showroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v1, "tuning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v1, "passe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    const/4 v0, 0x1

    return v0
.end method

.method closeForSpectating()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    return-void
.end method

.method destroy()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->payday:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraPaydayOverlay;->destroy()V

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->lockAudio:Lcom/xyron/game/main/VehicleLockAudio;

    invoke-virtual {v0}, Lcom/xyron/game/main/VehicleLockAudio;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraSystems;->disposed:Z

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    return-void
.end method

.method synthetic lambda$postMessage$3$com-xyron-game-main-AngraSystems(Ljava/lang/String;)V
    .locals 18

    .line 0
    move-object/from16 v0, p0

    .line 220
    const-string v1, "posto"

    .line 0
    const-string v2, "bank|"

    const-string v3, "storebuy|"

    const-string v4, "rate|"

    const-string v5, "ackwarning|"

    const-string v6, "showroom|"

    const-string v7, "tuning|"

    const-string v8, "pass|"

    .line 220
    iget-boolean v9, v0, Lcom/xyron/game/main/AngraSystems;->disposed:Z

    if-nez v9, :cond_3c

    iget-object v9, v0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    if-nez v9, :cond_0

    goto/16 :goto_6

    .line 222
    :cond_0
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v10, p1

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "action"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 223
    iget-object v11, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v12, "passe"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v13, "|0|0|1|0"

    const-string v14, "value"

    const-string v15, "token"

    const-string v12, "op"

    move-object/from16 v16, v3

    const-string/jumbo v3, "|"

    move-object/from16 v17, v4

    const-string v4, "shop|"

    if-eqz v11, :cond_6

    .line 224
    :try_start_1
    const-string v1, "pass-topup"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v3}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    return-void

    .line 225
    :cond_1
    const-string v1, "pass-request"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 226
    :cond_2
    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v9, v12, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v9, v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "track"

    invoke-virtual {v9, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "page"

    invoke-virtual {v9, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v7, 0x1

    if-lt v1, v7, :cond_5

    if-ltz v4, :cond_5

    const/4 v9, 0x4

    if-gt v4, v9, :cond_5

    if-ltz v5, :cond_5

    const/16 v9, 0x3c

    if-gt v5, v9, :cond_5

    if-ltz v6, :cond_5

    if-gt v6, v7, :cond_5

    if-ltz v2, :cond_5

    const/16 v7, 0x9

    if-le v2, v7, :cond_3

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    return-void

    .line 229
    :cond_4
    iget-object v7, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_5
    :goto_0
    return-void

    .line 231
    :cond_6
    iget-object v8, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v11, "tuning"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "sequence"

    if-eqz v8, :cond_9

    .line 232
    :try_start_2
    const-string v1, "tuning-ready"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->publish()V

    return-void

    .line 233
    :cond_7
    const-string v1, "tuning-request"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    invoke-virtual {v9, v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "field"

    invoke-virtual {v9, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v9, v14, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v1, :cond_8

    if-lez v2, :cond_8

    if-ltz v5, :cond_8

    const/4 v8, 0x3

    if-gt v5, v8, :cond_8

    if-ltz v6, :cond_8

    const/16 v8, 0x13

    if-gt v6, v8, :cond_8

    if-ltz v4, :cond_8

    const v8, 0xffff

    if-gt v4, v8, :cond_8

    iget-object v8, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_8
    return-void

    .line 235
    :cond_9
    iget-object v7, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v8, "showroom"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_d

    .line 236
    const-string v1, "showroom-topup"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v3}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    return-void

    .line 237
    :cond_a
    const-string v1, "showroom-ready"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->publish()V

    return-void

    .line 238
    :cond_b
    const-string v1, "showroom-request"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 239
    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v9, v12, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v9, v14, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-lez v1, :cond_c

    if-lez v5, :cond_c

    if-ltz v2, :cond_c

    const/4 v7, 0x7

    if-gt v2, v7, :cond_c

    if-ltz v4, :cond_c

    const/16 v7, 0x168

    if-gt v4, v7, :cond_c

    .line 241
    iget-object v7, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_c
    return-void

    .line 245
    :cond_d
    iget-object v6, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v7, "pvp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 246
    const-string v6, "pvp-close"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "pvp|"

    if-eqz v6, :cond_e

    :try_start_3
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v3}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|6|0|0|0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    return-void

    .line 247
    :cond_e
    const-string v6, "pvp-request"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, -0x1

    .line 248
    invoke-virtual {v9, v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "mode"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "gun"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "bet"

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v5, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    if-ltz v1, :cond_15

    const/16 v10, 0xd

    if-gt v1, v10, :cond_15

    const/4 v10, 0x2

    if-eq v2, v10, :cond_f

    const/4 v10, 0x4

    if-eq v2, v10, :cond_f

    const/16 v10, 0x8

    if-ne v2, v10, :cond_15

    :cond_f
    if-ltz v4, :cond_15

    const/16 v10, 0x2e

    if-gt v4, v10, :cond_15

    .line 249
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_15

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    if-nez v10, :cond_15

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    cmpl-double v12, v5, v10

    if-nez v12, :cond_15

    const-wide/16 v10, 0x0

    cmpl-double v12, v5, v10

    if-ltz v12, :cond_15

    const-wide v10, 0x412e848000000000L    # 1000000.0

    cmpg-double v12, v5, v10

    if-gtz v12, :cond_15

    .line 250
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v7}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v2, v5

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    if-lt v1, v4, :cond_14

    .line 252
    const-string v4, "lobby"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "team"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "target"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-ltz v4, :cond_13

    if-ltz v5, :cond_13

    const/4 v7, 0x1

    if-gt v5, v7, :cond_13

    .line 253
    const-string v7, "[A-Za-z0-9_\\[\\].()$@=]{0,24}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_2

    .line 254
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v10, v6

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_11

    aget-byte v12, v6, v11

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v14, "%02x"

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 p1, v6

    const/4 v15, 0x1

    new-array v6, v15, [Ljava/lang/Object;

    aput-object v12, v6, v8

    invoke-static {v13, v14, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, p1

    goto :goto_1

    .line 255
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    if-ne v1, v4, :cond_14

    .line 256
    const-string v1, "rounds"

    const/4 v4, 0x3

    invoke-virtual {v9, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_13

    const/4 v4, 0x6

    if-le v1, v4, :cond_12

    goto :goto_2

    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_13
    :goto_2
    return-void

    .line 258
    :cond_14
    :goto_3
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_15
    return-void

    .line 263
    :cond_16
    iget-object v6, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v7, "market_posto"

    if-nez v6, :cond_32

    :try_start_4
    iget-object v6, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    goto/16 :goto_4

    .line 280
    :cond_17
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v6, "garage"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v6, "requestId"

    const-string v7, "id"

    if-eqz v1, :cond_1b

    .line 281
    :try_start_5
    const-string v1, "garage-ready"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->publish()V

    return-void

    .line 282
    :cond_18
    const-string v1, "garage-close"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v2, "garage|"

    if-eqz v1, :cond_19

    :try_start_6
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|5|0"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    return-void

    .line 283
    :cond_19
    const-string v1, "garage-request"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 284
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    invoke-virtual {v9, v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v9, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v1, :cond_1a

    if-ltz v5, :cond_1a

    const/4 v6, 0x5

    if-gt v5, v6, :cond_1a

    if-ltz v4, :cond_1a

    .line 285
    iget-object v6, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_1a
    return-void

    .line 289
    :cond_1b
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v11, "premium_shop"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v11, 0xa

    if-eqz v1, :cond_1f

    .line 290
    const-string v1, "shop-close"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    return-void

    .line 291
    :cond_1c
    const-string v1, "shop-ready"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->publish()V

    return-void

    .line 292
    :cond_1d
    const-string v1, "shop-request"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 293
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v9, v12, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v9, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v6, "count"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "offset"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-lez v1, :cond_1e

    if-ltz v5, :cond_1e

    if-gt v5, v11, :cond_1e

    if-ltz v2, :cond_1e

    if-ltz v6, :cond_1e

    if-gt v6, v11, :cond_1e

    if-ltz v7, :cond_1e

    const v8, 0x186a0

    if-gt v7, v8, :cond_1e

    .line 295
    iget-object v8, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_1e
    return-void

    .line 299
    :cond_1f
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v4, "bank_display"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 300
    const-string v1, "business-taxes"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    const-string v2, "postotax"

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    return-void

    .line 301
    :cond_20
    const-string v1, "close"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    const-string v2, "panelclose"

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    return-void

    .line 302
    :cond_21
    const-string v1, "bank-request"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 303
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v4, "operation"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "targetId"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "amount"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-lez v1, :cond_23

    const/4 v7, 0x1

    if-lt v4, v7, :cond_23

    const/4 v7, 0x7

    if-gt v4, v7, :cond_23

    if-ltz v5, :cond_23

    if-ltz v6, :cond_23

    const v7, 0x3b9aca00

    if-gt v6, v7, :cond_23

    .line 305
    iget-object v7, v0, Lcom/xyron/game/main/AngraSystems;->bankWireIds:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_22

    iget-object v7, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v7}, Lcom/xyron/game/main/SAMP;->nextAngraBankRequest()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/xyron/game/main/AngraSystems;->bankWireIds:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->bankWireIds:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    const/16 v8, 0x80

    if-le v1, v8, :cond_22

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->bankWireIds:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_22
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_23
    return-void

    .line 311
    :cond_24
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v2, "administracao"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 312
    const-string v1, "warning-ack"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    .line 313
    :cond_25
    const-string v1, "rating-submit"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 314
    const-string v1, "stars"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "comment"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x7c

    const/16 v5, 0x20

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    if-lt v1, v4, :cond_26

    const/4 v4, 0x5

    if-gt v1, v4, :cond_26

    .line 315
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x90

    if-gt v4, v5, :cond_26

    iget-object v4, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v6, v17

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_26
    return-void

    .line 319
    :cond_27
    const-string v1, "store-close"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v2, "lojas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 320
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    const-string v2, "panelclose"

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    return-void

    .line 322
    :cond_28
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v2, "lojas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "store-buy"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 323
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    const-string v2, "storeId"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_29

    .line 324
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    const-string v2, "Este estabelecimento ainda n\u00e3o est\u00e1 aberto para compras."

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    return-void

    .line 327
    :cond_29
    const-string v1, "index"

    const/4 v2, -0x1

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_2c

    const/16 v2, 0x40

    if-ge v1, v2, :cond_2c

    .line 329
    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    const-string v4, "storeId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x5f5e100

    if-lt v2, v4, :cond_2b

    .line 332
    iget v2, v0, Lcom/xyron/game/main/AngraSystems;->companyPurchaseSequence:I

    const v4, 0x7fffffff

    if-ne v2, v4, :cond_2a

    return-void

    .line 333
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/xyron/game/main/AngraSystems;->companyPurchaseSequence:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/xyron/game/main/AngraSystems;->companyPurchaseSequence:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    :cond_2b
    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_2c
    return-void

    .line 339
    :cond_2d
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v2, "morreu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 340
    const-string v1, "death-admin-revive"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    const-string v2, "canRevive"

    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    const-string v2, "adminrevive"

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    .line 341
    :cond_2e
    const-string v1, "death-request-medic"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    const-string v2, "medic"

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    .line 342
    :cond_2f
    const-string v1, "death-surrender-confirm"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 343
    const-string v1, "AngraDeath"

    const-string v2, "surrender clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    const-string v2, "surrender"

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    .line 346
    :cond_30
    const-string v1, "death-ready"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->publish()V

    .line 348
    :cond_31
    const-string v1, "store-ready"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->publish()V

    goto/16 :goto_6

    :cond_32
    :goto_4
    const/4 v4, 0x1

    .line 264
    const-string v2, "petrol-close"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v5, "petrol|"

    if-eqz v2, :cond_33

    :try_start_7
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v3}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|3|0|0|0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    return-void

    .line 265
    :cond_33
    const-string v2, "petrol-ready"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->publish()V

    return-void

    .line 266
    :cond_34
    const-string v2, "petrol-page"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 267
    const-string v1, "offset"

    const/4 v2, -0x1

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_35

    const v2, 0x186a0

    if-gt v1, v2, :cond_35

    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v4}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|4|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|0|0"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_35
    return-void

    :cond_36
    const/4 v2, -0x1

    .line 269
    const-string v6, "petrol-fuel"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    iget-object v6, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 270
    const-string v1, "fuelType"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "gasolina"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    const/4 v1, 0x0

    goto :goto_5

    :cond_37
    const-string v6, "etanol"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    const/4 v1, 0x1

    goto :goto_5

    :cond_38
    const-string v4, "diesel"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x2

    goto :goto_5

    :cond_39
    const/4 v1, -0x1

    .line 271
    :goto_5
    const-string v2, "liters"

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-string v2, "payment"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "banco"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ltz v1, :cond_3a

    .line 272
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-nez v4, :cond_3a

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v4, v6, v8

    if-ltz v4, :cond_3a

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    cmpg-double v4, v6, v8

    if-gtz v4, :cond_3a

    iget-object v4, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v5}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|1|"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    mul-double v6, v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_3a
    return-void

    .line 275
    :cond_3b
    const-string v1, "petrol-buy"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 276
    const-string v1, "item"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "amount"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-lez v1, :cond_3c

    const v4, 0xffff

    if-gt v1, v4, :cond_3c

    if-lez v2, :cond_3c

    const/16 v4, 0x64

    if-gt v2, v4, :cond_3c

    iget-object v4, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v5}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|2|"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|0"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    :cond_3c
    :goto_6
    return-void
.end method

.method synthetic lambda$receive$0$com-xyron-game-main-AngraSystems(Lorg/json/JSONObject;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/16 p2, 0x9

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/xyron/game/main/AngraSystems;->replyInvite(Lorg/json/JSONObject;I)V

    return-void
.end method

.method synthetic lambda$receive$1$com-xyron-game-main-AngraSystems(Lorg/json/JSONObject;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/16 p2, 0xa

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/xyron/game/main/AngraSystems;->replyInvite(Lorg/json/JSONObject;I)V

    return-void
.end method

.method synthetic lambda$receive$2$com-xyron-game-main-AngraSystems(Lorg/json/JSONObject;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    const/16 p2, 0xa

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/xyron/game/main/AngraSystems;->replyInvite(Lorg/json/JSONObject;I)V

    return-void
.end method

.method public nextShopRequest()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v0

    return v0
.end method

.method openCashShop()V
    .locals 3

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xyron/game/main/AngraSystems;->cashShopRequestedAt:J

    .line 28
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shop|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|0|0|1|0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    return-void
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_1

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x800

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/xyron/game/main/AngraSystems$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/AngraSystems$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/AngraSystems;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method prisonLock()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v1, "premium_shop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    :cond_0
    return-void
.end method

.method receive(Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 54
    const-string v2, "event"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v7, 0x19

    const/16 v8, 0x18

    const-string v9, "shopOpen"

    const-string v11, "shopWallet"

    const-string v13, "shopResult"

    const-string v14, "tuning"

    const-string v15, "garage"

    const-string v10, "showroom"

    const-string v12, "pvp"

    const/16 v16, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "paydayData"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x21

    const/16 v16, 0x21

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "accountWarning"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x20

    const/16 v16, 0x20

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "vehicleLockSound"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1f

    const/16 v16, 0x1f

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "pvpInvite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v16, 0x1e

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "tabToggle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v16, 0x1d

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "bankHistory"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x1c

    const/16 v16, 0x1c

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "angraPassClose"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x1b

    const/16 v16, 0x1b

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "showroomClose"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x1a

    const/16 v16, 0x1a

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "bankUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v16, 0x19

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "store"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v16, 0x18

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x17

    const/16 v16, 0x17

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "death"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x16

    const/16 v16, 0x16

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "bank"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x15

    const/16 v16, 0x15

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x14

    const/16 v16, 0x14

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "pvpLive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x13

    const/16 v16, 0x13

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x12

    const/16 v16, 0x12

    goto/16 :goto_0

    :sswitch_10
    const-string v4, "shopPage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x11

    const/16 v16, 0x11

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x10

    const/16 v16, 0x10

    goto/16 :goto_0

    :sswitch_12
    const-string v4, "shopOdds"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0xf

    const/16 v16, 0xf

    goto/16 :goto_0

    :sswitch_13
    const-string v4, "shopTestDrive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0xe

    const/16 v16, 0xe

    goto/16 :goto_0

    :sswitch_14
    const-string v4, "angraPass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0xd

    const/16 v16, 0xd

    goto/16 :goto_0

    :sswitch_15
    const-string v4, "tuningClose"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0xc

    const/16 v16, 0xc

    goto/16 :goto_0

    :sswitch_16
    const-string v4, "garageClose"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0xb

    const/16 v16, 0xb

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0xa

    const/16 v16, 0xa

    goto/16 :goto_0

    :sswitch_18
    const-string v4, "rating"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x9

    const/16 v16, 0x9

    goto/16 :goto_0

    :sswitch_19
    const-string v4, "petrol"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v16, 0x8

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x7

    const/16 v16, 0x7

    goto :goto_0

    :sswitch_1b
    const-string v4, "petrolResult"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v3, 0x6

    const/16 v16, 0x6

    goto :goto_0

    :sswitch_1c
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_0

    :cond_1c
    const/16 v16, 0x5

    goto :goto_0

    :sswitch_1d
    const-string v4, "adminPanelClose"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v3, 0x4

    const/16 v16, 0x4

    goto :goto_0

    :sswitch_1e
    const-string v4, "petrolMarket"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v3, 0x3

    const/16 v16, 0x3

    goto :goto_0

    :sswitch_1f
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_0

    :cond_1f
    const/16 v16, 0x2

    goto :goto_0

    :sswitch_20
    const-string v4, "pvpClose"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_0

    :cond_20
    const/16 v16, 0x1

    goto :goto_0

    :sswitch_21
    const-string v4, "spawned"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_0

    :cond_21
    const/16 v16, 0x0

    :goto_0
    const-string v3, "bank_display"

    const-string v4, "passe"

    const-string v5, "premium_shop"

    const-string v6, "morreu"

    packed-switch v16, :pswitch_data_0

    goto/16 :goto_5

    .line 55
    :pswitch_0
    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->payday:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-virtual {v2, v1}, Lcom/xyron/game/main/AngraPaydayOverlay;->show(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 62
    :pswitch_1
    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->lockAudio:Lcom/xyron/game/main/VehicleLockAudio;

    invoke-virtual {v2, v1}, Lcom/xyron/game/main/VehicleLockAudio;->play(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 64
    :pswitch_2
    const-string v2, "expires"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_22

    goto/16 :goto_5

    .line 65
    :cond_22
    const-string v2, "MP5"

    const-string v3, "AK-47"

    const-string v4, "Desert Eagle"

    const-string v5, "M4"

    const-string v6, "Shotgun"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f

    const/16 v4, 0x1e

    const/16 v5, 0x1d

    .line 66
    filled-new-array {v8, v3, v7, v5, v4}, [I

    move-result-object v3

    .line 67
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x5

    :goto_1
    if-ge v5, v6, :cond_24

    const-string v7, "gun"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    aget v8, v3, v5

    if-ne v7, v8, :cond_23

    aget-object v4, v2, v5

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 68
    :cond_24
    new-instance v2, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    iget-object v3, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v2, v3}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string v3, "Convite para PVP"

    invoke-virtual {v2, v3}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "owner"

    .line 69
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " convidou voc\u00ea para "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "mode"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "v"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "mode"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    div-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".\nEquipe "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v5, "team"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_25

    const-string v5, "A"

    goto :goto_2

    :cond_25
    const-string v5, "B"

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u00b7 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nAposta por participante: R$ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "bet"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nA cobran\u00e7a ocorre somente quando todos aceitarem. Abandono durante o combate n\u00e3o devolve a aposta."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object v2

    new-instance v3, Lcom/xyron/game/main/AngraSystems$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lcom/xyron/game/main/AngraSystems$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/AngraSystems;Lorg/json/JSONObject;)V

    .line 72
    const-string v4, "Aceitar condi\u00e7\u00f5es"

    invoke-virtual {v2, v4, v3}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object v2

    new-instance v3, Lcom/xyron/game/main/AngraSystems$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1}, Lcom/xyron/game/main/AngraSystems$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/AngraSystems;Lorg/json/JSONObject;)V

    .line 73
    const-string v4, "Recusar"

    invoke-virtual {v2, v4, v3}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object v2

    new-instance v3, Lcom/xyron/game/main/AngraSystems$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1}, Lcom/xyron/game/main/AngraSystems$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/main/AngraSystems;Lorg/json/JSONObject;)V

    .line 74
    invoke-virtual {v2, v3}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_5

    .line 61
    :pswitch_3
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    const-string v2, "/__angratab"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendCommandV([B)V

    goto/16 :goto_5

    .line 118
    :pswitch_4
    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iput-object v1, v0, Lcom/xyron/game/main/AngraSystems;->bankHistory:Lorg/json/JSONObject;

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->publishHistory()V

    goto/16 :goto_5

    .line 60
    :pswitch_5
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    goto/16 :goto_5

    .line 113
    :pswitch_6
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    goto/16 :goto_5

    .line 115
    :pswitch_7
    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 116
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->bankWireIds:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "requestId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_26

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    const-string v2, "requestId"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->publish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_5

    .line 109
    :pswitch_8
    const-string v2, "lojas"

    invoke-direct {v0, v2, v1}, Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 128
    :pswitch_9
    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "dead"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "dead"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "awaitingSpawn"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    goto/16 :goto_5

    :pswitch_a
    const/4 v3, 0x1

    .line 122
    iget-boolean v2, v0, Lcom/xyron/game/main/AngraSystems;->pvpMatchActive:Z

    if-eqz v2, :cond_28

    const-string v2, "visible"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_28

    goto/16 :goto_5

    .line 123
    :cond_28
    const-string v2, "visible"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    goto/16 :goto_5

    .line 124
    :cond_29
    invoke-direct {v0, v6, v1}, Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 114
    :pswitch_b
    invoke-direct {v0, v3, v1}, Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 77
    :pswitch_c
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "config"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iput-object v1, v0, Lcom/xyron/game/main/AngraSystems;->pvpConfig:Lorg/json/JSONObject;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xyron/game/main/AngraSystems;->pvpConfigPublished:Z

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->publish()V

    goto/16 :goto_5

    .line 78
    :cond_2a
    const-string v2, "matchId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "phase"

    if-lez v2, :cond_2b

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2b

    const/4 v5, 0x1

    goto :goto_3

    :cond_2b
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, v0, Lcom/xyron/game/main/AngraSystems;->pvpMatchActive:Z

    if-eqz v5, :cond_2c

    .line 79
    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    .line 80
    :cond_2c
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2e

    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    :cond_2d
    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2, v1}, Lcom/xyron/game/main/SAMP;->showPvpCountdown(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 81
    :cond_2e
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2, v1}, Lcom/xyron/game/main/SAMP;->showPvpScoreboard(Lorg/json/JSONObject;)V

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    goto/16 :goto_5

    .line 82
    :cond_2f
    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2}, Lcom/xyron/game/main/SAMP;->hidePvpScoreboard()V

    invoke-direct {v0, v12, v1}, Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 83
    :pswitch_d
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    goto/16 :goto_5

    .line 112
    :pswitch_e
    invoke-direct {v0, v10, v1}, Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 91
    :pswitch_f
    iget-wide v2, v0, Lcom/xyron/game/main/AngraSystems;->cashShopRequestedAt:J

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-ltz v4, :cond_30

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v0, Lcom/xyron/game/main/AngraSystems;->cashShopRequestedAt:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x2710

    cmp-long v4, v2, v6

    if-gez v4, :cond_30

    :try_start_1
    const-string v2, "openReais"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_30
    const-wide/16 v2, -0x1

    .line 92
    iput-wide v2, v0, Lcom/xyron/game/main/AngraSystems;->cashShopRequestedAt:J

    iput-object v1, v0, Lcom/xyron/game/main/AngraSystems;->shopOpening:Lorg/json/JSONObject;

    invoke-direct {v0, v5, v1}, Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 94
    :pswitch_10
    const-string v2, "active"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 95
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    if-eqz v1, :cond_31

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 96
    :cond_31
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->setAngraAuthOverlay(Z)V

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->setAngraSystemPanelVisible(Z)V

    goto/16 :goto_5

    :cond_32
    const/4 v2, 0x0

    .line 97
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    if-eqz v1, :cond_33

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 98
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->bringToFront()V

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 99
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->setAngraAuthOverlay(Z)V

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->setAngraSystemPanelVisible(Z)V

    goto/16 :goto_5

    :cond_33
    const/4 v2, 0x1

    .line 100
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->shopOpening:Lorg/json/JSONObject;

    if-eqz v1, :cond_38

    :try_start_2
    const-string v3, "restoreSelection"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->shopOpening:Lorg/json/JSONObject;

    invoke-direct {v0, v5, v1}, Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 57
    :pswitch_11
    const-string v2, "open"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-direct {v0, v4, v1}, Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 58
    :cond_34
    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iput-object v1, v0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->publish()V

    goto/16 :goto_5

    .line 111
    :pswitch_12
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    goto/16 :goto_5

    .line 89
    :pswitch_13
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    goto/16 :goto_5

    .line 110
    :pswitch_14
    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, ""

    iput-object v2, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    :cond_35
    invoke-direct {v0, v14, v1}, Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 119
    :pswitch_15
    const-string v2, "administracao"

    invoke-direct {v0, v2, v1}, Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 85
    :pswitch_16
    iput-object v1, v0, Lcom/xyron/game/main/AngraSystems;->petrolOpening:Lorg/json/JSONObject;

    const-string v2, "posto"

    invoke-direct {v0, v2, v1}, Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 86
    :pswitch_17
    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v3, "posto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iput-object v1, v0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->publish()V

    goto/16 :goto_5

    .line 103
    :pswitch_18
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 104
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v0, Lcom/xyron/game/main/AngraSystems;->shopOpening:Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    nop

    .line 106
    :cond_36
    :goto_4
    iget-object v3, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iput-object v1, v0, Lcom/xyron/game/main/AngraSystems;->state:Lorg/json/JSONObject;

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->publish()V

    goto :goto_5

    .line 107
    :cond_37
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    const-string v3, "message"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    goto :goto_5

    .line 120
    :pswitch_19
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    const-string v2, "administracao"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    goto :goto_5

    .line 87
    :pswitch_1a
    const-string v2, "market_posto"

    invoke-direct {v0, v2, v1}, Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 88
    :pswitch_1b
    invoke-direct {v0, v15, v1}, Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    :pswitch_1c
    const/4 v1, 0x0

    .line 84
    iput-boolean v1, v0, Lcom/xyron/game/main/AngraSystems;->pvpMatchActive:Z

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->hidePvpScoreboard()V

    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    goto :goto_5

    .line 126
    :pswitch_1d
    iget-object v1, v0, Lcom/xyron/game/main/AngraSystems;->panel:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraSystems;->close()V

    :catch_3
    :cond_38
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77e5f2a6 -> :sswitch_21
        -0x685b5b12 -> :sswitch_20
        -0x4ab0a4d9 -> :sswitch_1f
        -0x47977b54 -> :sswitch_1e
        -0x46a830fd -> :sswitch_1d
        -0x4626014d -> :sswitch_1c
        -0x3ed64773 -> :sswitch_1b
        -0x3dd97571 -> :sswitch_1a
        -0x3b1b7fb0 -> :sswitch_19
        -0x37ea4e63 -> :sswitch_18
        -0x3369814b -> :sswitch_17
        -0x2c7e8cef -> :sswitch_16
        -0x2377a7bd -> :sswitch_15
        -0x1ea99ac6 -> :sswitch_14
        -0x1c10563e -> :sswitch_13
        -0x149722c6 -> :sswitch_12
        -0x1496f5a0 -> :sswitch_11
        -0x1496b95b -> :sswitch_10
        -0x14246aa8 -> :sswitch_f
        -0xb9bccca -> :sswitch_e
        0x1b32a -> :sswitch_d
        0x2e063c -> :sswitch_c
        0x5b09274 -> :sswitch_b
        0x68ac491 -> :sswitch_a
        0x68af8e1 -> :sswitch_9
        0x86c8e25 -> :sswitch_8
        0x2126ef80 -> :sswitch_7
        0x44bcbcde -> :sswitch_6
        0x4a5e3ab8 -> :sswitch_5
        0x611aa349 -> :sswitch_4
        0x674c46d3 -> :sswitch_3
        0x6d2578d8 -> :sswitch_2
        0x6dd060af -> :sswitch_1
        0x7dbc7bbe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_18
        :pswitch_f
        :pswitch_18
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_15
        :pswitch_0
    .end packed-switch
.end method

.method resetAudio()V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->lockAudio:Lcom/xyron/game/main/VehicleLockAudio;

    invoke-virtual {v0}, Lcom/xyron/game/main/VehicleLockAudio;->reset()V

    return-void
.end method

.method resetPayday()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems;->payday:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraPaydayOverlay;->reset()V

    return-void
.end method
