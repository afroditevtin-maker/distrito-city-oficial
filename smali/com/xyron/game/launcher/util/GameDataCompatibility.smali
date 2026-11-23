.class public final Lcom/xyron/game/launcher/util/GameDataCompatibility;
.super Ljava/lang/Object;
.source "GameDataCompatibility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static childIgnoringCase(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 52
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 53
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static prepareForLaunch(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 13
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameDataCompatibility;->unsupportedReason(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ResourceCacheProfile;->prepare(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static unsupportedReason(Ljava/io/File;)Ljava/lang/String;
    .locals 11

    if-nez p0, :cond_0

    .line 18
    const-string p0, "ARMAZENAMENTO DO JOGO INDISPONIVEL"

    return-object p0

    .line 19
    :cond_0
    const-string v0, "texdb"

    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/GameDataCompatibility;->childIgnoringCase(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    .line 21
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    .line 22
    const-string p0, "NAO FOI POSSIVEL LER A DATA DO JOGO"

    return-object p0

    .line 23
    :cond_2
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v5, v1, v4

    .line 24
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".img"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_4

    .line 25
    :cond_3
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x4

    .line 26
    :try_start_1
    new-array v8, v7, [B

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_5

    rsub-int/lit8 v10, v9, 0x4

    .line 29
    invoke-virtual {v6, v8, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    if-gez v10, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr v9, v10

    goto :goto_1

    :cond_5
    :goto_2
    if-ne v9, v7, :cond_6

    .line 33
    const-string v7, "RSEC"

    new-instance v9, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v9, v8, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DATA RIO RSEC AINDA INCOMPATIVEL: texdb/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". O decoder dos IMG precisa ser integrado; copiar a pasta nao e suficiente."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :cond_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 25
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 38
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "NAO FOI POSSIVEL LER texdb/"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 41
    :cond_8
    const-string v1, "gta3"

    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/GameDataCompatibility;->childIgnoringCase(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 42
    const-string v1, "gta3.astc.dat"

    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/GameDataCompatibility;->childIgnoringCase(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v1, "gta3.etc.dat"

    .line 43
    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/GameDataCompatibility;->childIgnoringCase(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "gta3.pvr.dat"

    .line 44
    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/GameDataCompatibility;->childIgnoringCase(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "gta3.dxt.dat"

    .line 45
    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/GameDataCompatibility;->childIgnoringCase(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_9

    .line 46
    const-string p0, "DATA RIO ASTC AINDA INCOMPATIVEL: o loader de texturas precisa ser adaptado."

    return-object p0

    :cond_9
    return-object v0
.end method
