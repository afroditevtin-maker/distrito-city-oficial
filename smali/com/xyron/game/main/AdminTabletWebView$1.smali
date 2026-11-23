.class Lcom/xyron/game/main/AdminTabletWebView$1;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "AdminTabletWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/AdminTabletWebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AdminTabletWebView;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/AdminTabletWebView;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xyron/game/main/AdminTabletWebView$1;->this$0:Lcom/xyron/game/main/AdminTabletWebView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method synthetic lambda$performEditorAction$0$com-xyron-game-main-AdminTabletWebView$1()V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/xyron/game/main/AdminTabletWebView$1;->this$0:Lcom/xyron/game/main/AdminTabletWebView;

    const-string v1, "document.activeElement&&document.activeElement.blur();"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xyron/game/main/AdminTabletWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    iget-object v0, p0, Lcom/xyron/game/main/AdminTabletWebView$1;->this$0:Lcom/xyron/game/main/AdminTabletWebView;

    invoke-virtual {v0}, Lcom/xyron/game/main/AdminTabletWebView;->dismissKeyboard()V

    return-void
.end method

.method public performEditorAction(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->performEditorAction(I)Z

    move-result p1

    return p1

    .line 24
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xyron/game/main/AdminTabletWebView$1;->this$0:Lcom/xyron/game/main/AdminTabletWebView;

    new-instance v0, Lcom/xyron/game/main/AdminTabletWebView$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/AdminTabletWebView$1$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/AdminTabletWebView$1;)V

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/AdminTabletWebView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method
