.class Lcom/xyron/game/main/ReferencePanels$1;
.super Landroid/webkit/WebViewClient;
.source "ReferencePanels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/ReferencePanels;->createWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/ReferencePanels;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/ReferencePanels;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onRenderProcessGone$0$com-xyron-game-main-ReferencePanels$1()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$300(Lcom/xyron/game/main/ReferencePanels;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-virtual {v0}, Lcom/xyron/game/main/ReferencePanels;->isSpawnActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    .line 79
    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v0}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    const-string v1, "spawn"

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/ReferencePanels;->show(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .line 85
    iget-object p2, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {p2}, Lcom/xyron/game/main/ReferencePanels;->access$300(Lcom/xyron/game/main/ReferencePanels;)Landroid/webkit/WebView;

    move-result-object p2

    if-eq p1, p2, :cond_0

    return-void

    .line 87
    :cond_0
    sget-object p2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    aget-object v4, p2, v2

    const-string/jumbo v5, "x86"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "document.documentElement.dataset.emulator="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string v0, "\'1\'"

    goto :goto_2

    :cond_3
    const-string v0, "\'0\'"

    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 89
    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {p1, v3}, Lcom/xyron/game/main/ReferencePanels;->access$202(Lcom/xyron/game/main/ReferencePanels;Z)Z

    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {p1}, Lcom/xyron/game/main/ReferencePanels;->access$500(Lcom/xyron/game/main/ReferencePanels;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    .line 72
    iget-object p2, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-virtual {p2}, Lcom/xyron/game/main/ReferencePanels;->isSpawnVisible()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {p2}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {p2}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {v2, v1}, Lcom/xyron/game/main/ReferencePanels;->access$202(Lcom/xyron/game/main/ReferencePanels;Z)Z

    .line 74
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/xyron/game/main/ReferencePanels;->access$302(Lcom/xyron/game/main/ReferencePanels;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    if-eqz p2, :cond_2

    .line 77
    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {p1}, Lcom/xyron/game/main/ReferencePanels;->access$400(Lcom/xyron/game/main/ReferencePanels;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/xyron/game/main/ReferencePanels$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/xyron/game/main/ReferencePanels$1$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/ReferencePanels$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/xyron/game/main/ReferencePanels$1;->this$0:Lcom/xyron/game/main/ReferencePanels;

    invoke-static {p1}, Lcom/xyron/game/main/ReferencePanels;->access$100(Lcom/xyron/game/main/ReferencePanels;)Landroid/app/Activity;

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
