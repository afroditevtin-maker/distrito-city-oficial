.class public final Lcom/raiferoleplay/game/cef/CefBrowser;
.super Ljava/lang/Object;
.source "CefBrowser.java"


# static fields
.field public static final CEF_CREATE:I = 0x1

.field public static final CEF_DESTROY:I = 0x2

.field public static final CEF_EVAL_JS:I = 0x6

.field public static final CEF_EVENT_CLICK:I = 0x6a

.field public static final CEF_EVENT_CONSOLE:I = 0x68

.field public static final CEF_EVENT_ERROR:I = 0x69

.field public static final CEF_EVENT_LOADED:I = 0x65

.field public static final CEF_EVENT_TITLE_CHANGED:I = 0x67

.field public static final CEF_EVENT_URL_CHANGED:I = 0x66

.field public static final CEF_INPUT_KEY_DOWN:I = 0xf

.field public static final CEF_INPUT_KEY_UP:I = 0x10

.field public static final CEF_INPUT_MOUSE_DOWN:I = 0xc

.field public static final CEF_INPUT_MOUSE_MOVE:I = 0xb

.field public static final CEF_INPUT_MOUSE_UP:I = 0xd

.field public static final CEF_INPUT_SCROLL:I = 0xe

.field public static final CEF_INPUT_TEXT:I = 0x11

.field public static final CEF_LOAD_URL:I = 0x3

.field public static final CEF_RELOAD:I = 0x4

.field public static final CEF_SET_BG_ALPHA:I = 0xa

.field public static final CEF_SET_BOUNDS:I = 0x7

.field public static final CEF_SET_FOCUS:I = 0x9

.field public static final CEF_SET_INTERACTIVE:I = 0x12

.field public static final CEF_SET_VISIBLE:I = 0x8

.field public static final CEF_STOP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CefBrowserCompat"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureWebView(I)[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getScreenSize()[I
    .locals 2

    .line 62
    invoke-static {}, Lcom/xyron/game/main/SAMP;->getInstance()Lcom/xyron/game/main/SAMP;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 69
    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    filled-new-array {v1, v0}, [I

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 64
    filled-new-array {v0, v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public static hideAllForPause()V
    .locals 0

    return-void
.end method

.method public static initialize()V
    .locals 2

    .line 49
    const-string v0, "CefBrowserCompat"

    const-string v1, "Legacy CEF bridge initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native nativeSendEvent(IILjava/lang/String;)V
.end method

.method public static receiveCefPacket(IILjava/lang/String;)V
    .locals 1

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "CEF packet ignored by compatibility bridge: browserId="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " actionId="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CefBrowserCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static restoreAfterResume()V
    .locals 0

    return-void
.end method

.method public static shutdown()V
    .locals 0

    return-void
.end method
