.class Lcom/xyron/game/main/InventoryAdapter$1;
.super Landroid/webkit/WebViewClient;
.source "InventoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/InventoryAdapter;->createHotbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/InventoryAdapter;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/InventoryAdapter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xyron/game/main/InventoryAdapter$1;->this$0:Lcom/xyron/game/main/InventoryAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onRenderProcessGone$0$com-xyron-game-main-InventoryAdapter$1()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter$1;->this$0:Lcom/xyron/game/main/InventoryAdapter;

    invoke-static {v0}, Lcom/xyron/game/main/InventoryAdapter;->access$000(Lcom/xyron/game/main/InventoryAdapter;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter$1;->this$0:Lcom/xyron/game/main/InventoryAdapter;

    invoke-static {v0}, Lcom/xyron/game/main/InventoryAdapter;->access$300(Lcom/xyron/game/main/InventoryAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/InventoryAdapter$1;->this$0:Lcom/xyron/game/main/InventoryAdapter;

    invoke-static {v0}, Lcom/xyron/game/main/InventoryAdapter;->access$400(Lcom/xyron/game/main/InventoryAdapter;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter$1;->this$0:Lcom/xyron/game/main/InventoryAdapter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xyron/game/main/InventoryAdapter;->access$102(Lcom/xyron/game/main/InventoryAdapter;Z)Z

    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter$1;->this$0:Lcom/xyron/game/main/InventoryAdapter;

    invoke-virtual {p1}, Lcom/xyron/game/main/InventoryAdapter;->publish()V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 51
    iget-object p2, p0, Lcom/xyron/game/main/InventoryAdapter$1;->this$0:Lcom/xyron/game/main/InventoryAdapter;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/xyron/game/main/InventoryAdapter;->access$102(Lcom/xyron/game/main/InventoryAdapter;Z)Z

    iget-object p2, p0, Lcom/xyron/game/main/InventoryAdapter$1;->this$0:Lcom/xyron/game/main/InventoryAdapter;

    invoke-static {p2}, Lcom/xyron/game/main/InventoryAdapter;->access$200(Lcom/xyron/game/main/InventoryAdapter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter$1;->this$0:Lcom/xyron/game/main/InventoryAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xyron/game/main/InventoryAdapter;->access$302(Lcom/xyron/game/main/InventoryAdapter;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 52
    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter$1;->this$0:Lcom/xyron/game/main/InventoryAdapter;

    invoke-static {p1}, Lcom/xyron/game/main/InventoryAdapter;->access$000(Lcom/xyron/game/main/InventoryAdapter;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter$1;->this$0:Lcom/xyron/game/main/InventoryAdapter;

    invoke-static {p1}, Lcom/xyron/game/main/InventoryAdapter;->access$200(Lcom/xyron/game/main/InventoryAdapter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance p2, Lcom/xyron/game/main/InventoryAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/xyron/game/main/InventoryAdapter$1$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/InventoryAdapter$1;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/xyron/game/main/InventoryAdapter$1;->this$0:Lcom/xyron/game/main/InventoryAdapter;

    invoke-static {p1}, Lcom/xyron/game/main/InventoryAdapter;->access$000(Lcom/xyron/game/main/InventoryAdapter;)Lcom/xyron/game/main/SAMP;

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
