.class Lcom/xyron/game/main/ui/RadialMenu$2;
.super Ljava/lang/Object;
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

.field final synthetic val$game:Lcom/xyron/game/main/SAMP;

.field final synthetic val$menu:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/ui/RadialMenu;Landroid/webkit/WebView;Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/xyron/game/main/ui/RadialMenu$2;->this$0:Lcom/xyron/game/main/ui/RadialMenu;

    iput-object p2, p0, Lcom/xyron/game/main/ui/RadialMenu$2;->val$menu:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/xyron/game/main/ui/RadialMenu$2;->val$game:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enviar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/xyron/game/main/ui/RadialMenu$2;->this$0:Lcom/xyron/game/main/ui/RadialMenu;

    invoke-static {v0}, Lcom/xyron/game/main/ui/RadialMenu;->access$000(Lcom/xyron/game/main/ui/RadialMenu;)Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/xyron/game/main/ui/RadialMenu$2;->val$menu:Landroid/webkit/WebView;

    iget-object v6, p0, Lcom/xyron/game/main/ui/RadialMenu$2;->val$game:Lcom/xyron/game/main/SAMP;

    new-instance v7, Lcom/xyron/game/main/ui/RadialMenu$2$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/ui/RadialMenu$2$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/ui/RadialMenu$2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fechar()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/xyron/game/main/ui/RadialMenu$2;->this$0:Lcom/xyron/game/main/ui/RadialMenu;

    invoke-static {v0}, Lcom/xyron/game/main/ui/RadialMenu;->access$000(Lcom/xyron/game/main/ui/RadialMenu;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/ui/RadialMenu$2;->val$menu:Landroid/webkit/WebView;

    new-instance v2, Lcom/xyron/game/main/ui/RadialMenu$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/xyron/game/main/ui/RadialMenu$2$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/ui/RadialMenu$2;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$enviar$0$com-xyron-game-main-ui-RadialMenu$2(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/xyron/game/main/SAMP;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/xyron/game/main/ui/RadialMenu$2;->this$0:Lcom/xyron/game/main/ui/RadialMenu;

    invoke-static {v0}, Lcom/xyron/game/main/ui/RadialMenu;->access$200(Lcom/xyron/game/main/ui/RadialMenu;)Landroid/webkit/WebView;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const-string p1, "menu"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/ui/RadialMenu$2;->this$0:Lcom/xyron/game/main/ui/RadialMenu;

    invoke-virtual {p1}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 252
    invoke-virtual {p4, p3}, Lcom/xyron/game/main/SAMP;->handleClassicRadialAction(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$fechar$1$com-xyron-game-main-ui-RadialMenu$2(Landroid/webkit/WebView;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/xyron/game/main/ui/RadialMenu$2;->this$0:Lcom/xyron/game/main/ui/RadialMenu;

    invoke-static {v0}, Lcom/xyron/game/main/ui/RadialMenu;->access$200(Lcom/xyron/game/main/ui/RadialMenu;)Landroid/webkit/WebView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/ui/RadialMenu$2;->this$0:Lcom/xyron/game/main/ui/RadialMenu;

    invoke-virtual {p1}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    :cond_0
    return-void
.end method
