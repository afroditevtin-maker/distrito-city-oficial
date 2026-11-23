.class final Lcom/xyron/game/main/RoleplayUI$Bridge;
.super Ljava/lang/Object;
.source "RoleplayUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/RoleplayUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Bridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/RoleplayUI;


# direct methods
.method private constructor <init>(Lcom/xyron/game/main/RoleplayUI;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/xyron/game/main/RoleplayUI$Bridge;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xyron/game/main/RoleplayUI;Lcom/xyron/game/main/RoleplayUI$1;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/xyron/game/main/RoleplayUI$Bridge;-><init>(Lcom/xyron/game/main/RoleplayUI;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$postMessage$0$com-xyron-game-main-RoleplayUI$Bridge(Ljava/lang/String;)V
    .locals 7

    .line 92
    const-string/jumbo v0, "|"

    .line 0
    const-string v1, "rp-lock|"

    .line 92
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "action"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "refresh"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$Bridge;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1}, Lcom/xyron/game/main/RoleplayUI;->access$000(Lcom/xyron/game/main/RoleplayUI;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    const-string v0, "rp-state"

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string p1, "id"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v3, "op"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "pin"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "position"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 93
    iget-object v4, p0, Lcom/xyron/game/main/RoleplayUI$Bridge;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {v4}, Lcom/xyron/game/main/RoleplayUI;->access$1000(Lcom/xyron/game/main/RoleplayUI;)I

    move-result v4

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Lcom/xyron/game/main/RoleplayUI$Bridge;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {v4}, Lcom/xyron/game/main/RoleplayUI;->access$1000(Lcom/xyron/game/main/RoleplayUI;)I

    move-result v4

    const/4 v6, 0x1

    if-lt v4, v6, :cond_2

    if-ltz v3, :cond_2

    const/4 v4, 0x2

    if-gt v3, v4, :cond_2

    if-ltz v5, :cond_2

    if-gt v5, v4, :cond_2

    if-ltz v2, :cond_2

    const/16 v4, 0x2710

    if-le v2, v4, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    iget-object v4, p0, Lcom/xyron/game/main/RoleplayUI$Bridge;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {v4}, Lcom/xyron/game/main/RoleplayUI;->access$000(Lcom/xyron/game/main/RoleplayUI;)Lcom/xyron/game/main/SAMP;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$Bridge;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1}, Lcom/xyron/game/main/RoleplayUI;->access$1104(Lcom/xyron/game/main/RoleplayUI;)I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 95
    :catch_0
    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$Bridge;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1}, Lcom/xyron/game/main/RoleplayUI;->access$000(Lcom/xyron/game/main/RoleplayUI;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    const-string v0, "Interacao invalida. Nenhum resultado foi confirmado."

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI$Bridge;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {v0}, Lcom/xyron/game/main/RoleplayUI;->access$000(Lcom/xyron/game/main/RoleplayUI;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/RoleplayUI$Bridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/RoleplayUI$Bridge$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/RoleplayUI$Bridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
