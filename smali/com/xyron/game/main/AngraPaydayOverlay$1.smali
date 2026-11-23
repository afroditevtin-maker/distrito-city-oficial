.class Lcom/xyron/game/main/AngraPaydayOverlay$1;
.super Landroid/webkit/WebView;
.source "AngraPaydayOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/AngraPaydayOverlay;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AngraPaydayOverlay;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/AngraPaydayOverlay;Landroid/content/Context;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$1;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraPaydayOverlay$1;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraPaydayOverlay$1;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/xyron/game/main/AngraPaydayOverlay$1;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {v4}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$200(Lcom/xyron/game/main/AngraPaydayOverlay;)F

    move-result v5

    iget-object v6, p0, Lcom/xyron/game/main/AngraPaydayOverlay$1;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {v6}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$000(Lcom/xyron/game/main/AngraPaydayOverlay;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/xyron/game/main/AngraPaydayOverlay$1;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {v5}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$300(Lcom/xyron/game/main/AngraPaydayOverlay;)F

    move-result v5

    iget-object v6, p0, Lcom/xyron/game/main/AngraPaydayOverlay$1;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {v6}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$100(Lcom/xyron/game/main/AngraPaydayOverlay;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/xyron/game/main/AngraPaydayOverlay$1;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {v5}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$000(Lcom/xyron/game/main/AngraPaydayOverlay;)F

    move-result v5

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/xyron/game/main/AngraPaydayOverlay$1;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {v5}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$200(Lcom/xyron/game/main/AngraPaydayOverlay;)F

    move-result v5

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay$1;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$100(Lcom/xyron/game/main/AngraPaydayOverlay;)F

    move-result v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay$1;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$300(Lcom/xyron/game/main/AngraPaydayOverlay;)F

    move-result v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v4, v0}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$702(Lcom/xyron/game/main/AngraPaydayOverlay;Z)Z

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/AngraPaydayOverlay$1;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {v0}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$700(Lcom/xyron/game/main/AngraPaydayOverlay;)Z

    move-result v0

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
    iget-object p1, p0, Lcom/xyron/game/main/AngraPaydayOverlay$1;->this$0:Lcom/xyron/game/main/AngraPaydayOverlay;

    invoke-static {p1, v1}, Lcom/xyron/game/main/AngraPaydayOverlay;->access$702(Lcom/xyron/game/main/AngraPaydayOverlay;Z)Z

    :cond_4
    return v0
.end method
