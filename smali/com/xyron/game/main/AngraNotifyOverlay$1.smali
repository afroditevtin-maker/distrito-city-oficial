.class Lcom/xyron/game/main/AngraNotifyOverlay$1;
.super Landroid/webkit/WebView;
.source "AngraNotifyOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/AngraNotifyOverlay;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

.field private touching:Z


# direct methods
.method constructor <init>(Lcom/xyron/game/main/AngraNotifyOverlay;Landroid/content/Context;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay$1;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraNotifyOverlay$1;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraNotifyOverlay$1;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 43
    iget-object v4, p0, Lcom/xyron/game/main/AngraNotifyOverlay$1;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {v4}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$000(Lcom/xyron/game/main/AngraNotifyOverlay;)F

    move-result v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/xyron/game/main/AngraNotifyOverlay$1;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {v4}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$200(Lcom/xyron/game/main/AngraNotifyOverlay;)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay$1;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$100(Lcom/xyron/game/main/AngraNotifyOverlay;)F

    move-result v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay$1;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$300(Lcom/xyron/game/main/AngraNotifyOverlay;)F

    move-result v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay$1;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$200(Lcom/xyron/game/main/AngraNotifyOverlay;)F

    move-result v0

    iget-object v3, p0, Lcom/xyron/game/main/AngraNotifyOverlay$1;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {v3}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$000(Lcom/xyron/game/main/AngraNotifyOverlay;)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay$1;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$300(Lcom/xyron/game/main/AngraNotifyOverlay;)F

    move-result v0

    iget-object v3, p0, Lcom/xyron/game/main/AngraNotifyOverlay$1;->this$0:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-static {v3}, Lcom/xyron/game/main/AngraNotifyOverlay;->access$100(Lcom/xyron/game/main/AngraNotifyOverlay;)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay$1;->touching:Z

    .line 45
    :cond_1
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay$1;->touching:Z

    if-nez v0, :cond_2

    return v1

    .line 46
    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    :cond_3
    iput-boolean v1, p0, Lcom/xyron/game/main/AngraNotifyOverlay$1;->touching:Z

    :cond_4
    return v0
.end method
