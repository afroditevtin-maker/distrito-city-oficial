.class public final Lcom/xyron/game/launcher/util/GameStorage;
.super Ljava/lang/Object;
.source "GameStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/util/GameStorage$BoundContext;
    }
.end annotation


# static fields
.field public static final EXTRA_SERVER_INDEX:Ljava/lang/String; = "angra_server_index"

.field private static final SERVER_KEY:Ljava/lang/String; = "selected_official_server_index"

.field private static final SERVER_PREFS:Ljava/lang/String; = "xyron_server_manager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 35
    invoke-static {}, Lcom/xyron/game/launcher/util/GameStorage;->usesInternalDataStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "game"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->externalAppRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static bound(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 1

    .line 20
    new-instance v0, Lcom/xyron/game/launcher/util/GameStorage$BoundContext;

    invoke-static {p1}, Lcom/xyron/game/launcher/util/MapProfile;->named(Ljava/lang/String;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/launcher/util/GameStorage$BoundContext;-><init>(Landroid/content/Context;Lcom/xyron/game/launcher/util/MapProfile;)V

    return-object v0
.end method

.method private static copyPreference(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_4

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/32 v2, 0x800000

    cmp-long p2, p0, v2

    if-gtz p2, :cond_5

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "N\u00e3o foi poss\u00edvel preservar as configura\u00e7\u00f5es"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_2
    :goto_0
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".migration"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v0, 0x4000

    .line 90
    :try_start_1
    new-array v0, v0, [B

    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 92
    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "N\u00e3o foi poss\u00edvel salvar a configura\u00e7\u00e3o migrada"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p1

    .line 89
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    .line 86
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Arquivo de configura\u00e7\u00e3o inv\u00e1lido"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Prefer\u00eancia fora da pasta permitida"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    return-void
.end method

.method private static externalAppRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 43
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Android/data"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized finishLegacyRemoval(Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/xyron/game/launcher/util/GameStorage;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-static {}, Lcom/xyron/game/launcher/util/GameStorage;->usesInternalDataStorage()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 104
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 105
    invoke-static {v1}, Lcom/xyron/game/launcher/util/DataInstallState;->pending(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v1}, Lcom/xyron/game/launcher/util/DataInstallState;->invalidReceipt(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 106
    invoke-static {v1}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasRequiredGameData(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->integrityIndex(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 107
    :cond_1
    const-string v2, ""

    invoke-static {v1, v2}, Lcom/xyron/game/launcher/util/DataInstallState;->installedHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    const-string v2, "[0-9a-f]{64}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 110
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->externalAppRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 111
    const-string v2, "angra-classico"

    const-string v3, "angra-novo"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_8

    aget-object v4, v2, v3

    .line 112
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 114
    :cond_3
    invoke-static {v1, v5, v4}, Lcom/xyron/game/launcher/util/GameStorage;->requireDirectRoot(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 115
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verified-data-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".tsv"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v5}, Lcom/xyron/game/launcher/util/DataInstallState;->pending(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 117
    :cond_4
    const-string v4, ""

    invoke-static {v5, v4}, Lcom/xyron/game/launcher/util/DataInstallState;->installedHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    const-string v7, "[0-9a-f]{64}"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    .line 120
    :cond_5
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->preparePreferences(Landroid/content/Context;)V

    .line 121
    invoke-static {v5, v6, v4}, Lcom/xyron/game/launcher/util/DataIntegrity;->removeIndexedFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 122
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    .line 123
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v1, "N\u00e3o foi poss\u00edvel finalizar o \u00edndice da DATA externa."

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_8
    monitor-exit v0

    return-void

    .line 106
    :cond_9
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static integrityIndex(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verified-data-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xyron/game/launcher/util/GameStorage;->usesInternalDataStorage()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "-internal"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tsv"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static legacyRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->appRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "files"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static manifestPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "angra_data_manifest_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xyron/game/launcher/util/GameStorage;->usesInternalDataStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_internal"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static preferenceStore(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "legacy-player-preferences"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized preparePreferences(Landroid/content/Context;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/xyron/game/launcher/util/GameStorage;

    monitor-enter v0

    .line 54
    :try_start_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->legacyRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->preferenceStore(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 55
    const-string v3, "SAMP/settings.ini"

    const-string v4, "Adjustable.cfg"

    const-string v5, "gtasatelem.set"

    const-string v6, "data/TouchDefaultPhoneWidescreen.cfg"

    const-string v7, "data/TouchDefaultPhone3x2.cfg"

    const-string v8, "data/TouchDefaultTabletWidescreen.cfg"

    const-string v9, "data/TouchDefaultTablet4x3.cfg"

    const-string v10, "data/360Default1280x720.cfg"

    const-string v11, "data/360Default960x720.cfg"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x9

    if-eqz v4, :cond_0

    .line 59
    const-string v4, "files"

    invoke-static {p0, v1, v4}, Lcom/xyron/game/launcher/util/GameStorage;->requireDirectRoot(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    .line 60
    aget-object v7, v3, v4

    invoke-static {v1, v2, v7}, Lcom/xyron/game/launcher/util/GameStorage;->copyPreference(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v1, "N\u00e3o foi poss\u00edvel preparar a pasta do mapa"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    invoke-static {p0, v1, v4}, Lcom/xyron/game/launcher/util/GameStorage;->requireDirectRoot(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 65
    new-instance v4, Ljava/io/File;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->appRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    const-string v8, "angra-novo"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v7

    iget v7, v7, Lcom/xyron/game/launcher/util/MapProfile;->index:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 67
    const-string v7, "angra-novo"

    invoke-static {p0, v4, v7}, Lcom/xyron/game/launcher/util/GameStorage;->requireDirectRoot(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    .line 68
    aget-object v8, v3, v7

    invoke-static {v4, v1, v8}, Lcom/xyron/game/launcher/util/GameStorage;->copyPreference(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 70
    :cond_3
    invoke-static {}, Lcom/xyron/game/launcher/util/GameStorage;->usesInternalDataStorage()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 71
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->externalAppRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 72
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    const-string v7, "angra-novo"

    const-string v8, "files"

    filled-new-array {p0, v7, v8}, [Ljava/lang/String;

    move-result-object p0

    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x3

    if-ge v7, v8, :cond_6

    aget-object v8, p0, v7

    .line 73
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_5

    .line 75
    :cond_4
    invoke-static {v4, v9, v8}, Lcom/xyron/game/launcher/util/GameStorage;->requireDirectRoot(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_5

    .line 76
    aget-object v10, v3, v8

    invoke-static {v9, v1, v10}, Lcom/xyron/game/launcher/util/GameStorage;->copyPreference(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    :goto_6
    if-ge v5, v6, :cond_7

    .line 79
    aget-object p0, v3, v5

    invoke-static {v2, v1, p0}, Lcom/xyron/game/launcher/util/GameStorage;->copyPreference(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 80
    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;
    .locals 1

    .line 22
    instance-of v0, p0, Lcom/xyron/game/launcher/util/GameStorage$BoundContext;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/xyron/game/launcher/util/GameStorage$BoundContext;

    iget-object p0, p0, Lcom/xyron/game/launcher/util/GameStorage$BoundContext;->profile:Lcom/xyron/game/launcher/util/MapProfile;

    return-object p0

    :cond_0
    const/4 p0, 0x1

    .line 23
    invoke-static {p0}, Lcom/xyron/game/launcher/util/MapProfile;->at(I)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object p0

    return-object p0
.end method

.method private static requireDirectRoot(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->appRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/xyron/game/launcher/util/GameStorage;->requireDirectRoot(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private static requireDirectRoot(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Pasta do jogo redirecionada; limpeza cancelada"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static root(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->appRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static select(Landroid/content/Context;I)V
    .locals 2

    .line 26
    invoke-static {p1}, Lcom/xyron/game/launcher/util/MapProfile;->at(I)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object p1

    .line 27
    const-string/jumbo v0, "xyron_server_manager"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "selected_official_server_index"

    iget p1, p1, Lcom/xyron/game/launcher/util/MapProfile;->index:I

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "N\u00e3o foi poss\u00edvel salvar o servidor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static usesInternalDataStorage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
