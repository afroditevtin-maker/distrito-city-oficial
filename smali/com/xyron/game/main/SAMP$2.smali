.class Lcom/xyron/game/main/SAMP$2;
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

    .line 588
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$2;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 591
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$2;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$400(Lcom/xyron/game/main/SAMP;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$2;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$300(Lcom/xyron/game/main/SAMP;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$2;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 595
    :cond_0
    invoke-static {}, Lcom/xyron/game/main/SAMP;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$2;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getHudFixPlayerId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 599
    const-string v1, "SAMP"

    const-string v2, "Native player id helper unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, -0x1

    .line 602
    :goto_0
    iget-object v1, p0, Lcom/xyron/game/main/SAMP$2;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v1}, Lcom/xyron/game/main/SAMP;->access$600(Lcom/xyron/game/main/SAMP;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 603
    iget-object v1, p0, Lcom/xyron/game/main/SAMP$2;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v1}, Lcom/xyron/game/main/SAMP;->access$600(Lcom/xyron/game/main/SAMP;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ltz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "--"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$2;->this$0:Lcom/xyron/game/main/SAMP;

    .line 604
    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->lerNomeDoPlayer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$2;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$700(Lcom/xyron/game/main/SAMP;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 607
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$2;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$700(Lcom/xyron/game/main/SAMP;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$2;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v1}, Lcom/xyron/game/main/SAMP;->access$800(Lcom/xyron/game/main/SAMP;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$2;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v1}, Lcom/xyron/game/main/SAMP;->access$900(Lcom/xyron/game/main/SAMP;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/xyron/game/main/SAMP$2;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v1}, Lcom/xyron/game/main/SAMP;->access$800(Lcom/xyron/game/main/SAMP;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :cond_5
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$2;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$100(Lcom/xyron/game/main/SAMP;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_3
    return-void
.end method
