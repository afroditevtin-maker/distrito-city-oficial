.class Lcom/xyron/game/main/SAMP$16;
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

    .line 1699
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$16;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1702
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$16;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2600(Lcom/xyron/game/main/SAMP;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1703
    iget-object v2, p0, Lcom/xyron/game/main/SAMP$16;->this$0:Lcom/xyron/game/main/SAMP;

    .line 1704
    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$2700(Lcom/xyron/game/main/SAMP;)I

    move-result v3

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$16;->this$0:Lcom/xyron/game/main/SAMP;

    .line 1705
    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2800(Lcom/xyron/game/main/SAMP;)I

    move-result v4

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$16;->this$0:Lcom/xyron/game/main/SAMP;

    .line 1706
    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2900(Lcom/xyron/game/main/SAMP;)I

    move-result v5

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$16;->this$0:Lcom/xyron/game/main/SAMP;

    .line 1707
    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$3000(Lcom/xyron/game/main/SAMP;)I

    move-result v6

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$16;->this$0:Lcom/xyron/game/main/SAMP;

    .line 1708
    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$3100(Lcom/xyron/game/main/SAMP;)I

    move-result v7

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$16;->this$0:Lcom/xyron/game/main/SAMP;

    .line 1709
    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$3200(Lcom/xyron/game/main/SAMP;)I

    move-result v8

    .line 1703
    invoke-static/range {v2 .. v8}, Lcom/xyron/game/main/SAMP;->access$3300(Lcom/xyron/game/main/SAMP;IIIIII)V

    return-void
.end method
