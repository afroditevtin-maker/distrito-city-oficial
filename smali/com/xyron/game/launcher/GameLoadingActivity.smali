.class public Lcom/xyron/game/launcher/GameLoadingActivity;
.super Lcom/xyron/game/launcher/SampActivity;
.source "GameLoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;
    }
.end annotation


# static fields
.field private static final MINIMUM_LOADING_TIME_MS:J = 0x3e8L


# instance fields
.field private volatile attemptGeneration:I

.field private attemptStartedAt:J

.field private volatile checkedFiles:J

.field private foreground:Z

.field private gameStarted:Z

.field private final handler:Landroid/os/Handler;

.field private final launchGameRunnable:Ljava/lang/Runnable;

.field private loadingError:Ljava/lang/String;

.field private loadingInterface:Landroid/webkit/WebView;

.field private volatile loadingStage:I

.field private nickname:Ljava/lang/String;

.field private offlineResult:Z

.field private preflightThread:Ljava/lang/Thread;

.field private readyToLaunch:Z

.field private retry:Landroid/widget/Button;

.field private server:Landroid/widget/TextView;

.field private serverHost:Ljava/lang/String;

.field private serverPort:I

.field private spinner:Landroid/view/View;

.field private status:Landroid/widget/TextView;

.field private volatile totalFiles:J

.field private video:Lcom/xyron/game/launcher/ui/CropVideoView;


