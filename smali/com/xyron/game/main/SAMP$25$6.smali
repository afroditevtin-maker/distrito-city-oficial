.class Lcom/xyron/game/main/SAMP$25$6;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xyron/game/main/SAMP$25;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP$25;)V
    .locals 0

    .line 2615
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$25$6;->this$1:Lcom/xyron/game/main/SAMP$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 2619
    const-string p1, "LogCat"

    const-string v0, "Called change Trancar"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2621
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25$6;->this$1:Lcom/xyron/game/main/SAMP$25;

    iget-object p1, p1, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    iget-wide v2, p1, Lcom/xyron/game/main/SAMP;->buttonLockCD:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    return-void

    .line 2625
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25$6;->this$1:Lcom/xyron/game/main/SAMP$25;

    iget-object p1, p1, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/xyron/game/main/SAMP;->buttonLockCD:J

    .line 2626
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25$6;->this$1:Lcom/xyron/game/main/SAMP$25;

    iget-object p1, p1, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "garage|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$25$6;->this$1:Lcom/xyron/game/main/SAMP$25;

    iget-object v1, v1, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|4|0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    return-void
.end method
