.class public Lcom/akazuki/sampmobilecef/CefWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "CefWebChromeClient.java"


# instance fields
.field mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;


# direct methods
.method public constructor <init>(Lcom/akazuki/sampmobilecef/CefJavaManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/akazuki/sampmobilecef/CefWebChromeClient;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 8

    .line 27
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefWebChromeClient;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-virtual {v0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->getClientManager()Lcom/akazuki/sampmobilecef/CefClientManager;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->name()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 31
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    .line 27
    const-string v1, "[%s:CONSOLE(%d)] \"%s\", source: %s (%d)"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebView"

    invoke-virtual {v0, v2, v1}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method
