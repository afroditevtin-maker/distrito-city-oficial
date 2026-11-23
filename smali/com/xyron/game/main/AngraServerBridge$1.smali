.class Lcom/xyron/game/main/AngraServerBridge$1;
.super Landroid/webkit/WebViewClient;
.source "AngraServerBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/AngraServerBridge;->showLogin(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AngraServerBridge;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/AngraServerBridge;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onRenderProcessGone$0$com-xyron-game-main-AngraServerBridge$1(I)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {v0}, Lcom/xyron/game/main/AngraServerBridge;->access$1000(Lcom/xyron/game/main/AngraServerBridge;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$600(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$700(Lcom/xyron/game/main/AngraServerBridge;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$200(Lcom/xyron/game/main/AngraServerBridge;)Landroid/webkit/WebView;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    .line 475
    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$700(Lcom/xyron/game/main/AngraServerBridge;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xyron/game/main/AngraServerBridge;->access$1100(Lcom/xyron/game/main/AngraServerBridge;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 454
    iget-object p2, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p2}, Lcom/xyron/game/main/AngraServerBridge;->access$200(Lcom/xyron/game/main/AngraServerBridge;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xyron/game/main/AngraServerBridge;->access$302(Lcom/xyron/game/main/AngraServerBridge;Z)Z

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$400(Lcom/xyron/game/main/AngraServerBridge;)V

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$500(Lcom/xyron/game/main/AngraServerBridge;)V

    .line 456
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$600(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$700(Lcom/xyron/game/main/AngraServerBridge;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$800(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$900(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 457
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$200(Lcom/xyron/game/main/AngraServerBridge;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$200(Lcom/xyron/game/main/AngraServerBridge;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->bringToFront()V

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$200(Lcom/xyron/game/main/AngraServerBridge;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 458
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->finishLoadingForLogin()V

    .line 460
    :cond_1
    const-string p1, "AngraBridge"

    const-string p2, "graphical login page ready"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 463
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "login page error code="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceError;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AngraBridge"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    .line 466
    iget-object p2, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p2}, Lcom/xyron/game/main/AngraServerBridge;->access$200(Lcom/xyron/game/main/AngraServerBridge;)Landroid/webkit/WebView;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p2}, Lcom/xyron/game/main/AngraServerBridge;->access$600(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p2}, Lcom/xyron/game/main/AngraServerBridge;->access$700(Lcom/xyron/game/main/AngraServerBridge;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p2}, Lcom/xyron/game/main/AngraServerBridge;->access$800(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p2}, Lcom/xyron/game/main/AngraServerBridge;->access$900(Lcom/xyron/game/main/AngraServerBridge;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    .line 467
    invoke-static {p2}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p2}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xyron/game/main/SAMP;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 468
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 469
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 470
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/xyron/game/main/AngraServerBridge;->access$202(Lcom/xyron/game/main/AngraServerBridge;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1, v1}, Lcom/xyron/game/main/AngraServerBridge;->access$302(Lcom/xyron/game/main/AngraServerBridge;Z)Z

    if-eqz p2, :cond_2

    .line 472
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$1000(Lcom/xyron/game/main/AngraServerBridge;)I

    move-result p1

    .line 473
    iget-object p2, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p2}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xyron/game/main/SAMP;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/xyron/game/main/AngraServerBridge$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/AngraServerBridge$1$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/AngraServerBridge$1;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 451
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$1;->this$0:Lcom/xyron/game/main/AngraServerBridge;

    invoke-static {p1}, Lcom/xyron/game/main/AngraServerBridge;->access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;

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
