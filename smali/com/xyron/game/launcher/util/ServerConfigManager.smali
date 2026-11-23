.class public final Lcom/xyron/game/launcher/util/ServerConfigManager;
.super Ljava/lang/Object;
.source "ServerConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;,
        Lcom/xyron/game/launcher/util/ServerConfigManager$EndpointSource;,
        Lcom/xyron/game/launcher/util/ServerConfigManager$ParsedServerAddress;
    }
.end annotation


# static fields
.field private static final CLIENT_SECTION:Ljava/lang/String; = "client"

.field public static final FIXED_SERVER_NAME:Ljava/lang/String; = "Rio Novo"

.field private static final HOST_KEY:Ljava/lang/String; = "host"

.field private static final KEY_SAVED_SERVERS:Ljava/lang/String; = "saved_servers"

.field private static final KEY_SELECTED_INDEX:Ljava/lang/String; = "selected_official_server_index"

.field private static final KEY_USER_ADDED:Ljava/lang/String; = "userAdded"

.field private static final MAX_SAVED_SERVERS:I = 0x5

.field private static final PORT_KEY:Ljava/lang/String; = "port"

.field private static final PREFS_NAME:Ljava/lang/String; = "xyron_server_manager"

.field private static final SETTINGS_PATH:Ljava/lang/String; = "SAMP/settings.ini"

.field private static final TAG:Ljava/lang/String; = "ServerConfigManager"

.field static endpoint:Lcom/xyron/game/launcher/util/ServerConfigManager$EndpointSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/xyron/game/launcher/util/ServerConfigManager$1;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager$1;-><init>()V

    sput-object v0, Lcom/xyron/game/launcher/util/ServerConfigManager;->endpoint:Lcom/xyron/game/launcher/util/ServerConfigManager$EndpointSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {p0, p1, p2}, Lcom/xyron/game/launcher/util/ServerConfigManager;->sanitizeDisplayName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(I)Z
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->isValidPort(I)Z

    move-result p0

    return p0
.end method

