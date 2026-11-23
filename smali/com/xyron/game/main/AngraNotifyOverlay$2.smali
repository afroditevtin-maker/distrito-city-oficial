.class Lcom/xyron/game/main/AngraNotifyOverlay$2;
.super Landroid/webkit/WebViewClient;
.source "AngraNotifyOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/AngraNotifyOverlay;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AngraNotifyOverlay;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/AngraNotifyOverlay;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay$2;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 59
    iget-object p2, p0, Lcom/xyron/game/main/AngraNotifyOverlay$2;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {p2}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$500(Lcom/xyron/game/main/AngraNotifyOverlay;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay$2;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$600(Lcom/xyron/game/main/AngraNotifyOverlay;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay$2;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$702(Lcom/xyron/game/main/AngraNotifyOverlay;Z)Z

    iget-object p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay$2;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$800(Lcom/xyron/game/main/AngraNotifyOverlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay$2;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$900(Lcom/xyron/game/main/AngraNotifyOverlay;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay$2;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$400(Lcom/xyron/game/main/AngraNotifyOverlay;)Lcom/xyron/game/main/SAMP;

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
