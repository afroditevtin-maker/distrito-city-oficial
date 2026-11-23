.class Lcom/xyron/game/launcher/GameLoadingActivity$1;
.super Landroid/webkit/WebViewClient;
.source "GameLoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/launcher/GameLoadingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/GameLoadingActivity;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/GameLoadingActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$1;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPageFinished$0(Ljava/lang/String;)V
    .locals 1

    .line 90
    const-string v0, "AngraLocale"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object p2, p0, Lcom/xyron/game/launcher/GameLoadingActivity$1;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {p2}, Lcom/xyron/game/launcher/GameLoadingActivity;->access$400(Lcom/xyron/game/launcher/GameLoadingActivity;)V

    .line 90
    new-instance p2, Lcom/xyron/game/launcher/GameLoadingActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/xyron/game/launcher/GameLoadingActivity$1$$ExternalSyntheticLambda0;-><init>()V

    const-string v0, "JSON.stringify({language:window.AngraI18n&&AngraI18n.language,catalogue:window.__angraTranslations?Object.keys(__angraTranslations).length:0})"

    invoke-virtual {p1, v0, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 83
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$1;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->access$100(Lcom/xyron/game/launcher/GameLoadingActivity;)V

    .line 85
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$1;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->access$200(Lcom/xyron/game/launcher/GameLoadingActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$1;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->access$300(Lcom/xyron/game/launcher/GameLoadingActivity;)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$1;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->access$100(Lcom/xyron/game/launcher/GameLoadingActivity;)V

    .line 78
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$1;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->access$200(Lcom/xyron/game/launcher/GameLoadingActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$1;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->access$300(Lcom/xyron/game/launcher/GameLoadingActivity;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$1;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {p1, p2}, Lcom/xyron/game/security/SealedUi;->intercept(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
