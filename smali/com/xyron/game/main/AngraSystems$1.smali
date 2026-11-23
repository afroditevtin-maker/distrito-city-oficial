.class Lcom/xyron/game/main/AngraSystems$1;
.super Ljava/lang/Object;
.source "AngraSystems.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/AngraSystems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AngraSystems;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/AngraSystems;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xyron/game/main/AngraSystems$1;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 40
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems$1;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {v0}, Lcom/xyron/game/main/AngraSystems;->access$000(Lcom/xyron/game/main/AngraSystems;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems$1;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {v0}, Lcom/xyron/game/main/AngraSystems;->access$100(Lcom/xyron/game/main/AngraSystems;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems$1;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {v0}, Lcom/xyron/game/main/AngraSystems;->access$200(Lcom/xyron/game/main/AngraSystems;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems$1;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {v0}, Lcom/xyron/game/main/AngraSystems;->access$300(Lcom/xyron/game/main/AngraSystems;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getAngraNativeConnectionState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    .line 42
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "panel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xyron/game/main/AngraSystems$1;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {v3}, Lcom/xyron/game/main/AngraSystems;->access$200(Lcom/xyron/game/main/AngraSystems;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " openMs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/xyron/game/main/AngraSystems$1;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {v5}, Lcom/xyron/game/main/AngraSystems;->access$400(Lcom/xyron/game/main/AngraSystems;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " nativeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rx="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " tx="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " windowFocus="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems$1;->this$0:Lcom/xyron/game/main/AngraSystems;

    .line 45
    invoke-static {v0}, Lcom/xyron/game/main/AngraSystems;->access$300(Lcom/xyron/game/main/AngraSystems;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->hasWindowFocus()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "AngraPanel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems$1;->this$0:Lcom/xyron/game/main/AngraSystems;

    invoke-static {v0}, Lcom/xyron/game/main/AngraSystems;->access$500(Lcom/xyron/game/main/AngraSystems;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    return-void
.end method
