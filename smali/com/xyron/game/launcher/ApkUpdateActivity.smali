.class public final Lcom/xyron/game/launcher/ApkUpdateActivity;
.super Lcom/xyron/game/launcher/SampActivity;
.source "ApkUpdateActivity.java"


# instance fields
.field private destination:Ljava/io/File;

.field private downloadId:J

.field private downloads:Landroid/app/DownloadManager;

.field private final handler:Landroid/os/Handler;

.field private lastLog:Ljava/lang/String;

.field private final poll:Ljava/lang/Runnable;

.field private progress:Landroid/widget/ProgressBar;

.field private ready:Z

.field private status:Landroid/widget/TextView;

.field private transfer:Landroid/widget/TextView;

.field private final transferStats:Lcom/xyron/game/launcher/util/TransferProgress;

.field private update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

.field private final updateLogs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private validating:Z

.field private video:Lcom/xyron/game/launcher/ui/CropVideoView;

.field private waitingPermission:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/xyron/game/launcher/SampActivity;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->handler:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/xyron/game/launcher/util/TransferProgress;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/TransferProgress;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->transferStats:Lcom/xyron/game/launcher/util/TransferProgress;

    const-wide/16 v0, -0x1

    .line 27
    iput-wide v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloadId:J

    .line 30
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->updateLogs:Ljava/util/Deque;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->lastLog:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/xyron/game/launcher/ApkUpdateActivity$1;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/ApkUpdateActivity$1;-><init>(Lcom/xyron/game/launcher/ApkUpdateActivity;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->poll:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/launcher/ApkUpdateActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->refreshDownload()V

    return-void
.end method

.method private continueLauncher()V
    .locals 4

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "first_data_install"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/xyron/game/launcher/UpdateActivity;

    goto :goto_0

    :cond_0
    const-class v1, Lcom/xyron/game/launcher/MainActivity;

    :goto_0
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const-string v1, "apk_manifest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->GameDataUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    invoke-virtual {v1}, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->finish()V

    return-void
.end method

.method private failed(Ljava/lang/String;)V
    .locals 2

    .line 133
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->cancelOwned(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloadId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->validating:Z

    iput-boolean v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->ready:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Toque no progresso para tentar novamente."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->log(Ljava/lang/String;)V

    const p1, 0x7f0a03b5

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/launcher/ApkUpdateActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 7

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const-string v4, "%02x"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private install()V
    .locals 4

    const-string v0, "package:"

    .line 164
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iput-boolean v3, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->waitingPermission:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->waitingPermission:Z

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apkprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->destination:Ljava/io/File;

    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 169
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 170
    const-string v2, "Angra APK"

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    invoke-virtual {p0, v1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    const-string v0, "N\u00e3o foi poss\u00edvel abrir o instalador. Confira a permiss\u00e3o para instalar apps."

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 5

    .line 86
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->lastLog:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->lastLog:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->updateLogs:Ljava/util/Deque;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->updateLogs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->updateLogs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->updateLogs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 93
    :cond_3
    iget-object v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const-string v0, "AngraApkUpdate"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static mb(J)Ljava/lang/String;
    .locals 3

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    long-to-double p0, p0

    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    const-string p0, "%.1f"

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private recoverManifest()V
    .locals 3

    const v0, 0x7f0a03b5

    .line 71
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const-string v0, "Consultando novamente a vers\u00e3o oficial\u2026"

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->log(Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/launcher/ApkUpdateActivity;)V

    const-string v2, "angra-apk-recheck"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshDownload()V
    .locals 10

    const-string v0, "Download falhou (c\u00f3digo "

    .line 117
    iget-object v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->poll:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    iget-wide v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloadId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_c

    iget-boolean v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->validating:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->ready:Z

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 119
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloads:Landroid/app/DownloadManager;

    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    iget-wide v3, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloadId:J

    const/4 v5, 0x1

    new-array v6, v5, [J

    const/4 v7, 0x0

    aput-wide v3, v6, v7

    invoke-virtual {v2, v6}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_9

    .line 120
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 121
    :cond_1
    const-string v2, "status"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 122
    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->validate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 131
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :cond_3
    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 123
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "). Tente novamente."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->failed(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 131
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    return-void

    .line 124
    :cond_5
    :try_start_5
    const-string v0, "bytes_so_far"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 125
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget-wide v8, v0, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->size:J

    cmp-long v0, v3, v8

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloads:Landroid/app/DownloadManager;

    iget-wide v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloadId:J

    new-array v4, v5, [J

    aput-wide v2, v4, v7

    invoke-virtual {v0, v4}, Landroid/app/DownloadManager;->remove([J)I

    const-string v0, "Download excedeu o tamanho informado no Gist."

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->failed(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_6

    .line 131
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_6
    return-void

    .line 126
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->progress:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget-wide v5, v5, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->size:J

    invoke-static {v3, v4, v5, v6}, Lcom/xyron/game/launcher/util/TransferProgress;->units(JJ)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v0, 0x4

    if-ne v2, v0, :cond_8

    .line 127
    const-string v0, "Aguardando conex\u00e3o\u2026"

    goto :goto_0

    :cond_8
    const-string v0, "Baixando o aplicativo\u2026"

    :goto_0
    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->log(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 129
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->transfer:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget-wide v7, v7, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->size:J

    invoke-static {v3, v4, v7, v8}, Lcom/xyron/game/launcher/util/TransferProgress;->percent(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "   \u2022   "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/xyron/game/launcher/ApkUpdateActivity;->mb(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget-wide v7, v7, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->size:J

    invoke-static {v7, v8}, Lcom/xyron/game/launcher/ApkUpdateActivity;->mb(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " MB   \u2022   "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->transferStats:Lcom/xyron/game/launcher/util/TransferProgress;

    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/xyron/game/launcher/util/TransferProgress;->speed(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->poll:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_c

    .line 131
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    .line 120
    :cond_9
    :goto_1
    :try_start_9
    const-string v0, "Download n\u00e3o encontrado. Tente novamente."

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->failed(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v1, :cond_a

    .line 131
    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_b

    .line 119
    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_c
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_2
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 131
    :catch_0
    const-string v0, "N\u00e3o foi poss\u00edvel consultar o download."

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->failed(Ljava/lang/String;)V

    :cond_c
    :goto_3
    return-void
.end method

.method private static signatures(Landroid/content/pm/PackageInfo;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/xyron/game/launcher/ApkUpdateActivity;->hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 159
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "APK sem assinatura."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private startDownload()V
    .locals 5

    .line 98
    iget-boolean v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->validating:Z

    if-nez v0, :cond_5

    iget-wide v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloadId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto/16 :goto_2

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->destination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Armazenamento indispon\u00edvel."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->destination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->destination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Arquivo anterior indispon\u00edvel."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_4
    :goto_1
    new-instance v0, Landroid/app/DownloadManager$Request;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget-object v2, v2, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?angra_build="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget v2, v2, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 104
    const-string v1, "DESTRITO NOBRE \u2014 atualiza\u00e7\u00e3o do aplicativo"

    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 105
    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 106
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 108
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 109
    iget-object v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget-object v2, v2, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    iget-object v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->destination:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 110
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 111
    iget-object v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloads:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloadId:J

    .line 112
    const-string v0, "angra_apk_update"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_id"

    iget-wide v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloadId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sha256"

    iget-object v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget-object v2, v2, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->sha256:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "path"

    iget-object v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->destination:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "target_version"

    iget-object v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget v2, v2, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->versionCode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->transferStats:Lcom/xyron/game/launcher/util/TransferProgress;

    invoke-virtual {v0}, Lcom/xyron/game/launcher/util/TransferProgress;->reset()V

    const v0, 0x7f0a03b5

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->refreshDownload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 114
    :catch_0
    const-string v0, "N\u00e3o foi poss\u00edvel iniciar. Verifique conex\u00e3o e espa\u00e7o livre."

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->failed(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private validate()V
    .locals 3

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->validating:Z

    const-string v0, "Conferindo assinatura e integridade do APK\u2026"

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->log(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->destination:Ljava/io/File;

    .line 137
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/launcher/ApkUpdateActivity;Ljava/io/File;)V

    const-string v0, "angra-apk-validation"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method synthetic lambda$failed$5$com-xyron-game-launcher-ApkUpdateActivity(Landroid/view/View;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->recoverManifest()V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-xyron-game-launcher-ApkUpdateActivity(Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->recoverManifest()V

    return-void
.end method

.method synthetic lambda$recoverManifest$1$com-xyron-game-launcher-ApkUpdateActivity(Lcom/xyron/game/launcher/util/ApkUpdateManifest;Ljava/lang/String;)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 79
    iget p1, p1, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->versionCode:I

    const/16 v0, 0xe0

    if-gt p1, v0, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "apk_manifest"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->recreate()V

    return-void

    .line 79
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->continueLauncher()V

    :cond_3
    :goto_1
    return-void
.end method

.method synthetic lambda$recoverManifest$2$com-xyron-game-launcher-ApkUpdateActivity(Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->recoverManifest()V

    return-void
.end method

.method synthetic lambda$recoverManifest$3$com-xyron-game-launcher-ApkUpdateActivity()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Consulta indispon\u00edvel. Seus dados foram preservados; toque para tentar novamente."

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->log(Ljava/lang/String;)V

    const v0, 0x7f0a03b5

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/launcher/ApkUpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$recoverManifest$4$com-xyron-game-launcher-ApkUpdateActivity()V
    .locals 4

    .line 75
    :try_start_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/RemoteConfiguration;->fetchLauncher(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->parse(Ljava/lang/String;)Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v1, v0}, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda7;-><init>(Lcom/xyron/game/launcher/ApkUpdateActivity;Lcom/xyron/game/launcher/util/ApkUpdateManifest;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda8;-><init>(Lcom/xyron/game/launcher/ApkUpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method synthetic lambda$validate$6$com-xyron-game-launcher-ApkUpdateActivity(Landroid/view/View;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->install()V

    return-void
.end method

.method synthetic lambda$validate$7$com-xyron-game-launcher-ApkUpdateActivity(Ljava/lang/String;)V
    .locals 5

    .line 151
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->validating:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 152
    iget-object v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloads:Landroid/app/DownloadManager;

    iget-wide v3, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloadId:J

    new-array v1, v1, [J

    aput-wide v3, v1, v0

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager;->remove([J)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "APK n\u00e3o autorizado: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->failed(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_1
    iput-boolean v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->ready:Z

    iget-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->transfer:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "100%   \u2022   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget-wide v1, v1, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->size:J

    invoke-static {v1, v2}, Lcom/xyron/game/launcher/ApkUpdateActivity;->mb(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MB   \u2022   Download conclu\u00eddo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "Integridade e assinatura conferidas. Abrindo o instalador do Android\u2026"

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->log(Ljava/lang/String;)V

    const p1, 0x7f0a03b5

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda6;-><init>(Lcom/xyron/game/launcher/ApkUpdateActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->install()V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$validate$8$com-xyron-game-launcher-ApkUpdateActivity(Ljava/io/File;)V
    .locals 5

    .line 140
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget-wide v2, v2, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    .line 141
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x10000

    :try_start_1
    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 143
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->hex([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget-object v1, v1, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->sha256:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 145
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget v2, v2, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->versionCode:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v1, v2, :cond_2

    .line 148
    invoke-static {p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->signatures(Landroid/content/pm/PackageInfo;)Ljava/util/Set;

    move-result-object p1

    invoke-static {v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->signatures(Landroid/content/pm/PackageInfo;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Assinatura diferente do Angra instalado."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Pacote ou vers\u00e3o incompat\u00edvel com este launcher."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SHA-256 diferente do informado no Gist."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catchall_0
    move-exception p1

    .line 142
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    .line 140
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Tamanho diferente do informado no Gist."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 151
    :goto_2
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda9;-><init>(Lcom/xyron/game/launcher/ApkUpdateActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->continueLauncher()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 36
    const-string v0, ""

    .line 0
    const-string v1, "0%   \u2022   0 / "

    const-string v2, "Launcher "

    .line 36
    invoke-super {p0, p1}, Lcom/xyron/game/launcher/SampActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string p1, "download"

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    iput-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloads:Landroid/app/DownloadManager;

    const p1, 0x7f0d0020

    .line 38
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0a013f

    .line 40
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xyron/game/launcher/ui/CropVideoView;

    iput-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->video:Lcom/xyron/game/launcher/ui/CropVideoView;

    .line 41
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->beginDataInstallation(Landroid/content/Context;)V

    .line 42
    iget-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->video:Lcom/xyron/game/launcher/ui/CropVideoView;

    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/LauncherMedia;->bindLoopingVideo(Landroid/app/Activity;Landroid/widget/VideoView;)V

    const p1, 0x7f0a01f6

    .line 43
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v3, "Baixando atualiza\u00e7\u00f5es do launcher"

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a03b4

    .line 44
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->status:Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 45
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0a013e

    .line 46
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->progress:Landroid/widget/ProgressBar;

    const p1, 0x7f0a016d

    .line 47
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->transfer:Landroid/widget/TextView;

    const p1, 0x7f0a021a

    .line 48
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a016b

    .line 49
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v4, 0x2710

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v4, "apk_manifest"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->parse(Ljava/lang/String;)Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    if-eqz p1, :cond_6

    .line 53
    iget p1, p1, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->versionCode:I

    const/16 v4, 0xe0

    if-gt p1, v4, :cond_0

    goto/16 :goto_3

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    .line 55
    new-instance v4, Ljava/io/File;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getCacheDir()Ljava/io/File;

    move-result-object p1

    :goto_0
    const-string v5, "apk_updates"

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "N\u00e3o foi poss\u00edvel preparar o download."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_3
    :goto_1
    new-instance p1, Ljava/io/File;

    const-string v5, "angra-update.apk"

    invoke-direct {p1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->destination:Ljava/io/File;

    .line 59
    const-string p1, "angra_apk_update"

    invoke-virtual {p0, p1, v3}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 60
    iget-object v3, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget-object v3, v3, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->sha256:Ljava/lang/String;

    const-string v4, "sha256"

    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->destination:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "path"

    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "download_id"

    const-wide/16 v3, -0x1

    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloadId:J

    goto :goto_2

    .line 61
    :cond_4
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->cancelOwned(Landroid/content/Context;)V

    .line 62
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget-object v0, v0, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": preparando download seguro\u2026"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->log(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->transfer:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->update:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget-wide v1, v1, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->size:J

    invoke-static {v1, v2}, Lcom/xyron/game/launcher/ApkUpdateActivity;->mb(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-wide v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->downloadId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_5

    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->refreshDownload()V

    goto :goto_4

    :cond_5
    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->startDownload()V

    goto :goto_4

    .line 53
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->continueLauncher()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 66
    :catch_0
    const-string p1, "N\u00e3o foi poss\u00edvel preparar a atualiza\u00e7\u00e3o. Toque no progresso para consultar novamente."

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->log(Ljava/lang/String;)V

    const p1, 0x7f0a03b5

    .line 67
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/ApkUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/launcher/ApkUpdateActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->video:Lcom/xyron/game/launcher/ui/CropVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/launcher/ui/CropVideoView;->stopPlayback()V

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->poll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->video:Lcom/xyron/game/launcher/ui/CropVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/launcher/ui/CropVideoView;->pause()V

    :cond_0
    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 175
    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onResume()V

    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->video:Lcom/xyron/game/launcher/ui/CropVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/launcher/ui/CropVideoView;->resume()V

    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->refreshDownload()V

    iget-boolean v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->waitingPermission:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity;->ready:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->install()V

    :cond_1
    return-void
.end method
