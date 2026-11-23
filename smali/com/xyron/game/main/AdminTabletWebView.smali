.class final Lcom/xyron/game/main/AdminTabletWebView;
.super Landroid/webkit/WebView;
.source "AdminTabletWebView.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method dismissKeyboard()V
    .locals 3

    .line 14
    invoke-virtual {p0}, Lcom/xyron/game/main/AdminTabletWebView;->clearFocus()V

    .line 15
    invoke-virtual {p0}, Lcom/xyron/game/main/AdminTabletWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/xyron/game/main/AdminTabletWebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 19
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_0
    new-instance v0, Lcom/xyron/game/main/AdminTabletWebView$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/xyron/game/main/AdminTabletWebView$1;-><init>(Lcom/xyron/game/main/AdminTabletWebView;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method
