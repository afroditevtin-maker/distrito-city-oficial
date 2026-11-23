.class final Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge;
.super Ljava/lang/Object;
.source "AngraNotifyOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/AngraNotifyOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BoundsBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AngraNotifyOverlay;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/AngraNotifyOverlay;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bounds(FFFF)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 20
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

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$002(Lcom/xyron/game/main/AngraNotifyOverlay;F)F

    iget-object p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$102(Lcom/xyron/game/main/AngraNotifyOverlay;F)F

    iget-object p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p1, p3}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$202(Lcom/xyron/game/main/AngraNotifyOverlay;F)F

    iget-object p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$302(Lcom/xyron/game/main/AngraNotifyOverlay;F)F

    :cond_1
    :goto_0
    return-void
.end method
