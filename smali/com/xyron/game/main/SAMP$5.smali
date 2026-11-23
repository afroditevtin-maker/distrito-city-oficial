.class Lcom/xyron/game/main/SAMP$5;
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

    .line 660
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$5;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 663
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$5;->this$0:Lcom/xyron/game/main/SAMP;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$1302(Lcom/xyron/game/main/SAMP;Z)Z

    .line 664
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$5;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$1400(Lcom/xyron/game/main/SAMP;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$5;->this$0:Lcom/xyron/game/main/SAMP;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f649ba6    # 0.893f

    invoke-static {v0, v1, v2}, Lcom/xyron/game/main/SAMP;->access$1500(Lcom/xyron/game/main/SAMP;FF)V

    return-void
.end method
