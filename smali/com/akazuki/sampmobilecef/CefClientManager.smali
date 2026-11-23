.class public Lcom/akazuki/sampmobilecef/CefClientManager;
.super Ljava/lang/Object;
.source "CefClientManager.java"


# instance fields
.field private final mInstance:Landroid/app/Activity;

.field private mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mInstance:Landroid/app/Activity;

    .line 23
    invoke-virtual {p0}, Lcom/akazuki/sampmobilecef/CefClientManager;->initJava()V

    return-void
.end method


# virtual methods
.method public changeBrowserFocus(Z)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mInstance:Landroid/app/Activity;

    new-instance v1, Lcom/akazuki/sampmobilecef/CefClientManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/akazuki/sampmobilecef/CefClientManager$$ExternalSyntheticLambda6;-><init>(Lcom/akazuki/sampmobilecef/CefClientManager;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyBrowser()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mInstance:Landroid/app/Activity;

    new-instance v1, Lcom/akazuki/sampmobilecef/CefClientManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/akazuki/sampmobilecef/CefClientManager$$ExternalSyntheticLambda4;-><init>(Lcom/akazuki/sampmobilecef/CefClientManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideBrowser()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mInstance:Landroid/app/Activity;

    new-instance v1, Lcom/akazuki/sampmobilecef/CefClientManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/akazuki/sampmobilecef/CefClientManager$$ExternalSyntheticLambda0;-><init>(Lcom/akazuki/sampmobilecef/CefClientManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initBrowser(Ljava/lang/String;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mInstance:Landroid/app/Activity;

    new-instance v1, Lcom/akazuki/sampmobilecef/CefClientManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/akazuki/sampmobilecef/CefClientManager$$ExternalSyntheticLambda1;-><init>(Lcom/akazuki/sampmobilecef/CefClientManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public native initJava()V
.end method

.method synthetic lambda$changeBrowserFocus$5$com-akazuki-sampmobilecef-CefClientManager(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-virtual {v0, p1}, Lcom/akazuki/sampmobilecef/CefJavaManager;->changeBrowserFocus(Z)V

    return-void
.end method

.method synthetic lambda$destroyBrowser$1$com-akazuki-sampmobilecef-CefClientManager()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-virtual {v0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->destroyBrowser()V

    return-void
.end method

.method synthetic lambda$hideBrowser$3$com-akazuki-sampmobilecef-CefClientManager()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-virtual {v0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->hideBrowserView()V

    return-void
.end method

.method synthetic lambda$initBrowser$0$com-akazuki-sampmobilecef-CefClientManager(Ljava/lang/String;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-virtual {v0, p1}, Lcom/akazuki/sampmobilecef/CefJavaManager;->initBrowser(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$sendServerEventToJava$6$com-akazuki-sampmobilecef-CefClientManager(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-virtual {v0, p1, p2}, Lcom/akazuki/sampmobilecef/CefJavaManager;->sendServerEventToWebView(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setBrowserUrl$4$com-akazuki-sampmobilecef-CefClientManager(Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-virtual {v0, p1}, Lcom/akazuki/sampmobilecef/CefJavaManager;->setBrowserUrl(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$showBrowser$2$com-akazuki-sampmobilecef-CefClientManager()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-virtual {v0}, Lcom/akazuki/sampmobilecef/CefJavaManager;->showBrowserView()V

    return-void
.end method

.method public native printLog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native sendBrowserInitStatusToClient(ZI)V
.end method

.method public native sendClientEventToClient(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public sendServerEventToJava(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mInstance:Landroid/app/Activity;

    new-instance v1, Lcom/akazuki/sampmobilecef/CefClientManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/akazuki/sampmobilecef/CefClientManager$$ExternalSyntheticLambda3;-><init>(Lcom/akazuki/sampmobilecef/CefClientManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBrowserUrl(Ljava/lang/String;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mInstance:Landroid/app/Activity;

    new-instance v1, Lcom/akazuki/sampmobilecef/CefClientManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/akazuki/sampmobilecef/CefClientManager$$ExternalSyntheticLambda5;-><init>(Lcom/akazuki/sampmobilecef/CefClientManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setJavaManager(Lcom/akazuki/sampmobilecef/CefJavaManager;)V
    .locals 3

    if-nez p1, :cond_0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to set up java manager"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Java manager has been set up"

    const-string v0, "Java"

    invoke-virtual {p0, v0, p1}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "1.0.0"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "Library version: %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/akazuki/sampmobilecef/CefClientManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showBrowser()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/akazuki/sampmobilecef/CefClientManager;->mInstance:Landroid/app/Activity;

    new-instance v1, Lcom/akazuki/sampmobilecef/CefClientManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/akazuki/sampmobilecef/CefClientManager$$ExternalSyntheticLambda2;-><init>(Lcom/akazuki/sampmobilecef/CefClientManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
