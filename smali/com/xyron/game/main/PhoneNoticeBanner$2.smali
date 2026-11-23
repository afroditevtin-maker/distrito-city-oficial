.class Lcom/xyron/game/main/PhoneNoticeBanner$2;
.super Landroid/webkit/WebViewClient;
.source "PhoneNoticeBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/PhoneNoticeBanner;->ensureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/PhoneNoticeBanner;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/PhoneNoticeBanner;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner$2;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner$2;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$602(Lcom/xyron/game/main/PhoneNoticeBanner;Z)Z

    iget-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner$2;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {p1}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$700(Lcom/xyron/game/main/PhoneNoticeBanner;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner$2;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-virtual {p1}, Lcom/xyron/game/main/PhoneNoticeBanner;->destroy()V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner$2;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {p1}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$000(Lcom/xyron/game/main/PhoneNoticeBanner;)Lcom/xyron/game/main/SAMP;

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
