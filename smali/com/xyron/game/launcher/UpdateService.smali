.class public Lcom/xyron/game/launcher/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/UpdateService$IncomingHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_DATA_VARIANT_ID:Ljava/lang/String; = "lite"


# instance fields
.field private final downloadQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private downloadWakeLock:Landroid/os/PowerManager$WakeLock;

.field private lastNotification:J

.field private volatile lastTransfer:Landroid/os/Bundle;

.field volatile mActivityMessenger:Landroid/os/Messenger;

.field private mArchiveSource:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

.field public mClientConfigUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDataVariantId:Ljava/lang/String;

.field public volatile mDownloadingStatus:Z

.field public mFallbackFileBaseUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mForceReinstall:Z

.field private mFullReinstallPrepared:Z

.field public mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

.field public mGpuType:I

.field public mHuggingFaceFilesPathPrefix:Ljava/lang/String;

.field public mHuggingFaceResolveBaseUrl:Ljava/lang/String;

.field public mHuggingFaceTreeApiUrl:Ljava/lang/String;

.field mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

.field mMessenger:Landroid/os/Messenger;

.field private mUniversalTextureManifest:Z

.field public mUpdateFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateFilesName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateFilesSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateFilesUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateGameDataSize:J

.field public mUpdateGameDataSizeUpdated:J

.field public mUpdateGameURL:Ljava/lang/String;

.field public mUpdateStatus:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

.field public mUpdateVersion:I

.field private mapContext:Landroid/content/Context;

.field private final notificationStats:Lcom/xyron/game/launcher/util/TransferProgress;

