.class final Lcom/xyron/game/main/SAMP$SettingsSeekBarListener;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;

# instance fields
.field private final bridge:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

.field private final channel:Ljava/lang/String;

.field private final valueLabel:Landroid/widget/TextView;

.field private final title:Ljava/lang/String;

# direct methods
.method public constructor <init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP$SettingsSeekBarListener;->bridge:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    iput-object p2, p0, Lcom/xyron/game/main/SAMP$SettingsSeekBarListener;->channel:Ljava/lang/String;

    iput-object p3, p0, Lcom/xyron/game/main/SAMP$SettingsSeekBarListener;->valueLabel:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/xyron/game/main/SAMP$SettingsSeekBarListener;->title:Ljava/lang/String;

    return-void
.end method

# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$SettingsSeekBarListener;->channel:Ljava/lang/String;

    const-string v1, "chat_scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v2, p2, 0x4b

    int-to-float v3, v2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v3, v0

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$SettingsSeekBarListener;->bridge:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    invoke-virtual {v0, v3}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->setChatScale(F)V

    goto :goto_0

    :cond_0
    move v2, p2

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$SettingsSeekBarListener;->bridge:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$SettingsSeekBarListener;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->setAudioMix(Ljava/lang/String;I)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$SettingsSeekBarListener;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$SettingsSeekBarListener;->valueLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
