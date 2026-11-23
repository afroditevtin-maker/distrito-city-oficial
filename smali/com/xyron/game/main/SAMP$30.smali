.class Lcom/xyron/game/main/SAMP$30;
.super Ljava/lang/Object;
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

.field final synthetic val$documentStarted:J

.field final synthetic val$overlayName:Ljava/lang/String;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;J)V
    .locals 0

    .line 2944
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$30;->this$0:Lcom/xyron/game/main/SAMP;

    iput-object p2, p0, Lcom/xyron/game/main/SAMP$30;->val$assetUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/xyron/game/main/SAMP$30;->val$webView:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/xyron/game/main/SAMP$30;->val$overlayName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/xyron/game/main/SAMP$30;->val$documentStarted:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$ready$0$com-xyron-game-main-SAMP$30(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;J)V
    .locals 2

    .line 2946
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$30;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$30;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2947
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$30;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$9100(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;

    move-result-object p1

    if-eq p2, p1, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/SAMP$30;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$9200(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;

    move-result-object p1

    if-ne p2, p1, :cond_2

    .line 2948
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Overlay DOM ready: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " after "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p4

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SAMP"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$30;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1, p2}, Lcom/xyron/game/main/SAMP;->access$9300(Lcom/xyron/game/main/SAMP;Landroid/webkit/WebView;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public ready()V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2945
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$30;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$30;->val$assetUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/xyron/game/main/SAMP$30;->val$webView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/xyron/game/main/SAMP$30;->val$overlayName:Ljava/lang/String;

    iget-wide v6, p0, Lcom/xyron/game/main/SAMP$30;->val$documentStarted:J

    new-instance v8, Lcom/xyron/game/main/SAMP$30$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/xyron/game/main/SAMP$30$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/SAMP$30;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;J)V

    invoke-virtual {v0, v8}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
