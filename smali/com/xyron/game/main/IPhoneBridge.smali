.class final Lcom/xyron/game/main/IPhoneBridge;
.super Ljava/lang/Object;
.source "IPhoneBridge.java"


# instance fields
.field private final apps:Lcom/xyron/game/main/PhoneApps;

.field private document:Ljava/lang/String;

.field private final game:Lcom/xyron/game/main/SAMP;

.field private protocol:I

.field private final services:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/xyron/game/main/PhoneServiceChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;Lcom/xyron/game/main/PhoneApps;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/IPhoneBridge;->services:Ljava/util/LinkedHashMap;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/main/IPhoneBridge;->document:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/xyron/game/main/IPhoneBridge;->game:Lcom/xyron/game/main/SAMP;

    iput-object p2, p0, Lcom/xyron/game/main/IPhoneBridge;->apps:Lcom/xyron/game/main/PhoneApps;

    return-void
.end method

.method private service(Ljava/lang/String;)Lcom/xyron/game/main/PhoneServiceChannel;
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/xyron/game/main/IPhoneBridge;->services:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xyron/game/main/PhoneServiceChannel;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/xyron/game/main/PhoneServiceChannel;

    iget-object v1, p0, Lcom/xyron/game/main/IPhoneBridge;->game:Lcom/xyron/game/main/SAMP;

    iget-object v2, p0, Lcom/xyron/game/main/IPhoneBridge;->apps:Lcom/xyron/game/main/PhoneApps;

    invoke-direct {v0, v1, v2}, Lcom/xyron/game/main/PhoneServiceChannel;-><init>(Lcom/xyron/game/main/SAMP;Lcom/xyron/game/main/PhoneApps;)V

    iget v1, p0, Lcom/xyron/game/main/IPhoneBridge;->protocol:I

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->protocol(I)V

    iget-object v1, p0, Lcom/xyron/game/main/IPhoneBridge;->services:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method hasPending()Z
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/xyron/game/main/IPhoneBridge;->services:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xyron/game/main/PhoneServiceChannel;

    invoke-virtual {v1}, Lcom/xyron/game/main/PhoneServiceChannel;->hasPending()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$request$0$com-xyron-game-main-IPhoneBridge(Ljava/lang/String;)V
    .locals 7

    .line 28
    const-string v0, "document"

    const-string v1, "id"

    const/4 v2, 0x0

    .line 30
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x50

    if-gt v4, v5, :cond_4

    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/xyron/game/main/IPhoneBridge;->document:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 35
    iget-object v4, p0, Lcom/xyron/game/main/IPhoneBridge;->services:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xyron/game/main/PhoneServiceChannel;

    invoke-virtual {v5}, Lcom/xyron/game/main/PhoneServiceChannel;->reset()V

    iget v6, p0, Lcom/xyron/game/main/IPhoneBridge;->protocol:I

    invoke-virtual {v5, v6}, Lcom/xyron/game/main/PhoneServiceChannel;->protocol(I)V

    goto :goto_0

    .line 36
    :cond_1
    iput-object v2, p0, Lcom/xyron/game/main/IPhoneBridge;->document:Ljava/lang/String;

    .line 38
    :cond_2
    iget-object v2, p0, Lcom/xyron/game/main/IPhoneBridge;->apps:Lcom/xyron/game/main/PhoneApps;

    invoke-virtual {v2, v3}, Lcom/xyron/game/main/PhoneApps;->localSettingsRequest(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 39
    :cond_3
    const-string v2, "action"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xyron/game/main/PhoneServiceRoutes;->resource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xyron/game/main/IPhoneBridge;->service(Ljava/lang/String;)Lcom/xyron/game/main/PhoneServiceChannel;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xyron/game/main/PhoneServiceChannel;->request(Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pedido inv\u00e1lido."

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_5

    .line 41
    :try_start_2
    iget-object v3, p0, Lcom/xyron/game/main/IPhoneBridge;->game:Lcom/xyron/game/main/SAMP;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "type"

    const-string v6, "response"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ok"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_5
    :goto_2
    return-void
.end method

.method onWireSent(Ljava/lang/String;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/xyron/game/main/IPhoneBridge;->services:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xyron/game/main/PhoneServiceChannel;

    invoke-virtual {v1, p1}, Lcom/xyron/game/main/PhoneServiceChannel;->onWireSent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protocol(I)V
    .locals 2

    .line 21
    iput p1, p0, Lcom/xyron/game/main/IPhoneBridge;->protocol:I

    iget-object v0, p0, Lcom/xyron/game/main/IPhoneBridge;->services:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xyron/game/main/PhoneServiceChannel;

    invoke-virtual {v1, p1}, Lcom/xyron/game/main/PhoneServiceChannel;->protocol(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method receive(Lorg/json/JSONObject;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/xyron/game/main/IPhoneBridge;->services:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xyron/game/main/PhoneServiceChannel;

    invoke-virtual {v1, p1}, Lcom/xyron/game/main/PhoneServiceChannel;->receive(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method request(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0x9c40

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/IPhoneBridge;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/IPhoneBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/IPhoneBridge$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/IPhoneBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method reset()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/xyron/game/main/IPhoneBridge;->services:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xyron/game/main/PhoneServiceChannel;

    invoke-virtual {v1}, Lcom/xyron/game/main/PhoneServiceChannel;->reset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/IPhoneBridge;->services:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/main/IPhoneBridge;->document:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xyron/game/main/IPhoneBridge;->protocol:I

    return-void
.end method

.method stageSettings(Ljava/lang/String;)Z
    .locals 1

    .line 23
    const-string v0, "settings"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/IPhoneBridge;->service(Ljava/lang/String;)Lcom/xyron/game/main/PhoneServiceChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/PhoneServiceChannel;->stageSettings(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method stageSettingsPatch(Ljava/lang/String;)Z
    .locals 1

    .line 24
    const-string v0, "settings"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/IPhoneBridge;->service(Ljava/lang/String;)Lcom/xyron/game/main/PhoneServiceChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/PhoneServiceChannel;->stageSettingsPatch(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
