.class public final Lcom/xyron/game/launcher/util/LauncherMedia;
.super Ljava/lang/Object;
.source "LauncherMedia.java"


# static fields
.field private static final DATA_MUSIC_ASSET:Ljava/lang/String; = "audio/data_install_music.mp3"

.field private static final GAME_MUSIC_ASSET:Ljava/lang/String; = "audio/game_loading_music.mp3"

.field private static final GAME_VIDEO_ASSET:Ljava/lang/String; = "video/game_loading_background.mp4"

.field private static final MUSIC_REVISION:Ljava/lang/String; = "6b4f3538578ebe70"

.field private static final TAG:Ljava/lang/String; = "LauncherMedia"

.field private static final VIDEO_ASSET:Ljava/lang/String; = "video/download_background.mp4"

.field private static final VIDEO_REVISION:Ljava/lang/String; = "cf55cf580e7fb260"

.field private static gameLoadingActive:Z = false

.field private static music:Landroid/media/MediaPlayer; = null

.field private static musicAllowed:Z = false

.field private static musicAsset:Ljava/lang/String; = "audio/game_loading_music.mp3"

.field private static musicPosition:I = 0x0

.field private static stoppedForGame:Z = false

.field private static userMuted:Z = false

.field private static userPaused:Z = false

.field private static volume:F = 0.55f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized beginDataInstallation(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    .line 132
    :try_start_0
    const-string v1, "audio/data_install_music.mp3"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/xyron/game/launcher/util/LauncherMedia;->beginPhase(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized beginLauncherSession(Landroid/content/Context;)V
    .locals 1

    const-class p0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter p0

    const/4 v0, 0x0

    .line 46
    :try_start_0
    sput-boolean v0, Lcom/xyron/game/launcher/util/LauncherMedia;->gameLoadingActive:Z

    .line 47
    sput-boolean v0, Lcom/xyron/game/launcher/util/LauncherMedia;->stoppedForGame:Z

    .line 48
    sput-boolean v0, Lcom/xyron/game/launcher/util/LauncherMedia;->musicAllowed:Z

    const/4 v0, 0x1

    .line 49
    invoke-static {v0}, Lcom/xyron/game/launcher/util/LauncherMedia;->releaseMusic(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized beginLoading(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    .line 129
    :try_start_0
    const-string v1, "audio/game_loading_music.mp3"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/xyron/game/launcher/util/LauncherMedia;->beginPhase(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static beginPhase(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 137
    sget-boolean v0, Lcom/xyron/game/launcher/util/LauncherMedia;->gameLoadingActive:Z

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/xyron/game/launcher/util/LauncherMedia;->musicAsset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xyron/game/launcher/util/LauncherMedia;->musicAllowed:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/xyron/game/launcher/util/LauncherMedia;->releaseMusic(Z)V

    .line 138
    :cond_1
    sput-object p1, Lcom/xyron/game/launcher/util/LauncherMedia;->musicAsset:Ljava/lang/String;

    .line 139
    sput-boolean p2, Lcom/xyron/game/launcher/util/LauncherMedia;->gameLoadingActive:Z

    const/4 p1, 0x0

    .line 140
    sput-boolean p1, Lcom/xyron/game/launcher/util/LauncherMedia;->userPaused:Z

    .line 141
    sput-boolean p1, Lcom/xyron/game/launcher/util/LauncherMedia;->stoppedForGame:Z

    .line 142
    sput-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->musicAllowed:Z

    .line 143
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->startMusicInternal(Landroid/content/Context;)V

    return-void
.end method

.method public static bindLoadingVideo(Landroid/app/Activity;Landroid/widget/VideoView;)V
    .locals 0

    # A tela de carregamento usa imagem NOBRE RP; não iniciar vídeo antigo.
    return-void
.end method
.method public static bindLoopingVideo(Landroid/app/Activity;Landroid/widget/VideoView;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static bindVideo(Landroid/app/Activity;Landroid/widget/VideoView;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p0, p1}, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/app/Activity;Landroid/widget/VideoView;)V

    const-string p0, "angra-background-video"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static canPlay(Landroid/widget/VideoView;)Z
    .locals 1

    .line 194
    instance-of v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/xyron/game/launcher/ui/CropVideoView;

    .line 195
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ui/CropVideoView;->isPlaybackAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static declared-synchronized copyAssetToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    .line 228
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    cmp-long v2, v5, v3

    if-lez v2, :cond_0

    monitor-exit v0

    return-object v1

    .line 230
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".part"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v5, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 232
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const v6, 0x8000

    .line 233
    :try_start_4
    new-array v6, v6, [B

    .line 234
    :goto_0
    invoke-virtual {p2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eq v7, v8, :cond_1

    invoke-virtual {v5, v6, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p2, :cond_2

    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 237
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long p2, v5, v3

    if-eqz p2, :cond_5

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p2, 0x2f

    .line 239
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 241
    array-length v3, p0

    :goto_1
    if-ge v9, v3, :cond_4

    aget-object v4, p0, v9

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "angra_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 242
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 243
    :cond_4
    monitor-exit v0

    return-object v1

    .line 237
    :cond_5
    :try_start_7
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Incomplete media cache"

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_0
    move-exception p0

    .line 232
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_9
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz p2, :cond_6

    :try_start_a
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p2

    :try_start_b
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception p0

    .line 244
    :try_start_c
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string p2, "LauncherMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not prepare launcher media: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_5
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized handoffToGame()V
    .locals 2

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->gameLoadingActive:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->stoppedForGame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isGameLoadingActive()Z
    .locals 2

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    .line 145
    :try_start_0
    sget-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->gameLoadingActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic lambda$bindVideo$0(Ljava/lang/String;Landroid/widget/VideoView;Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Background video unavailable: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " error="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "LauncherMedia"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setVisibility(I)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$bindVideo$1(Landroid/app/Activity;Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V
    .locals 2

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p1}, Lcom/xyron/game/launcher/util/LauncherMedia;->released(Landroid/widget/VideoView;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    instance-of p0, p1, Lcom/xyron/game/launcher/ui/CropVideoView;

    if-eqz p0, :cond_1

    .line 217
    move-object p0, p1

    check-cast p0, Lcom/xyron/game/launcher/ui/CropVideoView;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/launcher/ui/CropVideoView;->setVideoDimensions(II)V

    :cond_1
    const/4 p0, 0x1

    .line 218
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0, p0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 219
    invoke-static {p1}, Lcom/xyron/game/launcher/util/LauncherMedia;->canPlay(Landroid/widget/VideoView;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    :cond_2
    return-void

    .line 215
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    return-void
.end method

.method static synthetic lambda$bindVideo$2(Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 221
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->canPlay(Landroid/widget/VideoView;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->released(Landroid/widget/VideoView;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$bindVideo$3(Landroid/app/Activity;Landroid/widget/VideoView;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/xyron/game/launcher/util/LauncherMedia;->released(Landroid/widget/VideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    new-instance v0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/widget/VideoView;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 214
    new-instance p2, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Landroid/widget/VideoView;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 221
    new-instance p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda2;-><init>(Landroid/widget/VideoView;)V

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 222
    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 223
    invoke-static {p1}, Lcom/xyron/game/launcher/util/LauncherMedia;->canPlay(Landroid/widget/VideoView;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$bindVideo$4(Ljava/lang/String;Landroid/app/Activity;Landroid/widget/VideoView;)V
    .locals 4

    const/16 v0, 0x2f

    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "angra_224_cf55cf580e7fb260_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/xyron/game/launcher/util/LauncherMedia;->copyAssetToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance v1, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2, p0, v0}, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda4;-><init>(Landroid/app/Activity;Landroid/widget/VideoView;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized musicState()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "{\"playing\":false,\"muted\":"

    const-string/jumbo v1, "{\"playing\":"

    const-class v2, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v2

    .line 169
    :try_start_0
    sget-object v3, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/xyron/game/launcher/util/LauncherMedia;->userMuted:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",\"position\":0,\"duration\":0}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 170
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\"muted\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->userMuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\"position\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"duration\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    .line 171
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized onSpawnSelectionReached()V
    .locals 2

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->gameLoadingActive:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->stopMusicForGame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized pauseMusic()V
    .locals 2

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 99
    monitor-exit v0

    return-void

    .line 102
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    sput v1, Lcom/xyron/game/launcher/util/LauncherMedia;->musicPosition:I

    .line 103
    sget-object v1, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    sget-object v1, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :catchall_0
    :cond_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static releaseMusic(Z)V
    .locals 1

    .line 175
    sget-object v0, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 181
    sput-object v0, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 183
    sput p0, Lcom/xyron/game/launcher/util/LauncherMedia;->musicPosition:I

    :cond_1
    return-void
.end method

.method private static released(Landroid/widget/VideoView;)Z
    .locals 1

    .line 198
    instance-of v0, p0, Lcom/xyron/game/launcher/ui/CropVideoView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/xyron/game/launcher/ui/CropVideoView;

    .line 199
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ui/CropVideoView;->isReleased()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized resumeMusic(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->stoppedForGame:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->userPaused:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->musicAllowed:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    sget-object v1, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 115
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->startMusicInternal(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    monitor-exit v0

    return-void

    .line 119
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    sget-object v1, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    .line 123
    :try_start_2
    invoke-static {v1}, Lcom/xyron/game/launcher/util/LauncherMedia;->releaseMusic(Z)V

    .line 124
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->startMusicInternal(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 112
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized seekMusic(I)V
    .locals 4

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    .line 166
    :try_start_0
    sget-object v1, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x64

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v3, 0x0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p0, v3

    mul-float v2, v2, p0

    float-to-int p0, v2

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setMusicMuted(Z)V
    .locals 4

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    .line 162
    :try_start_0
    sput-boolean p0, Lcom/xyron/game/launcher/util/LauncherMedia;->userMuted:Z

    .line 163
    sget-object v1, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    sget v3, Lcom/xyron/game/launcher/util/LauncherMedia;->volume:F

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    sget v2, Lcom/xyron/game/launcher/util/LauncherMedia;->volume:F

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setMusicPlaying(Landroid/content/Context;Z)V
    .locals 2

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    xor-int/lit8 v1, p1, 0x1

    .line 154
    :try_start_0
    sput-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->userPaused:Z

    if-eqz p1, :cond_0

    .line 155
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->resumeMusic(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->pauseMusic()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setMusicVolume(F)V
    .locals 5

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 158
    :try_start_0
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    sput p0, Lcom/xyron/game/launcher/util/LauncherMedia;->volume:F

    .line 159
    sget-object v2, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    sget-boolean v3, Lcom/xyron/game/launcher/util/LauncherMedia;->userMuted:Z

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, p0

    :goto_1
    invoke-virtual {v2, v4, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized startMusic(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->stoppedForGame:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->musicAllowed:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->startMusicInternal(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    return-void

    .line 40
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static startMusicInternal(Landroid/content/Context;)V
    .locals 6

    const-string v0, "angra_224_6b4f3538578ebe70_"

    .line 53
    sget-object v1, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-nez p0, :cond_0

    .line 55
    sget-object p0, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .line 62
    :try_start_0
    sget-object v2, Lcom/xyron/game/launcher/util/LauncherMedia;->musicAsset:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    sget-object v3, Lcom/xyron/game/launcher/util/LauncherMedia;->musicAsset:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/xyron/game/launcher/util/LauncherMedia;->copyAssetToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 68
    :cond_2
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 71
    sget-boolean p0, Lcom/xyron/game/launcher/util/LauncherMedia;->userMuted:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    sget v2, Lcom/xyron/game/launcher/util/LauncherMedia;->volume:F

    :goto_0
    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    sget v1, Lcom/xyron/game/launcher/util/LauncherMedia;->volume:F

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 72
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 73
    sget p0, Lcom/xyron/game/launcher/util/LauncherMedia;->musicPosition:I

    if-lez p0, :cond_5

    .line 74
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 76
    :cond_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 77
    sput-object v0, Lcom/xyron/game/launcher/util/LauncherMedia;->music:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v1, :cond_6

    .line 80
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 82
    :catchall_2
    :cond_6
    const-string v0, "LauncherMedia"

    const-string v1, "Could not start launcher music"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public static declared-synchronized stopMusic()V
    .locals 2

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    const/4 v1, 0x1

    .line 87
    :try_start_0
    invoke-static {v1}, Lcom/xyron/game/launcher/util/LauncherMedia;->releaseMusic(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized stopMusicForGame()V
    .locals 2

    const-class v0, Lcom/xyron/game/launcher/util/LauncherMedia;

    monitor-enter v0

    const/4 v1, 0x0

    .line 91
    :try_start_0
    sput-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->gameLoadingActive:Z

    .line 92
    sput-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->musicAllowed:Z

    const/4 v1, 0x1

    .line 93
    sput-boolean v1, Lcom/xyron/game/launcher/util/LauncherMedia;->stoppedForGame:Z

    .line 94
    invoke-static {v1}, Lcom/xyron/game/launcher/util/LauncherMedia;->releaseMusic(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
