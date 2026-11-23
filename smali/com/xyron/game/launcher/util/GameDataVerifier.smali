.class public final Lcom/xyron/game/launcher/util/GameDataVerifier;
.super Ljava/lang/Object;
.source "GameDataVerifier.java"


# static fields
.field private static final REQUIRED_DIRECTORIES:[Ljava/lang/String;

.field private static final REQUIRED_FILES:[Ljava/lang/String;

.field public static final UNIVERSAL_MARKER:Ljava/lang/String; = ".angra-universal-v1"


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 10
    const-string v0, "models"

    const-string v1, "texdb"

    const-string v2, "anim"

    const-string v3, "audio"

    const-string v4, "data"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/GameDataVerifier;->REQUIRED_DIRECTORIES:[Ljava/lang/String;

    .line 18
    const-string v13, "texdb/samp/samp.txt"

    const-string v14, "texdb/txd/txd.txt"

    const-string v1, "audio/CONFIG/BANKSLOT.DAT"

    const-string v2, "SAMP/main.scm"

    const-string v3, "texdb/SAMPCOL.img"

    const-string v4, "texdb/gta3.img"

    const-string v5, "texdb/gta_int.img"

    const-string v6, "texdb/player.img"

    const-string v7, "texdb/samp.img"

    const-string v8, "texdb/gta3/gta3.txt"

    const-string v9, "texdb/gta_int/gta_int.txt"

    const-string v10, "texdb/menu/menu.txt"

    const-string v11, "texdb/mobile/mobile.txt"

    const-string v12, "texdb/player/player.txt"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/GameDataVerifier;->REQUIRED_FILES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasNonEmptyFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    .line 138
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Missing/unreadable file: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AngraData"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method public static hasRequiredGameData(Landroid/content/Context;)Z
    .locals 2

    .line 76
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 78
    const-string p0, "AngraData"

    const-string v1, "External game directory unavailable"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 81
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->hasPendingCommit(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 82
    :cond_1
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasRequiredGameData(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static hasRequiredGameData(Ljava/io/File;)Z
    .locals 12

    .line 86
    invoke-static {p0}, Lcom/xyron/game/security/DataUi;->isInstalled(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "data/decision/PedEvent.txt"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    new-instance v2, Ljava/io/File;

    const-string v3, "data/Decision/PedEvent.txt"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    const-string v4, "AngraData"

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    .line 90
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v2, v5

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 95
    :cond_2
    sget-object v0, Lcom/xyron/game/launcher/util/GameDataVerifier;->REQUIRED_DIRECTORIES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v5, v0, v3

    .line 96
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Missing/unreadable directory: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 103
    :cond_5
    sget-object v0, Lcom/xyron/game/launcher/util/GameDataVerifier;->REQUIRED_FILES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    .line 104
    invoke-static {p0, v4}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasNonEmptyFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    return v1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 109
    :cond_7
    new-instance v0, Ljava/io/File;

    const-string v2, ".angra-universal-v1"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    .line 110
    const-string v10, "samp"

    const-string v11, "txd"

    const-string v3, "cutscene"

    const-string v4, "gta3"

    const-string v5, "gta_int"

    const-string v6, "menu"

    const-string v7, "mobile"

    const-string v8, "player"

    const-string v9, "playerhi"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :goto_3
    const/16 v4, 0x9

    if-ge v3, v4, :cond_9

    aget-object v4, v0, v3

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "texdb/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "etc"

    invoke-static {p0, v4, v5}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasTextureSet(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    return v1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    return v2

    .line 115
    :cond_a
    const-string v0, "texdb/gta3/gta3"

    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasTextureSet(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "texdb/gta_int/gta_int"

    .line 116
    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasTextureSet(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "texdb/menu/menu"

    .line 117
    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasTextureSet(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "texdb/mobile/mobile"

    .line 118
    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasTextureSet(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "texdb/samp/samp"

    .line 119
    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasTextureSet(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "texdb/txd/txd"

    .line 120
    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasTextureSet(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "texdb/player/player"

    .line 121
    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasTextureSet(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1

    .line 91
    :cond_c
    :goto_4
    const-string p0, "Missing default decision data"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static hasTextureSet(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 125
    const-string v0, "dxt"

    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasTextureSet(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "etc"

    .line 126
    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasTextureSet(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pvr"

    .line 127
    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasTextureSet(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

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

.method private static hasTextureSet(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasNonEmptyFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".tmb"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasNonEmptyFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static installedDataHash(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 39
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 40
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->manifestPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "installed_sha256"

    const-string v2, ""

    .line 41
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {v0, p0}, Lcom/xyron/game/launcher/util/DataInstallState;->installedHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static localDataEnabled(Landroid/content/Context;ZZ)Z
    .locals 3

    .line 70
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 71
    new-instance v1, Ljava/io/File;

    const-string v2, ".angra-local-data-test"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 71
    :goto_0
    invoke-static {v0, p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalDataMode;->enabled(ZZZZ)Z

    move-result p0

    return p0
.end method

.method public static needsUpdate(Landroid/content/Context;)Z
    .locals 5

    .line 44
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 45
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasRequiredGameData(Landroid/content/Context;)Z

    move-result v1

    .line 46
    invoke-static {v0}, Lcom/xyron/game/launcher/util/DataInstallState;->pending(Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/xyron/game/launcher/util/DataInstallState;->invalidReceipt(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_5

    if-nez v1, :cond_2

    goto :goto_3

    .line 48
    :cond_2
    invoke-static {p0, v1, v0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->localDataEnabled(Landroid/content/Context;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    const/4 v0, 0x0

    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->manifestPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_valid_manifest"

    const-string v3, ""

    .line 52
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xyron/game/launcher/util/AngraDataManifest;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 54
    :catch_0
    const-string v1, "AngraData"

    const-string v2, "Cached update source unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_4
    :goto_2
    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->updateRequired(Landroid/content/Context;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;)Z

    move-result p0

    return p0

    :cond_5
    :goto_3
    return v4
.end method

.method public static updateRequired(Landroid/content/Context;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;)Z
    .locals 7

    .line 58
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 59
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasRequiredGameData(Landroid/content/Context;)Z

    move-result v1

    .line 60
    invoke-static {v0}, Lcom/xyron/game/launcher/util/DataInstallState;->pending(Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/xyron/game/launcher/util/DataInstallState;->invalidReceipt(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 61
    :goto_1
    invoke-static {p0, v1, v2}, Lcom/xyron/game/launcher/util/GameDataVerifier;->localDataEnabled(Landroid/content/Context;ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    if-eqz p1, :cond_3

    .line 62
    iget-object v2, p1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->prefix:Ljava/lang/String;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/xyron/game/launcher/util/MapProfile;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v4

    .line 63
    :cond_3
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->integrityIndex(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_4

    return v4

    .line 64
    :cond_4
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->installedDataHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x0

    if-nez p1, :cond_5

    move-object v5, p0

    goto :goto_2

    .line 65
    :cond_5
    iget-object v5, p1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->sha256:Ljava/lang/String;

    :goto_2
    invoke-static {v0}, Lcom/xyron/game/launcher/util/DataInstallState;->pending(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v0}, Lcom/xyron/game/launcher/util/DataInstallState;->invalidReceipt(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 66
    :cond_7
    :goto_3
    invoke-static {v0}, Lcom/xyron/game/launcher/util/DataInstallState;->installedVersion(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    iget-object p0, p1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->version:Ljava/lang/String;

    :goto_4
    move-object v6, p0

    move-object v3, v5

    move-object v5, v0

    .line 64
    invoke-static/range {v1 .. v6}, Lcom/xyron/game/launcher/util/DataUpdateDecision;->required(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
