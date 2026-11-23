.class public Lcom/xyron/game/launcher/ui/CropVideoView;
.super Landroid/widget/VideoView;
.source "CropVideoView.java"


# instance fields
.field private playbackAllowed:Z

.field private released:Z

.field private sourceHeight:I

.field private sourceWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private applyCrop()V
    .locals 4

    .line 24
    iget v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->sourceWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->sourceHeight:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ui/CropVideoView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ui/CropVideoView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->sourceWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->sourceHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 26
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ui/CropVideoView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ui/CropVideoView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 29
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/xyron/game/launcher/ui/CropVideoView;->setScaleX(F)V

    div-float/2addr v1, v0

    .line 30
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/ui/CropVideoView;->setScaleY(F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public isPlaybackAllowed()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->playbackAllowed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->released:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReleased()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->released:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 48
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/ui/CropVideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/VideoView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/xyron/game/launcher/ui/CropVideoView;->applyCrop()V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->playbackAllowed:Z

    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->playbackAllowed:Z

    invoke-super {p0}, Landroid/widget/VideoView;->resume()V

    return-void
.end method

.method public setVideoDimensions(II)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->sourceWidth:I

    iput p2, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->sourceHeight:I

    invoke-direct {p0}, Lcom/xyron/game/launcher/ui/CropVideoView;->applyCrop()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->playbackAllowed:Z

    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->playbackAllowed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;->released:Z

    invoke-super {p0}, Landroid/widget/VideoView;->stopPlayback()V

    return-void
.end method