# direct methods
.method public static synthetic $r8$lambda$w10M5sJWK3gJkMMxlvLgbfo3A8o(Lcom/xyron/game/launcher/GameLoadingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->launchGameIfReady()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/xyron/game/launcher/SampActivity;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->handler:Landroid/os/Handler;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingError:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda7;-><init>(Lcom/xyron/game/launcher/GameLoadingActivity;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->launchGameRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/xyron/game/launcher/GameLoadingActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->releaseLoadingPresentation()V

    return-void
.end method

.method static synthetic access$200(Lcom/xyron/game/launcher/GameLoadingActivity;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->offlineResult:Z

    return p0
.end method

.method static synthetic access$300(Lcom/xyron/game/launcher/GameLoadingActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->showNativeRetry()V

    return-void
.end method

.method static synthetic access$400(Lcom/xyron/game/launcher/GameLoadingActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->updateLoadingError()V

    return-void
.end method

.method static synthetic access$500(Lcom/xyron/game/launcher/GameLoadingActivity;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->totalFiles:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/xyron/game/launcher/GameLoadingActivity;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->checkedFiles:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/xyron/game/launcher/GameLoadingActivity;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingStage:I

    return p0
.end method

.method static synthetic access$800(Lcom/xyron/game/launcher/GameLoadingActivity;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->gameStarted:Z

    return p0
.end method

.method static synthetic access$900(Lcom/xyron/game/launcher/GameLoadingActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->startServerCheck()V

    return-void
.end method

.method private launchGameIfReady()V
    .locals 4

    .line 303
    iget-boolean v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->foreground:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->readyToLaunch:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->gameStarted:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->redirectPendingData()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 307
    :cond_1
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSelectedServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->serverHost:Ljava/lang/String;

    iget v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->serverPort:I

    invoke-virtual {v0, v1, v2}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->matches(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 309
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->ensureSelectedServer(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->isFixedServerApplied(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 315
    iput-boolean v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->gameStarted:Z

    const/4 v1, 0x4

    .line 316
    iput v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingStage:I

    .line 317
    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->handoffToGame()V

    .line 318
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xyron/game/main/SAMP;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    const-string v2, "angra_server_index"

    .line 320
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSelectedServerIndex(Landroid/content/Context;)I

    move-result v3

    .line 319
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const-string v2, "server_ip"

    iget-object v3, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v2, "angra_character_server"

    iget-object v3, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v2, "server_port"

    iget v0, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    const-string v0, "nickname"

    iget-object v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000

    .line 325
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 326
    const-string v0, "native-launch"

    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/StartupDiagnostics;->stage(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->releaseLoadingPresentation()V

    .line 330
    invoke-virtual {p0, v1}, Lcom/xyron/game/launcher/GameLoadingActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, v0, v0}, Lcom/xyron/game/launcher/GameLoadingActivity;->overridePendingTransition(II)V

    .line 332
    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->finish()V

    return-void

    .line 311
    :cond_3
    :goto_0
    iget v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->attemptGeneration:I

    const-string v1, "O SERVIDOR MUDOU. VOLTE E ESCOLHA O SERVIDOR NOVAMENTE."

    invoke-direct {p0, v0, v1}, Lcom/xyron/game/launcher/GameLoadingActivity;->showOffline(ILjava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private onServerCheckFinished(I)V
    .locals 1

    .line 225
    iget v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->attemptGeneration:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->readyToLaunch:Z

    const/4 p1, 0x3

    .line 229
    iput p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingStage:I

    .line 230
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->status:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->status:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->scheduleGameLaunch()V

    :cond_1
    :goto_0
    return-void
.end method

.method private redirectPendingData()Z
    .locals 4

    .line 349
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->needsUpdate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 350
    :cond_0
    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->stopMusic()V

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xyron/game/launcher/UpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->GameDataUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    invoke-virtual {v1}, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasRequiredGameData(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "first_data_install"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/GameLoadingActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->finish()V

    return v2
.end method

.method private releaseLoadingPresentation()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->video:Lcom/xyron/game/launcher/ui/CropVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/launcher/ui/CropVideoView;->stopPlayback()V

    iput-object v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->video:Lcom/xyron/game/launcher/ui/CropVideoView;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingInterface:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 338
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 339
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingInterface:Landroid/webkit/WebView;

    const-string v2, "Player"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingInterface:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 341
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingInterface:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingInterface:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingInterface:Landroid/webkit/WebView;

    :cond_2
    const v0, 0x7f0a017f

    .line 344
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/GameLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 345
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private scheduleGameLaunch()V
    .locals 6

    .line 294
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->launchGameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 295
    iget-boolean v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->foreground:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->readyToLaunch:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->gameStarted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->attemptStartedAt:J

    sub-long/2addr v0, v2

    .line 299
    iget-object v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->launchGameRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private showNativeRetry()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->status:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->server:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->retry:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private showOffline(ILjava/lang/String;)V
    .locals 1

    .line 236
    iget v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->attemptGeneration:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 239
    iput-boolean p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->readyToLaunch:Z

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Launch blocked: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AngraLaunch"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 241
    iput-boolean p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->offlineResult:Z

    .line 242
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->spinner:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->status:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    const-string p1, "SEM CONEXAO COM A INTERNET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 245
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->status:Landroid/widget/TextView;

    const-string p2, "A SUA CONEXAO FOI PERDIDA, TENTE NOVAMENTE!"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->status:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_0
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->status:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingError:Ljava/lang/String;

    .line 250
    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->updateLoadingError()V

    .line 251
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingInterface:Landroid/webkit/WebView;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->showNativeRetry()V

    :cond_2
    :goto_1
    return-void
.end method

.method private startServerCheck()V
    .locals 6

    .line 154
    iget-boolean v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->readyToLaunch:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->gameStarted:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 155
    :cond_0
    iget v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->attemptGeneration:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->attemptGeneration:I

    const/4 v2, 0x0

    .line 156
    iput-boolean v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->readyToLaunch:Z

    .line 157
    iput-boolean v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->gameStarted:Z

    .line 158
    iput-boolean v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->offlineResult:Z

    .line 159
    iget-object v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->launchGameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-object v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->retry:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    iget-object v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->spinner:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->status:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    const-string v2, ""

    iput-object v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingError:Ljava/lang/String;

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->attemptStartedAt:J

    .line 165
    iput v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingStage:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->totalFiles:J

    iput-wide v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->checkedFiles:J

    .line 166
    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->updateLoadingError()V

    .line 167
    iget-object v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->preflightThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->serverHost:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->serverPort:I

    if-lez v1, :cond_4

    const v2, 0xffff

    if-le v1, v2, :cond_2

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 175
    const-string v1, "SEM CONEXAO COM A INTERNET"

    invoke-direct {p0, v0, v1}, Lcom/xyron/game/launcher/GameLoadingActivity;->showOffline(ILjava/lang/String;)V

    return-void

    .line 179
    :cond_3
    iget-object v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda6;-><init>(Lcom/xyron/game/launcher/GameLoadingActivity;I)V

    const-string v0, "samp-server-preflight"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->preflightThread:Ljava/lang/Thread;

    .line 221
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 171
    :cond_4
    :goto_0
    const-string v1, "ENDERECO DO SERVIDOR INVALIDO"

    invoke-direct {p0, v0, v1}, Lcom/xyron/game/launcher/GameLoadingActivity;->showOffline(ILjava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateLoadingError()V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingInterface:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.showFailure&&window.showFailure("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingError:Ljava/lang/String;

    .line 262
    invoke-static {v2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 261
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-xyron-game-launcher-GameLoadingActivity(Landroid/view/View;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->startServerCheck()V

    return-void
.end method

.method synthetic lambda$startServerCheck$1$com-xyron-game-launcher-GameLoadingActivity(JJ)V
    .locals 0

    .line 183
    iput-wide p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->checkedFiles:J

    iput-wide p3, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->totalFiles:J

    return-void
.end method

.method synthetic lambda$startServerCheck$2$com-xyron-game-launcher-GameLoadingActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->finish()V

    return-void
.end method

.method synthetic lambda$startServerCheck$3$com-xyron-game-launcher-GameLoadingActivity(ILjava/lang/Exception;)V
    .locals 1

    .line 187
    iget v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->attemptGeneration:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    const-string v0, "ARQUIVOS ALTERADOS OU INCOMPLETOS"

    invoke-direct {p0, p1, v0}, Lcom/xyron/game/launcher/GameLoadingActivity;->showOffline(ILjava/lang/String;)V

    .line 189
    new-instance p1, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    invoke-direct {p1, p0}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string v0, "Verifica\u00e7\u00e3o dos arquivos"

    invoke-virtual {p1, v0}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n\nRepare os arquivos oficiais para continuar. Seus dados pessoais foram preservados."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda8;-><init>(Lcom/xyron/game/launcher/GameLoadingActivity;)V

    .line 191
    const-string v0, "Voltar"

    invoke-virtual {p1, v0, p2}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$startServerCheck$4$com-xyron-game-launcher-GameLoadingActivity(ILjava/lang/String;)V
    .locals 1

    .line 214
    iget v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->attemptGeneration:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/xyron/game/launcher/GameLoadingActivity;->showOffline(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$startServerCheck$5$com-xyron-game-launcher-GameLoadingActivity(I)V
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->onServerCheckFinished(I)V

    return-void
.end method

.method synthetic lambda$startServerCheck$6$com-xyron-game-launcher-GameLoadingActivity(I)V
    .locals 6

    .line 181
    const-string v0, "AngraLaunch"

    const-string v1, "verify-data"

    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/StartupDiagnostics;->stage(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/launcher/GameLoadingActivity;)V

    invoke-static {v1, v2}, Lcom/xyron/game/launcher/util/GameIntegrity;->verify(Landroid/content/Context;Lcom/xyron/game/launcher/util/DataIntegrity$Progress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 195
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->attemptGeneration:I

    if-eq p1, v1, :cond_0

    goto :goto_3

    .line 200
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 201
    invoke-static {v1}, Lcom/xyron/game/launcher/util/GameDataCompatibility;->prepareForLaunch(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 204
    invoke-static {}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 203
    :goto_0
    invoke-static {v1, v3, v4}, Lcom/xyron/game/launcher/util/EngineCacheFiles;->prepare(Ljava/io/File;Ljava/io/File;Z)V

    .line 205
    invoke-static {p0}, Lcom/xyron/game/launcher/util/CollisionArchiveCache;->prepare(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 208
    :goto_1
    const-string v2, "Native data preparation failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const-string v2, "N\u00e3o foi poss\u00edvel preparar os arquivos do jogo. Tente novamente."

    .line 211
    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->attemptGeneration:I

    if-eq p1, v0, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    .line 214
    new-instance v0, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, v2}, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/launcher/GameLoadingActivity;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/GameLoadingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 219
    :cond_4
    new-instance v0, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/launcher/GameLoadingActivity;I)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/GameLoadingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_3
    return-void

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    .line 185
    :goto_4
    const-string v2, "Data verification failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    new-instance v0, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, v1}, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/launcher/GameLoadingActivity;ILjava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/GameLoadingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Lcom/xyron/game/launcher/SampActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->index(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "Em breve"

    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->finish()V

    return-void

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->redirectPendingData()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const p1, 0x7f0d0051

    .line 57
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->setContentView(I)V

    const p1, 0x7f0a0185

    .line 59
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xyron/game/launcher/ui/CropVideoView;

    iput-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->video:Lcom/xyron/game/launcher/ui/CropVideoView;

    .line 60
    const/16 v0, 0x8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a0183

    .line 61
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->spinner:Landroid/view/View;

    const p1, 0x7f0a0184

    .line 62
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->status:Landroid/widget/TextView;

    const p1, 0x7f0a0182

    .line 63
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->server:Landroid/widget/TextView;

    const p1, 0x7f0a0181

    .line 64
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->retry:Landroid/widget/Button;

    .line 65
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->spinner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->status:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->server:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0a0180

    .line 68
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingInterface:Landroid/webkit/WebView;

    .line 69
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 70
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingInterface:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 71
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingInterface:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 72
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingInterface:Landroid/webkit/WebView;

    new-instance v1, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;-><init>(Lcom/xyron/game/launcher/GameLoadingActivity;Lcom/xyron/game/launcher/GameLoadingActivity$1;)V

    const-string v2, "Player"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingInterface:Landroid/webkit/WebView;

    new-instance v1, Lcom/xyron/game/launcher/GameLoadingActivity$1;

    invoke-direct {v1, p0}, Lcom/xyron/game/launcher/GameLoadingActivity$1;-><init>(Lcom/xyron/game/launcher/GameLoadingActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 93
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->loadingInterface:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/interfaces/loading/index.html"

    invoke-static {p1, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->beginLoading(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 97
    const-string v1, ""

    if-nez p1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    const-string v2, "server_ip"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->serverHost:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_1

    .line 98
    :cond_3
    const-string v2, "server_port"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->serverPort:I

    if-nez p1, :cond_4

    goto :goto_2

    .line 99
    :cond_4
    const-string v0, "nickname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->nickname:Ljava/lang/String;

    .line 101
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSelectedServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 102
    invoke-virtual {p1}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    iget-object v0, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->serverHost:Ljava/lang/String;

    .line 107
    iget v0, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    iput v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->serverPort:I

    :cond_5
    if-eqz p1, :cond_6

    .line 109
    iget-object v0, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->name:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 110
    iget-object p1, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->name:Ljava/lang/String;

    goto :goto_3

    .line 111
    :cond_6
    const-string p1, "Servidor selecionado"

    .line 112
    :goto_3
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->server:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->retry:Landroid/widget/Button;

    new-instance v0, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/launcher/GameLoadingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->startServerCheck()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 142
    iget v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->attemptGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->attemptGeneration:I

    .line 143
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->preflightThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->video:Lcom/xyron/game/launcher/ui/CropVideoView;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/xyron/game/launcher/ui/CropVideoView;->stopPlayback()V

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->releaseLoadingPresentation()V

    .line 149
    iget-boolean v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->gameStarted:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->pauseMusic()V

    .line 150
    :cond_2
    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->foreground:Z

    .line 132
    iget-boolean v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->gameStarted:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->pauseMusic()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->launchGameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->video:Lcom/xyron/game/launcher/ui/CropVideoView;

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Lcom/xyron/game/launcher/ui/CropVideoView;->pause()V

    .line 137
    :cond_1
    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onResume()V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->foreground:Z

    .line 122
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->resumeMusic(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;->video:Lcom/xyron/game/launcher/ui/CropVideoView;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/xyron/game/launcher/ui/CropVideoView;->start()V

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/launcher/GameLoadingActivity;->scheduleGameLaunch()V

    return-void
.end method
