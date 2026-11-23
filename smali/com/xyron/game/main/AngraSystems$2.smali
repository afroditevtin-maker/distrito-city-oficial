.class Lcom/xyron/game/main/AngraSystems$2;
.super Landroid/webkit/WebChromeClient;
.source "AngraSystems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/AngraSystems;->open(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AngraSystems;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/AngraSystems;Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/xyron/game/main/AngraSystems$2;->this$0:Lcom/xyron/game/main/AngraSystems;

    iput-object p2, p0, Lcom/xyron/game/main/AngraSystems$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic lambda$onJsConfirm$0(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method

.method static synthetic lambda$onJsConfirm$1(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method static synthetic lambda$onJsConfirm$2(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V
    .locals 0

    .line 157
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2

    .line 160
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v0

    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    if-ne v0, v1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " script error at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AngraPanel"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 155
    new-instance p1, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    iget-object p2, p0, Lcom/xyron/game/main/AngraSystems$2;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {p2}, Lcom/xyron/game/main/AngraSystems;->access$300(Lcom/xyron/game/main/AngraSystems;)Lcom/xyron/game/main/SAMP;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string p2, "Confirmar a\u00e7\u00e3o"

    invoke-virtual {p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/xyron/game/main/AngraSystems$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p4}, Lcom/xyron/game/main/AngraSystems$2$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/JsResult;)V

    .line 156
    const-string p3, "Confirmar"

    invoke-virtual {p1, p3, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/xyron/game/main/AngraSystems$2$$ExternalSyntheticLambda1;

    invoke-direct {p2, p4}, Lcom/xyron/game/main/AngraSystems$2$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/JsResult;)V

    const-string p3, "Cancelar"

    invoke-virtual {p1, p3, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/xyron/game/main/AngraSystems$2$$ExternalSyntheticLambda2;

    invoke-direct {p2, p4}, Lcom/xyron/game/main/AngraSystems$2$$ExternalSyntheticLambda2;-><init>(Landroid/webkit/JsResult;)V

    .line 157
    invoke-virtual {p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method
