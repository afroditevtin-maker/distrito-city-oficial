.class final Lcom/xyron/game/main/InventoryAdapter;
.super Ljava/lang/Object;
.source "InventoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/InventoryAdapter$RequestHandler;
    }
.end annotation


# static fields
.field static final ROOT:Ljava/lang/String; = "file:///android_asset/interfaces/inventario_angra/"


# instance fields
.field private authoritative:Z

.field private final game:Lcom/xyron/game/main/SAMP;

.field private hotbar:Landroid/webkit/WebView;

.field private hotbarReady:Z

.field private hotbarVisible:Z

.field private final hud:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private inventory:Landroid/webkit/WebView;

.field private items:Lorg/json/JSONArray;

.field private final pageAssembler:Lcom/xyron/game/main/InventoryPages;

.field private final preferences:Landroid/content/SharedPreferences;

.field private requestHandler:Lcom/xyron/game/main/InventoryAdapter$RequestHandler;

.field private revision:J

.field private serverRevision:J

.field private state:Lorg/json/JSONObject;

.field private tradeState:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->state:Lorg/json/JSONObject;

    .line 26
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->items:Lorg/json/JSONArray;

    const-wide/16 v0, -0x1

    .line 30
    iput-wide v0, p0, Lcom/xyron/game/main/InventoryAdapter;->serverRevision:J

    .line 73
    new-instance v0, Lcom/xyron/game/main/InventoryPages;

    invoke-direct {v0}, Lcom/xyron/game/main/InventoryPages;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->pageAssembler:Lcom/xyron/game/main/InventoryPages;

    .line 34
    iput-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    .line 35
    iput-object p2, p0, Lcom/xyron/game/main/InventoryAdapter;->hud:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    const-string p2, "angra_inventory_arrangement_v1"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->preferences:Landroid/content/SharedPreferences;

    .line 37
    invoke-direct {p0}, Lcom/xyron/game/main/InventoryAdapter;->createHotbar()V

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/main/InventoryAdapter;)Lcom/xyron/game/main/SAMP;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xyron/game/main/InventoryAdapter;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbarReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/xyron/game/main/InventoryAdapter;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xyron/game/main/InventoryAdapter;->hud:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xyron/game/main/InventoryAdapter;)Landroid/webkit/WebView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbar:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xyron/game/main/InventoryAdapter;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbar:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xyron/game/main/InventoryAdapter;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xyron/game/main/InventoryAdapter;->createHotbar()V

    return-void
.end method

