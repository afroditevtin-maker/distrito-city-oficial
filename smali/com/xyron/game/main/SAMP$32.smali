.class Lcom/xyron/game/main/SAMP$32;
.super Landroid/webkit/WebViewClient;
.source "SAMP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP;->configureRuntimeOverlay(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/SAMP;

.field final synthetic val$assetUrl:Ljava/lang/String;

.field final synthetic val$overlayName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3022
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    iput-object p2, p0, Lcom/xyron/game/main/SAMP$32;->val$assetUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/xyron/game/main/SAMP$32;->val$overlayName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 3037
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3038
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$9100(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;

    move-result-object p2

    if-eq p1, p2, :cond_9

    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$9200(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_0

    goto/16 :goto_0

    .line 3039
    :cond_0
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$9500(Lcom/xyron/game/main/SAMP;)Ljava/util/WeakHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3043
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2, p1}, Lcom/xyron/game/main/SAMP;->access$9600(Lcom/xyron/game/main/SAMP;Landroid/webkit/WebView;)V

    .line 3044
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$9700(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$8800(Lcom/xyron/game/main/SAMP;)V

    .line 3045
    :cond_1
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$9800(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$8700(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/InventoryAdapter;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$8700(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/InventoryAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xyron/game/main/InventoryAdapter;->publish()V

    .line 3046
    :cond_2
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$9700(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_3

    .line 3047
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$8800(Lcom/xyron/game/main/SAMP;)V

    .line 3049
    :cond_3
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$9100(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;

    move-result-object p2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 3050
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2, v0}, Lcom/xyron/game/main/SAMP;->access$9902(Lcom/xyron/game/main/SAMP;Z)Z

    .line 3051
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2, v0}, Lcom/xyron/game/main/SAMP;->access$10002(Lcom/xyron/game/main/SAMP;Z)Z

    .line 3052
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$6800(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/PhoneApps;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xyron/game/main/PhoneApps;->onDocumentReady()V

    .line 3053
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$10100(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/PhoneEventInbox;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xyron/game/main/PhoneEventInbox;->resume()V

    .line 3054
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$10200(Lcom/xyron/game/main/SAMP;)V

    .line 3056
    :cond_4
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$10300(Lcom/xyron/game/main/SAMP;)V

    .line 3057
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$9200(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_5

    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2, v0}, Lcom/xyron/game/main/SAMP;->access$10402(Lcom/xyron/game/main/SAMP;Z)Z

    .line 3058
    :cond_5
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$9100(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_6

    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$7100(Lcom/xyron/game/main/SAMP;)Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    .line 3059
    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$9200(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_8

    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$7400(Lcom/xyron/game/main/SAMP;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 3060
    :cond_7
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2, p1}, Lcom/xyron/game/main/SAMP;->access$10500(Lcom/xyron/game/main/SAMP;Landroid/webkit/WebView;)V

    .line 3061
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP;->access$9100(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$10600(Lcom/xyron/game/main/SAMP;)V

    :cond_8
    return-void

    .line 3038
    :cond_9
    :goto_0
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2, p1}, Lcom/xyron/game/main/SAMP;->access$9300(Lcom/xyron/game/main/SAMP;Landroid/webkit/WebView;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 3032
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Overlay renderer lost: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$32;->val$overlayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", crashed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SAMP"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2, p1}, Lcom/xyron/game/main/SAMP;->access$8900(Lcom/xyron/game/main/SAMP;Landroid/webkit/WebView;)Z

    move-result p1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 3023
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$32;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1, p2}, Lcom/xyron/game/security/SealedUi;->intercept(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 3027
    const-string p1, "file:///android_asset/interfaces/iphone/index.html"

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$32;->val$assetUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3028
    invoke-static {p2}, Lcom/xyron/game/security/SealedUi;->isPhoneFrameUrl(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
