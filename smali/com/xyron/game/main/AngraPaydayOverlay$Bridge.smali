.class final Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;
.super Ljava/lang/Object;
.source "AngraPaydayOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/AngraPaydayOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Bridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AngraPaydayOverlay;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/AngraPaydayOverlay;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bounds(FFFF)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 18
    invoke-static {p1}, Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge$$ExternalSyntheticBackport0;->m(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge$$ExternalSyntheticBackport0;->m(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge$$ExternalSyntheticBackport0;->m(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge$$ExternalSyntheticBackport0;->m(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$002(Lcom/xyron/game/main/AngraPaydayOverlay;F)F

    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$102(Lcom/xyron/game/main/AngraPaydayOverlay;F)F

    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p1, p3}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$202(Lcom/xyron/game/main/AngraPaydayOverlay;F)F

    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$302(Lcom/xyron/game/main/AngraPaydayOverlay;F)F

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$send$0$com-xyron-game-main-AngraPaydayOverlay$Bridge()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$502(Lcom/xyron/game/main/AngraPaydayOverlay;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$302(Lcom/xyron/game/main/AngraPaydayOverlay;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$202(Lcom/xyron/game/main/AngraPaydayOverlay;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$102(Lcom/xyron/game/main/AngraPaydayOverlay;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$002(Lcom/xyron/game/main/AngraPaydayOverlay;F)F

    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$600(Lcom/xyron/game/main/AngraPaydayOverlay;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$600(Lcom/xyron/game/main/AngraPaydayOverlay;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 22
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_1

    const-string v0, "paydayClose"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "event"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {p1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$400(Lcom/xyron/game/main/AngraPaydayOverlay;)Lcom/xyron/game/main/SAMP;

    move-result-object p1

    new-instance v0, Lcom/xyron/game/main/AngraPaydayOverlay$Bridge$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/AngraPaydayOverlay$Bridge$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/AngraPaydayOverlay$Bridge;)V

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
