.class public Lcom/akazuki/sampmobilecef/CefWebInterface;
.super Ljava/lang/Object;
.source "CefWebInterface.java"


# instance fields
.field private events:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;

.field private mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Lcom/akazuki/sampmobilecef/CefJavaManager;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->gson:Lcom/google/gson/Gson;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->events:Ljava/util/HashMap;

    .line 29
    iput-object p1, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->mWebView:Landroid/webkit/WebView;

    .line 30
    iput-object p2, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    return-void
.end method


# virtual methods
.method public registerEventCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->events:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->events:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->events:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-virtual {v0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->getClientManager()Lcom/akazuki/sampmobilecef/CefClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "Event (%s) was registered in JavaScript, callback function: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Java"

    invoke-virtual {v0, p2, p1}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 46
    const-string v0, "Java"

    if-nez p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-virtual {p1}, Lcom/akazuki/sampmobilecef/CefJavaManager;->getClientManager()Lcom/akazuki/sampmobilecef/CefClientManager;

    move-result-object p1

    iget-object p2, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Can\'t send an event to a server with no name"

    invoke-virtual {p1, v0, p2}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-virtual {v1, p1, p2}, Lcom/akazuki/sampmobilecef/CefJavaManager;->sendClientEventToJava(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-virtual {p2}, Lcom/akazuki/sampmobilecef/CefJavaManager;->getClientManager()Lcom/akazuki/sampmobilecef/CefClientManager;

    move-result-object p2

    iget-object v1, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Event (%s) was sent to a server"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendServerEventToJavaScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->events:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 37
    iget-object p2, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-virtual {p2}, Lcom/akazuki/sampmobilecef/CefJavaManager;->getClientManager()Lcom/akazuki/sampmobilecef/CefClientManager;

    move-result-object p2

    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Event (%s) was sent from server, but no callbacks were found in JavaScript"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Java"

    invoke-virtual {p2, v0, p1}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/akazuki/sampmobilecef/CefWebInterface;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, p2}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p2, v3, v1

    const-string p2, "%s(%s)"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
