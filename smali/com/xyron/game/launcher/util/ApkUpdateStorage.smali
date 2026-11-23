.class public final Lcom/xyron/game/launcher/util/ApkUpdateStorage;
.super Ljava/lang/Object;
.source "ApkUpdateStorage.java"


# static fields
.field private static final LEGACY:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "angra-([0-9]+)-[0-9a-f]{12}\\.apk"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->LEGACY:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterUpdate(Landroid/content/Context;)V
    .locals 4

    .line 54
    const-string v0, "angra_apk_update"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    const-string v2, "target_version"

    const v3, 0x7fffffff

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xe0

    if-gt v0, v2, :cond_0

    .line 56
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->cancelOwned(Landroid/content/Context;)V

    return-void

    .line 57
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->legacy(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->clean(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AngraUpdater"

    const-string v1, "Legacy cleanup deferred"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static cancelOwned(Landroid/content/Context;)V
    .locals 13

    .line 33
    const-string v0, "angra_apk_update"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    const-string v2, "download_id"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 35
    const-string v4, "download"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/DownloadManager;

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v5

    if-ltz v8, :cond_4

    if-eqz v4, :cond_4

    .line 37
    :try_start_0
    new-instance v5, Landroid/app/DownloadManager$Query;

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v6, v7, [J

    aput-wide v2, v6, v1

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_3

    .line 38
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 39
    const-string v6, "local_uri"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 40
    const-string v8, "file"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v6, "path"

    const/4 v8, 0x0

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_3

    .line 42
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v6

    .line 43
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->folders(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_3

    aget-object v11, v8, v10

    if-eqz v11, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->ownedName(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-array v6, v7, [J

    aput-wide v2, v6, v1

    invoke-virtual {v4, v6}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v5, :cond_2

    .line 37
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p0

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 46
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_4
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->folders(Landroid/content/Context;)[Ljava/io/File;

    move-result-object p0

    array-length v2, p0

    :goto_4
    if-ge v1, v2, :cond_5

    aget-object v3, p0, v1

    invoke-static {v3, v7}, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->clean(Ljava/io/File;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 48
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 49
    const-string v0, "AngraUpdater"

    const-string v1, "Updater cleanup deferred"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method private static clean(Ljava/io/File;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 20
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 22
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 23
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->ownedName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 24
    :cond_2
    sget-object v5, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->LEGACY:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 26
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v9, 0xe0

    cmp-long v5, v7, v9

    if-gtz v5, :cond_3

    goto :goto_1

    :catch_0
    nop

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-nez p1, :cond_4

    if-eqz v6, :cond_5

    .line 27
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "AngraUpdater"

    const-string v5, "Cannot remove obsolete updater APK"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_7

    array-length p1, p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_7
    :goto_3
    return-void
.end method

.method private static folders(Landroid/content/Context;)[Ljava/io/File;
    .locals 4

    .line 52
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->legacy(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "apk_updates"

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object v0, p0, v2

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    aput-object v3, p0, v0

    return-object p0
.end method

.method private static legacy(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->legacyRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "apk_updates"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ownedName(Ljava/lang/String;)Z
    .locals 1

    .line 18
    const-string v0, "angra-update.apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->LEGACY:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

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