.method private createHotbar()V
    .locals 6

    .line 40
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbar:Landroid/webkit/WebView;

    .line 41
    iget-boolean v1, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbarVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbar:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 43
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbar:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 44
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbar:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 45
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbar:Landroid/webkit/WebView;

    const-string v1, "StarsBridge"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbar:Landroid/webkit/WebView;

    new-instance v1, Lcom/xyron/game/main/InventoryAdapter$1;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/InventoryAdapter$1;-><init>(Lcom/xyron/game/main/InventoryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 57
    iget-object v1, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v0, v0

    const v3, 0x3eb33333    # 0.35f

    mul-float v0, v0, v3

    const/high16 v3, 0x43a50000    # 330.0f

    mul-float v3, v3, v1

    .line 58
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 59
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    int-to-float v4, v0

    const/high16 v5, 0x42ac0000    # 86.0f

    mul-float v4, v4, v5

    const/high16 v5, 0x43f60000    # 492.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v3, v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 60
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    const/high16 v0, 0x42280000    # 42.0f

    mul-float v1, v1, v0

    .line 61
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 62
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->hud:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbar:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbar:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/interfaces/inventario_angra/hotbar.html"

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private emit(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    const-string/jumbo v0, "window.StarsNative&&window.StarsNative.emit("

    if-eqz p1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "payload"

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    .line 126
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private findItem(I)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/xyron/game/main/InventoryAdapter;->items:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/InventoryAdapter;->items:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    const-string v2, "itemId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    const-string v2, "quantity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private notifyUnavailable(Ljava/lang/String;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private quickSlots()Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/xyron/game/main/InventoryAdapter;->preferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "quick_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/xyron/game/main/InventoryAdapter;->findItem(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 119
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "slot"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method attach(Landroid/webkit/WebView;)V
    .locals 1

    .line 65
    iput-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->inventory:Landroid/webkit/WebView;

    const-string v0, "StarsBridge"

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbarReady:Z

    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbar:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbar:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method synthetic lambda$postMessage$0$com-xyron-game-main-InventoryAdapter(Ljava/lang/String;)V
    .locals 10

    .line 147
    const-string v0, "slot"

    .line 0
    const-string v1, "quick_"

    .line 147
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "action"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    const-string v4, "close"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "trade-cancel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 149
    :cond_0
    const-string v4, "hotbar-open-inventory"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->showInventoryOverlay()V

    return-void

    .line 150
    :cond_1
    const-string v4, "-ready"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "-refresh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    .line 151
    :cond_2
    const-string v4, "quickSlot"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "itemId"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 152
    const-string v7, "hotbar-bind"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    const-string v9, "hotbar-remove"

    if-nez v7, :cond_c

    :try_start_1
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_1

    .line 157
    :cond_3
    const-string v1, "inventory-move"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "weaponId"

    if-eqz v1, :cond_7

    :try_start_2
    iget-boolean v1, p0, Lcom/xyron/game/main/InventoryAdapter;->authoritative:Z

    if-nez v1, :cond_7

    .line 158
    invoke-direct {p0, v6}, Lcom/xyron/game/main/InventoryAdapter;->findItem(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "toSlot"

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_6

    if-ltz v1, :cond_6

    const/16 v2, 0x2a

    if-ge v1, v2, :cond_6

    .line 160
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 161
    :goto_0
    iget-object v3, p0, Lcom/xyron/game/main/InventoryAdapter;->items:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, "weapon_slot_"

    if-ge v8, v3, :cond_5

    :try_start_3
    iget-object v3, p0, Lcom/xyron/game/main/InventoryAdapter;->items:Lorg/json/JSONArray;

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eq v3, p1, :cond_4

    .line 162
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v1, :cond_4

    .line 163
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/xyron/game/main/InventoryAdapter;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 166
    :cond_5
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->state:Lorg/json/JSONObject;

    const-string v2, "revision"

    iget-wide v6, p0, Lcom/xyron/game/main/InventoryAdapter;->revision:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/xyron/game/main/InventoryAdapter;->revision:J

    invoke-virtual {v0, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 167
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    :cond_6
    invoke-virtual {p0}, Lcom/xyron/game/main/InventoryAdapter;->publish()V

    return-void

    .line 171
    :cond_7
    iget-boolean v0, p0, Lcom/xyron/game/main/InventoryAdapter;->authoritative:Z

    if-nez v0, :cond_8

    const-string v0, "hotbar-store-weapons"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1, v8}, Lcom/xyron/game/main/SAMP;->selectInventoryWeapon(I)V

    invoke-virtual {p0}, Lcom/xyron/game/main/InventoryAdapter;->publish()V

    return-void

    .line 172
    :cond_8
    iget-boolean v0, p0, Lcom/xyron/game/main/InventoryAdapter;->authoritative:Z

    if-nez v0, :cond_a

    const-string v0, "hotbar-use"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "inventory-action"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "use"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 173
    :cond_9
    invoke-direct {p0, v6}, Lcom/xyron/game/main/InventoryAdapter;->findItem(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 174
    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->selectInventoryWeapon(I)V

    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlay()V

    invoke-virtual {p0}, Lcom/xyron/game/main/InventoryAdapter;->publish()V

    return-void

    .line 177
    :cond_a
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->requestHandler:Lcom/xyron/game/main/InventoryAdapter$RequestHandler;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/xyron/game/main/InventoryAdapter$RequestHandler;->request(Ljava/lang/String;)V

    goto :goto_4

    .line 178
    :cond_b
    const-string p1, "Esta a\u00e7\u00e3o n\u00e3o est\u00e1 dispon\u00edvel. Seus itens continuam na mochila."

    invoke-direct {p0, p1}, Lcom/xyron/game/main/InventoryAdapter;->notifyUnavailable(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xyron/game/main/InventoryAdapter;->publish()V

    goto :goto_4

    :cond_c
    :goto_1
    if-ltz v4, :cond_f

    const/4 p1, 0x5

    if-ge v4, p1, :cond_f

    .line 153
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-direct {p0, v6}, Lcom/xyron/game/main/InventoryAdapter;->findItem(I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 154
    :cond_d
    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v6, 0x0

    :cond_e
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    :cond_f
    invoke-virtual {p0}, Lcom/xyron/game/main/InventoryAdapter;->publish()V

    return-void

    .line 150
    :cond_10
    :goto_2
    invoke-virtual {p0}, Lcom/xyron/game/main/InventoryAdapter;->publish()V

    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->requestHandler:Lcom/xyron/game/main/InventoryAdapter$RequestHandler;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Lcom/xyron/game/main/InventoryAdapter$RequestHandler;->request(Ljava/lang/String;)V

    :cond_11
    return-void

    .line 148
    :cond_12
    :goto_3
    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlay()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 179
    :catch_0
    const-string p1, "N\u00e3o foi poss\u00edvel processar a a\u00e7\u00e3o do invent\u00e1rio."

    invoke-direct {p0, p1}, Lcom/xyron/game/main/InventoryAdapter;->notifyUnavailable(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method operation(Lorg/json/JSONObject;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->inventory:Landroid/webkit/WebView;

    const-string v1, "inventory:operation"

    invoke-direct {p0, v0, v1, p1}, Lcom/xyron/game/main/InventoryAdapter;->emit(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/InventoryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/InventoryAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/InventoryAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method publish()V
    .locals 4

    .line 131
    const-string v0, "hotbar:update"

    const-string v1, "items"

    :try_start_0
    iget-object v2, p0, Lcom/xyron/game/main/InventoryAdapter;->state:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/xyron/game/main/InventoryAdapter;->items:Lorg/json/JSONArray;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "capacity"

    const/16 v3, 0x2a

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "revision"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/xyron/game/main/InventoryAdapter;->state:Lorg/json/JSONObject;

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->lerNomeDoPlayer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/xyron/game/main/InventoryAdapter;->state:Lorg/json/JSONObject;

    const-string v3, "playerName"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/xyron/game/main/InventoryAdapter;->state:Lorg/json/JSONObject;

    const-string v2, "civilStatus"

    iget-object v3, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v3}, Lcom/xyron/game/main/SAMP;->civilStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "spouse"

    iget-object v3, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v3}, Lcom/xyron/game/main/SAMP;->spouseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "levelProgress"

    iget-object v3, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v3}, Lcom/xyron/game/main/SAMP;->levelProgress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    iget-object v1, p0, Lcom/xyron/game/main/InventoryAdapter;->inventory:Landroid/webkit/WebView;

    const-string v2, "inventory:update"

    iget-object v3, p0, Lcom/xyron/game/main/InventoryAdapter;->state:Lorg/json/JSONObject;

    invoke-direct {p0, v1, v2, v3}, Lcom/xyron/game/main/InventoryAdapter;->emit(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 136
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "slots"

    invoke-direct {p0}, Lcom/xyron/game/main/InventoryAdapter;->quickSlots()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/xyron/game/main/InventoryAdapter;->inventory:Landroid/webkit/WebView;

    invoke-direct {p0, v2, v0, v1}, Lcom/xyron/game/main/InventoryAdapter;->emit(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 138
    iget-boolean v2, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbarReady:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbar:Landroid/webkit/WebView;

    invoke-direct {p0, v2, v0, v1}, Lcom/xyron/game/main/InventoryAdapter;->emit(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->tradeState:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/xyron/game/main/InventoryAdapter;->inventory:Landroid/webkit/WebView;

    const-string v2, "trade:update"

    invoke-direct {p0, v1, v2, v0}, Lcom/xyron/game/main/InventoryAdapter;->emit(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method resetServerSession()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->pageAssembler:Lcom/xyron/game/main/InventoryPages;

    invoke-virtual {v0}, Lcom/xyron/game/main/InventoryPages;->reset()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xyron/game/main/InventoryAdapter;->serverRevision:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xyron/game/main/InventoryAdapter;->authoritative:Z

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->items:Lorg/json/JSONArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->tradeState:Lorg/json/JSONObject;

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->state:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/xyron/game/main/InventoryAdapter;->publish()V

    return-void
.end method

.method setRequestHandler(Lcom/xyron/game/main/InventoryAdapter$RequestHandler;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->requestHandler:Lcom/xyron/game/main/InventoryAdapter$RequestHandler;

    return-void
.end method

.method setVisible(Z)V
    .locals 1

    .line 66
    iput-boolean p1, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbarVisible:Z

    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->hotbar:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method updateInventory(Ljava/lang/String;)V
    .locals 10

    .line 75
    const-string v0, "confirmed"

    const-string v1, "revision"

    const-string v2, "items"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/json/JSONArray;

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    iget-wide v4, p0, Lcom/xyron/game/main/InventoryAdapter;->serverRevision:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 77
    iget-wide v8, p0, Lcom/xyron/game/main/InventoryAdapter;->serverRevision:J

    cmp-long p1, v4, v8

    if-gez p1, :cond_1

    return-void

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->pageAssembler:Lcom/xyron/game/main/InventoryPages;

    invoke-virtual {p1, v3}, Lcom/xyron/game/main/InventoryPages;->accept(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 79
    :cond_2
    iput-wide v4, p0, Lcom/xyron/game/main/InventoryAdapter;->serverRevision:J

    .line 80
    iget-wide v3, p0, Lcom/xyron/game/main/InventoryAdapter;->revision:J

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/xyron/game/main/InventoryAdapter;->revision:J

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 81
    iput-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->state:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/xyron/game/main/InventoryAdapter;->items:Lorg/json/JSONArray;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xyron/game/main/InventoryAdapter;->authoritative:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/xyron/game/main/InventoryAdapter;->publish()V

    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->state:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    const-string p1, "Dados inv\u00e1lidos do invent\u00e1rio."

    invoke-direct {p0, p1}, Lcom/xyron/game/main/InventoryAdapter;->notifyUnavailable(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method updateTrade(Ljava/lang/String;)V
    .locals 2

    .line 86
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xyron/game/main/InventoryAdapter;->tradeState:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->inventory:Landroid/webkit/WebView;

    const-string v1, "trade:update"

    invoke-direct {p0, p1, v1, v0}, Lcom/xyron/game/main/InventoryAdapter;->emit(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    const-string p1, "Dados inv\u00e1lidos da troca."

    invoke-direct {p0, p1}, Lcom/xyron/game/main/InventoryAdapter;->notifyUnavailable(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method updateWeapons(Ljava/lang/String;)V
    .locals 11

    .line 90
    iget-boolean v0, p0, Lcom/xyron/game/main/InventoryAdapter;->authoritative:Z

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/16 v1, 0x2a

    .line 93
    new-array v2, v1, [Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 94
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 95
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 96
    :cond_1
    const-string v6, "id"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_6

    const/16 v8, 0x2e

    if-le v6, v8, :cond_2

    goto/16 :goto_2

    .line 97
    :cond_2
    iget-object v8, p0, Lcom/xyron/game/main/InventoryAdapter;->preferences:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "weapon_slot_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_3

    if-ge v7, v1, :cond_3

    .line 98
    aget-boolean v8, v2, v7

    if-eqz v8, :cond_4

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_4

    aget-boolean v8, v2, v7

    if-eqz v8, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    if-lt v7, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v8, 0x1

    .line 100
    aput-boolean v8, v2, v7

    .line 101
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "slot"

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "itemId"

    add-int/lit16 v10, v6, 0x2328

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "weaponId"

    invoke-virtual {v7, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "quantity"

    .line 102
    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "name"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Arma "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \u2022 "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "ammo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " muni\u00e7\u00f5es"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 101
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 104
    :cond_7
    iput-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->items:Lorg/json/JSONArray;

    .line 105
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "capacity"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "items"

    iget-object v1, p0, Lcom/xyron/game/main/InventoryAdapter;->items:Lorg/json/JSONArray;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "revision"

    iget-wide v1, p0, Lcom/xyron/game/main/InventoryAdapter;->revision:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/xyron/game/main/InventoryAdapter;->revision:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "playerName"

    iget-object v1, p0, Lcom/xyron/game/main/InventoryAdapter;->game:Lcom/xyron/game/main/SAMP;

    .line 106
    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->lerNomeDoPlayer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/main/InventoryAdapter;->state:Lorg/json/JSONObject;

    .line 107
    invoke-virtual {p0}, Lcom/xyron/game/main/InventoryAdapter;->publish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
