.class public Lcom/xyron/game/launcher/SettingsActivity;
.super Lcom/xyron/game/launcher/SampActivity;
.source "SettingsActivity.java"


# static fields
.field private static final SUPPORT_URL:Ljava/lang/String; = "about:blank"


# direct methods
.method public static synthetic $r8$lambda$ImT0-slZyDyfLmBzRzS5IVO2-g4(Lcom/xyron/game/launcher/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/launcher/SettingsActivity;->clearAccount()V

    return-void
.end method

.method public static synthetic $r8$lambda$O_xLiUYi443yKJe-KYxPdpR40f0(Lcom/xyron/game/launcher/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/launcher/SettingsActivity;->shareLogs()V

    return-void
.end method

.method public static synthetic $r8$lambda$wGDMs6RlK03v20Cn5glQXS0jgCI(Lcom/xyron/game/launcher/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/launcher/SettingsActivity;->openSupport()V

    return-void
.end method

.method public static synthetic $r8$lambda$yZienNOYeKoqUBWT0BdxrMY-oNo(Lcom/xyron/game/launcher/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/launcher/SettingsActivity;->reinstallGameData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xyron/game/launcher/SampActivity;-><init>()V

    return-void
.end method

.method private clearAccount()V
    .locals 4

    .line 41
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v1, Ljava/io/File;

    const-string v2, "SAMP/settings.ini"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    :try_start_0
    new-instance v0, Lorg/ini4j/Wini;

    invoke-direct {v0, v1}, Lorg/ini4j/Wini;-><init>(Ljava/io/File;)V

    .line 46
    const-string v1, "client"

    const-string v2, "name"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lorg/ini4j/Wini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    invoke-virtual {v0}, Lorg/ini4j/Wini;->store()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :catchall_0
    :cond_0
    const-string v0, "Nome da conta removido."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private openSupport()V
    .locals 3

    .line 74
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "about:blank"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    const-string v0, "Nao foi possivel abrir o suporte."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private reinstallGameData()V
    .locals 3

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xyron/game/launcher/UpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->FullReinstall:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    invoke-virtual {v1}, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "force_reinstall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private shareLogs()V
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda6;-><init>(Lcom/xyron/game/launcher/SettingsActivity;)V

    const-string v2, "AngraSupportExport"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method synthetic lambda$shareLogs$0$com-xyron-game-launcher-SettingsActivity(Ljava/io/File;)V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/xyron/game/launcher/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xyron/game/launcher/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 64
    const-string v1, "Angra logs"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 65
    const-string p1, "Enviar logs"

    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    const-string p1, "Nao foi possivel compartilhar o log."

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$shareLogs$1$com-xyron-game-launcher-SettingsActivity()V
    .locals 2

    .line 68
    const-string v0, "Nao foi possivel compartilhar o log."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$shareLogs$2$com-xyron-game-launcher-SettingsActivity()V
    .locals 2

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xyron/game/launcher/util/DiagnosticLogBundle;->create(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/launcher/SettingsActivity;Ljava/io/File;)V

    invoke-virtual {p0, v1}, Lcom/xyron/game/launcher/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    new-instance v0, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/launcher/SettingsActivity;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 25
    invoke-super {p0, p1}, Lcom/xyron/game/launcher/SampActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->startMusic(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/xyron/game/launcher/AngraAccountScreen;

    new-instance v3, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/launcher/SettingsActivity;)V

    new-instance v4, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/launcher/SettingsActivity;)V

    new-instance v5, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/launcher/SettingsActivity;)V

    new-instance v7, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0}, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/launcher/SettingsActivity;)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/xyron/game/launcher/AngraAccountScreen;-><init>(Lcom/xyron/game/launcher/SettingsActivity;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
