.class Lcom/xyron/game/main/SAMP$31;
.super Landroid/webkit/WebChromeClient;
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

    .line 2990
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$31;->this$0:Lcom/xyron/game/main/SAMP;

    iput-object p2, p0, Lcom/xyron/game/main/SAMP$31;->val$assetUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/xyron/game/main/SAMP$31;->val$overlayName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic lambda$onJsConfirm$0(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2993
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method

.method static synthetic lambda$onJsConfirm$1(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2993
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method static synthetic lambda$onJsConfirm$2(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V
    .locals 0

    .line 2994
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 2992
    new-instance p1, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    iget-object p2, p0, Lcom/xyron/game/main/SAMP$31;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string p2, "Confirmar acao"

    invoke-virtual {p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/xyron/game/main/SAMP$31$$ExternalSyntheticLambda0;

    invoke-direct {p2, p4}, Lcom/xyron/game/main/SAMP$31$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/JsResult;)V

    .line 2993
    const-string p3, "Confirmar"

    invoke-virtual {p1, p3, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/xyron/game/main/SAMP$31$$ExternalSyntheticLambda1;

    invoke-direct {p2, p4}, Lcom/xyron/game/main/SAMP$31$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/JsResult;)V

    const-string p3, "Cancelar"

    invoke-virtual {p1, p3, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/xyron/game/main/SAMP$31$$ExternalSyntheticLambda2;

    invoke-direct {p2, p4}, Lcom/xyron/game/main/SAMP$31$$ExternalSyntheticLambda2;-><init>(Landroid/webkit/JsResult;)V

    .line 2994
    invoke-virtual {p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 2997
    const-string p1, "file:///android_asset/interfaces/iphone/index.html"

    iget-object p3, p0, Lcom/xyron/game/main/SAMP$31;->val$assetUrl:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2998
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$31;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$9400(Lcom/xyron/game/main/SAMP;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/SAMP$31;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$9400(Lcom/xyron/game/main/SAMP;)Landroid/webkit/ValueCallback;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 2999
    :cond_1
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$31;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1, p2}, Lcom/xyron/game/main/SAMP;->access$9402(Lcom/xyron/game/main/SAMP;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 3001
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3002
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$31;->this$0:Lcom/xyron/game/main/SAMP;

    const v1, 0xa625

    invoke-virtual {v0, p1, v1}, Lcom/xyron/game/main/SAMP;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3003
    :catch_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$31;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1, p3}, Lcom/xyron/game/main/SAMP;->access$9402(Lcom/xyron/game/main/SAMP;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    invoke-interface {p2, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xyron/game/main/SAMP$31;->this$0:Lcom/xyron/game/main/SAMP;

    const-string p2, "N\u00e3o foi poss\u00edvel abrir suas imagens."

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
