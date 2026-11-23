.class final Lcom/xyron/game/main/GameVoiceEffects;
.super Ljava/lang/Object;
.source "GameVoiceEffects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/GameVoiceEffects$Effects;
    }
.end annotation


# instance fields
.field private final audio:Landroid/media/AudioManager;

.field private final callback:Landroid/media/AudioManager$AudioRecordingCallback;

.field private observing:Z

.field private final sessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xyron/game/main/GameVoiceEffects$Effects;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/GameVoiceEffects;->sessions:Ljava/util/HashMap;

    .line 25
    new-instance v0, Lcom/xyron/game/main/GameVoiceEffects$1;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/GameVoiceEffects$1;-><init>(Lcom/xyron/game/main/GameVoiceEffects;)V

    iput-object v0, p0, Lcom/xyron/game/main/GameVoiceEffects;->callback:Landroid/media/AudioManager$AudioRecordingCallback;

    .line 32
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/xyron/game/main/GameVoiceEffects;->audio:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/main/GameVoiceEffects;Ljava/util/List;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/xyron/game/main/GameVoiceEffects;->update(Ljava/util/List;)V

    return-void
.end method

.method private update(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 39
    const-string v0, "AngraVoice"

    iget-boolean v1, p0, Lcom/xyron/game/main/GameVoiceEffects;->observing:Z

    if-nez v1, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioRecordingConfiguration;)I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v3, p0, Lcom/xyron/game/main/GameVoiceEffects;->sessions:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 45
    :cond_2
    new-instance v3, Lcom/xyron/game/main/GameVoiceEffects$Effects;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/xyron/game/main/GameVoiceEffects$Effects;-><init>(Lcom/xyron/game/main/GameVoiceEffects$1;)V

    iget-object v4, p0, Lcom/xyron/game/main/GameVoiceEffects;->sessions:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :try_start_0
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-static {v2}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v4

    iput-object v4, v3, Lcom/xyron/game/main/GameVoiceEffects$Effects;->echo:Landroid/media/audiofx/AcousticEchoCanceler;

    iget-object v4, v3, Lcom/xyron/game/main/GameVoiceEffects$Effects;->echo:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/xyron/game/main/GameVoiceEffects$Effects;->echo:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v4, v5}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 48
    :cond_3
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v2}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v4

    iput-object v4, v3, Lcom/xyron/game/main/GameVoiceEffects$Effects;->noise:Landroid/media/audiofx/NoiseSuppressor;

    iget-object v4, v3, Lcom/xyron/game/main/GameVoiceEffects$Effects;->noise:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/xyron/game/main/GameVoiceEffects$Effects;->noise:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v4, v5}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    .line 50
    :cond_4
    invoke-static {}, Landroid/media/audiofx/AutomaticGainControl;->isAvailable()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    invoke-static {v2}, Landroid/media/audiofx/AutomaticGainControl;->create(I)Landroid/media/audiofx/AutomaticGainControl;

    move-result-object v4

    iput-object v4, v3, Lcom/xyron/game/main/GameVoiceEffects$Effects;->gain:Landroid/media/audiofx/AutomaticGainControl;

    iget-object v4, v3, Lcom/xyron/game/main/GameVoiceEffects$Effects;->gain:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/xyron/game/main/GameVoiceEffects$Effects;->gain:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v4, v6}, Landroid/media/audiofx/AutomaticGainControl;->setEnabled(Z)I

    .line 51
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "capture session="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " echo="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/xyron/game/main/GameVoiceEffects$Effects;->echo:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v2, :cond_6

    iget-object v2, v3, Lcom/xyron/game/main/GameVoiceEffects$Effects;->echo:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v2}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " noise="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/xyron/game/main/GameVoiceEffects$Effects;->noise:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v2, :cond_7

    iget-object v2, v3, Lcom/xyron/game/main/GameVoiceEffects$Effects;->noise:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v2}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 52
    const-string v3, "Device declined voice preprocessing"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 54
    :cond_8
    iget-object p1, p0, Lcom/xyron/game/main/GameVoiceEffects;->sessions:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 55
    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xyron/game/main/GameVoiceEffects$Effects;

    invoke-virtual {v0}, Lcom/xyron/game/main/GameVoiceEffects$Effects;->release()V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_a
    return-void
.end method


# virtual methods
.method pause()V
    .locals 2

    .line 58
    iget-boolean v0, p0, Lcom/xyron/game/main/GameVoiceEffects;->observing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/GameVoiceEffects;->audio:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/main/GameVoiceEffects;->callback:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;Landroid/media/AudioManager$AudioRecordingCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/xyron/game/main/GameVoiceEffects;->observing:Z

    iget-object v0, p0, Lcom/xyron/game/main/GameVoiceEffects;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xyron/game/main/GameVoiceEffects$Effects;

    invoke-virtual {v1}, Lcom/xyron/game/main/GameVoiceEffects$Effects;->release()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/GameVoiceEffects;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method resume()V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/xyron/game/main/GameVoiceEffects;->audio:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/xyron/game/main/GameVoiceEffects;->observing:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/main/GameVoiceEffects;->callback:Landroid/media/AudioManager$AudioRecordingCallback;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0, v1, v2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xyron/game/main/GameVoiceEffects;->observing:Z

    iget-object v0, p0, Lcom/xyron/game/main/GameVoiceEffects;->audio:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/main/GameVoiceEffects;->update(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 36
    const-string v1, "AngraVoice"

    const-string v2, "Recording observer unavailable; voice remains usable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
