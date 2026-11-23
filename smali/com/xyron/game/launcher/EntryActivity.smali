.class public Lcom/xyron/game/launcher/EntryActivity;
.super Lcom/xyron/game/launcher/SampActivity;
.source "EntryActivity.java"


# static fields
.field public static final EXTRA_FORCE_UPDATE_DATA:Ljava/lang/String; = "force_update_data"

.field public static final EXTRA_INITIAL_TAB:Ljava/lang/String; = "initial_tab"

.field private static final EXTRA_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final EXTRA_SERVER_IP:Ljava/lang/String; = "server_ip"

.field private static final EXTRA_SERVER_PORT:Ljava/lang/String; = "server_port"

.field private static final REQUEST_GAME_FILES:I = 0xa96

.field private static final REQUEST_MICROPHONE:I = 0xa97

.field private static final REQUEST_NOTIFICATIONS:I = 0xa98

.field private static final TAG:Ljava/lang/String; = "EntryActivity"


# instance fields
.field private launcherOpened:Z

.field private pendingPermission:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xyron/game/launcher/SampActivity;-><init>()V

    return-void
.end method

.method private applyIncomingConnection(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    const-string v0, "server_ip"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/EntryActivity;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "server_port"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-lez v1, :cond_1

    const v2, 0xffff

    if-gt v1, v2, :cond_1

    .line 134
    const-string v2, "Launcher"

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v1, v3}, Lcom/xyron/game/launcher/util/ServerConfigManager;->addOrUpdateServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->saveSelectedServer(Landroid/content/Context;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)Z

    .line 146
    :cond_1
    const-string v0, "nickname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/EntryActivity;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/EntryActivity;->saveNickname(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private openLauncher()V
    .locals 3

    .line 100
    iget-boolean v0, p0, Lcom/xyron/game/launcher/EntryActivity;->launcherOpened:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/xyron/game/launcher/EntryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/xyron/game/launcher/EntryActivity;->launcherOpened:Z

    .line 103
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ConfigValidator;->validateConfigFiles(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p0}, Lcom/xyron/game/launcher/EntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/EntryActivity;->applyIncomingConnection(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/xyron/game/launcher/EntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/xyron/game/launcher/EntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "force_update_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xyron/game/launcher/UpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->GameDataUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    invoke-virtual {v1}, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/EntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    invoke-virtual {p0}, Lcom/xyron/game/launcher/EntryActivity;->finish()V

    return-void

    .line 116
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/xyron/game/launcher/IntroActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    invoke-virtual {p0}, Lcom/xyron/game/launcher/EntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/xyron/game/launcher/EntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/xyron/game/launcher/EntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    const/high16 v2, 0x10000

    .line 120
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/EntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    invoke-virtual {p0, v1, v1}, Lcom/xyron/game/launcher/EntryActivity;->overridePendingTransition(II)V

    .line 123
    invoke-virtual {p0}, Lcom/xyron/game/launcher/EntryActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method private requestStartupPermissions()V
    .locals 6

    .line 60
    const-string v0, "angra_permissions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/launcher/EntryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    .line 62
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Lcom/xyron/game/launcher/EntryActivity;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    const-string v3, "microphone_asked"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v0, 0xa97

    .line 65
    iput v0, p0, Lcom/xyron/game/launcher/EntryActivity;->pendingPermission:I

    .line 66
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Lcom/xyron/game/launcher/EntryActivity;[Ljava/lang/String;I)V

    return-void

    .line 69
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraNotifications;->prepare(Landroid/app/Activity;)V

    .line 73
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/launcher/EntryActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v2, v3, :cond_1

    .line 74
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Lcom/xyron/game/launcher/EntryActivity;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    const-string v3, "notification_permission_asked"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v0, 0xa98

    .line 77
    iput v0, p0, Lcom/xyron/game/launcher/EntryActivity;->pendingPermission:I

    .line 78
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Lcom/xyron/game/launcher/EntryActivity;[Ljava/lang/String;I)V

    return-void

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/launcher/EntryActivity;->openLauncher()V

    return-void
.end method

.method private sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 175
    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private saveNickname(Ljava/lang/String;)V
    .locals 4

    .line 153
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "SAMP/settings.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 155
    const-string v2, "EntryActivity"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const-string p1, "Could not create settings directory."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 161
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    const-string p1, "Could not create settings.ini."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_1
    new-instance v1, Lorg/ini4j/Wini;

    invoke-direct {v1, v0}, Lorg/ini4j/Wini;-><init>(Ljava/io/File;)V

    .line 167
    const-string v0, "client"

    const-string v3, "name"

    invoke-virtual {v1, v0, v3, p1}, Lorg/ini4j/Wini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    invoke-virtual {v1}, Lorg/ini4j/Wini;->store()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    const-string v0, "Could not save incoming nickname."

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 36
    invoke-super {p0, p1}, Lcom/xyron/game/launcher/SampActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 37
    :cond_0
    const-string v1, "pending_permission"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/xyron/game/launcher/EntryActivity;->pendingPermission:I

    if-eqz p1, :cond_1

    return-void

    .line 40
    :cond_1
    invoke-static {}, Lcom/xyron/game/launcher/util/GameStorage;->usesInternalDataStorage()Z

    move-result p1

    if-nez p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-gt p1, v1, :cond_2

    .line 42
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Lcom/xyron/game/launcher/EntryActivity;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    const-string v1, "angra_permissions"

    invoke-virtual {p0, v1, v0}, Lcom/xyron/game/launcher/EntryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "files_asked"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 44
    invoke-virtual {p0, v1, v0}, Lcom/xyron/game/launcher/EntryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v0, 0xa96

    .line 45
    iput v0, p0, Lcom/xyron/game/launcher/EntryActivity;->pendingPermission:I

    .line 46
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Lcom/xyron/game/launcher/EntryActivity;[Ljava/lang/String;I)V

    return-void

    .line 49
    :cond_2
    invoke-direct {p0}, Lcom/xyron/game/launcher/EntryActivity;->requestStartupPermissions()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/xyron/game/launcher/SampActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0xa97

    const/4 p3, 0x0

    if-eq p1, p2, :cond_2

    const/16 p2, 0xa98

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xa96

    if-eq p1, p2, :cond_1

    return-void

    .line 93
    :cond_1
    iput p3, p0, Lcom/xyron/game/launcher/EntryActivity;->pendingPermission:I

    .line 96
    invoke-direct {p0}, Lcom/xyron/game/launcher/EntryActivity;->requestStartupPermissions()V

    return-void

    .line 88
    :cond_2
    :goto_0
    iput p3, p0, Lcom/xyron/game/launcher/EntryActivity;->pendingPermission:I

    .line 89
    invoke-direct {p0}, Lcom/xyron/game/launcher/EntryActivity;->requestStartupPermissions()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    const-string v0, "pending_permission"

    iget v1, p0, Lcom/xyron/game/launcher/EntryActivity;->pendingPermission:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    invoke-super {p0, p1}, Lcom/xyron/game/launcher/SampActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
