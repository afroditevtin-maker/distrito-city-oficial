.class public Lcom/xyron/game/launcher/SampActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SampActivity.java"


# instance fields
.field isDark:Z

.field public mPref:Landroid/content/SharedPreferences;

.field mToast:Landroid/widget/Toast;


# direct methods
.method public static synthetic $r8$lambda$ER4LgR_2wctWHNZxF3TYfCVRCQw(Lcom/xyron/game/launcher/SampActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/launcher/SampActivity;->applyFullScreen()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private applyFullScreen()V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/xyron/game/launcher/SampActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 75
    invoke-virtual {p0}, Lcom/xyron/game/launcher/SampActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 78
    invoke-static {v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsetsController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m$2()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;I)V

    const/4 v2, 0x2

    .line 83
    invoke-static {v1, v2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/WindowInsetsController;I)V

    :cond_0
    const/16 v1, 0x1706

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public static putSettingSwitchToPref(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 0

    .line 104
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 105
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method isNetworkConnected()Z
    .locals 2

    .line 110
    const-string v0, "connectivity"

    .line 111
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/SampActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 113
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method synthetic lambda$onCreate$0$com-xyron-game-launcher-SampActivity(I)V
    .locals 1

    .line 0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/SampActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/xyron/game/launcher/SampActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/SampActivity$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/launcher/SampActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onContentChanged()V
    .locals 6

    .line 30
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onContentChanged()V

    const v0, 0x7f0a017f

    const v1, 0x7f0a013d

    const v2, 0x7f0a020f

    const v3, 0x7f0a019b

    .line 31
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 32
    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    :goto_0
    const/4 v2, 0x4

    if-ge v3, v2, :cond_1

    .line 34
    aget v2, v0, v3

    invoke-virtual {p0, v2}, Lcom/xyron/game/launcher/SampActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 35
    instance-of v4, v2, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    check-cast v2, Landroid/widget/ImageView;

    new-instance v4, Lcom/xyron/game/launcher/util/AngraScene;

    aget v5, v1, v3

    invoke-direct {v4, p0, v5}, Lcom/xyron/game/launcher/util/AngraScene;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x1020002

    .line 37
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/SampActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->attach(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->afterUpdate(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lcom/xyron/game/launcher/SampActivity;->applyFullScreen()V

    .line 54
    invoke-virtual {p0}, Lcom/xyron/game/launcher/SampActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/xyron/game/launcher/SampActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/SampActivity$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/launcher/SampActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 60
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/SampActivity;->mPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 98
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    invoke-direct {p0}, Lcom/xyron/game/launcher/SampActivity;->applyFullScreen()V

    const v0, 0x1020002

    .line 99
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/SampActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->apply(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 120
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/xyron/game/launcher/SampActivity;->applyFullScreen()V

    :cond_0
    return-void
.end method
