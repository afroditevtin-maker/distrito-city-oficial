.class Lcom/xyron/game/main/SAMP$25$8;
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

    .line 2640
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$25$8;->this$1:Lcom/xyron/game/main/SAMP$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2644
    const-string p1, "LogCat"

    const-string v0, "Called change f"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25$8;->this$1:Lcom/xyron/game/main/SAMP$25;

    iget-object p1, p1, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->onClickButton(I)V

    .line 2646
    invoke-static {}, Lcom/xyron/game/main/SAMP;->access$500()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/SAMP$25$8;->this$1:Lcom/xyron/game/main/SAMP$25;

    iget-object p1, p1, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->pulseHudFixSecondaryKey()V

    :cond_0
    return-void
.end method
