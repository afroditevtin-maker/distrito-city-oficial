.class public Lcom/xyron/game/launcher/AngraApplication;
.super Landroid/app/Application;
.source "AngraApplication.java"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final pauseMusic:Ljava/lang/Runnable;

.field private visibleLauncherActivities:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/AngraApplication;->handler:Landroid/os/Handler;

    .line 15
    new-instance v0, Lcom/xyron/game/launcher/AngraApplication$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/AngraApplication$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/launcher/AngraApplication;)V

    iput-object v0, p0, Lcom/xyron/game/launcher/AngraApplication;->pauseMusic:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)Z
    .locals 0

    .line 12
    invoke-static {p0}, Lcom/xyron/game/launcher/AngraApplication;->isLauncher(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/xyron/game/launcher/AngraApplication;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/xyron/game/launcher/AngraApplication;->visibleLauncherActivities:I

    return p0
.end method

.method static synthetic access$102(Lcom/xyron/game/launcher/AngraApplication;I)I
    .locals 0

    .line 12
    iput p1, p0, Lcom/xyron/game/launcher/AngraApplication;->visibleLauncherActivities:I

    return p1
.end method

.method static synthetic access$108(Lcom/xyron/game/launcher/AngraApplication;)I
    .locals 2

    .line 12
    iget v0, p0, Lcom/xyron/game/launcher/AngraApplication;->visibleLauncherActivities:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xyron/game/launcher/AngraApplication;->visibleLauncherActivities:I

    return v0
.end method

.method static synthetic access$200(Lcom/xyron/game/launcher/AngraApplication;)Ljava/lang/Runnable;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/xyron/game/launcher/AngraApplication;->pauseMusic:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xyron/game/launcher/AngraApplication;)Landroid/os/Handler;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/xyron/game/launcher/AngraApplication;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private static isLauncher(Landroid/app/Activity;)Z
    .locals 1

    .line 48
    instance-of v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/xyron/game/launcher/UpdateActivity;

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


# virtual methods
.method synthetic lambda$new$0$com-xyron-game-launcher-AngraApplication()V
    .locals 1

    .line 16
    iget v0, p0, Lcom/xyron/game/launcher/AngraApplication;->visibleLauncherActivities:I

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->pauseMusic()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 20
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    .line 21
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 22
    new-instance v0, Lcom/xyron/game/launcher/AngraApplication$1;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/AngraApplication$1;-><init>(Lcom/xyron/game/launcher/AngraApplication;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/AngraApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 57
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 58
    invoke-static {}, Lcom/xyron/game/security/SealedUi;->trimMemory()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 54
    invoke-static {}, Lcom/xyron/game/security/SealedUi;->trimMemory()V

    :cond_0
    return-void
.end method
