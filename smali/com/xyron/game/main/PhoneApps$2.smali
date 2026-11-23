.class Lcom/xyron/game/main/PhoneApps$2;
.super Landroid/webkit/WebViewClient;
.source "PhoneApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/PhoneApps;->openTablet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/PhoneApps;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/PhoneApps;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/xyron/game/main/PhoneApps$2;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 236
    iget-object p2, p0, Lcom/xyron/game/main/PhoneApps$2;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {p2}, Lcom/xyron/game/main/PhoneApps;->access$300(Lcom/xyron/game/main/PhoneApps;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/PhoneApps$2;->this$0:Lcom/xyron/game/main/PhoneApps;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xyron/game/main/PhoneApps;->access$402(Lcom/xyron/game/main/PhoneApps;Z)Z

    iget-object p1, p0, Lcom/xyron/game/main/PhoneApps$2;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {p1}, Lcom/xyron/game/main/PhoneApps;->access$500(Lcom/xyron/game/main/PhoneApps;)V

    iget-object p1, p0, Lcom/xyron/game/main/PhoneApps$2;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {p1}, Lcom/xyron/game/main/PhoneApps;->access$600(Lcom/xyron/game/main/PhoneApps;)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 237
    iget-object p1, p0, Lcom/xyron/game/main/PhoneApps$2;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {p1}, Lcom/xyron/game/main/PhoneApps;->access$700(Lcom/xyron/game/main/PhoneApps;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 234
    iget-object p1, p0, Lcom/xyron/game/main/PhoneApps$2;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {p1}, Lcom/xyron/game/main/PhoneApps;->access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;

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
