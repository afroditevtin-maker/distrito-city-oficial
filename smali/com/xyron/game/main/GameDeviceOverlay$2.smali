.class Lcom/xyron/game/main/GameDeviceOverlay$2;
.super Landroid/webkit/WebView;
.source "GameDeviceOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/GameDeviceOverlay;->open(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private hit:Z

.field final synthetic this$0:Lcom/xyron/game/main/GameDeviceOverlay;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/GameDeviceOverlay;Landroid/content/Context;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay$2;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/xyron/game/main/GameDeviceOverlay$2;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/xyron/game/main/GameDeviceOverlay$2;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/xyron/game/main/GameDeviceOverlay$2;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {v4}, Lcom/xyron/game/main/GameDeviceOverlay;->access$400(Lcom/xyron/game/main/GameDeviceOverlay;)F

    move-result v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/xyron/game/main/GameDeviceOverlay$2;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {v4}, Lcom/xyron/game/main/GameDeviceOverlay;->access$500(Lcom/xyron/game/main/GameDeviceOverlay;)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay$2;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/GameDeviceOverlay;->access$600(Lcom/xyron/game/main/GameDeviceOverlay;)F

    move-result v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay$2;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/GameDeviceOverlay;->access$700(Lcom/xyron/game/main/GameDeviceOverlay;)F

    move-result v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay$2;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/GameDeviceOverlay;->access$500(Lcom/xyron/game/main/GameDeviceOverlay;)F

    move-result v0

    iget-object v3, p0, Lcom/xyron/game/main/GameDeviceOverlay$2;->this$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-static {v3}, Lcom/xyron/game/main/GameDeviceOverlay;->access$400(Lcom/xyron/game/main/GameDeviceOverlay;)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xyron/game/main/GameDeviceOverlay$2;->hit:Z

    .line 95
    :cond_1
    iget-boolean v0, p0, Lcom/xyron/game/main/GameDeviceOverlay$2;->hit:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    :cond_3
    iput-boolean v1, p0, Lcom/xyron/game/main/GameDeviceOverlay$2;->hit:Z

    :cond_4
    return v0
.end method
