.class final Lcom/xyron/game/main/PhoneApps$TabletBridge;
.super Ljava/lang/Object;
.source "PhoneApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/PhoneApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TabletBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/PhoneApps;


# direct methods
.method private constructor <init>(Lcom/xyron/game/main/PhoneApps;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/xyron/game/main/PhoneApps$TabletBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xyron/game/main/PhoneApps;Lcom/xyron/game/main/PhoneApps$1;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lcom/xyron/game/main/PhoneApps$TabletBridge;-><init>(Lcom/xyron/game/main/PhoneApps;)V

    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps$TabletBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneApps;->access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/PhoneApps$TabletBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/PhoneApps$TabletBridge$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/PhoneApps$TabletBridge;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$hideKeyboard$0$com-xyron-game-main-PhoneApps$TabletBridge()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps$TabletBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneApps;->access$300(Lcom/xyron/game/main/PhoneApps;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps$TabletBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneApps;->access$300(Lcom/xyron/game/main/PhoneApps;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFocus()V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps$TabletBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneApps;->access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/PhoneApps$TabletBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v1}, Lcom/xyron/game/main/PhoneApps;->access$300(Lcom/xyron/game/main/PhoneApps;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method synthetic lambda$postMessage$1$com-xyron-game-main-PhoneApps$TabletBridge(Ljava/lang/String;)V
    .locals 7

    .line 315
    const-string/jumbo v0, "|"

    .line 0
    const-string v1, "admin|"

    const-string v2, "/"

    .line 315
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 316
    const-string v4, "angra-admin:close"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/PhoneApps$TabletBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {p1}, Lcom/xyron/game/main/PhoneApps;->access$700(Lcom/xyron/game/main/PhoneApps;)V

    return-void

    .line 317
    :cond_0
    const-string v4, "angra-admin:execute"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/xyron/game/main/PhoneApps$TabletBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {p1}, Lcom/xyron/game/main/PhoneApps;->access$300(Lcom/xyron/game/main/PhoneApps;)Landroid/webkit/WebView;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 318
    :cond_1
    const-string p1, "payload"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "command"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "action"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 319
    const-string v5, "[a-z]{2,24}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xf0

    if-gt v2, v5, :cond_5

    .line 320
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-le v2, v6, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v2, ""

    .line 321
    :goto_0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    if-gt v3, v5, :cond_4

    .line 322
    iget-object v3, p0, Lcom/xyron/game/main/PhoneApps$TabletBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v3}, Lcom/xyron/game/main/PhoneApps;->access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "requestId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    goto :goto_2

    .line 321
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Payload too long"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 319
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid action"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    return-void

    .line 323
    :catch_0
    iget-object p1, p0, Lcom/xyron/game/main/PhoneApps$TabletBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {p1}, Lcom/xyron/game/main/PhoneApps;->access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    const-string v0, "A\u00e7\u00e3o administrativa inv\u00e1lida."

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_1

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps$TabletBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneApps;->access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/PhoneApps$TabletBridge$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/PhoneApps$TabletBridge$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/PhoneApps$TabletBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
