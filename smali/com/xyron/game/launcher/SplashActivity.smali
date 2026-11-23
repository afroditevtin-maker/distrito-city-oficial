.class public Lcom/xyron/game/launcher/SplashActivity;
.super Lcom/xyron/game/launcher/SampActivity;
.source "SplashActivity.java"


# static fields
.field private static final SPLASH_DURATION_MS:J = 0x2710L


# instance fields
.field private apkManifest:Ljava/lang/String;

.field private disabledMessage:Ljava/lang/String;

.field private firstDataInstall:Z

.field private final handler:Landroid/os/Handler;

.field private navigated:Z

.field private needsDataUpdate:Z

.field private final openLauncher:Ljava/lang/Runnable;

.field private pendingDataInstall:Z

.field private preparationComplete:Z

.field private progressAnimator:Landroid/animation/ObjectAnimator;

.field private splashElapsed:Z

.field private updateWarning:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/xyron/game/launcher/SampActivity;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/SplashActivity;->handler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcom/xyron/game/launcher/SplashActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/SplashActivity$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/launcher/SplashActivity;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/SplashActivity;->openLauncher:Ljava/lang/Runnable;

    return-void
.end method

.method private checkLauncherUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 73
    :try_start_0
    invoke-static {p1}, Lcom/xyron/game/launcher/util/RemoteConfiguration;->fetchLauncher(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1}, Lcom/xyron/game/launcher/util/RemoteConfiguration;->disabledMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xyron/game/launcher/SplashActivity;->disabledMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    return-object v0

    .line 77
    :cond_0
    invoke-static {v1}, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->parse(Ljava/lang/String;)Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 78
    iget p1, v2, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->versionCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xe0

    if-le p1, v2, :cond_1

    return-object v1

    :catch_0
    move-exception v1

    .line 80
    const-string v2, "AngraApk"

    const-string v3, "Startup APK check unavailable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    invoke-static {p1}, Lcom/xyron/game/launcher/util/RemoteConfiguration;->cachedLauncher(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/xyron/game/launcher/util/RemoteConfiguration;->disabledMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/SplashActivity;->disabledMessage:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method static synthetic lambda$prepareLauncher$2(Landroid/content/Context;)V
    .locals 2

    .line 103
    :try_start_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/RemoteConfiguration;->refreshServers(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 105
    const-string v0, "AngraServers"

    const-string v1, "Keeping last valid server catalog"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private openWhenReady()V
    .locals 4

    .line 43
    iget-boolean v0, p0, Lcom/xyron/game/launcher/SplashActivity;->splashElapsed:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/xyron/game/launcher/SplashActivity;->preparationComplete:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/xyron/game/launcher/SplashActivity;->navigated:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/xyron/game/launcher/SplashActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/xyron/game/launcher/SplashActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/xyron/game/launcher/SplashActivity;->navigated:Z

    const v1, 0x7f0a0086

    .line 45
    invoke-virtual {p0, v1}, Lcom/xyron/game/launcher/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    const/16 v2, 0x64

    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/xyron/game/launcher/SplashActivity;->disabledMessage:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 50
    const-string v2, "Aplicativo desativado"

    invoke-static {p0, v2, v1, v0}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/xyron/game/launcher/SplashActivity;->updateWarning:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {p0, v1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 54
    :cond_3
    iget-boolean v1, p0, Lcom/xyron/game/launcher/SplashActivity;->firstDataInstall:Z

    xor-int/2addr v1, v0

    iget-object v2, p0, Lcom/xyron/game/launcher/SplashActivity;->apkManifest:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/xyron/game/launcher/util/DataUpdateDecision;->startupTarget(ZZ)Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;->APK_UPDATE:Lcom/xyron/game/launcher/util/DataUpdateDecision$StartupTarget;

    if-ne v0, v1, :cond_5

    const-class v0, Lcom/xyron/game/launcher/ApkUpdateActivity;

    goto :goto_1

    :cond_5
    const-class v0, Lcom/xyron/game/launcher/MainActivity;

    .line 57
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    invoke-virtual {p0}, Lcom/xyron/game/launcher/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/xyron/game/launcher/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 59
    invoke-virtual {p0}, Lcom/xyron/game/launcher/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_6
    const/high16 v0, 0x10000

    .line 61
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    const-string v0, "apk_manifest"

    iget-object v2, p0, Lcom/xyron/game/launcher/SplashActivity;->apkManifest:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v0, "next_data_update"

    iget-boolean v2, p0, Lcom/xyron/game/launcher/SplashActivity;->needsDataUpdate:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    const-string v0, "first_data_install"

    iget-boolean v2, p0, Lcom/xyron/game/launcher/SplashActivity;->firstDataInstall:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->GameDataUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    invoke-virtual {v0}, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v1}, Lcom/xyron/game/launcher/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0, v3, v3}, Lcom/xyron/game/launcher/SplashActivity;->overridePendingTransition(II)V

    .line 68
    invoke-virtual {p0}, Lcom/xyron/game/launcher/SplashActivity;->finish()V

    :cond_7
    :goto_2
    return-void
.end method

