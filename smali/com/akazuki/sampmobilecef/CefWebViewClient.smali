.class public Lcom/akazuki/sampmobilecef/CefWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CefWebViewClient.java"


# instance fields
.field mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;


# direct methods
.method constructor <init>(Lcom/akazuki/sampmobilecef/CefJavaManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/akazuki/sampmobilecef/CefWebViewClient;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 32
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/akazuki/sampmobilecef/CefWebViewClient;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    const/4 p2, 0x1

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->sendBrowserInitStatusToJava(ZI)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 41
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    iget-object p1, p0, Lcom/akazuki/sampmobilecef/CefWebViewClient;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/akazuki/sampmobilecef/CefJavaManager;->sendBrowserInitStatusToJava(ZI)V

    :cond_1
    return-void
.end method
