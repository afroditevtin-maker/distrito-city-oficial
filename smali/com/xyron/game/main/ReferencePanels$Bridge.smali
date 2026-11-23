.class final Lcom/xyron/game/main/ReferencePanels$Bridge;
.super Ljava/lang/Object;
.source "ReferencePanels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/ReferencePanels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Bridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/ReferencePanels;


# direct methods
.method private constructor <init>(Lcom/xyron/game/main/ReferencePanels;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xyron/game/main/ReferencePanels;Lcom/xyron/game/main/ReferencePanels$1;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ReferencePanels$Bridge;-><init>(Lcom/xyron/game/main/ReferencePanels;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/ReferencePanels$Bridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/main/ReferencePanels$Bridge;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public color(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda9;-><init>(Lcom/xyron/game/main/ReferencePanels$Bridge;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public confirmSpawn(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda8;-><init>(Lcom/xyron/game/main/ReferencePanels$Bridge;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismiss()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/ReferencePanels$Bridge;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$add$3$com-xyron-game-main-ReferencePanels$Bridge(Ljava/lang/String;)V
    .locals 4

    .line 0
    if-nez p1, :cond_0

    .line 138
    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 139
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$1100(Lcom/xyron/game/main/ReferencePanels;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v1}, Lcom/xyron/game/main/ReferencePanels;->access$1100(Lcom/xyron/game/main/ReferencePanels;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "color"

    const-string v2, "#819cac"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 143
    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {p1, v0}, Lcom/xyron/game/main/ReferencePanels;->access$1300(Lcom/xyron/game/main/ReferencePanels;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method synthetic lambda$close$1$com-xyron-game-main-ReferencePanels$Bridge()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$300(Lcom/xyron/game/main/ReferencePanels;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$300(Lcom/xyron/game/main/ReferencePanels;)Landroid/webkit/WebView;

    move-result-object v0

    const-string/jumbo v1, "window.backPanel();"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$color$5$com-xyron-game-main-ReferencePanels$Bridge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0, p1}, Lcom/xyron/game/main/ReferencePanels;->access$900(Lcom/xyron/game/main/ReferencePanels;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "#[0-9a-fA-F]{6}([0-9a-fA-F]{2})?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v1}, Lcom/xyron/game/main/ReferencePanels;->access$1100(Lcom/xyron/game/main/ReferencePanels;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "color"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {p1, v0}, Lcom/xyron/game/main/ReferencePanels;->access$1300(Lcom/xyron/game/main/ReferencePanels;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 155
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$confirmSpawn$9$com-xyron-game-main-ReferencePanels$Bridge(I)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-virtual {v0}, Lcom/xyron/game/main/ReferencePanels;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$600(Lcom/xyron/game/main/ReferencePanels;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "spawn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$700(Lcom/xyron/game/main/ReferencePanels;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-ltz p1, :cond_4

    const/4 v1, 0x4

    if-gt p1, v1, :cond_4

    .line 173
    iget-object v1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v1}, Lcom/xyron/game/main/ReferencePanels;->access$800(Lcom/xyron/game/main/ReferencePanels;)Lcom/xyron/game/main/ReferencePanels$SpawnAction;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v1}, Lcom/xyron/game/main/ReferencePanels;->access$800(Lcom/xyron/game/main/ReferencePanels;)Lcom/xyron/game/main/ReferencePanels$SpawnAction;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 178
    iget-object v1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v1}, Lcom/xyron/game/main/ReferencePanels;->access$800(Lcom/xyron/game/main/ReferencePanels;)Lcom/xyron/game/main/ReferencePanels$SpawnAction;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xyron/game/main/ReferencePanels$SpawnAction;->select(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/ReferencePanels;->setSpawnPending(Z)V

    :cond_2
    return-void

    .line 181
    :cond_3
    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-virtual {p1}, Lcom/xyron/game/main/ReferencePanels;->hide()V

    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {p1}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "Pr\u00e9via: Esta\u00e7\u00e3o selecionada. A chegada \u00e0 cidade ainda n\u00e3o est\u00e1 dispon\u00edvel."

    invoke-static {p1, v0, v2}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 174
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/ReferencePanels;->setSpawnPending(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method synthetic lambda$dismiss$2$com-xyron-game-main-ReferencePanels$Bridge()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-virtual {v0}, Lcom/xyron/game/main/ReferencePanels;->isSpawnVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-virtual {v0}, Lcom/xyron/game/main/ReferencePanels;->hide()V

    return-void
.end method

.method synthetic lambda$remove$4$com-xyron-game-main-ReferencePanels$Bridge(Ljava/lang/String;)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0, p1}, Lcom/xyron/game/main/ReferencePanels;->access$900(Lcom/xyron/game/main/ReferencePanels;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v2}, Lcom/xyron/game/main/ReferencePanels;->access$1100(Lcom/xyron/game/main/ReferencePanels;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eq v1, p1, :cond_1

    iget-object v2, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v2}, Lcom/xyron/game/main/ReferencePanels;->access$1100(Lcom/xyron/game/main/ReferencePanels;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_2
    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {p1, v0}, Lcom/xyron/game/main/ReferencePanels;->access$1300(Lcom/xyron/game/main/ReferencePanels;Lorg/json/JSONArray;)V

    return-void
.end method

.method synthetic lambda$send$6$com-xyron-game-main-ReferencePanels$Bridge(Ljava/lang/String;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$1200(Lcom/xyron/game/main/ReferencePanels;)Lcom/xyron/game/main/ReferencePanels$Sender;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xyron/game/main/ReferencePanels$Sender;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$send$7$com-xyron-game-main-ReferencePanels$Bridge()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xyron/game/main/ReferencePanels;->access$1002(Lcom/xyron/game/main/ReferencePanels;Z)Z

    return-void
.end method

.method synthetic lambda$send$8$com-xyron-game-main-ReferencePanels$Bridge(Ljava/lang/String;)V
    .locals 10

    .line 158
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0, p1}, Lcom/xyron/game/main/ReferencePanels;->access$900(Lcom/xyron/game/main/ReferencePanels;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$1000(Lcom/xyron/game/main/ReferencePanels;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$1100(Lcom/xyron/game/main/ReferencePanels;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 160
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x90

    if-le v4, v5, :cond_1

    .line 161
    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {p1}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "Cada mensagem deve ter at\u00e9 144 caracteres."

    invoke-static {p1, v0, v3}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0, v3}, Lcom/xyron/game/main/ReferencePanels;->access$1002(Lcom/xyron/game/main/ReferencePanels;Z)Z

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-virtual {v0}, Lcom/xyron/game/main/ReferencePanels;->hide()V

    .line 165
    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    const-wide/16 v3, 0x2ee

    if-ge v1, v0, :cond_4

    aget-object v5, p1, v1

    .line 166
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 167
    :cond_3
    iget-object v6, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v6}, Lcom/xyron/game/main/ReferencePanels;->access$400(Lcom/xyron/game/main/ReferencePanels;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, v5}, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/ReferencePanels$Bridge;Ljava/lang/String;)V

    add-int/lit8 v5, v2, 0x1

    int-to-long v8, v2

    mul-long v8, v8, v3

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v2, v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    :cond_4
    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {p1}, Lcom/xyron/game/main/ReferencePanels;->access$400(Lcom/xyron/game/main/ReferencePanels;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/main/ReferencePanels$Bridge;)V

    int-to-long v1, v2

    mul-long v1, v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_3
    return-void
.end method

.method synthetic lambda$sound$0$com-xyron-game-main-ReferencePanels$Bridge(I)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$600(Lcom/xyron/game/main/ReferencePanels;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "spawn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$1400(Lcom/xyron/game/main/ReferencePanels;)Lcom/xyron/game/main/ReferencePanels$SoundAction;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1c95

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1c97

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$1400(Lcom/xyron/game/main/ReferencePanels;)Lcom/xyron/game/main/ReferencePanels$SoundAction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xyron/game/main/ReferencePanels$SoundAction;->play(I)V

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda6;-><init>(Lcom/xyron/game/main/ReferencePanels$Bridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda7;-><init>(Lcom/xyron/game/main/ReferencePanels$Bridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sound(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$Bridge;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/ReferencePanels$Bridge$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/main/ReferencePanels$Bridge;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
