.class Lcom/xyron/game/main/SAMP$6;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/SAMP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/SAMP;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backgroundMenuDismiss step="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v1}, Lcom/xyron/game/main/SAMP;->access$1600(Lcom/xyron/game/main/SAMP;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v1}, Lcom/xyron/game/main/SAMP;->access$1700(Lcom/xyron/game/main/SAMP;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAMP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$1800(Lcom/xyron/game/main/SAMP;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$1702(Lcom/xyron/game/main/SAMP;Z)Z

    .line 676
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$1602(Lcom/xyron/game/main/SAMP;I)I

    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$1900(Lcom/xyron/game/main/SAMP;)V

    .line 680
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3f649ba6    # 0.893f

    invoke-static {v0, v2, v3}, Lcom/xyron/game/main/SAMP;->access$1500(Lcom/xyron/game/main/SAMP;FF)V

    .line 681
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/xyron/game/main/SAMP;->access$1612(Lcom/xyron/game/main/SAMP;I)I

    .line 682
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$1700(Lcom/xyron/game/main/SAMP;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    .line 683
    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$1600(Lcom/xyron/game/main/SAMP;)I

    move-result v0

    invoke-static {}, Lcom/xyron/game/main/SAMP;->access$2000()[J

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_1

    goto :goto_0

    .line 689
    :cond_1
    invoke-static {}, Lcom/xyron/game/main/SAMP;->access$2000()[J

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v1}, Lcom/xyron/game/main/SAMP;->access$1600(Lcom/xyron/game/main/SAMP;)I

    move-result v1

    sub-int/2addr v1, v2

    aget-wide v1, v0, v1

    .line 690
    invoke-static {}, Lcom/xyron/game/main/SAMP;->access$2000()[J

    move-result-object v0

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$1600(Lcom/xyron/game/main/SAMP;)I

    move-result v3

    aget-wide v3, v0, v3

    .line 691
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$100(Lcom/xyron/game/main/SAMP;)Landroid/os/Handler;

    move-result-object v0

    iget-object v5, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    .line 692
    invoke-static {v5}, Lcom/xyron/game/main/SAMP;->access$2100(Lcom/xyron/game/main/SAMP;)Ljava/lang/Runnable;

    move-result-object v5

    sub-long/2addr v3, v1

    .line 691
    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 684
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$1702(Lcom/xyron/game/main/SAMP;Z)Z

    .line 685
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$6;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$1602(Lcom/xyron/game/main/SAMP;I)I

    return-void
.end method
