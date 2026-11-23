.class final Lcom/xyron/game/main/GameVoiceEffects$Effects;
.super Ljava/lang/Object;
.source "GameVoiceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/GameVoiceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Effects"
.end annotation


# instance fields
.field echo:Landroid/media/audiofx/AcousticEchoCanceler;

.field gain:Landroid/media/audiofx/AutomaticGainControl;

.field noise:Landroid/media/audiofx/NoiseSuppressor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xyron/game/main/GameVoiceEffects$1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xyron/game/main/GameVoiceEffects$Effects;-><init>()V

    return-void
.end method


# virtual methods
.method release()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xyron/game/main/GameVoiceEffects$Effects;->echo:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/GameVoiceEffects$Effects;->noise:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/GameVoiceEffects$Effects;->gain:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->release()V

    :cond_2
    return-void
.end method
