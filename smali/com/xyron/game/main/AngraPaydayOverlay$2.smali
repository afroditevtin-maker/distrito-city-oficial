.class Lcom/xyron/game/main/AngraPaydayOverlay$2;
.super Landroid/webkit/WebViewClient;
.source "AngraPaydayOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/AngraPaydayOverlay;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AngraPaydayOverlay;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/AngraPaydayOverlay;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$2;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 38
    iget-object p2, p0, Lcom/xyron/game/main/AngraPaydayOverlay$2;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {p2}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$600(Lcom/xyron/game/main/AngraPaydayOverlay;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$2;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$800(Lcom/xyron/game/main/AngraPaydayOverlay;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$2;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$902(Lcom/xyron/game/main/AngraPaydayOverlay;Z)Z

    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$2;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$1000(Lcom/xyron/game/main/AngraPaydayOverlay;)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$2;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$1100(Lcom/xyron/game/main/AngraPaydayOverlay;)V

    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$2;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$500(Lcom/xyron/game/main/AngraPaydayOverlay;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$2;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$800(Lcom/xyron/game/main/AngraPaydayOverlay;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$2;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$1200(Lcom/xyron/game/main/AngraPaydayOverlay;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$2;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$400(Lcom/xyron/game/main/AngraPaydayOverlay;)Lcom/xyron/game/main/SAMP;

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
