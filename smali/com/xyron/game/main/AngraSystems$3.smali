.class Lcom/xyron/game/main/AngraSystems$3;
.super Landroid/webkit/WebViewClient;
.source "AngraSystems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AngraSystems;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/AngraSystems;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onRenderProcessGone$0$com-xyron-game-main-AngraSystems$3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {v0, p1, p2}, Lcom/xyron/game/main/AngraSystems;->access$1200(Lcom/xyron/game/main/AngraSystems;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 173
    iget-object p2, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p2}, Lcom/xyron/game/main/AngraSystems;->access$100(Lcom/xyron/game/main/AngraSystems;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xyron/game/main/AngraSystems;->access$602(Lcom/xyron/game/main/AngraSystems;Z)Z

    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p1}, Lcom/xyron/game/main/AngraSystems;->access$700(Lcom/xyron/game/main/AngraSystems;)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 4

    .line 177
    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p1}, Lcom/xyron/game/main/AngraSystems;->access$200(Lcom/xyron/game/main/AngraSystems;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "premium_shop"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "posto"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p1}, Lcom/xyron/game/main/AngraSystems;->access$800(Lcom/xyron/game/main/AngraSystems;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p1}, Lcom/xyron/game/main/AngraSystems;->access$800(Lcom/xyron/game/main/AngraSystems;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p1}, Lcom/xyron/game/main/AngraSystems;->access$200(Lcom/xyron/game/main/AngraSystems;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p1}, Lcom/xyron/game/main/AngraSystems;->access$900(Lcom/xyron/game/main/AngraSystems;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p1}, Lcom/xyron/game/main/AngraSystems;->access$900(Lcom/xyron/game/main/AngraSystems;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p1}, Lcom/xyron/game/main/AngraSystems;->access$1000(Lcom/xyron/game/main/AngraSystems;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {v0}, Lcom/xyron/game/main/AngraSystems;->access$200(Lcom/xyron/game/main/AngraSystems;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {v1}, Lcom/xyron/game/main/AngraSystems;->access$1100(Lcom/xyron/game/main/AngraSystems;)V

    .line 178
    const-string v1, "showroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    const-string v1, "tuning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 179
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p2}, Lcom/xyron/game/main/AngraSystems;->access$300(Lcom/xyron/game/main/AngraSystems;)Lcom/xyron/game/main/SAMP;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "petrol|"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {v3}, Lcom/xyron/game/main/AngraSystems;->access$300(Lcom/xyron/game/main/AngraSystems;)Lcom/xyron/game/main/SAMP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|0|0|0|0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    .line 180
    :cond_3
    iget-object p2, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p2}, Lcom/xyron/game/main/AngraSystems;->access$000(Lcom/xyron/game/main/AngraSystems;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p2}, Lcom/xyron/game/main/AngraSystems;->access$500(Lcom/xyron/game/main/AngraSystems;)Landroid/os/Handler;

    move-result-object p2

    new-instance v1, Lcom/xyron/game/main/AngraSystems$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lcom/xyron/game/main/AngraSystems$3$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/AngraSystems$3;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return v2

    .line 178
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p1}, Lcom/xyron/game/main/AngraSystems;->access$300(Lcom/xyron/game/main/AngraSystems;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    const-string p2, "A visualiza\u00e7\u00e3o foi encerrada. Voc\u00ea pode abrir o atendimento novamente."

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    return v2
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 171
    iget-object p1, p0, Lcom/xyron/game/main/AngraSystems$3;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p1}, Lcom/xyron/game/main/AngraSystems;->access$300(Lcom/xyron/game/main/AngraSystems;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/xyron/game/security/SealedUi;->intercept(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
