.class public Lcom/akazuki/sampmobilecef/CefJavaManager;
.super Ljava/lang/Object;
.source "CefJavaManager.java"


# instance fields
.field public final JAVA_LOG_PREFIX:Ljava/lang/String;

.field private mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

.field private final mInstance:Landroid/app/Activity;

.field private final mRootView:Landroid/widget/FrameLayout;

.field private mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewInterface:Lcom/akazuki/sampmobilecef/CefWebInterface;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/app/Activity;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "Java"

    iput-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->JAVA_LOG_PREFIX:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mRootView:Landroid/widget/FrameLayout;

    .line 38
    iput-object p2, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mInstance:Landroid/app/Activity;

    return-void
.end method

.method private createView()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mInstance:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 43
    new-instance v1, Lcom/akazuki/sampmobilecef/CefFrameLayout;

    iget-object v2, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mInstance:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/akazuki/sampmobilecef/CefFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

    .line 44
    sget v1, Lcom/akazuki/sampmobilecef/R$layout;->cef_layout:I

    iget-object v2, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 47
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/akazuki/sampmobilecef/CefFrameLayout;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

    sget v1, Lcom/akazuki/sampmobilecef/R$id;->webview:I

    invoke-virtual {v0, v1}, Lcom/akazuki/sampmobilecef/CefFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    .line 51
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    const-string v1, "Java"

    const-string v2, "The browser view has been created"

    invoke-virtual {v0, v1, v2}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private destroyView()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

    invoke-virtual {v0}, Lcom/akazuki/sampmobilecef/CefFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

    invoke-virtual {v0}, Lcom/akazuki/sampmobilecef/CefFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

    return-void
.end method

.method private isBrowserCreated()Z
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebViewInterface:Lcom/akazuki/sampmobilecef/CefWebInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public changeBrowserFocus(Z)V
    .locals 4

    .line 152
    invoke-direct {p0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->isBrowserCreated()Z

    move-result v0

    const-string v1, "Java"

    if-nez v0, :cond_0

    .line 153
    iget-object p1, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    const-string v0, "Unable to change the focus state. Browser has not been initialised"

    invoke-virtual {p1, v1, v0}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lcom/akazuki/sampmobilecef/CefFrameLayout;->setInterceptTouches(Z)V

    .line 158
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    if-eqz p1, :cond_1

    const-string p1, "focused"

    goto :goto_0

    :cond_1
    const-string p1, "unfocused"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "The new browser focus state: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroyBrowser()V
    .locals 3

    .line 110
    invoke-direct {p0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->isBrowserCreated()Z

    move-result v0

    const-string v1, "Java"

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    const-string v2, "Unable to destroy the browser. The browser has not been created"

    invoke-virtual {v0, v1, v2}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->hideBrowserView()V

    .line 117
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 118
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 119
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    const-string v2, "about:blank"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 122
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 124
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 129
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    .line 132
    iput-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebViewInterface:Lcom/akazuki/sampmobilecef/CefWebInterface;

    .line 134
    invoke-direct {p0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->destroyView()V

    .line 136
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    const-string v2, "The browser was destroyed"

    invoke-virtual {v0, v1, v2}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getClientManager()Lcom/akazuki/sampmobilecef/CefClientManager;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    return-object v0
.end method

.method public hideBrowserView()V
    .locals 3

    .line 73
    invoke-direct {p0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->isBrowserCreated()Z

    move-result v0

    const-string v1, "Java"

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    const-string v2, "Unable to hide browser. The browser has not been initialized"

    invoke-virtual {v0, v1, v2}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/akazuki/sampmobilecef/CefFrameLayout;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    const-string v2, "The browser has been hidden"

    invoke-virtual {v0, v1, v2}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initBrowser(Ljava/lang/String;)V
    .locals 5

    .line 84
    invoke-direct {p0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->isBrowserCreated()Z

    move-result v0

    const-string v1, "Java"

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->destroyBrowser()V

    .line 86
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    const-string v2, "Previous browser initialization was destroyed"

    invoke-virtual {v0, v1, v2}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->createView()V

    .line 91
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

    invoke-virtual {v0}, Lcom/akazuki/sampmobilecef/CefFrameLayout;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    const-string v2, "Hardware acceleration is not enabled in the application, be sure to enable it to speed up WebView. Docs: https://developer.android.com/topic/performance/hardware-accel"

    invoke-virtual {v0, v1, v2}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/akazuki/sampmobilecef/CefWebViewClient;

    invoke-direct {v2, p0}, Lcom/akazuki/sampmobilecef/CefWebViewClient;-><init>(Lcom/akazuki/sampmobilecef/CefJavaManager;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/akazuki/sampmobilecef/CefWebChromeClient;

    invoke-direct {v2, p0}, Lcom/akazuki/sampmobilecef/CefWebChromeClient;-><init>(Lcom/akazuki/sampmobilecef/CefJavaManager;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 97
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 99
    new-instance v0, Lcom/akazuki/sampmobilecef/CefWebInterface;

    iget-object v3, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v3, p0}, Lcom/akazuki/sampmobilecef/CefWebInterface;-><init>(Landroid/webkit/WebView;Lcom/akazuki/sampmobilecef/CefJavaManager;)V

    iput-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebViewInterface:Lcom/akazuki/sampmobilecef/CefWebInterface;

    .line 100
    iget-object v3, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    const-string v4, "Cef"

    invoke-virtual {v3, v0, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "The browser was initialized (URL: %s)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isShow()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 197
    :cond_0
    invoke-virtual {v0}, Lcom/akazuki/sampmobilecef/CefFrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public sendBrowserInitStatusToJava(ZI)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/akazuki/sampmobilecef/CefClientManager;->sendBrowserInitStatusToClient(ZI)V

    return-void
.end method

.method public sendClientEventToJava(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/akazuki/sampmobilecef/CefClientManager;->sendClientEventToClient(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendServerEventToWebView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 162
    invoke-direct {p0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->isBrowserCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object p1, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    const-string p2, "Java"

    const-string v0, "Unable to send event to WebView. Browser has not been initialised"

    invoke-virtual {p1, p2, v0}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebViewInterface:Lcom/akazuki/sampmobilecef/CefWebInterface;

    invoke-virtual {v0, p1, p2}, Lcom/akazuki/sampmobilecef/CefWebInterface;->sendServerEventToJavaScript(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBrowserUrl(Ljava/lang/String;)V
    .locals 4

    .line 140
    invoke-direct {p0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->isBrowserCreated()Z

    move-result v0

    const-string v1, "Java"

    if-nez v0, :cond_0

    .line 141
    iget-object p1, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    const-string v0, "Unable to change the browser address. The browser has not been initialized"

    invoke-virtual {p1, v1, v0}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "The URL address of the browser has been changed (new URL: %s)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClientManager(Lcom/akazuki/sampmobilecef/CefClientManager;)V
    .locals 2

    if-nez p1, :cond_0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to set up client manager"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    .line 186
    const-string v0, "Java"

    const-string v1, "Client manager has been set up"

    invoke-virtual {p1, v0, v1}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showBrowserView()V
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->isBrowserCreated()Z

    move-result v0

    const-string v1, "Java"

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    const-string v2, "Unable to show browser. The browser has not been initialized"

    invoke-virtual {v0, v1, v2}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mView:Lcom/akazuki/sampmobilecef/CefFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/akazuki/sampmobilecef/CefFrameLayout;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefJavaManager;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    const-string v2, "The browser has been shown"

    invoke-virtual {v0, v1, v2}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
