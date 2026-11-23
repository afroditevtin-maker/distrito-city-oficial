.class final Lcom/xyron/game/main/AngraServerBridge$Auth;
.super Ljava/lang/Object;
.source "AngraServerBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/AngraServerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Auth"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AngraServerBridge;


# direct methods
.method private constructor <init>(Lcom/xyron/game/main/AngraServerBridge;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xyron/game/main/AngraServerBridge;Lcom/xyron/game/main/AngraServerBridge$1;)V
    .locals 0

    .line 530
    invoke-direct {p0, p1}, Lcom/xyron/game/main/AngraServerBridge$Auth;-><init>(Lcom/xyron/game/main/AngraServerBridge;)V

    return-void
.end method

.method static synthetic lambda$muteLoadingMusic$0(Z)V
    .locals 0

    .line 538
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->setMusicMuted(Z)V

    return-void
.end method


# virtual methods
.method public dismissKeyboard()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v0}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/AngraServerBridge$Auth$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/AngraServerBridge$Auth$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/AngraServerBridge$Auth;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$dismissKeyboard$1$com-xyron-game-main-AngraServerBridge$Auth()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v0}, Lcom/xyron/game/main/AngraServerBridge;->access$200(Lcom/xyron/game/main/AngraServerBridge;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v0}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 544
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v1}, Lcom/xyron/game/main/AngraServerBridge;->access$200(Lcom/xyron/game/main/AngraServerBridge;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method synthetic lambda$postMessage$2$com-xyron-game-main-AngraServerBridge$Auth(Ljava/lang/String;)V
    .locals 13

    .line 551
    const-string v0, "password"

    const-string v1, "auth:login"

    .line 0
    const-string v2, "register|"

    const-string v3, "login|"

    const-string v4, "auth submission; transport="

    const-string v5, "Dados inv\u00e1lidos ou conex\u00e3o ainda n\u00e3o pronta. Use senha ASCII de "

    .line 551
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "payload"

    invoke-virtual {v6, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 552
    const-string v7, "action"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "username"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 553
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "auth:register"

    if-nez v8, :cond_2

    :try_start_1
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    const-string p1, "auth:openLink"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->openAngraCommunity()V

    goto/16 :goto_5

    .line 574
    :cond_1
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    const-string v0, "Recupera\u00e7\u00e3o exige configurar o servi\u00e7o de e-mail; n\u00e3o h\u00e1 recupera\u00e7\u00e3o simulada."

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 554
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v8}, Lcom/xyron/game/main/AngraServerBridge;->access$200(Lcom/xyron/game/main/AngraServerBridge;)Landroid/webkit/WebView;

    move-result-object v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v8}, Lcom/xyron/game/main/AngraServerBridge;->access$300(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v8}, Lcom/xyron/game/main/AngraServerBridge;->access$200(Lcom/xyron/game/main/AngraServerBridge;)Landroid/webkit/WebView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    .line 555
    invoke-static {v8}, Lcom/xyron/game/main/AngraServerBridge;->access$700(Lcom/xyron/game/main/AngraServerBridge;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v8}, Lcom/xyron/game/main/AngraServerBridge;->access$800(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v8}, Lcom/xyron/game/main/AngraServerBridge;->access$900(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_4

    .line 556
    :cond_3
    const-string v8, "AngraBridge"

    iget-object v10, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v10}, Lcom/xyron/game/main/AngraServerBridge;->access$1200(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "legacy"

    goto :goto_1

    :cond_4
    const-string v10, "bridge"

    :goto_1
    invoke-virtual {v4, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v4, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v4}, Lcom/xyron/game/main/AngraServerBridge;->access$1200(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v4}, Lcom/xyron/game/main/AngraServerBridge;->access$1300(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 558
    :cond_6
    :goto_2
    const-string v4, "[A-Za-z0-9_]{3,20}"

    invoke-virtual {v7, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 559
    iget-object v4, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/xyron/game/main/AngraServerBridge;->access$1400(Lcom/xyron/game/main/AngraServerBridge;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 560
    iget-object v8, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    const-string v10, "gender"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_7

    const/4 v10, 0x1

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    invoke-static {v8, v10}, Lcom/xyron/game/main/AngraServerBridge;->access$1502(Lcom/xyron/game/main/AngraServerBridge;I)I

    .line 561
    iget-object v8, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v8}, Lcom/xyron/game/main/AngraServerBridge;->access$1200(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 562
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v1}, Lcom/xyron/game/main/AngraServerBridge;->access$700(Lcom/xyron/game/main/AngraServerBridge;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v2}, Lcom/xyron/game/main/AngraServerBridge;->access$1600(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result v2

    if-ne v1, v2, :cond_8

    .line 563
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v1, v12}, Lcom/xyron/game/main/AngraServerBridge;->access$1702(Lcom/xyron/game/main/AngraServerBridge;Z)Z

    .line 564
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v1}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {v1, v11, v0, p1}, Lcom/xyron/game/main/SAMP;->sendLegacyAngraLoginResponse(II[B)V

    return-void

    .line 562
    :cond_8
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 567
    :cond_9
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v1, "|"

    if-eqz v0, :cond_a

    :try_start_2
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xyron/game/main/AngraServerBridge;->access$1800(Lcom/xyron/game/main/AngraServerBridge;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 569
    :cond_a
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 570
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x3f

    if-gt v0, v3, :cond_b

    const-string v0, "[A-Za-z0-9._+\\-]+@[A-Za-z0-9.\\-]+\\.[A-Za-z]{2,}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 571
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$1500(Lcom/xyron/game/main/AngraServerBridge;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xyron/game/main/AngraServerBridge;->access$1800(Lcom/xyron/game/main/AngraServerBridge;Ljava/lang/String;)V

    goto :goto_5

    .line 570
    :cond_b
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 558
    :cond_c
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_d
    :goto_4
    return-void

    .line 577
    :catch_0
    :try_start_3
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v3}, Lcom/xyron/game/main/AngraServerBridge;->access$2000(Lcom/xyron/game/main/AngraServerBridge;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v3}, Lcom/xyron/game/main/AngraServerBridge;->access$2100(Lcom/xyron/game/main/AngraServerBridge;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " caracteres."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xyron/game/main/AngraServerBridge;->access$1902(Lcom/xyron/game/main/AngraServerBridge;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 578
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$500(Lcom/xyron/game/main/AngraServerBridge;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :goto_5
    return-void
.end method

.method public loadingMusicState()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 535
    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->musicState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public muteLoadingMusic(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v0}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/AngraServerBridge$Auth$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/xyron/game/main/AngraServerBridge$Auth$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_1

    .line 548
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x800

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge$Auth;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v0}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/AngraServerBridge$Auth$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/AngraServerBridge$Auth$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/AngraServerBridge$Auth;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public usesLoadingMusic()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 532
    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->isGameLoadingActive()Z

    move-result v0

    return v0
.end method
