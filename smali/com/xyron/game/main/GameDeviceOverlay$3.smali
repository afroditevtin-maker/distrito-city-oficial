.class Lcom/xyron/game/main/GameDeviceOverlay$3;
.super Landroid/webkit/WebViewClient;
.source "GameDeviceOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/GameDeviceOverlay;->open(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/GameDeviceOverlay;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/GameDeviceOverlay;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay$3;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 102
    iget-object p2, p0, Lcom/xyron/game/main/GameDeviceOverlay$3;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {p2}, Lcom/xyron/game/main/GameDeviceOverlay;->access$900(Lcom/xyron/game/main/GameDeviceOverlay;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay$3;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xyron/game/main/GameDeviceOverlay;->access$1002(Lcom/xyron/game/main/GameDeviceOverlay;Z)Z

    iget-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay$3;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/GameDeviceOverlay;->access$1100(Lcom/xyron/game/main/GameDeviceOverlay;)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay$3;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/GameDeviceOverlay;->access$1200(Lcom/xyron/game/main/GameDeviceOverlay;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "telagem"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay$3;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "sp|"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay$3;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/GameDeviceOverlay;->access$1300(Lcom/xyron/game/main/GameDeviceOverlay;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|close"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xyron/game/main/GameDeviceOverlay;->access$200(Lcom/xyron/game/main/GameDeviceOverlay;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay$3;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/GameDeviceOverlay;->access$1400(Lcom/xyron/game/main/GameDeviceOverlay;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay$3;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/GameDeviceOverlay;->access$800(Lcom/xyron/game/main/GameDeviceOverlay;)Lcom/xyron/game/main/SAMP;

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
