.class public final Lcom/xyron/game/launcher/util/ArchiveDataInstaller;
.super Ljava/lang/Object;
.source "ArchiveDataInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;,
        Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;,
        Lcom/xyron/game/launcher/util/ArchiveDataInstaller$InvalidRange;,
        Lcom/xyron/game/launcher/util/ArchiveDataInstaller$PermanentDownloadFailure;,
        Lcom/xyron/game/launcher/util/ArchiveDataInstaller$RateLimited;,
        Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Validator;
    }
.end annotation


# static fields
.field private static final CONTENT_RANGE:Ljava/util/regex/Pattern;

.field public static final EXTRACTED_BYTES:J = 0xb80f7e5aL

.field private static final PREFS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROOTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHA1:Ljava/lang/String; = "d458385468a9de95d4336d45b69c56c059f33041"

.field public static final SHA256:Ljava/lang/String; = "86f3038cf80d4db2bd4a6053e266060f8dda3647f6956243472f3b7547a61083"

.field private static final WORK:Ljava/lang/String; = ".angra-download-work"

.field public static final ZIP_BYTES:J = 0x471dca39L


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 43
    new-instance v0, Ljava/util/HashSet;

    const-string v13, ".angra-universal-v1"

    const-string v14, ".angra-resource-profile"

    const-string v1, "anim"

    const-string v2, "audio"

    const-string v3, "data"

    const-string v4, "models"

    const-string v5, "texdb"

    const-string v6, "SAMP"

    const-string v7, "TEXT"

    const-string v8, "text"

    const-string v9, "fonts"

    const-string v10, "CINFO.BIN"

    const-string v11, "GTASAMP10.b"

    const-string v12, "stream.ini"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->ROOTS:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "settings.json"

    const-string v2, "favorites.json"

    const-string v3, "settings.ini"

    const-string v4, "server.ini"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->PREFS:Ljava/util/Set;

    .line 209
    const-string v0, "bytes ([0-9]+)-([0-9]+)/([0-9]+)"

    .line 210
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->CONTENT_RANGE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allowed(Ljava/lang/String;)Z
    .locals 3

    .line 84
    const-string v0, "/"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 85
    sget-object v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->ROOTS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 86
    :cond_0
    const-string v0, "SAMP/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/16 v0, 0x2f

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 88
    sget-object v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->PREFS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".log"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "log.txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method static archivePassword()[C
    .locals 1

    .line 17
    const-string v0, "gede28091948"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public static commit(Ljava/io/File;Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Validator;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 314
    const-string v2, ".angra-download-work"

    invoke-static {v1, v2}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "backup"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Falha ao preparar recuperacao."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    :goto_0
    new-instance v4, Ljava/io/File;

    const-string v5, "SAMP"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    sget-object v5, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->PREFS:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, -0x1

    const/16 v9, 0x2000

    const/4 v10, 0x0

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 318
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Falha ao preservar configuracoes."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_4
    :goto_2
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v11, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-array v7, v9, [B

    :goto_3
    invoke-virtual {v12, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-eq v9, v8, :cond_5

    invoke-virtual {v11, v7, v10, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_5
    :try_start_2
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1

    .line 321
    :cond_6
    const-string v15, "360Default1280x720.cfg"

    const-string v16, "360Default960x720.cfg"

    const-string v11, "TouchDefaultPhoneWidescreen.cfg"

    const-string v12, "TouchDefaultPhone3x2.cfg"

    const-string v13, "TouchDefaultTabletWidescreen.cfg"

    const-string v14, "TouchDefaultTablet4x3.cfg"

    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 322
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "data/"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 324
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_7

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Falha ao preservar o HUD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_9
    :goto_7
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_6
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    new-array v7, v9, [B

    :goto_8
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-eq v11, v8, :cond_a

    invoke-virtual {v6, v7, v10, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_8

    :cond_a
    :try_start_8
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_9
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v1

    .line 328
    :cond_b
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v5, v0

    if-eqz v5, :cond_15

    .line 329
    array-length v5, v0

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v5, :cond_e

    aget-object v7, v0, v6

    sget-object v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->ROOTS:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "old"

    goto :goto_c

    :cond_c
    const-string v7, "new"

    :goto_c
    invoke-virtual {v4, v8, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pasta inesperada."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_e
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "journal"

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_c
    const-string v6, "Angra data transaction"

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 332
    :try_start_d
    array-length v4, v0

    :goto_d
    if-ge v10, v4, :cond_10

    aget-object v5, v0, v10

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->move(Ljava/io/File;Ljava/io/File;)V

    :cond_f
    invoke-static {v5, v6}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->move(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_10
    move-object/from16 v0, p2

    .line 333
    invoke-interface {v0, v1}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Validator;->valid(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 336
    const-string v3, "cinfo.bin"

    const-string v4, ".angra-engine-cache"

    const-string v5, "ANGRA21032-CINFO.BIN"

    const-string v6, "ANGRA21064-CINFO.BIN"

    const-string v7, "models/ANGRA21032-MINFO.BIN"

    const-string v8, "models/ANGRA21064-MINFO.BIN"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 338
    invoke-static {v1, v3}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 339
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_e

    .line 340
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Nao foi possivel renovar o cache da cidade."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_13
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    const-string v4, "committed"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    const/4 v0, 0x1

    :try_start_e
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 344
    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->recover(Ljava/io/File;)V

    return-void

    :catchall_8
    move-exception v0

    move-object v2, v0

    .line 342
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto :goto_f

    :catchall_9
    move-exception v0

    move-object v3, v0

    :try_start_11
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v2

    .line 333
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v2, "A data instalada nao passou na verificacao."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    :catch_0
    move-exception v0

    .line 343
    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->recover(Ljava/io/File;)V

    throw v0

    :catchall_a
    move-exception v0

    move-object v1, v0

    .line 330
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    goto :goto_10

    :catchall_b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    throw v1

    .line 328
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pacote vazio."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static digest(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/high16 v1, 0x100000

    new-array v1, v1, [B

    .line 132
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq p0, v3, :cond_0

    invoke-virtual {v0, v1, v4, p0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-byte v3, v0, v2

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%02x"

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v4

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 132
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 134
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static discardPartial(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Falha ao remover download tempor\u00e1rio."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static download(Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p2

    .line 138
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->sha256:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->digest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v6, v1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->url:Ljava/lang/String;
    invoke-static {v6}, Lcom/xyron/game/launcher/util/MegaDownload;->isMegaLink(Ljava/lang/String;)Z
    move-result v7
    if-eqz v7, :normal_archive_download
    move-object v8, v1
    iget-object v1, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->url:Ljava/lang/String;
    iget-wide v2, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J
    iget-object v4, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->sha256:Ljava/lang/String;
    move-object/from16 v0, p0
    move-object/from16 v5, p1
    invoke-static/range {v0 .. v5}, Lcom/xyron/game/launcher/util/MegaDownload;->download(Ljava/io/File;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;)V
    return-void
    :normal_archive_download
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v3, "data-angra.zip.part"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".segments"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-wide v3, v1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    iget-object v0, v1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->resumeKey:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->prepareSequential(Ljava/io/File;JLjava/lang/String;)V

    .line 143
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    invoke-static {v2}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->discardPartial(Ljava/io/File;)V

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    .line 149
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    const-string v7, "Download interrompido; progresso preservado."

    if-nez v0, :cond_d

    .line 150
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 151
    iget-wide v10, v1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_7

    .line 152
    iget-wide v14, v1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->expandedBytes:J

    const-string v16, "Verificando integridade do ZIP..."

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    move-object/from16 v10, p1

    invoke-interface/range {v10 .. v16}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;->update(ZJJLjava/lang/String;)V

    .line 153
    iget-object v0, v1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->sha256:Ljava/lang/String;

    invoke-static {v2}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->digest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 154
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Falha ao substituir ZIP tempor\u00e1rio."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    move-object/from16 v10, p0

    .line 155
    invoke-static {v2, v10}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->move(Ljava/io/File;Ljava/io/File;)V

    return-void

    :cond_5
    move-object/from16 v10, p0

    .line 158
    invoke-static {v2}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->discardPartial(Ljava/io/File;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x2

    if-ge v4, v0, :cond_6

    goto :goto_0

    .line 159
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "O ZIP mudou ou est\u00e1 corrompido. A DATA atual foi preservada."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v10, p0

    move-object/from16 v15, p1

    .line 165
    :try_start_0
    invoke-static {v2, v15, v1, v8, v9}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->downloadRange(Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;J)V
    :try_end_0
    .catch Lcom/xyron/game/launcher/util/ArchiveDataInstaller$InvalidRange; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v13, v0

    .line 172
    nop

    instance-of v0, v13, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$PermanentDownloadFailure;

    if-nez v0, :cond_b

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_b

    .line 173
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v0, v11, v8

    if-lez v0, :cond_8

    const/4 v6, 0x0

    :cond_8
    add-int/lit8 v0, v6, 0x1

    const/4 v8, 0x5

    if-ge v0, v8, :cond_a

    .line 175
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    iget-wide v11, v1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    const-string v17, "Aguardando o servidor de arquivos para retomar..."

    const/4 v14, 0x0

    move-wide/from16 v18, v11

    move-object/from16 v11, p1

    move v12, v14

    move-object v3, v13

    move-wide v13, v8

    move-wide/from16 v15, v18

    invoke-interface/range {v11 .. v17}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;->update(ZJJLjava/lang/String;)V

    .line 176
    instance-of v8, v3, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$RateLimited;

    if-eqz v8, :cond_9

    check-cast v3, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$RateLimited;

    iget-wide v8, v3, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$RateLimited;->delay:J

    goto :goto_3

    :cond_9
    const-wide/16 v8, 0x3e8

    shl-long/2addr v8, v6

    .line 178
    :goto_3
    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 181
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_a
    move-object v3, v13

    .line 174
    throw v3

    :cond_b
    move-object v3, v13

    .line 172
    throw v3

    :catch_2
    move-exception v0

    move-object v3, v0

    if-nez v5, :cond_c

    const-wide/16 v11, 0x0

    cmp-long v0, v8, v11

    if-eqz v0, :cond_c

    .line 169
    invoke-static {v2}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->discardPartial(Ljava/io/File;)V

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 168
    :cond_c
    throw v3

    .line 149
    :cond_d
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static downloadRange(Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;J)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    const-string v3, "Falha no download (HTTP "

    const-string v4, "Pacote indispon\u00edvel no endere\u00e7o publicado (HTTP "

    .line 227
    iget-object v5, v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->url:Ljava/lang/String;

    invoke-static {v5}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->requestUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    const/16 v6, 0x7530

    .line 228
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 229
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 230
    const-string v6, "Accept-Encoding"

    const-string v7, "identity"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_0

    .line 231
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bytes="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Range"

    invoke-virtual {v5, v9, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 234
    const-string v9, "https"

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->url:Ljava/lang/String;

    const-string v10, "https:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    .line 235
    :cond_1
    new-instance v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$PermanentDownloadFailure;

    const-string v1, "O download foi redirecionado para uma conex\u00e3o insegura."

    invoke-direct {v0, v1}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$PermanentDownloadFailure;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/16 v9, 0x1ad

    if-eq v8, v9, :cond_12

    const/16 v9, 0x1f7

    if-eq v8, v9, :cond_12

    const/16 v9, 0x1a0

    if-eq v8, v9, :cond_11

    const/16 v9, 0x191

    if-eq v8, v9, :cond_10

    const/16 v9, 0x193

    if-eq v8, v9, :cond_10

    const/16 v9, 0x194

    if-eq v8, v9, :cond_10

    const/16 v9, 0x19a

    if-eq v8, v9, :cond_10

    const/16 v4, 0xce

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_4

    if-ne v8, v4, :cond_3

    goto :goto_1

    .line 240
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    const-wide/16 v10, 0x1

    if-ne v8, v4, :cond_5

    .line 243
    const-string v3, "Content-Range"

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-wide v12, v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    invoke-static {v3, v1, v2, v12, v13}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->rangeEnd(Ljava/lang/String;JJ)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    goto :goto_2

    .line 244
    :cond_5
    :try_start_1
    iget-wide v3, v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    sub-long/2addr v3, v10

    :goto_2
    if-ne v8, v9, :cond_6

    move-wide v1, v6

    .line 246
    :cond_6
    const-string v8, "Content-Length"

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v8, :cond_7

    .line 248
    :try_start_2
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v12, v3, v1

    add-long/2addr v12, v10

    cmp-long v14, v8, v12

    goto :goto_3

    .line 249
    new-instance v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$PermanentDownloadFailure;

    const-string v1, "O tamanho publicado \u00e9 diferente do pacote dispon\u00edvel."

    invoke-direct {v0, v1}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$PermanentDownloadFailure;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    :catch_0
    move-exception v0

    .line 251
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Tamanho HTTP inv\u00e1lido."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    :cond_7
    :goto_3
    const/high16 v8, 0x20000

    .line 256
    :try_start_4
    new-array v8, v8, [B

    .line 257
    iget-wide v14, v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    const-string v18, "data-angra.zip"

    const/4 v13, 0x0

    move-object/from16 v12, p1

    move-wide/from16 v16, v14

    move-wide v14, v1

    invoke-interface/range {v12 .. v18}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;->update(ZJJLjava/lang/String;)V

    .line 258
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 259
    :try_start_5
    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v13, 0x0

    cmp-long v14, v1, v6

    if-lez v14, :cond_8

    const/4 v14, 0x1

    goto :goto_4

    :cond_8
    const/4 v14, 0x0

    :goto_4
    move-object/from16 v15, p0

    invoke-direct {v12, v15, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 261
    :goto_5
    :try_start_6
    invoke-virtual {v9, v8}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_c

    .line 262
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v15, :cond_b

    move-object v15, v5

    move-wide/from16 p3, v6

    int-to-long v5, v14

    add-long v16, v3, v10

    sub-long v16, v16, v1

    cmp-long v7, v5, v16

    if-gtz v7, :cond_a

    .line 264
    :try_start_7
    invoke-virtual {v12, v8, v13, v14}, Ljava/io/FileOutputStream;->write([BII)V

    add-long/2addr v1, v5

    .line 266
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/32 v16, 0xf4240

    div-long v5, v5, v16

    move-wide/from16 v16, p3

    sub-long v18, v5, v16

    const-wide/16 v20, 0xc8

    cmp-long v7, v18, v20

    if-ltz v7, :cond_9

    .line 269
    iget-wide v13, v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    const-string v22, "data-angra.zip"

    const/16 v17, 0x0

    move-object/from16 v16, p1

    move-wide/from16 v18, v1

    move-wide/from16 v20, v13

    invoke-interface/range {v16 .. v22}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;->update(ZJJLjava/lang/String;)V

    move-wide v6, v5

    goto :goto_6

    :cond_9
    move-wide/from16 v6, v16

    :goto_6
    move-object v5, v15

    const/4 v13, 0x0

    goto :goto_5

    .line 263
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tamanho do pacote inv\u00e1lido."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object v15, v5

    .line 262
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Download interrompido; progresso preservado."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object v15, v5

    .line 272
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 273
    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v9, :cond_d

    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :cond_d
    add-long/2addr v3, v10

    cmp-long v0, v1, v3

    if-nez v0, :cond_e

    .line 276
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 274
    :cond_e
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "O download foi interrompido. Toque para retomar."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v15, v5

    :goto_7
    move-object v1, v0

    .line 258
    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_4
    move-exception v0

    move-object v15, v5

    :goto_9
    move-object v1, v0

    if-eqz v9, :cond_f

    :try_start_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_a
    throw v1

    :catchall_6
    move-exception v0

    move-object v15, v5

    goto :goto_b

    :cond_10
    move-object v15, v5

    .line 239
    new-instance v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$PermanentDownloadFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). O download parcial foi preservado."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$PermanentDownloadFailure;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object v15, v5

    .line 237
    new-instance v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$InvalidRange;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$InvalidRange;-><init>()V

    throw v0

    :cond_12
    move-object v15, v5

    .line 236
    new-instance v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$RateLimited;

    const-string v1, "Retry-After"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-object v5, v15

    :try_start_f
    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$RateLimited;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :catchall_7
    move-exception v0

    move-object v5, v15

    goto :goto_b

    :catchall_8
    move-exception v0

    .line 276
    :goto_b
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 277
    throw v0
.end method

.method public static expandedSize(Ljava/io/File;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-static {}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->archivePassword()[C

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;[C)V

    .line 404
    :try_start_0
    invoke-virtual {v0}, Lnet/lingala/zip4j/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/lingala/zip4j/model/FileHeader;

    add-int/lit8 v3, v3, 0x1

    const v7, 0xc350

    if-gt v3, v7, :cond_2

    .line 406
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-ltz v8, :cond_1

    const-wide v8, 0x400000000L

    sub-long/2addr v8, v4

    cmp-long v10, v6, v8

    if-gtz v10, :cond_1

    add-long/2addr v4, v6

    goto :goto_0

    .line 408
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v1, "ZIP expandido excede o limite seguro."

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 405
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v1, "ZIP com entradas demais."

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_3
    invoke-virtual {v0}, Lnet/lingala/zip4j/ZipFile;->close()V

    cmp-long p0, v4, v1

    if-lez p0, :cond_4

    return-wide v4

    .line 412
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ZIP vazio."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 403
    :try_start_1
    invoke-virtual {v0}, Lnet/lingala/zip4j/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static extract(Ljava/io/File;Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0xb80f7e5aL

    .line 281
    invoke-static {p0, p1, p2, v0, v1}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->extract(Ljava/io/File;Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;J)V

    return-void
.end method

.method private static extract(Ljava/io/File;Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->extract(Ljava/io/File;Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;JLjava/lang/String;)V

    return-void
.end method

.method private static extract(Ljava/io/File;Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;JLjava/lang/String;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Sem acesso para extrair a data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/high16 v1, 0x100000

    new-array v8, v1, [B

    .line 289
    new-instance v9, Lnet/lingala/zip4j/ZipFile;

    invoke-static {}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->archivePassword()[C

    move-result-object v1

    move-object/from16 v2, p0

    invoke-direct {v9, v2, v1}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;[C)V

    .line 291
    :try_start_0
    invoke-virtual {v9}, Lnet/lingala/zip4j/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lnet/lingala/zip4j/model/FileHeader;

    add-int/lit8 v15, v1, 0x1

    const v1, 0xc350

    if-gt v15, v1, :cond_12

    .line 293
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v7, p5

    invoke-static {v1, v7}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->relative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p1

    goto :goto_2

    :cond_2
    move-object/from16 v1, p1

    .line 294
    invoke-static {v1, v6}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 295
    invoke-static {v6}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->allowed(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    goto :goto_2

    .line 296
    :cond_3
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 297
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-string v13, "Falha ao criar pasta."

    if-eqz v12, :cond_6

    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    move v1, v15

    goto :goto_1

    .line 298
    :cond_6
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v18

    const-wide/16 v16, 0x0

    cmp-long v12, v18, v16

    if-ltz v12, :cond_10

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v18

    cmp-long v12, v18, p3

    if-gtz v12, :cond_10

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v18

    add-long v18, v2, v18

    cmp-long v12, v18, p3

    if-gtz v12, :cond_10

    .line 299
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    move-result v18

    if-nez v18, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_8
    :goto_3
    new-instance v12, Ljava/util/zip/CRC32;

    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    .line 301
    invoke-virtual {v9, v14}, Lnet/lingala/zip4j/ZipFile;->getInputStream(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/inputstream/ZipInputStream;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-wide/from16 v18, v2

    :try_start_2
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-wide/from16 v20, v16

    .line 302
    :goto_4
    :try_start_3
    invoke-virtual {v13, v8}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v11, -0x1

    if-eq v3, v11, :cond_b

    move-object v11, v0

    int-to-long v0, v3

    add-long v20, v20, v0

    add-long v18, v18, v0

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v0

    cmp-long v22, v20, v0

    if-gtz v22, :cond_a

    cmp-long v0, v18, p3

    if-gtz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {v12, v8, v0, v3}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v2, v8, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v4

    const-wide/16 v24, 0xc8

    cmp-long v1, v22, v24

    if-lez v1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v3, 0x1

    move-object/from16 v1, p2

    move-object/from16 v24, v2

    move v2, v3

    move-wide/from16 v3, v18

    move-object/from16 v25, v6

    move-wide/from16 v5, p3

    move-object/from16 v7, v25

    :try_start_4
    invoke-interface/range {v1 .. v7}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;->update(ZJJLjava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v7, p5

    move-object v0, v11

    move-wide/from16 v4, v22

    move-object/from16 v2, v24

    move-object/from16 v6, v25

    goto :goto_4

    :cond_9
    move-object/from16 v1, p1

    move-object/from16 v7, p5

    move-object v0, v11

    goto :goto_4

    :cond_a
    move-object/from16 v24, v2

    .line 302
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Conteudo do ZIP invalido."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_b
    move-object v11, v0

    move-object/from16 v24, v2

    const/4 v0, 0x0

    .line 304
    :try_start_5
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v13, :cond_c

    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 307
    :cond_c
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v1

    cmp-long v3, v20, v1

    if-nez v3, :cond_e

    .line 308
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-eq v1, v2, :cond_d

    invoke-virtual {v12}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/FileHeader;->getCrc()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-nez v3, :cond_e

    :cond_d
    move-object v0, v11

    move v1, v15

    move-wide/from16 v2, v18

    goto/16 :goto_1

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Arquivo corrompido no ZIP."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_1
    move-exception v0

    move-object/from16 v24, v2

    :goto_5
    move-object v1, v0

    .line 301
    :try_start_7
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    if-eqz v13, :cond_f

    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_7
    throw v1

    .line 298
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Limite de extracao excedido."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Arquivo duplicado no ZIP."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Muitos arquivos no ZIP."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 310
    :cond_13
    invoke-virtual {v9}, Lnet/lingala/zip4j/ZipFile;->close()V

    return-void

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 289
    :try_start_b
    invoke-virtual {v9}, Lnet/lingala/zip4j/ZipFile;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v1
.end method

.method public static hasPendingCommit(Ljava/io/File;)Z
    .locals 2

    .line 53
    new-instance v0, Ljava/io/File;

    const-string v1, ".angra-download-work"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    new-instance p0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/io/File;

    const-string v1, "committed"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 60
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Caminho invalido no pacote."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static install(Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Validator;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 348
    invoke-static {p0, p1, p2, p3, v0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->install(Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Validator;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;Ljava/io/File;)V

    return-void
.end method

.method public static install(Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Validator;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;Ljava/io/File;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string/jumbo v4, "|8388608"

    const-string v5, "ANGRA-RANGE-1|"

    if-eqz v0, :cond_10

    .line 352
    iget-object v6, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->parts:[Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    array-length v6, v6

    if-lez v6, :cond_0

    invoke-static/range {p0 .. p4}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->installSplit(Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Validator;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;Ljava/io/File;)V

    return-void

    .line 353
    :cond_0
    invoke-static {v0, v2}, Lcom/xyron/game/launcher/util/DataInstallState;->begin(Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;)V

    .line 354
    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->recover(Ljava/io/File;)V

    const-string v6, ".angra-download-work"

    invoke-static {v0, v6}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Sem acesso a pasta de arquivos."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_2
    :goto_0
    new-instance v7, Ljava/io/File;

    const-string v8, "data-angra.zip"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    const-string v8, "stage"

    invoke-direct {v13, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v0, v13}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->remove(Ljava/io/File;Ljava/io/File;)V

    .line 357
    :cond_3
    new-instance v8, Ljava/io/File;

    const-string v9, "data-angra.zip.part"

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".segments"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    new-instance v10, Ljava/io/File;

    const-string v11, "download-source"

    invoke-direct {v10, v6, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->resumeKey:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 361
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v14, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 362
    :try_start_0
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 361
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    :cond_4
    const/4 v15, 0x0

    .line 365
    :goto_2
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 366
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 367
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->resumeKey:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    xor-int/lit8 v0, v0, 0x1

    .line 368
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    if-eqz v0, :cond_6

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 366
    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    .line 369
    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v15, :cond_6

    const-string v0, "d458385468a9de95d4336d45b69c56c059f33041"

    iget-object v1, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->resumeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 372
    :goto_4
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, v8, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    :try_start_4
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 373
    invoke-static {v8}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->discardJournal(Ljava/io/File;)V

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 372
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2

    .line 377
    :cond_6
    :goto_6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 378
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 379
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 380
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v4, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    cmp-long v9, v0, v4

    if-nez v9, :cond_7

    iget-object v0, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->sha256:Ljava/lang/String;

    invoke-static {v7}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->digest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    goto :goto_7

    .line 381
    :cond_7
    iget-wide v0, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    iget-object v4, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->resumeKey:Ljava/lang/String;

    invoke-static {v8, v0, v1, v4}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->cachedBytes(Ljava/io/File;JLjava/lang/String;)J

    move-result-wide v0

    .line 382
    :goto_7
    iget-wide v4, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v4, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->expandedBytes:J

    add-long/2addr v0, v4

    const-wide/32 v4, 0x8000000

    add-long v8, v0, v4

    .line 383
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10

    cmp-long v12, v10, v8

    if-ltz v12, :cond_f

    move-object/from16 v14, p1

    .line 384
    invoke-static {v7, v14, v2}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->download(Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;)V

    .line 385
    invoke-static {v7}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->expandedSize(Ljava/io/File;)J

    move-result-wide v10

    .line 386
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    add-long/2addr v4, v10

    cmp-long v8, v0, v4

    if-ltz v8, :cond_e

    .line 388
    iget-object v12, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->prefix:Ljava/lang/String;

    move-object v8, v13

    move-object/from16 v9, p1

    invoke-static/range {v7 .. v12}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->extract(Ljava/io/File;Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;JLjava/lang/String;)V

    move-object/from16 v0, p2

    .line 389
    invoke-interface {v0, v13}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Validator;->valid(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 392
    iget-wide v4, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->expandedBytes:J

    iget-wide v7, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->expandedBytes:J

    const-string v20, "Aplicando arquivos verificados..."

    const/4 v15, 0x1

    move-object/from16 v14, p1

    move-wide/from16 v16, v4

    move-wide/from16 v18, v7

    invoke-interface/range {v14 .. v20}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;->update(ZJJLjava/lang/String;)V

    if-nez v3, :cond_8

    const/4 v1, 0x0

    goto :goto_8

    .line 393
    :cond_8
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".next"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_8
    if-eqz v1, :cond_9

    .line 394
    iget-object v4, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->sha256:Ljava/lang/String;

    invoke-static {v13, v4, v1}, Lcom/xyron/game/launcher/util/DataIntegrity;->create(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    :cond_9
    move-object/from16 v4, p0

    .line 395
    invoke-static {v4, v13, v0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->commit(Ljava/io/File;Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Validator;)V

    if-eqz v1, :cond_b

    .line 396
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_9

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "N\u00e3o foi poss\u00edvel salvar a verifica\u00e7\u00e3o dos arquivos. Repare a instala\u00e7\u00e3o antes de jogar."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_b
    :goto_9
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v4, v6}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->remove(Ljava/io/File;Ljava/io/File;)V

    .line 398
    :cond_c
    iget-object v0, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->sha256:Ljava/lang/String;

    iget-wide v5, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    iget-object v1, v2, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->version:Ljava/lang/String;

    invoke-static {v4, v0, v5, v6, v1}, Lcom/xyron/game/launcher/util/DataInstallState;->complete(Ljava/io/File;Ljava/lang/String;JLjava/lang/String;)V

    return-void

    .line 389
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ZIP incompleto ou incompativel. A data atual foi preservada."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Espaco insuficiente para extrair a data. O ZIP foi guardado para retomar."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Espaco insuficiente. Libere aproximadamente "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/32 v4, 0x47ffffff

    add-long/2addr v0, v4

    const-wide/32 v4, 0x40000000

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " GB."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 377
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v2

    .line 351
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pasta de arquivos indisponivel."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static installSplit(Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Validator;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;Ljava/io/File;)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 417
    invoke-static {v0, v8}, Lcom/xyron/game/launcher/util/DataInstallState;->begin(Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;)V

    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->recover(Ljava/io/File;)V

    .line 418
    const-string v2, ".angra-download-work"

    invoke-static {v0, v2}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parts-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->sha256:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    const-string v2, "stage"

    invoke-static {v10, v2}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 419
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Sem acesso para baixar a DATA."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_1
    :goto_0
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v12}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->remove(Ljava/io/File;Ljava/io/File;)V

    .line 421
    :cond_2
    iget-object v2, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->parts:[Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    array-length v2, v2

    new-array v13, v2, [Z

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 422
    :goto_1
    iget-object v14, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->parts:[Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    array-length v14, v14

    const-string v15, "Nome de parte inv\u00e1lido."

    move-object/from16 v16, v10

    const-string v10, "data-angra-v[0-9.]+\\.(?:zip|z[0-9]{2})"

    const/16 v0, 0x2f

    const/16 v17, 0x1

    if-ge v5, v14, :cond_7

    .line 423
    iget-object v14, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->parts:[Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    aget-object v14, v14, v5

    new-instance v2, Ljava/net/URL;

    iget-object v3, v14, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 425
    invoke-static {v11, v0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    move/from16 v21, v5

    iget-wide v4, v14, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    cmp-long v10, v2, v4

    if-nez v10, :cond_4

    invoke-static {v0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->digest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v14, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->sha256:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_3
    move/from16 v21, v5

    :cond_4
    const/16 v17, 0x0

    :goto_2
    aput-boolean v17, v13, v21

    if-eqz v17, :cond_5

    .line 427
    iget-wide v2, v14, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    add-long/2addr v6, v2

    :cond_5
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v10, v16

    goto :goto_1

    .line 424
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    iget-wide v4, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    sub-long/2addr v4, v6

    iget-wide v6, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->expandedBytes:J

    add-long/2addr v4, v6

    const-wide/32 v6, 0x8000000

    add-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1c

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-wide/16 v18, 0x0

    .line 432
    :goto_3
    iget-object v2, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->parts:[Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    array-length v2, v2

    if-ge v4, v2, :cond_f

    .line 433
    iget-object v2, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->parts:[Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    aget-object v6, v2, v4

    new-instance v2, Ljava/net/URL;

    iget-object v3, v6, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 434
    invoke-virtual {v5, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Falha ao preparar download."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_9
    :goto_4
    invoke-static {v2, v5}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v11, v5}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    add-int/lit8 v27, v4, 0x1

    .line 438
    aget-boolean v4, v13, v4

    if-nez v4, :cond_c

    .line 439
    new-instance v4, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$$ExternalSyntheticLambda0;

    move-object/from16 v28, v2

    move-object v2, v4

    move-object v0, v3

    move-object/from16 v3, p1

    move-object v14, v4

    move-object/from16 v29, v5

    move-wide/from16 v4, v18

    move-object/from16 v30, v10

    move-object v10, v6

    move-object/from16 v6, p3

    move-object/from16 v31, v11

    move-object v11, v7

    move/from16 v7, v27

    invoke-direct/range {v2 .. v7}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;JLcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;I)V

    invoke-static {v0, v14, v10}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->download(Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;)V

    .line 440
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "N\u00e3o foi poss\u00edvel renovar uma parte da DATA."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_5
    move-object/from16 v2, v28

    .line 441
    invoke-static {v0, v2}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->move(Ljava/io/File;Ljava/io/File;)V

    goto :goto_6

    :cond_c
    move-object/from16 v29, v5

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-object v10, v6

    move-object v11, v7

    .line 443
    :goto_6
    iget-wide v3, v10, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    add-long v18, v18, v3

    const/16 v21, 0x0

    iget-wide v3, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    move-object/from16 v20, p1

    move-wide/from16 v22, v18

    move-wide/from16 v24, v3

    move-object/from16 v26, v29

    invoke-interface/range {v20 .. v26}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;->update(ZJJLjava/lang/String;)V

    .line 444
    const-string v0, ".zip"

    move-object/from16 v3, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v7, v2

    goto :goto_7

    :cond_d
    move-object v7, v11

    :goto_7
    move/from16 v4, v27

    move-object/from16 v10, v30

    move-object/from16 v11, v31

    const/16 v0, 0x2f

    goto/16 :goto_3

    .line 434
    :cond_e
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object v11, v7

    if-eqz v11, :cond_1b

    .line 447
    new-instance v2, Lnet/lingala/zip4j/ZipFile;

    invoke-static {}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->archivePassword()[C

    move-result-object v0

    invoke-direct {v2, v11, v0}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;[C)V

    .line 448
    :try_start_0
    invoke-virtual {v2}, Lnet/lingala/zip4j/ZipFile;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2}, Lnet/lingala/zip4j/ZipFile;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 449
    invoke-virtual {v2}, Lnet/lingala/zip4j/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_10

    .line 450
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v3

    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v3, v4, :cond_11

    goto :goto_8

    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parte da DATA sem prote\u00e7\u00e3o AES."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :cond_12
    invoke-virtual {v2}, Lnet/lingala/zip4j/ZipFile;->close()V

    .line 452
    invoke-static {v11}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->expandedSize(Ljava/io/File;)J

    move-result-wide v2

    .line 453
    iget-wide v4, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->expandedBytes:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_19

    move-object/from16 v0, p1

    .line 454
    invoke-static {v11, v12, v0, v2, v3}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->extract(Ljava/io/File;Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;J)V

    .line 455
    invoke-interface {v1, v12}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Validator;->valid(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez v9, :cond_13

    const/4 v14, 0x0

    goto :goto_9

    .line 456
    :cond_13
    new-instance v14, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".next"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_9
    if-eqz v14, :cond_14

    .line 457
    iget-object v0, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->sha256:Ljava/lang/String;

    invoke-static {v12, v0, v14}, Lcom/xyron/game/launcher/util/DataIntegrity;->create(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    :cond_14
    move-object/from16 v0, p0

    .line 458
    invoke-static {v0, v12, v1}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->commit(Ljava/io/File;Ljava/io/File;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Validator;)V

    if-eqz v14, :cond_16

    .line 459
    invoke-virtual {v14, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_a

    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Falha ao salvar a verifica\u00e7\u00e3o. Repare a instala\u00e7\u00e3o."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_16
    :goto_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->remove(Ljava/io/File;Ljava/io/File;)V

    .line 461
    :cond_17
    iget-object v1, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->sha256:Ljava/lang/String;

    iget-wide v2, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    iget-object v4, v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->version:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xyron/game/launcher/util/DataInstallState;->complete(Ljava/io/File;Ljava/lang/String;JLjava/lang/String;)V

    return-void

    .line 455
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DATA incompleta. A instala\u00e7\u00e3o anterior foi preservada."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tamanho extra\u00eddo n\u00e3o corresponde ao manifesto."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_1a
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A DATA deve estar dividida e protegida por senha."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 447
    :try_start_2
    invoke-virtual {v2}, Lnet/lingala/zip4j/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v1

    .line 446
    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parte final ZIP ausente."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Espa\u00e7o insuficiente para baixar e extrair todas as partes da DATA."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$installSplit$0(Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;JLcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;IZJJLjava/lang/String;)V
    .locals 0

    add-long p5, p1, p6

    .line 439
    iget-wide p7, p3, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Parte "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    const/4 p1, 0x0

    move-wide p2, p5

    move-wide p4, p7

    move-object p6, p9

    invoke-interface/range {p0 .. p6}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;->update(ZJJLjava/lang/String;)V

    return-void
.end method

.method private static move(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Nao foi possivel instalar os arquivos da cidade."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static rangeEnd(Ljava/lang/String;JJ)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->CONTENT_RANGE:Ljava/util/regex/Pattern;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 214
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Resposta inv\u00e1lida ao retomar download."

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 216
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v0, 0x2

    .line 217
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v0, 0x3

    .line 218
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v2, p1

    if-nez p0, :cond_1

    cmp-long p0, v4, v2

    if-ltz p0, :cond_1

    cmp-long p0, v4, v0

    if-gez p0, :cond_1

    cmp-long p0, v0, p3

    if-nez p0, :cond_1

    return-wide v4

    .line 223
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Resposta incompat\u00edvel com o pacote previsto ao retomar download."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 221
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 214
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static recover(Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const-string v0, ".angra-download-work"

    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "stage"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "backup"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    const-string v5, "committed"

    if-eqz v4, :cond_4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_4

    .line 112
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 113
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v4, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 114
    invoke-virtual {v4}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 115
    sget-object v8, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->ROOTS:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 116
    invoke-static {v3, v7}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-static {p0, v7}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 117
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p0, v9}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->remove(Ljava/io/File;Ljava/io/File;)V

    :cond_1
    invoke-static {v8, v9}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->move(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string v8, "new"

    invoke-virtual {v4, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v2, v7}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p0, v9}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->remove(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 115
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Plano de recuperacao invalido."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 113
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    .line 121
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 122
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p0, v2}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->remove(Ljava/io/File;Ljava/io/File;)V

    .line 123
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0, v3}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->remove(Ljava/io/File;Ljava/io/File;)V

    .line 124
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 125
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 124
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Nao foi possivel concluir recuperacao."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    return-void
.end method

.method public static relative(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_4

    const/16 v0, 0x5c

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_4

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4

    .line 67
    const-string v1, "files/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, ""

    return-object p0

    .line 68
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 69
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Caminho inseguro no ZIP."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object p0

    .line 66
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Caminho invalido no ZIP."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static relative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xyron/game/launcher/util/MapProfile;->named(Ljava/lang/String;)Lcom/xyron/game/launcher/util/MapProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    if-eqz p0, :cond_3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 80
    const-string p1, "files/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 81
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->relative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 80
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "O pacote do mapa n\u00e3o deve conter a pasta files"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "O ZIP cont\u00e9m arquivos de outro mapa"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 76
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Mapa inv\u00e1lido"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 75
    :cond_4
    :goto_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->relative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static remove(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-static {p0, v3}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->remove(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Nao foi possivel limpar arquivos temporarios."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Nao foi possivel remover arquivo temporario."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Recusando limpeza fora da pasta de arquivos."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
