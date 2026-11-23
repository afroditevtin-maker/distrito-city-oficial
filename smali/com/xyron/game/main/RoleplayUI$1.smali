.class Lcom/xyron/game/main/RoleplayUI$1;
.super Landroid/webkit/WebViewClient;
.source "RoleplayUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/RoleplayUI;->client(Z)Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/RoleplayUI;

.field final synthetic val$hoodView:Z


# direct methods
.method constructor <init>(Lcom/xyron/game/main/RoleplayUI;Z)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    iput-boolean p2, p0, Lcom/xyron/game/main/RoleplayUI$1;->val$hoodView:Z

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 24
    iget-boolean p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->val$hoodView:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1, p2}, Lcom/xyron/game/main/RoleplayUI;->access$102(Lcom/xyron/game/main/RoleplayUI;Z)Z

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1}, Lcom/xyron/game/main/RoleplayUI;->access$200(Lcom/xyron/game/main/RoleplayUI;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1, p2}, Lcom/xyron/game/main/RoleplayUI;->access$302(Lcom/xyron/game/main/RoleplayUI;Z)Z

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1}, Lcom/xyron/game/main/RoleplayUI;->access$400(Lcom/xyron/game/main/RoleplayUI;)V

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1}, Lcom/xyron/game/main/RoleplayUI;->access$000(Lcom/xyron/game/main/RoleplayUI;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    const-string p2, "rp-state"

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 26
    iget-boolean p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->val$hoodView:Z

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1}, Lcom/xyron/game/main/RoleplayUI;->access$500(Lcom/xyron/game/main/RoleplayUI;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xyron/game/main/RoleplayUI;->access$600(Lcom/xyron/game/main/RoleplayUI;Landroid/webkit/WebView;)V

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1, v0}, Lcom/xyron/game/main/RoleplayUI;->access$502(Lcom/xyron/game/main/RoleplayUI;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1, p2}, Lcom/xyron/game/main/RoleplayUI;->access$102(Lcom/xyron/game/main/RoleplayUI;Z)Z

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1}, Lcom/xyron/game/main/RoleplayUI;->access$700(Lcom/xyron/game/main/RoleplayUI;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1}, Lcom/xyron/game/main/RoleplayUI;->access$800(Lcom/xyron/game/main/RoleplayUI;)V

    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1}, Lcom/xyron/game/main/RoleplayUI;->access$900(Lcom/xyron/game/main/RoleplayUI;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xyron/game/main/RoleplayUI;->access$600(Lcom/xyron/game/main/RoleplayUI;Landroid/webkit/WebView;)V

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1, v0}, Lcom/xyron/game/main/RoleplayUI;->access$902(Lcom/xyron/game/main/RoleplayUI;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1, p2}, Lcom/xyron/game/main/RoleplayUI;->access$302(Lcom/xyron/game/main/RoleplayUI;Z)Z

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1}, Lcom/xyron/game/main/RoleplayUI;->access$000(Lcom/xyron/game/main/RoleplayUI;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "rp-lock|"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {v0}, Lcom/xyron/game/main/RoleplayUI;->access$1000(Lcom/xyron/game/main/RoleplayUI;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {v0}, Lcom/xyron/game/main/RoleplayUI;->access$1104(Lcom/xyron/game/main/RoleplayUI;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|2|0|0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1}, Lcom/xyron/game/main/RoleplayUI;->access$000(Lcom/xyron/game/main/RoleplayUI;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p2}, Lcom/xyron/game/main/RoleplayUI;->access$1200(Lcom/xyron/game/main/RoleplayUI;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 22
    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI$1;->this$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-static {p1}, Lcom/xyron/game/main/RoleplayUI;->access$000(Lcom/xyron/game/main/RoleplayUI;)Lcom/xyron/game/main/SAMP;

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