.method public static addOrUpdateServer(Landroid/content/Context;Ljava/lang/String;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;
    .locals 3

    .line 166
    sget-object p1, Lcom/xyron/game/launcher/util/ServerConfigManager;->endpoint:Lcom/xyron/game/launcher/util/ServerConfigManager$EndpointSource;

    .line 167
    invoke-interface {p1}, Lcom/xyron/game/launcher/util/ServerConfigManager$EndpointSource;->host()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/xyron/game/launcher/util/ServerConfigManager;->endpoint:Lcom/xyron/game/launcher/util/ServerConfigManager$EndpointSource;

    invoke-interface {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager$EndpointSource;->port()I

    move-result v0

    const/4 v1, 0x1

    .line 166
    const-string v2, "Rio Novo"

    invoke-static {p0, v2, p1, v0, v1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->addOrUpdateServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object p0

    return-object p0
.end method

.method public static addOrUpdateServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;
    .locals 0

    if-nez p0, :cond_0

    .line 159
    invoke-static {}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->empty()Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object p0

    return-object p0

    .line 161
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getAvailableServers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/xyron/game/launcher/util/ServerConfigManager;->findMatchingServer(Ljava/util/List;Ljava/lang/String;I)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 162
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->saveSelectedServer(Landroid/content/Context;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->empty()Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static applySelectedServer(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .locals 6

    .line 100
    const-string v0, "ServerConfigManager"

    .line 0
    const-string v1, "Failed to restore canonical settings.ini at "

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    .line 103
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getAvailableServers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/xyron/game/launcher/util/ServerConfigManager;->findMatchingServer(Ljava/util/List;Ljava/lang/String;I)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 106
    :cond_1
    iget-object p2, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->mapId:Ljava/lang/String;

    invoke-static {p2}, Lcom/xyron/game/launcher/util/MapProfile;->named(Ljava/lang/String;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object p2

    iget p2, p2, Lcom/xyron/game/launcher/util/MapProfile;->index:I

    .line 107
    invoke-static {p2}, Lcom/xyron/game/launcher/util/MapProfile;->at(I)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object p2

    iget-object p2, p2, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/xyron/game/launcher/util/GameStorage;->bound(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p2

    .line 108
    :try_start_0
    invoke-static {p2}, Lcom/xyron/game/launcher/util/GameStorage;->preparePreferences(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 110
    invoke-static {p2}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSettingsFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_2

    return v2

    .line 116
    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/xyron/game/launcher/util/ServerConfigManager;->prepareSettingsFile(Ljava/io/File;)V

    .line 117
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/xyron/game/launcher/util/ServerConfigManager;->sanitizeLegacyConnectionFiles(Ljava/io/File;)V

    .line 118
    invoke-static {p2, p1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->writeAndVerifyServer(Ljava/io/File;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p3, :cond_3

    .line 119
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->rememberSelection(Landroid/content/Context;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)V

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 122
    :cond_4
    const-string v3, "Could not sanitize public settings; repairing file."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 124
    const-string v4, "Failed to update existing settings.ini; repairing file."

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "settings.ini"

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xyron/game/launcher/util/ConfigValidator;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 133
    :cond_5
    invoke-static {p2, p1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->writeAndVerifyServer(Ljava/io/File;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p3, :cond_6

    .line 134
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->rememberSelection(Landroid/content/Context;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    return v1

    :catch_1
    move-exception p0

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Failed to persist selected server at "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_2
    move-exception p0

    .line 109
    const-string p1, "Cannot preserve player settings"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method static canonicalServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 187
    const-string v0, "legacy-7770"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "1"

    return-object p0

    .line 188
    :cond_0
    const-string v0, "legacy-9841"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "2"

    :cond_1
    return-object p0
.end method

.method private static clearSelectedServer(Landroid/content/Context;)V
    .locals 3

    .line 379
    const-string v0, "client"

    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSettingsFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 380
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    :try_start_0
    new-instance v1, Lorg/ini4j/Wini;

    invoke-direct {v1, p0}, Lorg/ini4j/Wini;-><init>(Ljava/io/File;)V

    .line 385
    const-string v2, "host"

    invoke-virtual {v1, v0, v2}, Lorg/ini4j/Wini;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    .line 386
    const-string v2, "port"

    invoke-virtual {v1, v0, v2}, Lorg/ini4j/Wini;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    .line 387
    invoke-virtual {v1}, Lorg/ini4j/Wini;->store()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to clear selected server at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ServerConfigManager"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static ensureParentDirectory(Ljava/io/File;)V
    .locals 1

    .line 412
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 413
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public static ensureSelectedServer(Landroid/content/Context;)Z
    .locals 4

    .line 71
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->selectedOption(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v0

    .line 72
    iget-boolean v1, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->online:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->mapId:Ljava/lang/String;

    invoke-static {v1}, Lcom/xyron/game/launcher/util/MapProfile;->named(Ljava/lang/String;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v1

    iget v1, v1, Lcom/xyron/game/launcher/util/MapProfile;->index:I

    .line 74
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v3

    iget v3, v3, Lcom/xyron/game/launcher/util/MapProfile;->index:I

    if-eq v3, v1, :cond_1

    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/GameStorage;->select(Landroid/content/Context;I)V

    .line 75
    :cond_1
    iget-object v1, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    iget v0, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    invoke-static {p0, v1, v0, v2}, Lcom/xyron/game/launcher/util/ServerConfigManager;->applySelectedServer(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method private static findMatchingServer(Ljava/util/List;Ljava/lang/String;I)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;"
        }
    .end annotation

    .line 487
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    .line 488
    invoke-virtual {v0, p1, p2}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->matches(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static fixedServer()Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;
    .locals 11

    .line 183
    new-instance v10, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    sget-object v0, Lcom/xyron/game/launcher/util/ServerConfigManager;->endpoint:Lcom/xyron/game/launcher/util/ServerConfigManager$EndpointSource;

    invoke-interface {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager$EndpointSource;->host()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/xyron/game/launcher/util/ServerConfigManager;->endpoint:Lcom/xyron/game/launcher/util/ServerConfigManager$EndpointSource;

    invoke-interface {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager$EndpointSource;->port()I

    move-result v4

    const/4 v8, 0x1

    const-string v9, ""

    const-string v1, "1"

    const-string v2, "Rio Novo"

    const-string v5, "angra-novo"

    const-string v6, "BR"

    const-string v7, "Brasil"

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v10
.end method

.method public static getAvailableServers(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 42
    const-string/jumbo v0, "xyron_server_manager"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/xyron/game/launcher/util/OfficialServers;->latestJson:Ljava/lang/String;

    .line 44
    const-string v2, "remote_catalog_v3"

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    :cond_0
    const-string v3, "ServerConfigManager"

    if-nez v1, :cond_1

    :try_start_0
    const-string v4, "servers.json"

    invoke-static {p0, v4}, Lcom/xyron/game/launcher/util/RemoteConfiguration;->bundled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    const-string p0, "Bundled server catalog unavailable"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 48
    :try_start_1
    invoke-static {v1}, Lcom/xyron/game/launcher/util/OfficialServers;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 49
    sget-object v4, Lcom/xyron/game/launcher/util/OfficialServers;->latestJson:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    return-object p0

    .line 51
    :catch_1
    const-string p0, "Invalid cached server catalog; keeping bundled destinations"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v10, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xyron/game/launcher/util/MapProfile;->at(I)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v1

    iget-object v3, v1, Lcom/xyron/game/launcher/util/MapProfile;->host:Ljava/lang/String;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/MapProfile;->at(I)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v0

    iget v4, v0, Lcom/xyron/game/launcher/util/MapProfile;->port:I

    const/4 v8, 0x1

    const-string v9, ""

    const-string v1, "2"

    const-string v2, "Rio Cl\u00e1ssico"

    const-string v5, "angra-classico"

    const-string v6, "BR"

    const-string v7, "Brasil"

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static getMaxSavedServers()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static getSelectedServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->ensureSelectedServer(Landroid/content/Context;)Z

    .line 80
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->selectedOption(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object p0

    return-object p0
.end method

.method public static getSelectedServerIndex(Landroid/content/Context;)I
    .locals 0

    .line 88
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object p0

    iget p0, p0, Lcom/xyron/game/launcher/util/MapProfile;->index:I

    return p0
.end method

.method private static getSettingsFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 397
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 401
    :cond_1
    new-instance p0, Ljava/io/File;

    const-string v1, "SAMP/settings.ini"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static hasConfiguredServers(Landroid/content/Context;)Z
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getAvailableServers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isConnectionKey(Ljava/lang/String;)Z
    .locals 2

    .line 310
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 311
    const-string v0, "host"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "port"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "serverip"

    .line 312
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "serverhost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "serverport"

    .line 313
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "serverpassword"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "address"

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "server"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "servers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

.method public static isFixedServerApplied(Landroid/content/Context;)Z
    .locals 4

    .line 143
    const-string v0, "client"

    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSettingsFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 144
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    :try_start_0
    new-instance v2, Lorg/ini4j/Wini;

    invoke-direct {v2, p0}, Lorg/ini4j/Wini;-><init>(Ljava/io/File;)V

    .line 149
    const-string v3, "host"

    invoke-virtual {v2, v0, v3}, Lorg/ini4j/Wini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "port"

    .line 150
    invoke-virtual {v2, v0, v3}, Lorg/ini4j/Wini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception v0

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to verify selected server at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ServerConfigManager"

    invoke-static {v2, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v1
.end method

.method private static isValidPort(I)Z
    .locals 1

    if-lez p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidRawAddress(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static loadStoredServers(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;",
            ">;"
        }
    .end annotation

    .line 211
    const-string v0, "port"

    const-string v1, "host"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v2

    .line 216
    :cond_0
    const-string/jumbo v3, "xyron_server_manager"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 217
    const-string v3, "saved_servers"

    const-string v5, "[]"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 219
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 220
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge p0, v5, :cond_4

    .line 221
    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    const-string v6, "name"

    .line 227
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 229
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 226
    invoke-static {v6, v7, v8}, Lcom/xyron/game/launcher/util/ServerConfigManager;->sanitizeDisplayName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xyron/game/launcher/util/ServerConfigManager;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 232
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 233
    const-string v9, "favorite"

    invoke-virtual {v5, v9, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 234
    const-string v10, "userAdded"

    invoke-virtual {v5, v10, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 240
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v8}, Lcom/xyron/game/launcher/util/ServerConfigManager;->isValidPort(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2, v7, v8}, Lcom/xyron/game/launcher/util/ServerConfigManager;->findMatchingServer(Ljava/util/List;Ljava/lang/String;I)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v5

    if-nez v5, :cond_3

    .line 241
    new-instance v5, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 245
    const-string v0, "ServerConfigManager"

    const-string v1, "Failed to parse saved servers"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object v2
.end method

.method private static parsePort(Ljava/lang/Object;)I
    .locals 2

    .line 419
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 420
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 425
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method private static parseServerAddress(Ljava/lang/String;)Lcom/xyron/game/launcher/util/ServerConfigManager$ParsedServerAddress;
    .locals 5

    .line 451
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 452
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 459
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x3a

    .line 460
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 461
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xyron/game/launcher/util/ServerConfigManager;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v2

    .line 462
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 464
    :cond_1
    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 465
    array-length v0, p0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_2

    .line 466
    aget-object v0, p0, v3

    invoke-static {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 467
    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 465
    :cond_2
    const-string v3, ""

    move-object p0, v3

    .line 471
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 476
    :cond_3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 477
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->isValidPort(I)Z

    move-result v0

    if-nez v0, :cond_4

    return-object v1

    .line 480
    :cond_4
    new-instance v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ParsedServerAddress;

    invoke-direct {v0, v3, p0}, Lcom/xyron/game/launcher/util/ServerConfigManager$ParsedServerAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_5
    :goto_1
    return-object v1
.end method

.method private static persistStoredServers(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 257
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {v1}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 262
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 264
    :try_start_0
    const-string v3, "name"

    iget-object v4, v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v3, "host"

    iget-object v4, v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v3, "port"

    iget v4, v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    const-string v3, "favorite"

    iget-boolean v1, v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->favorite:Z

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 268
    const-string v1, "userAdded"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 269
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 274
    :cond_3
    const-string/jumbo p1, "xyron_server_manager"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 275
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "saved_servers"

    .line 276
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 277
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static prepareSettingsFile(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->ensureParentDirectory(Ljava/io/File;)V

    .line 406
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    return-void
.end method

.method private static readServerFromSettings(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;
    .locals 5

    .line 281
    const-string v0, "client"

    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSettingsFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    .line 282
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 287
    :cond_0
    :try_start_0
    new-instance v2, Lorg/ini4j/Wini;

    invoke-direct {v2, p0}, Lorg/ini4j/Wini;-><init>(Ljava/io/File;)V

    .line 288
    const-string p0, "host"

    invoke-virtual {v2, v0, p0}, Lorg/ini4j/Wini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 289
    const-string v3, "port"

    invoke-virtual {v2, v0, v3}, Lorg/ini4j/Wini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->parsePort(Ljava/lang/Object;)I

    move-result v0

    .line 290
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->isValidPort(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    new-instance v2, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    const-string v3, "Servidor atual"

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v0, v4}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_2
    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    .line 295
    const-string v0, "ServerConfigManager"

    const-string v2, "Failed to read selected server"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-object v1
.end method

.method private static rememberSelection(Landroid/content/Context;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)V
    .locals 4

    .line 204
    iget-object v0, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->mapId:Ljava/lang/String;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/MapProfile;->named(Ljava/lang/String;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v0

    iget v0, v0, Lcom/xyron/game/launcher/util/MapProfile;->index:I

    .line 205
    const-string/jumbo v1, "xyron_server_manager"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "selected_catalog_id"

    iget-object v3, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/GameStorage;->select(Landroid/content/Context;I)V

    .line 207
    iget-object p0, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    iget p1, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    invoke-static {v0, p0, p1}, Lcom/xyron/game/security/NativeSession;->selectEndpoint(ILjava/lang/String;I)V

    return-void
.end method

.method public static removeServer(Landroid/content/Context;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static sanitize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 436
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static sanitizeDisplayName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 440
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 441
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 444
    :cond_0
    invoke-static {p1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2}, Lcom/xyron/game/launcher/util/ServerConfigManager;->isValidPort(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 445
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 447
    :cond_1
    const-string p0, "Servidor"

    return-object p0
.end method

.method private static sanitizeLegacyConnectionFiles(Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/io/File;

    const-string v1, "server.ini"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 336
    new-instance v1, Lorg/ini4j/Wini;

    invoke-direct {v1, v0}, Lorg/ini4j/Wini;-><init>(Ljava/io/File;)V

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/ini4j/Wini;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 338
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/ini4j/Wini;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ini4j/Profile$Section;

    invoke-interface {v4}, Lorg/ini4j/Profile$Section;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 339
    invoke-static {v4}, Lcom/xyron/game/launcher/util/ServerConfigManager;->isConnectionKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v2, v4}, Lorg/ini4j/Wini;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 342
    :cond_2
    invoke-virtual {v1}, Lorg/ini4j/Wini;->store()V

    .line 344
    :cond_3
    const-string v0, "settings.json"

    const-string v1, "favorites.json"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v3, :cond_7

    aget-object v3, v0, v2

    .line 345
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    .line 347
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x100000

    cmp-long v9, v5, v7

    if-gtz v9, :cond_6

    .line 349
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v6, v5

    new-array v5, v6, [B

    .line 350
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_5

    sub-int v9, v6, v8

    .line 352
    :try_start_1
    invoke-virtual {v7, v5, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v9, :cond_5

    add-int/2addr v8, v9

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 350
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    .line 353
    :cond_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 354
    new-instance v6, Lorg/json/JSONTokener;

    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v5

    .line 355
    invoke-static {v5}, Lcom/xyron/game/launcher/util/ServerConfigManager;->stripConnectionJson(Ljava/lang/Object;)V

    .line 356
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 357
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 358
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_2
    move-exception p0

    .line 356
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p0

    .line 360
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid legacy configuration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 347
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Legacy configuration too large"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-void
.end method

.method public static saveSelectedServer(Landroid/content/Context;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    iget p1, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    invoke-static {p0, v0, p1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->saveSelectedServer(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static saveSelectedServer(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x1

    .line 96
    invoke-static {p0, p1, p2, v0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->applySelectedServer(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method private static selectedOption(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;
    .locals 13

    .line 193
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getAvailableServers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 194
    const-string/jumbo v1, "xyron_server_manager"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "selected_catalog_id"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->canonicalServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    iget-object v2, v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 197
    :cond_1
    new-instance v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object p0

    iget-object v8, p0, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "O servidor selecionado n\u00e3o est\u00e1 mais dispon\u00edvel. Selecione outro servidor na lista."

    const-string v5, "Servidor indispon\u00edvel"

    const-string v6, ""

    const/4 v7, 0x0

    const-string v9, "BR"

    const-string v10, "Brasil"

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0

    .line 199
    :cond_2
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object p0

    iget p0, p0, Lcom/xyron/game/launcher/util/MapProfile;->index:I

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    iget-object v4, v3, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->mapId:Ljava/lang/String;

    invoke-static {v4}, Lcom/xyron/game/launcher/util/MapProfile;->named(Ljava/lang/String;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v4

    iget v4, v4, Lcom/xyron/game/launcher/util/MapProfile;->index:I

    if-ne v4, p0, :cond_3

    return-object v3

    .line 201
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    return-object p0
.end method

.method public static setFavorite(Landroid/content/Context;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;Z)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static stripConnectionJson(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 318
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 319
    check-cast p0, Lorg/json/JSONObject;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 322
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    invoke-static {v1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->isConnectionKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 325
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->stripConnectionJson(Ljava/lang/Object;)V

    goto :goto_1

    .line 327
    :cond_2
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    .line 328
    check-cast p0, Lorg/json/JSONArray;

    const/4 v0, 0x0

    .line 329
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->stripConnectionJson(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static upsertServer(Landroid/content/Context;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)V
    .locals 3

    .line 179
    iget-object v0, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    iget v2, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    iget-boolean p1, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->favorite:Z

    invoke-static {p0, v0, v1, v2, p1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->addOrUpdateServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    return-void
.end method

.method public static usesRetroHud(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static writeAndVerifyServer(Ljava/io/File;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    new-instance v0, Lorg/ini4j/Wini;

    invoke-direct {v0, p0}, Lorg/ini4j/Wini;-><init>(Ljava/io/File;)V

    .line 367
    iget-object v1, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    iget p1, p1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    invoke-static {v0, v1, p1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->writeServer(Lorg/ini4j/Wini;Ljava/lang/String;I)V

    .line 369
    new-instance p1, Lorg/ini4j/Wini;

    invoke-direct {p1, p0}, Lorg/ini4j/Wini;-><init>(Ljava/io/File;)V

    .line 370
    const-string p0, "host"

    const-string v0, "client"

    invoke-virtual {p1, v0, p0}, Lorg/ini4j/Wini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "port"

    .line 371
    invoke-virtual {p1, v0, p0}, Lorg/ini4j/Wini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 373
    const-string p1, "ServerConfigManager"

    const-string v0, "Public settings contain no connection endpoint"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method private static writeServer(Lorg/ini4j/Wini;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/ini4j/Wini;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lorg/ini4j/Wini;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ini4j/Profile$Section;

    invoke-interface {v1}, Lorg/ini4j/Profile$Section;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    invoke-static {v1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->isConnectionKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p2, v1}, Lorg/ini4j/Wini;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p0}, Lorg/ini4j/Wini;->store()V

    return-void
.end method