.field private final operationActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private workerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$c7Y6QlI548rRPbbOlJQzlLwpVO8(Lcom/xyron/game/launcher/UpdateService;ZJJLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/xyron/game/launcher/UpdateService;->archiveProgress(ZJJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->operationActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->downloadQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Lcom/xyron/game/launcher/util/TransferProgress;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/TransferProgress;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->notificationStats:Lcom/xyron/game/launcher/util/TransferProgress;

    .line 64
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->Unknown:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    .line 65
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateStatus:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    const-wide/16 v1, 0x0

    .line 69
    iput-wide v1, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameDataSize:J

    .line 70
    iput-wide v1, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameDataSizeUpdated:J

    .line 71
    const-string v1, ""

    iput-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameURL:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mHuggingFaceTreeApiUrl:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mHuggingFaceResolveBaseUrl:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mHuggingFaceFilesPathPrefix:Ljava/lang/String;

    .line 83
    const-string v1, "lite"

    iput-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mDataVariantId:Ljava/lang/String;

    .line 84
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mForceReinstall:Z

    .line 85
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mFullReinstallPrepared:Z

    .line 86
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUniversalTextureManifest:Z

    .line 141
    iput v0, p0, Lcom/xyron/game/launcher/UpdateService;->mGpuType:I

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/launcher/UpdateService;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->sendSnapshot()V

    return-void
.end method

.method static synthetic access$100(Lcom/xyron/game/launcher/UpdateService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/xyron/game/launcher/UpdateService;->downloadQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xyron/game/launcher/UpdateService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/xyron/game/launcher/UpdateService;->operationActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xyron/game/launcher/UpdateService;Landroid/os/Message;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/UpdateService;->updateDataVariantFromMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xyron/game/launcher/UpdateService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/xyron/game/launcher/UpdateService;->resolvePossiblyRelativeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/xyron/game/launcher/UpdateService;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/UpdateService;->requestClientConfig(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xyron/game/launcher/UpdateService;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->getFilesInfoFromHuggingFaceTree()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/xyron/game/launcher/UpdateService;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->handleSourceUnavailable()V

    return-void
.end method

.method static synthetic access$800(Lcom/xyron/game/launcher/UpdateService;)I
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->getInstalledVersionCode()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/xyron/game/launcher/UpdateService;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->finalizeManifestLoad()V

    return-void
.end method

.method private archiveProgress(ZJJLjava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 298
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->ExtractGameData:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->DownloadGameData:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    .line 299
    :goto_0
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->downloadWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->downloadWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 300
    :cond_1
    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateStatus:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    .line 301
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v0}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "current"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 304
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "total"

    invoke-virtual {v0, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 305
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "filename"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->lastTransfer:Landroid/os/Bundle;

    .line 307
    invoke-direct/range {p0 .. p6}, Lcom/xyron/game/launcher/UpdateService;->publishTransferNotification(ZJJLjava/lang/String;)V

    .line 308
    :try_start_0
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 309
    :catch_0
    const-string p1, "AngraData"

    const-string p2, "Progress screen unavailable"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private beginArchiveTransfer()V
    .locals 7

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xyron/game/launcher/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    const-string v0, "angra_transfer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/launcher/UpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "active"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    if-nez v2, :cond_0

    move-object v2, p0

    :cond_0
    invoke-static {v2}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    const-string v4, "map"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 95
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v4, "angra_data_transfer"

    const/16 v5, 0x1a

    if-lt v2, v5, :cond_1

    const-string v2, "Atualiza\u00c3\u00a7\u00c3\u00a3o dos arquivos"

    const/4 v6, 0x2

    invoke-static {v4, v2, v6}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 96
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_2

    invoke-static {p0, v4}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/xyron/game/launcher/UpdateActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v4, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->GameDataUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    invoke-virtual {v4}, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mode"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/16 v4, 0x30c

    const/high16 v5, 0xc000000

    .line 98
    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const v4, 0x1080081

    .line 99
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v4, "DESTRITO NOBRE"

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v4, "Baixando e verificando arquivos do jogo"

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v2, 0xadc

    invoke-virtual {p0, v2, v0}, Lcom/xyron/game/launcher/UpdateService;->startForeground(ILandroid/app/Notification;)V

    .line 100
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 101
    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService;->downloadWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService;->downloadWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 102
    :cond_3
    const-string v2, "Angra:DataTransfer"

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->downloadWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->downloadWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method private buildHuggingFaceFileData(Lorg/json/JSONObject;Ljava/util/Set;)Lcom/xyron/game/launcher/data/FilesData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xyron/game/launcher/data/FilesData;"
        }
    .end annotation

    .line 633
    const-string v0, "path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/xyron/game/launcher/UpdateService;->resolveHuggingFaceLocalPath(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v7

    .line 639
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v2

    .line 643
    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 644
    const-string p2, "size"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p2, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 645
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService;->mHuggingFaceResolveBaseUrl:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xyron/game/launcher/UpdateService;->joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 646
    new-instance p1, Lcom/xyron/game/launcher/data/FilesData;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/xyron/game/launcher/data/FilesData;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v2
.end method

.method private canUseHuggingFaceTreeFallback()Z
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mHuggingFaceTreeApiUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mHuggingFaceResolveBaseUrl:Ljava/lang/String;

    .line 424
    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private deleteRecursivelyInsideRoot(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .line 1096
    const-string v0, "UpdateService"

    .line 0
    const-string v1, "Refusing to delete outside game directory: "

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1096
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1100
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1101
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 1102
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1111
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1112
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1114
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1115
    invoke-direct {p0, p1, v4}, Lcom/xyron/game/launcher/UpdateService;->deleteRecursivelyInsideRoot(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1119
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1120
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unable to remove during reinstall: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 1107
    const-string p2, "Unable to validate reinstall path"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private endArchiveTransfer()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->downloadWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->downloadWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->downloadWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->stopForeground(Z)V

    return-void
.end method

.method private enqueueMissingFile(Lcom/xyron/game/launcher/data/FilesData;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 699
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/UpdateService;->shouldIgnoreFile(Lcom/xyron/game/launcher/data/FilesData;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->gameRoot()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 705
    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mForceReinstall:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getSize()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/xyron/game/launcher/UpdateService;->isCompleteFile(Ljava/io/File;J)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 709
    :cond_1
    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->shouldDownloadForCurrentGpu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x1y2z"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesName:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "File path: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesSize:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesUrl:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p1}, Lcom/xyron/game/launcher/UpdateService;->resolveDownloadUrl(Ljava/lang/String;Lcom/xyron/game/launcher/data/FilesData;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    iget-wide v2, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameDataSize:J

    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameDataSize:J

    .line 720
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "File size: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getSize()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Data size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameDataSize:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private finalizeManifestLoad()V
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->isGameUpdateExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->Updated:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    goto :goto_0

    .line 454
    :cond_0
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->UpdateRequired:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    goto :goto_0

    .line 457
    :cond_1
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->GameUpdateRequired:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    .line 460
    :goto_0
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    .line 461
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->notifyGameStatus()V

    return-void
.end method

.method private gameRoot()Ljava/io/File;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-static {v0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getFilesInfoFromHuggingFaceTree()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mHuggingFaceTreeApiUrl:Ljava/lang/String;

    .line 556
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 557
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 559
    :goto_0
    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_9

    const/4 v3, 0x0

    .line 564
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v5, 0x7530

    .line 565
    :try_start_1
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 566
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 567
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 569
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_6

    const/16 v6, 0x12c

    if-ge v5, v6, :cond_6

    .line 574
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 575
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 579
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 582
    :cond_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 583
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_4

    .line 584
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 585
    const-string v7, "file"

    const-string v8, "type"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    .line 589
    :cond_1
    const-string v7, "path"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/xyron/game/launcher/UpdateService;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 590
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    .line 594
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 598
    :cond_4
    const-string v3, "Link"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xyron/game/launcher/UpdateService;->parseNextLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    nop

    :goto_4
    if-eqz v0, :cond_5

    .line 607
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move-object v0, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v5

    goto :goto_5

    .line 571
    :cond_6
    :try_start_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected Hugging Face response code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v0, v3

    :goto_5
    if-eqz v3, :cond_7

    .line 602
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    :catch_1
    nop

    :cond_7
    :goto_6
    if-eqz v0, :cond_8

    .line 607
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 609
    :cond_8
    throw v1

    .line 612
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    return v4

    .line 617
    :cond_a
    iput-boolean v4, p0, Lcom/xyron/game/launcher/UpdateService;->mUniversalTextureManifest:Z

    .line 618
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 619
    invoke-direct {p0, v3}, Lcom/xyron/game/launcher/UpdateService;->isUniversalMarkerPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iput-boolean v5, p0, Lcom/xyron/game/launcher/UpdateService;->mUniversalTextureManifest:Z

    goto :goto_7

    .line 621
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 622
    invoke-direct {p0, v1, v2}, Lcom/xyron/game/launcher/UpdateService;->buildHuggingFaceFileData(Lorg/json/JSONObject;Ljava/util/Set;)Lcom/xyron/game/launcher/data/FilesData;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 625
    iget-object v3, p0, Lcom/xyron/game/launcher/UpdateService;->mHuggingFaceResolveBaseUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/xyron/game/launcher/UpdateService;->enqueueMissingFile(Lcom/xyron/game/launcher/data/FilesData;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    return v4
.end method

.method private getInstalledVersionCode()I
    .locals 4

    const/4 v0, 0x1

    .line 820
    :try_start_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 821
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 823
    const-string/jumbo v2, "x1y2z"

    const-string v3, "unable to read installed version"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private handleClientConfigFailure()V
    .locals 1

    .line 407
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->canUseHuggingFaceTreeFallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->requestHuggingFaceTreeManifest()V

    return-void

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->handleSourceUnavailable()V

    return-void
.end method

.method private handleSourceUnavailable()V
    .locals 1

    .line 415
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasRequiredGameData(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->Updated:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    goto :goto_0

    .line 417
    :cond_0
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->Unknown:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    :goto_0
    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    .line 418
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->SourceUnavailable:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    .line 419
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->notifyGameStatus()V

    return-void
.end method

.method private isCompleteFile(Ljava/io/File;J)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 725
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_1

    .line 728
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long p1, v1, p2

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private isUniversalMarkerPath(Ljava/lang/String;)Z
    .locals 1

    .line 763
    const-string v0, ".angra-universal-v1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/.angra-universal-v1"

    .line 764
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 785
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/UpdateService;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 786
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    const-string p1, ""

    return-object p1

    .line 789
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 792
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/xyron/game/launcher/UpdateService;->resolvePossiblyRelativeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadUpdateSources()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mDataVariantId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->resolve(Landroid/content/Context;Ljava/lang/String;)Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;

    move-result-object v0

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;->clientConfigUrls:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mClientConfigUrls:Ljava/util/ArrayList;

    .line 332
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;->fallbackFileBaseUrls:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mFallbackFileBaseUrls:Ljava/util/ArrayList;

    .line 333
    iget-object v1, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;->huggingFaceTreeApiUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mHuggingFaceTreeApiUrl:Ljava/lang/String;

    .line 334
    iget-object v1, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;->huggingFaceResolveBaseUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mHuggingFaceResolveBaseUrl:Ljava/lang/String;

    .line 335
    iget-object v0, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;->huggingFaceFilesPathPrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mHuggingFaceFilesPathPrefix:Ljava/lang/String;

    return-void
.end method

.method private notifyFullReinstallComplete()V
    .locals 4

    .line 1053
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    .line 1054
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1055
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1056
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1057
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 1059
    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1061
    const-string v1, "UpdateService"

    const-string v2, "unable to report reinstall completion"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private notifyGameStatus()V
    .locals 4

    .line 465
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    invoke-virtual {v2}, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 468
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 472
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private parseNextLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 676
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/UpdateService;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 677
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 681
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 682
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 683
    invoke-direct {p0, v3}, Lcom/xyron/game/launcher/UpdateService;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 684
    const-string v4, "rel=\"next\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x3c

    .line 688
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v5, 0x3e

    .line 689
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v4, :cond_2

    if-le v5, v4, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 691
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private prepareFullReinstall()V
    .locals 8

    .line 1067
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->gameRoot()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1072
    :cond_0
    const-string v6, "TEXT"

    const-string v7, "fonts"

    const-string v1, "anim"

    const-string v2, "audio"

    const-string v3, "data"

    const-string v4, "models"

    const-string v5, "texdb"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    .line 1075
    aget-object v4, v1, v3

    .line 1076
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, v5}, Lcom/xyron/game/launcher/UpdateService;->deleteRecursivelyInsideRoot(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1079
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, "SAMP"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1082
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    if-eqz v5, :cond_2

    .line 1083
    const-string v6, "settings.ini"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 1086
    :cond_2
    invoke-direct {p0, v0, v5}, Lcom/xyron/game/launcher/UpdateService;->deleteRecursivelyInsideRoot(Ljava/io/File;Ljava/io/File;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1090
    :cond_3
    invoke-static {}, Lcom/downloader/PRDownloader;->cancelAll()V

    .line 1091
    invoke-static {v2}, Lcom/downloader/PRDownloader;->cleanUp(I)V

    .line 1092
    const-string v0, "UpdateService"

    const-string v1, "Managed game data cleared for a full reinstall."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private publishTransferNotification(ZJJLjava/lang/String;)V
    .locals 7

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xyron/game/launcher/UpdateService;->lastNotification:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p6, v2, v4

    if-gez p6, :cond_0

    cmp-long p6, p2, p4

    if-eqz p6, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/xyron/game/launcher/UpdateService;->lastNotification:J

    .line 131
    sget p6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p6, v2, :cond_1

    const-string p6, "angra_data_transfer"

    invoke-static {p0, p6}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p6

    goto :goto_0

    :cond_1
    new-instance p6, Landroid/app/Notification$Builder;

    invoke-direct {p6, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/xyron/game/launcher/UpdateActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->GameDataUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    invoke-virtual {v3}, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mode"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x30c

    const/high16 v4, 0xc000000

    .line 133
    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz p1, :cond_2

    .line 134
    const-string v3, "Descompactando arquivos\u2026"

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Baixando "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    :goto_1
    const-string v4, " \u00c2\u00b7 "

    if-eqz p1, :cond_3

    const-string v5, ""

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3, p4, p5}, Lcom/xyron/game/launcher/util/TransferProgress;->percent(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/xyron/game/launcher/util/TransferProgress;->mb(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Lcom/xyron/game/launcher/util/TransferProgress;->mb(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    if-nez p1, :cond_4

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xyron/game/launcher/UpdateService;->notificationStats:Lcom/xyron/game/launcher/util/TransferProgress;

    invoke-virtual {v4, p2, p3, v0, v1}, Lcom/xyron/game/launcher/util/TransferProgress;->speed(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    const p1, 0x1080081

    .line 137
    invoke-virtual {p6, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p6, 0x1

    invoke-virtual {p1, p6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {p2, p3, p4, p5}, Lcom/xyron/game/launcher/util/TransferProgress;->units(JJ)I

    move-result p2

    const-wide/16 v0, 0x0

    cmp-long p3, p4, v0

    if-gtz p3, :cond_5

    goto :goto_3

    :cond_5
    const/4 p6, 0x0

    :goto_3
    const/16 p3, 0x2710

    invoke-virtual {p1, p3, p2, p6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 138
    const-string p2, "notification"

    invoke-virtual {p0, p2}, Lcom/xyron/game/launcher/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    const/16 p3, 0xadc

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private reportArchiveError(Ljava/io/IOException;)V
    .locals 4

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 314
    const-string v1, "angra_transfer"

    invoke-virtual {p0, v1, v0}, Lcom/xyron/game/launcher/UpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "active"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 315
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->SourceUnavailable:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateStatus:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    .line 316
    const-string v0, "AngraData"

    const-string v1, "Archive installation failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateStatus:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {v2}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 320
    instance-of v2, p1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_0

    const-string v1, "Sem acesso ao servidor de arquivos. Verifique sua conex\u00e3o; o progresso foi preservado."

    goto :goto_0

    .line 321
    :cond_0
    instance-of v2, p1, Ljavax/net/ssl/SSLException;

    if-eqz v2, :cond_1

    const-string v1, "N\u00e3o foi poss\u00edvel estabelecer conex\u00e3o segura. Verifique a data e a hora do celular e tente outra rede."

    goto :goto_0

    .line 322
    :cond_1
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_2

    const-string v1, "A conex\u00e3o demorou para responder. O download parcial foi preservado; toque para retomar."

    .line 323
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "error"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance p1, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService;->lastTransfer:Landroid/os/Bundle;

    .line 325
    :try_start_0
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private requestClientConfig(I)V
    .locals 5

    .line 350
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mClientConfigUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mClientConfigUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/android/volley/toolbox/StringRequest;

    new-instance v3, Lcom/xyron/game/launcher/UpdateService$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/xyron/game/launcher/UpdateService$2;-><init>(Lcom/xyron/game/launcher/UpdateService;Ljava/lang/String;I)V

    new-instance v4, Lcom/xyron/game/launcher/UpdateService$3;

    invoke-direct {v4, p0, p1}, Lcom/xyron/game/launcher/UpdateService$3;-><init>(Lcom/xyron/game/launcher/UpdateService;I)V

    invoke-direct {v2, v0, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void

    .line 351
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->handleClientConfigFailure()V

    return-void
.end method

.method private requestHuggingFaceTreeManifest()V
    .locals 2

    .line 428
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xyron/game/launcher/UpdateService$4;

    invoke-direct {v1, p0}, Lcom/xyron/game/launcher/UpdateService$4;-><init>(Lcom/xyron/game/launcher/UpdateService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 446
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private resetUpdateState()V
    .locals 3

    const/4 v0, 0x0

    .line 1243
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    const-wide/16 v1, 0x0

    .line 1244
    iput-wide v1, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameDataSize:J

    .line 1245
    iput-wide v1, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameDataSizeUpdated:J

    .line 1246
    const-string v1, ""

    iput-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameURL:Ljava/lang/String;

    .line 1247
    iput v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateVersion:I

    .line 1248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFiles:Ljava/util/ArrayList;

    .line 1249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesName:Ljava/util/ArrayList;

    .line 1250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesSize:Ljava/util/ArrayList;

    .line 1251
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesUrl:Ljava/util/ArrayList;

    .line 1252
    sput-object v1, Lcom/xyron/game/launcher/util/Util;->responseFiles:Ljava/lang/String;

    .line 1253
    sput v0, Lcom/xyron/game/launcher/util/Util;->responseFilesInt:I

    return-void
.end method

.method private resolveDownloadUrl(Ljava/lang/String;Lcom/xyron/game/launcher/data/FilesData;)Ljava/lang/String;
    .locals 2

    .line 768
    invoke-virtual {p2}, Lcom/xyron/game/launcher/data/FilesData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 770
    invoke-direct {p0, p1, v0}, Lcom/xyron/game/launcher/UpdateService;->resolvePossiblyRelativeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 773
    :cond_0
    invoke-virtual {p2}, Lcom/xyron/game/launcher/data/FilesData;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/UpdateService;->trimLeadingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 774
    iget-object p2, p0, Lcom/xyron/game/launcher/UpdateService;->mFallbackFileBaseUrls:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 775
    invoke-direct {p0, v0, p1}, Lcom/xyron/game/launcher/UpdateService;->joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 781
    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method private resolveHuggingFaceLocalPath(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mHuggingFaceFilesPathPrefix:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_2

    .line 652
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v2

    .line 656
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 657
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 661
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 664
    :cond_2
    const-string v0, "files/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    .line 665
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 666
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v2

    :cond_3
    return-object p1
.end method

.method private resolvePossiblyRelativeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 796
    invoke-direct {p0, p2}, Lcom/xyron/game/launcher/UpdateService;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 797
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    const-string p1, ""

    return-object p1

    .line 800
    :cond_0
    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 803
    :cond_1
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/UpdateService;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 804
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p2

    .line 808
    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_3
    :goto_0
    return-object p2
.end method

.method private sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 815
    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private sendLoadingScreen(ZLjava/lang/String;JJ)V
    .locals 10

    .line 1221
    new-instance v0, Ljava/lang/Thread;

    new-instance v9, Lcom/xyron/game/launcher/UpdateService$10;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/xyron/game/launcher/UpdateService$10;-><init>(Lcom/xyron/game/launcher/UpdateService;Ljava/lang/String;ZJJ)V

    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1239
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendSnapshot()V
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 123
    :try_start_0
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService;->lastTransfer:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 124
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "status"

    iget-object v4, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateStatus:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {v4}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 126
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->operationActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->notifyGameStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private shouldDownloadForCurrentGpu(Ljava/lang/String;)Z
    .locals 5

    .line 743
    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUniversalTextureManifest:Z

    const-string v1, ".pvr."

    const-string v2, ".dxt."

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 744
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".unc."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 746
    :cond_1
    const-string v0, "player"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "playerhi"

    .line 747
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "menu"

    .line 748
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "samp"

    .line 749
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 753
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xyron/game/launcher/UpdateService;->mGpuType:I

    if-eq v0, v4, :cond_3

    return v3

    .line 756
    :cond_3
    const-string v0, ".etc."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/xyron/game/launcher/UpdateService;->mGpuType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    return v3

    .line 759
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/xyron/game/launcher/UpdateService;->mGpuType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    return v3

    :cond_7
    :goto_0
    return v4
.end method

.method private shouldIgnoreFile(Lcom/xyron/game/launcher/data/FilesData;)Z
    .locals 2

    .line 732
    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samp_log.txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 733
    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "svlog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 734
    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gtasatelem.set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GTASAMP10.b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 736
    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gta_sa.set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 737
    invoke-virtual {p1}, Lcom/xyron/game/launcher/data/FilesData;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "settings.ini"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private trimLeadingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 829
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/UpdateService;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 830
    :goto_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 831
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private updateDataVariantFromMessage(Landroid/os/Message;)V
    .locals 3

    .line 339
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "force_reinstall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mForceReinstall:Z

    .line 340
    iput-boolean v2, p0, Lcom/xyron/game/launcher/UpdateService;->mFullReinstallPrepared:Z

    .line 341
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data_variant"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService;->mDataVariantId:Ljava/lang/String;

    return-void

    .line 343
    :cond_1
    :goto_0
    const-string p1, "lite"

    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService;->mDataVariantId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public downloadGame()V
    .locals 6

    .line 1126
    const-string v0, "UpdateService"

    const-string v1, "downloadGame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameURL:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1132
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 1134
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->gameRoot()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/download/update.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1136
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1137
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1140
    :cond_1
    new-instance v3, Lcom/xyron/game/launcher/Ref$LongRef;

    invoke-direct {v3}, Lcom/xyron/game/launcher/Ref$LongRef;-><init>()V

    .line 1141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/xyron/game/launcher/Ref$LongRef;->element:J

    .line 1143
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 1144
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameURL:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->gameRoot()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/download"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "update.apk"

    invoke-static {v0, v4, v5}, Lcom/downloader/PRDownloader;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/downloader/request/DownloadRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/request/DownloadRequestBuilder;->build()Lcom/downloader/request/DownloadRequest;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/downloader/request/DownloadRequest;->setOnStartOrResumeListener(Lcom/downloader/OnStartOrResumeListener;)Lcom/downloader/request/DownloadRequest;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/downloader/request/DownloadRequest;->setOnPauseListener(Lcom/downloader/OnPauseListener;)Lcom/downloader/request/DownloadRequest;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/downloader/request/DownloadRequest;->setOnCancelListener(Lcom/downloader/OnCancelListener;)Lcom/downloader/request/DownloadRequest;

    move-result-object v0

    new-instance v4, Lcom/xyron/game/launcher/UpdateService$9;

    invoke-direct {v4, p0, v3}, Lcom/xyron/game/launcher/UpdateService$9;-><init>(Lcom/xyron/game/launcher/UpdateService;Lcom/xyron/game/launcher/Ref$LongRef;)V

    invoke-virtual {v0, v4}, Lcom/downloader/request/DownloadRequest;->setOnProgressListener(Lcom/downloader/OnProgressListener;)Lcom/downloader/request/DownloadRequest;

    move-result-object v0

    new-instance v3, Lcom/xyron/game/launcher/UpdateService$8;

    invoke-direct {v3, p0, v2}, Lcom/xyron/game/launcher/UpdateService$8;-><init>(Lcom/xyron/game/launcher/UpdateService;Ljava/io/File;)V

    .line 1168
    invoke-virtual {v0, v3}, Lcom/downloader/request/DownloadRequest;->start(Lcom/downloader/OnDownloadListener;)I

    :cond_2
    const-wide/16 v2, 0x1e

    .line 1197
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1199
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1201
    :goto_0
    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    if-nez v0, :cond_2

    .line 1203
    iput-boolean v1, p0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    return-void

    .line 1128
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 1129
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->SourceUnavailable:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    return-void
.end method

.method public getFilesInfo(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 478
    const-string v0, ""

    sput-object v0, Lcom/xyron/game/launcher/util/Util;->responseFiles:Ljava/lang/String;

    const/4 v0, 0x0

    .line 479
    sput v0, Lcom/xyron/game/launcher/util/Util;->responseFilesInt:I

    .line 480
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/xyron/game/launcher/UpdateService$5;

    invoke-direct {v2, p0, p1}, Lcom/xyron/game/launcher/UpdateService$5;-><init>(Lcom/xyron/game/launcher/UpdateService;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 516
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 519
    :goto_0
    sget v1, Lcom/xyron/game/launcher/util/Util;->responseFilesInt:I

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Info: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xyron/game/launcher/util/Util;->responseFiles:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x1y2z"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v1, Lorg/json/JSONObject;

    sget-object v3, Lcom/xyron/game/launcher/util/Util;->responseFiles:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 536
    const-string v3, "files"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 537
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUniversalTextureManifest:Z

    const/4 v3, 0x0

    .line 538
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const-string v5, "path"

    if-ge v3, v4, :cond_1

    .line 539
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/xyron/game/launcher/UpdateService;->isUniversalMarkerPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/xyron/game/launcher/UpdateService;->mUniversalTextureManifest:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 541
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 543
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 544
    new-instance v3, Lcom/xyron/game/launcher/data/FilesData;

    const-string v4, "name"

    .line 545
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "size"

    .line 546
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 547
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "url"

    .line 548
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/xyron/game/launcher/data/FilesData;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-direct {p0, v3, p1}, Lcom/xyron/game/launcher/UpdateService;->enqueueMissingFile(Lcom/xyron/game/launcher/data/FilesData;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void

    .line 531
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to fetch files manifest: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-wide/16 v1, 0x1e

    .line 524
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 526
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public isGameUpdateExists()Z
    .locals 4

    const/4 v0, 0x1

    .line 1209
    :try_start_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1211
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    return v0

    .line 1216
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isGameUpdateExists -> currentVersion "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | mUpdateVersion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x1y2z"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v2, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateVersion:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method synthetic lambda$onStartCommand$0$com-xyron-game-launcher-UpdateService()V
    .locals 6

    .line 114
    const-string v0, "active"

    const-string v1, "angra_transfer"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->startUpdating()V

    iget-object v3, p0, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    sget-object v4, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->UpdateRequired:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->startGameUpdateChecking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/xyron/game/launcher/UpdateService;->operationActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v3, p0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    sget-object v4, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->Updated:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/xyron/game/launcher/UpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->endArchiveTransfer()V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->stopSelf()V

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/xyron/game/launcher/UpdateService;->operationActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v4, p0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    sget-object v5, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->Updated:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    if-ne v4, v5, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/xyron/game/launcher/UpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->endArchiveTransfer()V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->stopSelf()V

    :cond_4
    throw v3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 171
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 145
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 146
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AngraDataInstaller"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->workerThread:Landroid/os/HandlerThread;

    .line 147
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 148
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/downloader/PRDownloaderConfig;->newBuilder()Lcom/downloader/PRDownloaderConfig$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/downloader/PRDownloaderConfig$Builder;->setDatabaseEnabled(Z)Lcom/downloader/PRDownloaderConfig$Builder;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Lcom/downloader/PRDownloaderConfig$Builder;->setReadTimeout(I)Lcom/downloader/PRDownloaderConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/downloader/PRDownloaderConfig$Builder;->setConnectTimeout(I)Lcom/downloader/PRDownloaderConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/downloader/PRDownloaderConfig$Builder;->build()Lcom/downloader/PRDownloaderConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/downloader/PRDownloader;->initialize(Landroid/content/Context;Lcom/downloader/PRDownloaderConfig;)V

    .line 149
    new-instance v0, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->workerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;-><init>(Lcom/xyron/game/launcher/UpdateService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    .line 151
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/xyron/game/launcher/UpdateService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xyron/game/launcher/UpdateService$1;-><init>(Lcom/xyron/game/launcher/UpdateService;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->endArchiveTransfer()V

    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->workerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 110
    const-string p1, "angra_transfer"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/xyron/game/launcher/UpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "active"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->operationActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, p1, p3}, Lcom/xyron/game/launcher/UpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p3, "map"

    const-string v0, "angra-novo"

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/GameStorage;->bound(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->beginArchiveTransfer()V

    .line 114
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    new-instance p3, Lcom/xyron/game/launcher/UpdateService$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lcom/xyron/game/launcher/UpdateService$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/launcher/UpdateService;)V

    invoke-virtual {p1, p3}, Lcom/xyron/game/launcher/UpdateService$IncomingHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return p2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    const/4 p1, 0x0

    return p1
.end method

.method public setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V
    .locals 3

    .line 913
    invoke-virtual {p1}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateStatus:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    if-eq v0, p1, :cond_0

    .line 914
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateStatus:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    .line 915
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 916
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateStatus:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {v1}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 918
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 921
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 923
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startDataUpdating()V
    .locals 18

    move-object/from16 v9, p0

    .line 932
    iget-boolean v0, v9, Lcom/xyron/game/launcher/UpdateService;->mForceReinstall:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v9, Lcom/xyron/game/launcher/UpdateService;->mFullReinstallPrepared:Z

    if-nez v0, :cond_0

    .line 936
    iput-boolean v10, v9, Lcom/xyron/game/launcher/UpdateService;->mFullReinstallPrepared:Z

    .line 938
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateFiles:Ljava/util/ArrayList;

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 939
    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesName:Ljava/util/ArrayList;

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 940
    new-instance v13, Ljava/util/ArrayList;

    iget-object v0, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesSize:Ljava/util/ArrayList;

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 941
    new-instance v14, Ljava/util/ArrayList;

    iget-object v0, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesUrl:Ljava/util/ArrayList;

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 942
    iget-object v0, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 943
    iget-object v0, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 944
    iget-object v0, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesSize:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 945
    iget-object v0, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesUrl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 946
    new-instance v15, Lcom/xyron/game/launcher/Ref$IntRef;

    invoke-direct {v15}, Lcom/xyron/game/launcher/Ref$IntRef;-><init>()V

    const/4 v8, 0x0

    .line 947
    iput v8, v15, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    .line 948
    new-instance v7, Lcom/xyron/game/launcher/Ref$LongRef;

    invoke-direct {v7}, Lcom/xyron/game/launcher/Ref$LongRef;-><init>()V

    const-wide/16 v0, 0x0

    .line 949
    iput-wide v0, v7, Lcom/xyron/game/launcher/Ref$LongRef;->element:J

    .line 950
    :goto_0
    iget v0, v15, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string/jumbo v2, "x1y2z"

    if-ge v0, v1, :cond_6

    .line 951
    iput-boolean v10, v9, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/launcher/UpdateService;->gameRoot()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 960
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 962
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 963
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 966
    :cond_2
    new-instance v3, Lcom/xyron/game/launcher/Ref$LongRef;

    invoke-direct {v3}, Lcom/xyron/game/launcher/Ref$LongRef;-><init>()V

    .line 967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/xyron/game/launcher/Ref$LongRef;->element:J

    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "startDataUpdating "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameDataSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameDataSizeUpdated:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget v1, v15, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 972
    const-string v2, ""

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_2

    .line 982
    :cond_3
    iput-boolean v10, v9, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 983
    iget v4, v15, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget v2, v15, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/downloader/PRDownloader;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/downloader/request/DownloadRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/request/DownloadRequestBuilder;->build()Lcom/downloader/request/DownloadRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/downloader/request/DownloadRequest;->setOnStartOrResumeListener(Lcom/downloader/OnStartOrResumeListener;)Lcom/downloader/request/DownloadRequest;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/downloader/request/DownloadRequest;->setOnPauseListener(Lcom/downloader/OnPauseListener;)Lcom/downloader/request/DownloadRequest;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/downloader/request/DownloadRequest;->setOnCancelListener(Lcom/downloader/OnCancelListener;)Lcom/downloader/request/DownloadRequest;

    move-result-object v0

    new-instance v6, Lcom/xyron/game/launcher/UpdateService$7;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v4, v7

    move-object v5, v12

    move-object v8, v6

    move-object v6, v15

    move-object/from16 v17, v7

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/xyron/game/launcher/UpdateService$7;-><init>(Lcom/xyron/game/launcher/UpdateService;Lcom/xyron/game/launcher/Ref$LongRef;Lcom/xyron/game/launcher/Ref$LongRef;Ljava/util/ArrayList;Lcom/xyron/game/launcher/Ref$IntRef;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v8}, Lcom/downloader/request/DownloadRequest;->setOnProgressListener(Lcom/downloader/OnProgressListener;)Lcom/downloader/request/DownloadRequest;

    move-result-object v0

    new-instance v8, Lcom/xyron/game/launcher/UpdateService$6;

    move-object v1, v8

    move-object/from16 v3, v17

    move-object v4, v13

    move-object v5, v15

    move-object v6, v11

    move-object v7, v12

    move-object v10, v8

    move-object/from16 v16, v13

    const/4 v13, 0x0

    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/xyron/game/launcher/UpdateService$6;-><init>(Lcom/xyron/game/launcher/UpdateService;Lcom/xyron/game/launcher/Ref$LongRef;Ljava/util/ArrayList;Lcom/xyron/game/launcher/Ref$IntRef;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1007
    invoke-virtual {v0, v10}, Lcom/downloader/request/DownloadRequest;->start(Lcom/downloader/OnDownloadListener;)I

    :cond_4
    const-wide/16 v0, 0x1e

    .line 1028
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1030
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1032
    :goto_1
    iget-boolean v0, v9, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    if-nez v0, :cond_4

    .line 1035
    iget v0, v15, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v15, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    move-object/from16 v13, v16

    goto :goto_3

    :cond_5
    :goto_2
    move-object/from16 v17, v7

    move-object/from16 v16, v13

    const/4 v13, 0x0

    .line 973
    iput-boolean v13, v9, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 974
    iget-object v0, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateFiles:Ljava/util/ArrayList;

    iget v1, v15, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    iget-object v0, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesName:Ljava/util/ArrayList;

    iget v1, v15, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    iget-object v0, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesSize:Ljava/util/ArrayList;

    iget v1, v15, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    move-object/from16 v3, v16

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    iget-object v0, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateFilesUrl:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    iget v0, v15, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v15, Lcom/xyron/game/launcher/Ref$IntRef;->element:I

    move-object v13, v3

    :goto_3
    move-object/from16 v7, v17

    const/4 v8, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v13, 0x0

    .line 1039
    iput-boolean v13, v9, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 1040
    iget-object v0, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download incomplete, pending files: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/xyron/game/launcher/UpdateService;->mUpdateFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->SourceUnavailable:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {v9, v0}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    return-void

    .line 1045
    :cond_7
    iget-boolean v0, v9, Lcom/xyron/game/launcher/UpdateService;->mForceReinstall:Z

    if-eqz v0, :cond_8

    .line 1046
    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/launcher/UpdateService;->notifyFullReinstallComplete()V

    return-void

    .line 1049
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xyron/game/launcher/UpdateService;->updateGame()V

    return-void
.end method

.method public startGameUpdateChecking()V
    .locals 5

    .line 867
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 868
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->DownloadGameData:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    .line 869
    iput-boolean v1, p0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 871
    :try_start_0
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->beginArchiveTransfer()V

    .line 872
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->gameRoot()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/launcher/UpdateService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/xyron/game/launcher/UpdateService$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/launcher/UpdateService;)V

    new-instance v2, Lcom/xyron/game/launcher/UpdateService$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/xyron/game/launcher/UpdateService$$ExternalSyntheticLambda4;-><init>()V

    iget-object v3, p0, Lcom/xyron/game/launcher/UpdateService;->mArchiveSource:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    iget-object v4, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    .line 873
    invoke-static {v4}, Lcom/xyron/game/launcher/util/GameStorage;->integrityIndex(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 872
    invoke-static {v0, v1, v2, v3, v4}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->install(Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Validator;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;Ljava/io/File;)V

    .line 874
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/GameStorage;->manifestPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "installed_sha256"

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService;->mArchiveSource:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    iget-object v2, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->sha256:Ljava/lang/String;

    .line 875
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 876
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/ConfigValidator;->validateConfigFiles(Landroid/content/Context;)V

    .line 877
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->ensureSelectedServer(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 878
    :try_start_1
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/GameStorage;->finishLegacyRemoval(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 879
    :try_start_2
    const-string v1, "AngraData"

    const-string v2, "Installed map preserved; legacy cleanup will retry"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    :goto_0
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 881
    const-string v0, "angra_transfer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/launcher/UpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "active"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    .line 882
    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->lastTransfer:Landroid/os/Bundle;

    .line 883
    iput-boolean v1, p0, Lcom/xyron/game/launcher/UpdateService;->mDownloadingStatus:Z

    .line 884
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->Updated:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    .line 885
    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mForceReinstall:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->notifyFullReinstallComplete()V

    goto :goto_1

    .line 886
    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->updateGame()V

    goto :goto_1

    .line 877
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Falha ao preservar configuracoes do jogador."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 888
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "N\u00c3\u00a3o foi poss\u00c3\u00advel manter a atualiza\u00c3\u00a7\u00c3\u00a3o ativa. Toque para retomar; os arquivos foram preservados."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/xyron/game/launcher/UpdateService;->reportArchiveError(Ljava/io/IOException;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 887
    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->reportArchiveError(Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 889
    :goto_1
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->endArchiveTransfer()V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->stopSelf()V

    return-void

    :goto_2
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->endArchiveTransfer()V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->stopSelf()V

    throw v0

    .line 893
    :cond_2
    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mForceReinstall:Z

    if-eqz v0, :cond_3

    .line 894
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->SourceUnavailable:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    return-void

    .line 898
    :cond_3
    const-string v0, "UpdateService"

    const-string v2, "updateGameData()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 901
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 902
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_4

    .line 904
    :try_start_4
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 906
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method

.method startUpdating()V
    .locals 9

    .line 240
    const-string v0, "last_valid_manifest"

    const-string v1, "AngraData"

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xyron/game/launcher/UpdateService;->lastTransfer:Landroid/os/Bundle;

    .line 241
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->resetUpdateState()V

    .line 242
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->transferContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    .line 243
    sget-object v2, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->CheckUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {p0, v2}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    .line 244
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->getInstalledVersionCode()I

    move-result v2

    iput v2, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateVersion:I

    .line 246
    :try_start_0
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->gameRoot()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 248
    invoke-static {v2}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->recover(Ljava/io/File;)V

    .line 249
    iget-object v3, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xyron/game/launcher/util/GameStorage;->manifestPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 250
    iget-object v4, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    .line 251
    iget-object v5, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xyron/game/launcher/util/BundledDataSource;->forMap(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    move-result-object v5

    iput-object v5, p0, Lcom/xyron/game/launcher/UpdateService;->mArchiveSource:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 253
    :try_start_1
    iget-object v5, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xyron/game/launcher/util/AngraDataManifest;->fetch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-static {v5, v4}, Lcom/xyron/game/launcher/util/AngraDataManifest;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    move-result-object v6

    .line 255
    iget-object v7, v6, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->version:Ljava/lang/String;

    iget-object v8, p0, Lcom/xyron/game/launcher/UpdateService;->mArchiveSource:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    iget-object v8, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->version:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/xyron/game/launcher/util/DataUpdateDecision;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_1

    .line 256
    iput-object v6, p0, Lcom/xyron/game/launcher/UpdateService;->mArchiveSource:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    .line 257
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 260
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_6

    .line 261
    const-string v6, "Manifesto remoto indispon\u00edvel. Conferindo fontes locais."

    invoke-static {v1, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 263
    :try_start_3
    const-string v5, ""

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    invoke-static {v0, v4}, Lcom/xyron/game/launcher/util/AngraDataManifest;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    move-result-object v0

    .line 266
    iget-object v3, v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->version:Ljava/lang/String;

    iget-object v4, p0, Lcom/xyron/game/launcher/UpdateService;->mArchiveSource:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    iget-object v4, v4, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->version:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xyron/game/launcher/util/DataUpdateDecision;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 267
    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mArchiveSource:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 270
    :try_start_4
    const-string v3, "Manifesto local inv\u00e1lido"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 273
    :cond_0
    :goto_0
    :try_start_5
    invoke-static {v2}, Lcom/xyron/game/launcher/util/DataInstallState;->pendingSource(Ljava/io/File;)Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v3, v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->version:Ljava/lang/String;

    iget-object v4, p0, Lcom/xyron/game/launcher/UpdateService;->mArchiveSource:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    iget-object v4, v4, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->version:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xyron/game/launcher/util/DataUpdateDecision;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 275
    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mArchiveSource:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 277
    :try_start_6
    const-string v3, "Marcador de download inv\u00e1lido"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/xyron/game/launcher/util/DataInstallState;->pending(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 281
    invoke-static {v2}, Lcom/xyron/game/launcher/util/DataInstallState;->invalidReceipt(Ljava/io/File;)Z

    move-result v0

    .line 282
    :cond_2
    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mForceReinstall:Z

    if-eqz v0, :cond_4

    .line 283
    invoke-static {v2}, Lcom/xyron/game/launcher/util/DataInstallState;->installedVersion(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mArchiveSource:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    iget-object v1, v1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->version:Ljava/lang/String;

    .line 282
    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/DataUpdateDecision;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_2

    .line 284
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A DATA publicada e anterior a instalada. Reparo cancelado para preservar os arquivos atuais."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mForceReinstall:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mArchiveSource:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/GameDataVerifier;->updateRequired(Landroid/content/Context;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 286
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->Updated:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    goto :goto_3

    .line 288
    :cond_5
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateFiles:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mArchiveSource:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    iget-wide v0, v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    iput-wide v0, p0, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameDataSize:J

    .line 290
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->UpdateRequired:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    .line 292
    :goto_3
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    .line 293
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->notifyGameStatus()V

    goto :goto_4

    .line 260
    :cond_6
    throw v5

    .line 247
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pasta de arquivos indisponivel."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception v0

    .line 294
    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->reportArchiveError(Ljava/io/IOException;)V

    :goto_4
    return-void
.end method

.method transferContext()Landroid/content/Context;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/GameStorage;->bound(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mapContext:Landroid/content/Context;

    return-object v0
.end method

.method public updateGame()V
    .locals 5

    .line 837
    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateService;->mForceReinstall:Z

    if-eqz v0, :cond_0

    .line 838
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->SourceUnavailable:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    return-void

    .line 841
    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->isGameUpdateExists()Z

    move-result v0

    const-string v1, "UpdateService"

    if-eqz v0, :cond_1

    .line 842
    const-string v0, "updateGame exists"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->DownloadGame:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    .line 844
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateService;->downloadGame()V

    return-void

    .line 847
    :cond_1
    const-string v0, "updateGame done"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    .line 849
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateService;->gameRoot()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/download/update.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 850
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService;->mInHandler:Lcom/xyron/game/launcher/UpdateService$IncomingHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 851
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "status"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 852
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "apkPath"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mMessenger:Landroid/os/Messenger;

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 854
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_2

    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService;->mActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 858
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 861
    :cond_2
    :goto_0
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V

    return-void
.end method
