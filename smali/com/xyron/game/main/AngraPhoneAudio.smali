.class final Lcom/xyron/game/main/AngraPhoneAudio;
.super Ljava/lang/Object;
.source "AngraPhoneAudio.java"


# instance fields
.field private call:I

.field private enabled:Z

.field private final game:Lcom/xyron/game/main/SAMP;

.field private notice:Landroid/media/MediaPlayer;

.field private ring:Landroid/media/MediaPlayer;

.field private silent:Z

.field private volume:I


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->enabled:Z

    const/16 v0, 0x3c

    iput v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->volume:I

    .line 9
    iput-object p1, p0, Lcom/xyron/game/main/AngraPhoneAudio;->game:Lcom/xyron/game/main/SAMP;

    return-void
.end method

.method private audible()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->silent:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->volume:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private create(Ljava/lang/String;IZ)Landroid/media/MediaPlayer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    new-instance p2, Landroid/media/MediaPlayer;

    invoke-direct {p2}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :try_start_1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->gain()F

    move-result p3

    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->gain()F

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 19
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p2

    :catchall_0
    move-exception p3

    if-eqz p1, :cond_1

    .line 16
    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->release()V

    throw p1
.end method

.method private gain()F
    .locals 3

    .line 12
    iget v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->volume:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/xyron/game/main/AngraPhoneAudio;->game:Lcom/xyron/game/main/SAMP;

    const-string v2, "sfx"

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->localAudioGain(Ljava/lang/String;)F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method private stopNotice()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->notice:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->notice:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method private updateRing()V
    .locals 3

    .line 22
    iget v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->call:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->audible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->ring:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->gain()F

    move-result v1

    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->gain()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void

    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->stopNotice()V

    :try_start_0
    const-string v0, "audio/phone_incoming.mp3"

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/xyron/game/main/AngraPhoneAudio;->create(Ljava/lang/String;IZ)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->ring:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AngraAudio"

    const-string v1, "Incoming call audio unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 22
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->ring:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->ring:Landroid/media/MediaPlayer;

    :cond_3
    return-void
.end method


# virtual methods
.method callState(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/xyron/game/main/AngraPhoneAudio;->call:I

    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->updateRing()V

    return-void
.end method

.method synthetic lambda$notification$0$com-xyron-game-main-AngraPhoneAudio(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->notice:Landroid/media/MediaPlayer;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xyron/game/main/AngraPhoneAudio;->notice:Landroid/media/MediaPlayer;

    :cond_0
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method notification()V
    .locals 3

    .line 26
    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->audible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->ring:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->stopNotice()V

    :try_start_0
    const-string v0, "audio/phone_notification.mp3"

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/xyron/game/main/AngraPhoneAudio;->create(Ljava/lang/String;IZ)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->notice:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xyron/game/main/AngraPhoneAudio$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/xyron/game/main/AngraPhoneAudio$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/AngraPhoneAudio;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->notice:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AngraAudio"

    const-string v1, "Notification audio unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method refreshAudioMix()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->gain()F

    move-result v0

    iget-object v1, p0, Lcom/xyron/game/main/AngraPhoneAudio;->ring:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/AngraPhoneAudio;->notice:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->call:I

    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->updateRing()V

    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->stopNotice()V

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->silent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->enabled:Z

    const/16 v0, 0x3c

    iput v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->volume:I

    return-void
.end method

.method settings(Lorg/json/JSONObject;)V
    .locals 2

    .line 10
    const-string v0, "silent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->silent:Z

    const-string v0, "notifications"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraPhoneAudio;->enabled:Z

    const-string v0, "volume"

    const/16 v1, 0x3c

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/xyron/game/main/AngraPhoneAudio;->volume:I

    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->updateRing()V

    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->audible()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/main/AngraPhoneAudio;->stopNotice()V

    :cond_0
    return-void
.end method
