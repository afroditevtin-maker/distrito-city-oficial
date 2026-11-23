.class final Lcom/xyron/game/main/VehicleLockAudio;
.super Ljava/lang/Object;
.source "VehicleLockAudio.java"


# instance fields
.field private final game:Lcom/xyron/game/main/SAMP;

.field private final playing:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private final seen:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/VehicleLockAudio;->seen:Ljava/util/LinkedHashSet;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/VehicleLockAudio;->playing:Ljava/util/HashMap;

    .line 8
    iput-object p1, p0, Lcom/xyron/game/main/VehicleLockAudio;->game:Lcom/xyron/game/main/SAMP;

    return-void
.end method


# virtual methods
.method synthetic lambda$play$0$com-xyron-game-main-VehicleLockAudio(ILandroid/media/MediaPlayer;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/xyron/game/main/VehicleLockAudio;->playing:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/VehicleLockAudio;->playing:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method play(Lorg/json/JSONObject;)V
    .locals 14

    .line 10
    const-string v0, "vehicle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "generation"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "serial"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xyron/game/main/VehicleLockAudio;->seen:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/VehicleLockAudio;->seen:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/VehicleLockAudio;->seen:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/main/VehicleLockAudio;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->getPlayerPlacementSnapshot()[F

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_8

    .line 13
    array-length v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    goto/16 :goto_2

    .line 14
    :cond_2
    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v2, 0x0

    aget v2, v1, v2

    float-to-double v6, v2

    sub-double/2addr v4, v6

    const-string/jumbo v2, "y"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const/4 v2, 0x1

    aget v2, v1, v2

    float-to-double v8, v2

    sub-double/2addr v6, v8

    const-string/jumbo v2, "z"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    const/4 v2, 0x2

    aget v2, v1, v2

    float-to-double v10, v2

    sub-double/2addr v8, v10

    mul-double v10, v4, v4

    mul-double v12, v6, v6

    add-double/2addr v10, v12

    mul-double v8, v8, v8

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_3

    return-void

    :cond_3
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double/2addr v8, v10

    sub-double/2addr v12, v8

    const-wide v8, 0x3ff999999999999aL    # 1.6

    .line 16
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide v10, 0x3fe4cccccccccccdL    # 0.65

    mul-double v8, v8, v10

    double-to-float v2, v8

    iget-object v8, p0, Lcom/xyron/game/main/VehicleLockAudio;->game:Lcom/xyron/game/main/SAMP;

    const-string v9, "vehicles"

    invoke-virtual {v8, v9}, Lcom/xyron/game/main/SAMP;->localAudioGain(Ljava/lang/String;)F

    move-result v8

    mul-float v2, v2, v8

    neg-double v4, v4

    .line 17
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const/4 v6, 0x3

    aget v1, v1, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 18
    iget-object v4, p0, Lcom/xyron/game/main/VehicleLockAudio;->playing:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaPlayer;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    :cond_4
    iget-object v4, p0, Lcom/xyron/game/main/VehicleLockAudio;->playing:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lt v4, v3, :cond_5

    return-void

    .line 19
    :cond_5
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .line 20
    :try_start_1
    iget-object v5, p0, Lcom/xyron/game/main/VehicleLockAudio;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v5}, Lcom/xyron/game/main/SAMP;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "locked"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "audio/car_lock.mp3"

    goto :goto_0

    :cond_6
    const-string p1, "audio/car_unlock.mp3"

    :goto_0
    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    :try_start_2
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const v6, 0x3f266666    # 0.65f

    mul-float v5, v5, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v7, v5

    mul-float v5, v5, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v1, v1, v6

    add-float/2addr v1, v7

    mul-float v2, v2, v1

    invoke-virtual {v4, v5, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v1, p0, Lcom/xyron/game/main/VehicleLockAudio;->playing:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Lcom/xyron/game/main/VehicleLockAudio$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/xyron/game/main/VehicleLockAudio$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/VehicleLockAudio;I)V

    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_8

    .line 24
    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_7

    .line 20
    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 24
    :catch_0
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    const-string p1, "AngraAudio"

    const-string v0, "Vehicle lock sound unavailable"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_8
    :goto_2
    return-void
.end method

.method reset()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/xyron/game/main/VehicleLockAudio;->playing:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/VehicleLockAudio;->playing:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/xyron/game/main/VehicleLockAudio;->seen:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method
