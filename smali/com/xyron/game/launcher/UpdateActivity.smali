.class public Lcom/xyron/game/launcher/UpdateActivity;
.super Lcom/xyron/game/launcher/SampActivity;
.source "UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;,
        Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;,
        Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;,
        Lcom/xyron/game/launcher/UpdateActivity$eGPUType;,
        Lcom/xyron/game/launcher/UpdateActivity$GameStatus;
    }
.end annotation


# static fields
.field private static final DATA_VARIANT_FULL:Ljava/lang/String; = "full"

.field private static final DATA_VARIANT_LITE:Ljava/lang/String; = "lite"


# instance fields
.field isBind:Z

.field isBindingService:Z

.field private mDownloadVideo:Lcom/xyron/game/launcher/ui/CropVideoView;

.field private mForceReinstall:Z

.field private mGameApk:Ljava/io/File;

.field public mGpuType:I

.field mIsStartingUpdate:Z

.field public mMessenger:Landroid/os/Messenger;

.field mPendingStartUpdate:Z

.field private mSelectedDataVariantId:Ljava/lang/String;

.field public mService:Landroid/os/Messenger;

.field mStartMessageSent:Z

.field private mUpdateMode:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private transferFailed:Z

.field private transferPhase:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

.field private final transferStats:Lcom/xyron/game/launcher/util/TransferProgress;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/xyron/game/launcher/SampActivity;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;-><init>(Lcom/xyron/game/launcher/UpdateActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->isBind:Z

    .line 47
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->isBindingService:Z

    .line 48
    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    iput-object v1, p0, Lcom/xyron/game/launcher/UpdateActivity;->mUpdateMode:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    .line 51
    const-string v1, "lite"

    iput-object v1, p0, Lcom/xyron/game/launcher/UpdateActivity;->mSelectedDataVariantId:Ljava/lang/String;

    .line 57
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mIsStartingUpdate:Z

    .line 58
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mPendingStartUpdate:Z

    .line 59
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mStartMessageSent:Z

    .line 60
    new-instance v0, Lcom/xyron/game/launcher/util/TransferProgress;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/TransferProgress;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->transferStats:Lcom/xyron/game/launcher/util/TransferProgress;

    .line 446
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$2;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/UpdateActivity$2;-><init>(Lcom/xyron/game/launcher/UpdateActivity;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/xyron/game/launcher/UpdateActivity;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/xyron/game/launcher/UpdateActivity;->transferFailed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xyron/game/launcher/UpdateActivity;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateActivity;->downloadTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xyron/game/launcher/UpdateActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateActivity;->sendGameDataUpdateStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/xyron/game/launcher/UpdateActivity;)Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xyron/game/launcher/UpdateActivity;->transferPhase:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xyron/game/launcher/UpdateActivity;Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity;->transferPhase:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xyron/game/launcher/UpdateActivity;)Lcom/xyron/game/launcher/util/TransferProgress;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xyron/game/launcher/UpdateActivity;->transferStats:Lcom/xyron/game/launcher/util/TransferProgress;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xyron/game/launcher/UpdateActivity;JJ)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xyron/game/launcher/UpdateActivity;->updateTransferLabels(JJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/xyron/game/launcher/UpdateActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateActivity;->returnToHome()V

    return-void
.end method

.method static synthetic access$600(Lcom/xyron/game/launcher/UpdateActivity;)Ljava/io/File;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mGameApk:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$602(Lcom/xyron/game/launcher/UpdateActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity;->mGameApk:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$700(Lcom/xyron/game/launcher/UpdateActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xyron/game/launcher/UpdateActivity;->startDataVariantUpdate(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/xyron/game/launcher/UpdateActivity;)Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mUpdateMode:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xyron/game/launcher/UpdateActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateActivity;->requestGameDataUpdateStart()V

    return-void
.end method

.method private bindDataVariantButton(ILjava/lang/String;)V
    .locals 1

    .line 289
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 290
    new-instance v0, Lcom/xyron/game/launcher/util/ButtonAnimator;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/launcher/util/ButtonAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 291
    new-instance v0, Lcom/xyron/game/launcher/UpdateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/xyron/game/launcher/UpdateActivity$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/launcher/UpdateActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private downloadTitle()Ljava/lang/String;
    .locals 3

    .line 335
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "first_data_install"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "Baixando arquivos do Angra"

    goto :goto_0

    :cond_0
    const-string v0, "Baixando atualiza\u00e7\u00e3o dos arquivos!"

    :goto_0
    return-object v0
.end method

.method private getSelectedVariantLabel()Ljava/lang/String;
    .locals 2

    .line 331
    const-string v0, "full"

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateActivity;->mSelectedDataVariantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Full"

    goto :goto_0

    :cond_0
    const-string v0, "Lite"

    :goto_0
    return-object v0
.end method

.method private readUpdateMode()V
    .locals 3

    .line 260
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "force_reinstall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mForceReinstall:Z

    .line 261
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 268
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->valueOf(Ljava/lang/String;)Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mUpdateMode:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mUpdateMode:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    :goto_0
    return-void

    .line 263
    :cond_1
    :goto_1
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    iput-object v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mUpdateMode:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    return-void
.end method

.method private requestGameDataUpdateStart()V
    .locals 3

    .line 340
    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mPendingStartUpdate:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mStartMessageSent:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mGpuType:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mService:Landroid/os/Messenger;

    if-nez v0, :cond_2

    .line 345
    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->isBindingService:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->isBindingService:Z

    .line 347
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xyron/game/launcher/UpdateService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v0}, Lcom/xyron/game/launcher/UpdateActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    return-void

    .line 352
    :cond_2
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateActivity;->sendGameDataUpdateStart()V

    :cond_3
    :goto_0
    return-void
.end method

.method private returnToHome()V
    .locals 2

    .line 442
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xyron/game/launcher/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateActivity;->startActivity(Landroid/content/Intent;)V

    .line 443
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateActivity;->finish()V

    return-void
.end method

.method private selectDataVariant(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 295
    invoke-direct {p0, p1, v0}, Lcom/xyron/game/launcher/UpdateActivity;->startDataVariantUpdate(Ljava/lang/String;Z)V

    return-void
.end method

.method private sendGameDataUpdateStart()V
    .locals 4

    .line 356
    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mPendingStartUpdate:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mStartMessageSent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mGpuType:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 360
    move-object v1, v0

    check-cast v1, Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gputype"

    iget v3, p0, Lcom/xyron/game/launcher/UpdateActivity;->mGpuType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data_variant"

    iget-object v3, p0, Lcom/xyron/game/launcher/UpdateActivity;->mSelectedDataVariantId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "force_reinstall"

    iget-boolean v3, p0, Lcom/xyron/game/launcher/UpdateActivity;->mForceReinstall:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mStartMessageSent:Z

    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mPendingStartUpdate:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 370
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupDataVariantChooser()V
    .locals 5

    const v0, 0x7f0a00f8

    .line 275
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03b5

    .line 276
    invoke-virtual {p0, v1}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 277
    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateActivity;->mUpdateMode:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    sget-object v3, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->GameDataUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateActivity;->mUpdateMode:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    sget-object v3, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->FullReinstall:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 283
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 279
    :cond_1
    :goto_0
    const-string v0, "lite"

    invoke-direct {p0, v0, v4}, Lcom/xyron/game/launcher/UpdateActivity;->startDataVariantUpdate(Ljava/lang/String;Z)V

    return-void
.end method

.method private startDataVariantUpdate(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->transferFailed:Z

    .line 300
    invoke-static {p1}, Lcom/xyron/game/launcher/util/DataVariantPreferences;->normalizeVariantId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 301
    invoke-static {p1}, Lcom/xyron/game/launcher/util/DataVariantPreferences;->isSupportedVariantId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    const-string p1, "lite"

    .line 305
    :cond_0
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity;->mSelectedDataVariantId:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 307
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/DataVariantPreferences;->saveSelectedVariantId(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    .line 310
    iput-boolean p1, p0, Lcom/xyron/game/launcher/UpdateActivity;->mPendingStartUpdate:Z

    .line 311
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mStartMessageSent:Z

    .line 312
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mIsStartingUpdate:Z

    const p1, 0x7f0a00f8

    .line 314
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a03b5

    .line 315
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a01f6

    .line 316
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 317
    iget-boolean p2, p0, Lcom/xyron/game/launcher/UpdateActivity;->mForceReinstall:Z

    if-eqz p2, :cond_2

    const-string p2, "Reinstalando arquivos do jogo"

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateActivity;->downloadTitle()Ljava/lang/String;

    move-result-object p2

    .line 316
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a016c

    .line 318
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a016b

    .line 319
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "0 MB / 0 MB"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a016d

    .line 320
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "0%"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a021a

    .line 321
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "Calculando..."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a013e

    .line 322
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 323
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 324
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 325
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity;->transferStats:Lcom/xyron/game/launcher/util/TransferProgress;

    invoke-virtual {p1}, Lcom/xyron/game/launcher/util/TransferProgress;->reset()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity;->transferPhase:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    .line 327
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateActivity;->requestGameDataUpdateStart()V

    return-void
.end method

.method private updateTransferLabels(JJ)V
    .locals 4

    const v0, 0x7f0a016b

    .line 228
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/xyron/game/launcher/util/TransferProgress;->mb(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MB / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/xyron/game/launcher/util/TransferProgress;->mb(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " MB"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "Preparando arquivos..."

    .line 228
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a021a

    .line 230
    invoke-virtual {p0, p3}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 231
    iget-object p4, p0, Lcom/xyron/game/launcher/UpdateActivity;->transferStats:Lcom/xyron/game/launcher/util/TransferProgress;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p4, p1, p2, v0, v1}, Lcom/xyron/game/launcher/util/TransferProgress;->speed(JJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public changeTheme(Z)V
    .locals 2

    const p1, 0x7f0a013e

    .line 93
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 94
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic lambda$bindDataVariantButton$0$com-xyron-game-launcher-UpdateActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->selectDataVariant(Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 248
    invoke-super {p0, p1, p2, p3}, Lcom/xyron/game/launcher/SampActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult -> code quest: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", resultCode: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UpdateActivity"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 251
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity;->mGameApk:Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity;->mGameApk:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 254
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/xyron/game/launcher/SplashActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->startActivity(Landroid/content/Intent;)V

    .line 255
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 377
    invoke-super {p0, p1}, Lcom/xyron/game/launcher/SampActivity;->onCreate(Landroid/os/Bundle;)V

    .line 380
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d0020

    .line 382
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->setContentView(I)V

    .line 383
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 384
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->beginDataInstallation(Landroid/content/Context;)V

    const p1, 0x7f0a013f

    .line 385
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xyron/game/launcher/ui/CropVideoView;

    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity;->mDownloadVideo:Lcom/xyron/game/launcher/ui/CropVideoView;

    .line 386
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/LauncherMedia;->bindLoopingVideo(Landroid/app/Activity;Landroid/widget/VideoView;)V

    const/4 p1, 0x6

    .line 389
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->setRequestedOrientation(I)V

    const/4 p1, 0x2

    .line 393
    iput p1, p0, Lcom/xyron/game/launcher/UpdateActivity;->mGpuType:I

    .line 394
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateActivity;->readUpdateMode()V

    .line 395
    invoke-direct {p0}, Lcom/xyron/game/launcher/UpdateActivity;->setupDataVariantChooser()V

    .line 397
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 398
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateActivity;->changeTheme(Z)V

    .line 400
    new-instance p1, Lcom/xyron/game/launcher/UpdateActivity$1;

    invoke-direct {p1, p0}, Lcom/xyron/game/launcher/UpdateActivity$1;-><init>(Lcom/xyron/game/launcher/UpdateActivity;)V

    const v0, 0x7f0a018e

    .line 435
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 436
    new-instance v1, Landroid/opengl/GLSurfaceView;

    invoke-direct {v1, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 437
    invoke-virtual {v1, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 438
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mDownloadVideo:Lcom/xyron/game/launcher/ui/CropVideoView;

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/xyron/game/launcher/ui/CropVideoView;->stopPlayback()V

    .line 471
    :cond_0
    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onDestroy()V

    .line 472
    iget-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->isBind:Z

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/UpdateActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 474
    iput-boolean v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->isBind:Z

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mDownloadVideo:Lcom/xyron/game/launcher/ui/CropVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/launcher/ui/CropVideoView;->pause()V

    :cond_0
    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 463
    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onResume()V

    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateActivity;->mDownloadVideo:Lcom/xyron/game/launcher/ui/CropVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/launcher/ui/CropVideoView;->start()V

    :cond_0
    return-void
.end method

.method requestInstallGame()V
    .locals 3

    .line 236
    const-string/jumbo v0, "x1y2z"

    const-string v1, "request install game"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateActivity;->mGameApk:Ljava/io/File;

    invoke-static {v0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 240
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 241
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 242
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v1}, Lcom/xyron/game/launcher/UpdateActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