.method private prepareLauncher()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/xyron/game/launcher/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/xyron/game/launcher/SplashActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/xyron/game/launcher/SplashActivity$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/launcher/SplashActivity;Landroid/content/Context;)V

    const-string v0, "angra-startup-data-check"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-xyron-game-launcher-SplashActivity()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/xyron/game/launcher/SplashActivity;->splashElapsed:Z

    .line 39
    invoke-direct {p0}, Lcom/xyron/game/launcher/SplashActivity;->openWhenReady()V

    return-void
.end method

.method synthetic lambda$prepareLauncher$1$com-xyron-game-launcher-SplashActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/SplashActivity;->checkLauncherUpdate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$prepareLauncher$3$com-xyron-game-launcher-SplashActivity(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/xyron/game/launcher/SplashActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/SplashActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iput-boolean p1, p0, Lcom/xyron/game/launcher/SplashActivity;->needsDataUpdate:Z

    .line 133
    iput-object p2, p0, Lcom/xyron/game/launcher/SplashActivity;->updateWarning:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/xyron/game/launcher/SplashActivity;->apkManifest:Ljava/lang/String;

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/xyron/game/launcher/SplashActivity;->preparationComplete:Z

    .line 136
    invoke-direct {p0}, Lcom/xyron/game/launcher/SplashActivity;->openWhenReady()V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$prepareLauncher$4$com-xyron-game-launcher-SplashActivity(Landroid/content/Context;)V
    .locals 9

    .line 90
    const-string v0, "AngraData"

    .line 0
    const-string v1, "Startup manifest checked; update required="

    .line 90
    invoke-static {p1}, Lcom/xyron/game/launcher/util/ConfigValidator;->validateConfigFiles(Landroid/content/Context;)V

    .line 91
    :try_start_0
    invoke-static {p1}, Lcom/xyron/game/launcher/util/GameStorage;->finishLegacyRemoval(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 92
    const-string v3, "Legacy cleanup will retry after installation"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :goto_0
    invoke-static {p1}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasRequiredGameData(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 94
    iput-boolean v2, p0, Lcom/xyron/game/launcher/SplashActivity;->firstDataInstall:Z

    .line 95
    invoke-static {p1}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/xyron/game/launcher/util/DataInstallState;->pending(Ljava/io/File;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xyron/game/launcher/SplashActivity;->pendingDataInstall:Z

    .line 96
    invoke-static {p1}, Lcom/xyron/game/launcher/util/GameDataVerifier;->needsUpdate(Landroid/content/Context;)Z

    move-result v2

    .line 98
    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lcom/xyron/game/launcher/SplashActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1}, Lcom/xyron/game/launcher/SplashActivity$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/launcher/SplashActivity;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 100
    new-instance v4, Ljava/lang/Thread;

    const-string v5, "angra-startup-apk-check"

    invoke-direct {v4, v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 101
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/xyron/game/launcher/SplashActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p1}, Lcom/xyron/game/launcher/SplashActivity$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    const-string v6, "angra-startup-server-check"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 108
    invoke-static {p1}, Lcom/xyron/game/launcher/util/GameStorage;->manifestPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v5, 0x0

    .line 110
    :try_start_1
    invoke-static {p1}, Lcom/xyron/game/launcher/util/AngraDataManifest;->fetch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-static {p1}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/xyron/game/launcher/util/AngraDataManifest;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    move-result-object v7

    .line 112
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v8, "last_valid_manifest"

    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    invoke-static {p1, v7}, Lcom/xyron/game/launcher/util/GameDataVerifier;->updateRequired(Landroid/content/Context;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;)Z

    move-result v2

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v5

    goto :goto_1

    :catch_1
    move-exception p1

    .line 116
    const-string v1, "Startup update check unavailable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    const-string p1, "Nao foi possivel verificar atualizacoes agora. Os arquivos instalados foram mantidos."

    .line 123
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 127
    const-string v1, "AngraApk"

    const-string v3, "Startup APK check failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 125
    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 130
    :goto_2
    iget-object v0, p0, Lcom/xyron/game/launcher/SplashActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/xyron/game/launcher/SplashActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v2, p1, v5}, Lcom/xyron/game/launcher/SplashActivity$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/launcher/SplashActivity;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 143
    invoke-super {p0, p1}, Lcom/xyron/game/launcher/SampActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001f

    .line 144
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/SplashActivity;->setContentView(I)V

    const p1, 0x7f0a0086

    .line 146
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/16 v1, 0x64

    .line 149
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    const v1, 0x7f0a0087

    .line 153
    invoke-virtual {p0, v1}, Lcom/xyron/game/launcher/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/xyron/game/launcher/SplashActivity;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_2
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->startMusic(Landroid/content/Context;)V

    .line 159
    invoke-direct {p0}, Lcom/xyron/game/launcher/SplashActivity;->prepareLauncher()V

    .line 160
    invoke-virtual {p0}, Lcom/xyron/game/launcher/SplashActivity;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x63

    .line 161
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "progress"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/SplashActivity;->progressAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x2710

    .line 162
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 163
    iget-object p1, p0, Lcom/xyron/game/launcher/SplashActivity;->progressAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    iget-object p1, p0, Lcom/xyron/game/launcher/SplashActivity;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 165
    iget-object p1, p0, Lcom/xyron/game/launcher/SplashActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xyron/game/launcher/SplashActivity;->openLauncher:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/xyron/game/launcher/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/xyron/game/launcher/SplashActivity;->progressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 175
    :cond_0
    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onDestroy()V

    return-void
.end method
