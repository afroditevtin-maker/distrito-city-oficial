.class Lcom/xyron/game/main/ui/RadialMenu$1;
.super Landroid/webkit/WebViewClient;
.source "RadialMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/ui/RadialMenu;->showClassicMenu(Lcom/xyron/game/main/SAMP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/ui/RadialMenu;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/ui/RadialMenu;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/xyron/game/main/ui/RadialMenu$1;->this$0:Lcom/xyron/game/main/ui/RadialMenu;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 242
    iget-object p2, p0, Lcom/xyron/game/main/ui/RadialMenu$1;->this$0:Lcom/xyron/game/main/ui/RadialMenu;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/xyron/game/main/ui/RadialMenu;->access$100(Lcom/xyron/game/main/ui/RadialMenu;Landroid/webkit/WebView;Z)V

    return v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/xyron/game/main/ui/RadialMenu$1;->this$0:Lcom/xyron/game/main/ui/RadialMenu;

    invoke-static {p1}, Lcom/xyron/game/main/ui/RadialMenu;->access$000(Lcom/xyron/game/main/ui/RadialMenu;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/xyron/game/security/SealedUi;->intercept(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
