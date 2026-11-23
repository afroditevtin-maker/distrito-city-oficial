.class Lcom/xyron/game/main/GameDeviceOverlay$1;
.super Ljava/lang/Object;
.source "GameDeviceOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/GameDeviceOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/GameDeviceOverlay;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/GameDeviceOverlay;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay$1;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay$1;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/GameDeviceOverlay;->access$000(Lcom/xyron/game/main/GameDeviceOverlay;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay$1;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/GameDeviceOverlay;->access$100(Lcom/xyron/game/main/GameDeviceOverlay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay$1;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    const-string v1, "radio|2|0"

    invoke-static {v0, v1}, Lcom/xyron/game/main/GameDeviceOverlay;->access$200(Lcom/xyron/game/main/GameDeviceOverlay;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay$1;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/GameDeviceOverlay;->access$300(Lcom/xyron/game/main/GameDeviceOverlay;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
