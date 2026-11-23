.class final Lcom/xyron/game/main/RoleplayUI;
.super Ljava/lang/Object;
.source "RoleplayUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/RoleplayUI$Bridge;
    }
.end annotation


# instance fields
.field private final game:Lcom/xyron/game/main/SAMP;

.field private hood:Landroid/webkit/WebView;

.field private hoodActive:Z

.field private hoodReady:Z

.field private lock:Landroid/webkit/WebView;

.field private lockId:I

.field private lockReady:Z

.field private pending:Lorg/json/JSONObject;

.field private purgeAudio:Landroid/media/MediaPlayer;

.field private final query:Ljava/lang/Runnable;

.field private sequence:I


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    new-instance v0, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->query:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/main/RoleplayUI;)Lcom/xyron/game/main/SAMP;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xyron/game/main/RoleplayUI;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/xyron/game/main/RoleplayUI;->lockId:I

    return p0
.end method

.method static synthetic access$102(Lcom/xyron/game/main/RoleplayUI;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/xyron/game/main/RoleplayUI;->hoodReady:Z

    return p1
.end method

.method static synthetic access$1104(Lcom/xyron/game/main/RoleplayUI;)I
    .locals 1

    .line 13
    iget v0, p0, Lcom/xyron/game/main/RoleplayUI;->sequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xyron/game/main/RoleplayUI;->sequence:I

    return v0
.end method

.method static synthetic access$1200(Lcom/xyron/game/main/RoleplayUI;)Ljava/lang/Runnable;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/xyron/game/main/RoleplayUI;->query:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xyron/game/main/RoleplayUI;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xyron/game/main/RoleplayUI;->publishHood()V

    return-void
.end method

.method static synthetic access$302(Lcom/xyron/game/main/RoleplayUI;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/xyron/game/main/RoleplayUI;->lockReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/xyron/game/main/RoleplayUI;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xyron/game/main/RoleplayUI;->publishLock()V

    return-void
.end method

.method static synthetic access$500(Lcom/xyron/game/main/RoleplayUI;)Landroid/webkit/WebView;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/xyron/game/main/RoleplayUI;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xyron/game/main/RoleplayUI;Landroid/webkit/WebView;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/xyron/game/main/RoleplayUI;->detach(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xyron/game/main/RoleplayUI;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/xyron/game/main/RoleplayUI;->hoodActive:Z

    return p0
.end method

.method static synthetic access$800(Lcom/xyron/game/main/RoleplayUI;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xyron/game/main/RoleplayUI;->showHood()V

    return-void
.end method

.method static synthetic access$900(Lcom/xyron/game/main/RoleplayUI;)Landroid/webkit/WebView;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$902(Lcom/xyron/game/main/RoleplayUI;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    return-object p1
.end method

.method private client(Z)Landroid/webkit/WebViewClient;
    .locals 1

    .line 21
    new-instance v0, Lcom/xyron/game/main/RoleplayUI$1;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/RoleplayUI$1;-><init>(Lcom/xyron/game/main/RoleplayUI;Z)V

    return-object v0
.end method

.method private closeLock(Z)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xyron/game/main/RoleplayUI;->lockId:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/xyron/game/main/RoleplayUI;->back()Z

    :cond_2
    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    invoke-direct {p0, p1}, Lcom/xyron/game/main/RoleplayUI;->detach(Landroid/webkit/WebView;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    iput-boolean v1, p0, Lcom/xyron/game/main/RoleplayUI;->lockReady:Z

    iput-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->pending:Lorg/json/JSONObject;

    iput v1, p0, Lcom/xyron/game/main/RoleplayUI;->lockId:I

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1, v1}, Lcom/xyron/game/main/SAMP;->setAngraAuthOverlay(Z)V

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1, v1}, Lcom/xyron/game/main/SAMP;->setAngraSystemPanelVisible(Z)V

    :cond_3
    return-void
.end method

.method private detach(Landroid/webkit/WebView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private hideHood()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/RoleplayUI;->publishHood()V

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xyron/game/main/RoleplayUI;->hoodReady:Z

    new-instance v1, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/RoleplayUI;Landroid/webkit/WebView;)V

    const-wide/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/xyron/game/main/SAMP;)V
    .locals 1

    .line 20
    const-string v0, "rp-state"

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    return-void
.end method

.method private publishHood()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/xyron/game/main/RoleplayUI;->hoodReady:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.AngraCapuz&&window.AngraCapuz.definir("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/xyron/game/main/RoleplayUI;->hoodActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private publishLock()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/xyron/game/main/RoleplayUI;->lockReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xyron/game/main/RoleplayUI;->pending:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.AngraHost&&window.AngraHost.receive("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xyron/game/main/RoleplayUI;->pending:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private setPurgeAudio(Z)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->purgeAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->purgeAudio:Landroid/media/MediaPlayer;

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    const v0, 0x7f100001

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->purgeAudio:Landroid/media/MediaPlayer;

    if-nez p1, :cond_3

    return-void

    .line 75
    :cond_3
    new-instance v0, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/RoleplayUI;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 78
    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->purgeAudio:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/RoleplayUI;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 83
    :try_start_0
    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->purgeAudio:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/xyron/game/main/RoleplayUI;->setPurgeAudio(Z)V

    :goto_0
    return-void
.end method

.method private showHood()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/xyron/game/main/RoleplayUI$2;

    iget-object v1, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v0, p0, v1}, Lcom/xyron/game/main/RoleplayUI$2;-><init>(Lcom/xyron/game/main/RoleplayUI;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setClickable(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    const v1, 0x461c4000    # 10000.0f

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setElevation(F)V

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    invoke-direct {p0, v1}, Lcom/xyron/game/main/RoleplayUI;->client(Z)Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/interfaces/capuz/index.html?hidden=1"

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/RoleplayUI;->publishHood()V

    return-void
.end method


# virtual methods
.method back()Z
    .locals 6

    .line 61
    iget v0, p0, Lcom/xyron/game/main/RoleplayUI;->lockId:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rp-lock|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xyron/game/main/RoleplayUI;->lockId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xyron/game/main/RoleplayUI;->sequence:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/xyron/game/main/RoleplayUI;->sequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|2|0|0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/RoleplayUI;->query:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4b0

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$hideHood$2$com-xyron-game-main-RoleplayUI(Landroid/webkit/WebView;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/xyron/game/main/RoleplayUI;->detach(Landroid/webkit/WebView;)V

    return-void
.end method

.method synthetic lambda$receive$1$com-xyron-game-main-RoleplayUI(I)V
    .locals 1

    .line 37
    iget v0, p0, Lcom/xyron/game/main/RoleplayUI;->lockId:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/xyron/game/main/RoleplayUI;->closeLock(Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setPurgeAudio$3$com-xyron-game-main-RoleplayUI(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->purgeAudio:Landroid/media/MediaPlayer;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/xyron/game/main/RoleplayUI;->setPurgeAudio(Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setPurgeAudio$4$com-xyron-game-main-RoleplayUI(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 79
    iget-object p2, p0, Lcom/xyron/game/main/RoleplayUI;->purgeAudio:Landroid/media/MediaPlayer;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/xyron/game/main/RoleplayUI;->setPurgeAudio(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method receive(Lorg/json/JSONObject;)V
    .locals 6

    .line 32
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "purgeAudio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "active"

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/RoleplayUI;->setPurgeAudio(Z)V

    return-void

    .line 34
    :cond_0
    const-string v1, "rpHood"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xyron/game/main/RoleplayUI;->hoodActive:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/main/RoleplayUI;->showHood()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/main/RoleplayUI;->hideHood()V

    :goto_0
    return-void

    .line 35
    :cond_2
    const-string v1, "rpLockEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x1020002

    const/4 v3, 0x0

    const-string v4, "id"

    if-eqz v1, :cond_6

    .line 36
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/xyron/game/main/RoleplayUI;->lockId:I

    if-ne v0, v1, :cond_5

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    iput-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->pending:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/xyron/game/main/RoleplayUI;->publishLock()V

    iget p1, p0, Lcom/xyron/game/main/RoleplayUI;->lockId:I

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v2}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/main/RoleplayUI;I)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 38
    :cond_4
    invoke-direct {p0, v3}, Lcom/xyron/game/main/RoleplayUI;->closeLock(Z)V

    :cond_5
    :goto_1
    return-void

    .line 41
    :cond_6
    const-string v1, "rpLock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    goto/16 :goto_2

    .line 42
    :cond_7
    iget v0, p0, Lcom/xyron/game/main/RoleplayUI;->lockId:I

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-eq v0, v5, :cond_8

    invoke-direct {p0, v3}, Lcom/xyron/game/main/RoleplayUI;->closeLock(Z)V

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/RoleplayUI;->lockId:I

    iput v3, p0, Lcom/xyron/game/main/RoleplayUI;->sequence:I

    .line 43
    :cond_8
    iput-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->pending:Lorg/json/JSONObject;

    .line 44
    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    if-nez p1, :cond_9

    .line 45
    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlay()V

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlay()V

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlay()V

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1, v1}, Lcom/xyron/game/main/SAMP;->setAngraAuthOverlay(Z)V

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1, v1}, Lcom/xyron/game/main/SAMP;->setAngraSystemPanelVisible(Z)V

    .line 46
    new-instance p1, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    new-instance v0, Lcom/xyron/game/main/RoleplayUI$Bridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xyron/game/main/RoleplayUI$Bridge;-><init>(Lcom/xyron/game/main/RoleplayUI;Lcom/xyron/game/main/RoleplayUI$1;)V

    const-string v1, "StarsBridge"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    invoke-direct {p0, v3}, Lcom/xyron/game/main/RoleplayUI;->client(Z)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 47
    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1, v2}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    const-string v0, "file:///android_asset/interfaces/lockpick/index.html?transparent=1"

    invoke-static {p1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xyron/game/main/RoleplayUI;->lock:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 49
    :cond_9
    invoke-direct {p0}, Lcom/xyron/game/main/RoleplayUI;->publishLock()V

    :cond_a
    :goto_2
    return-void
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0}, Lcom/xyron/game/main/RoleplayUI;->setPurgeAudio(Z)V

    invoke-direct {p0, v0}, Lcom/xyron/game/main/RoleplayUI;->closeLock(Z)V

    iput-boolean v0, p0, Lcom/xyron/game/main/RoleplayUI;->hoodActive:Z

    iget-object v1, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    invoke-direct {p0, v1}, Lcom/xyron/game/main/RoleplayUI;->detach(Landroid/webkit/WebView;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xyron/game/main/RoleplayUI;->hood:Landroid/webkit/WebView;

    iput-boolean v0, p0, Lcom/xyron/game/main/RoleplayUI;->hoodReady:Z

    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI;->game:Lcom/xyron/game/main/SAMP;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/RoleplayUI;->query:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
