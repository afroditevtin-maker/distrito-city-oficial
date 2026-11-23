.class public final Lcom/xyron/game/launcher/util/AngraDataManifest;
.super Ljava/lang/Object;
.source "AngraDataManifest.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetch(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/RemoteConfiguration;->fetchProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Manifest request failed attempt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AngraManifest"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const-wide/16 v1, 0x2ee

    int-to-long v4, v3

    mul-long v4, v4, v1

    .line 40
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Consulta interrompida; arquivos preservados."

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_1
    move v1, v3

    goto :goto_0

    .line 39
    :cond_1
    throw v0

    .line 43
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v1, "N\u00e3o foi poss\u00edvel consultar a atualiza\u00e7\u00e3o ap\u00f3s tr\u00eas tentativas. Verifique sua conex\u00e3o; os arquivos existentes foram preservados."

    invoke-direct {p0, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const-string v0, "versao"

    const-string v1, "tamanho_extraido"

    .line 0
    const-string v2, "/"

    .line 47
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[1-9][0-9]*(?:\\.[0-9]+)*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 50
    const-string v4, "arquivos"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    invoke-static {v3, v4}, Lcom/xyron/game/launcher/util/AngraDataManifest;->split(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ne v5, v6, :cond_9

    const/4 v5, 0x0

    .line 53
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 54
    const-string v7, "nome"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 55
    const-string v8, "(?:data-angra(?:-v[0-9]+(?:\\.[0-9]+)*)?|angra-classico-v2\\.27-distrito-city)\\.zip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string/jumbo v8, "zip"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 57
    const-string v8, "url"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v8, "sha256"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    .line 58
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/xyron/game/launcher/util/MegaDownload;->isMegaLink(Ljava/lang/String;)Z
    move-result v16
    if-nez v16, :mega_manifest_url_ok

    .line 59
    const-string v9, "https"

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "github.com"

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 60
    invoke-virtual {v8}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    invoke-virtual {v8}, Ljava/net/URL;->getPort()I

    move-result v9

    const/4 v11, -0x1

    if-ne v9, v11, :cond_7

    invoke-virtual {v8}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    invoke-virtual {v8}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    .line 61
    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v11, "/afroditevtin-maker/distrito-city-oficial/releases/download/v2\\.27\\.1-distrito-city/(?:data-angra(?:-v[0-9]+(?:\\.[0-9]+)*)?|angra-novo|angra-classico|angra-classico-v2\\.27-distrito-city)\\.zip"

    invoke-virtual {v9, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    :mega_manifest_url_ok
    .line 62
    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 64
    const-string v2, "tamanho"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v7, 0x0

    cmp-long v2, v11, v7

    if-lez v2, :cond_6

    const-wide v13, 0x80000000L

    cmp-long v2, v11, v13

    if-gez v2, :cond_6

    .line 65
    const-string v2, "[0-9a-f]{64}"

    invoke-virtual {v15, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide/32 v13, 0x471dca39

    cmp-long v2, v11, v13

    if-nez v2, :cond_1

    .line 67
    const-string v2, "86f3038cf80d4db2bd4a6053e266060f8dda3647f6956243472f3b7547a61083"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 68
    :goto_0
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    const-wide v5, 0xb80f7e5aL

    :goto_1
    move-wide v13, v5

    goto :goto_2

    :cond_3
    move-wide v13, v7

    :goto_2
    cmp-long v2, v13, v7

    if-ltz v2, :cond_5

    const-wide v5, 0x400000000L

    cmp-long v7, v13, v5

    if-gtz v7, :cond_5

    .line 70
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v2, :cond_5

    .line 72
    :cond_4
    new-instance v1, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 71
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "tamanho_extraido invalido."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tamanho ou SHA-256 invalido no manifesto."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Use um link HTTPS de Release do repositorio Angra."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pacote de data invalido."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Manifesto sem arquivos da DATA."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Versao de data invalida."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 74
    :goto_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "JSON de atualizacao invalido."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "/afroditevtin-maker/distrito-city-oficial/releases/download/[A-Za-z0-9._-]+/"

    .line 13
    :try_start_0
    const-string v1, "angra-classico"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    const-string p0, "formato"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq p0, v2, :cond_1

    if-ne p0, v3, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Formato do manifesto da DATA inv\u00e1lido."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-ne p0, v3, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    const-string p0, "datas"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 18
    :goto_1
    const-string p0, "versao"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 19
    const-string p0, "[1-9][0-9]*(?:\\.[0-9]+)*"

    invoke-virtual {v9, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 20
    const-string p0, "arquivos"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "nome"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "zip"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "AES-256"

    const-string v4, "criptografia"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    new-instance v1, Ljava/net/URL;

    const-string v3, "url"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/xyron/game/launcher/util/MegaDownload;->isMegaLink(Ljava/lang/String;)Z
    move-result v10
    if-nez v10, :mega_provider_url_ok

    .line 25
    const-string v3, "https"

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "github.com"

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    invoke-virtual {v1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 26
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :check_exact_release_asset

    goto :github_release_asset_ok

    :check_exact_release_asset
    const-string v0, "/afroditevtin-maker/distrito-city-oficial/releases/download/v2\\.27\\.1-distrito-city/angra-classico-v2\\.27-distrito-city\\.zip"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :github_release_asset_ok

    :mega_provider_url_ok
    .line 27
    const-string v0, "tamanho"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "tamanho_extraido"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "sha256"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v2, 0x0

    cmp-long p0, v4, v2

    if-lez p0, :cond_3

    const-wide v10, 0x80000000L

    cmp-long p0, v4, v10

    if-gez p0, :cond_3

    cmp-long p0, v6, v2

    if-lez p0, :cond_3

    const-wide v2, 0x400000000L

    cmp-long p0, v6, v2

    if-gtz p0, :cond_3

    .line 28
    const-string p0, "[0-9a-f]{64}"

    invoke-virtual {v8, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 29
    new-instance p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->withPrefix(Ljava/lang/String;)Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    move-result-object p0

    return-object p0

    .line 28
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Tamanho ou hash do mapa inv\u00e1lido"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Pacote fora do reposit\u00f3rio oficial"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Pacote do mapa inv\u00e1lido"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cada mapa precisa de seu pacote independente"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Vers\u00e3o do mapa inv\u00e1lida"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "O mapa dispon\u00edvel \u00e9 o Cl\u00e1ssico."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 30
    :goto_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Manifesto dos mapas inv\u00e1lido"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static split(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 79
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_8

    const-string v1, "criptografia"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AES-256"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 80
    const-string v1, "versao"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data-angra-v"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 81
    const-string v2, "tamanho_extraido"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_7

    const-wide v15, 0x400000000L

    cmp-long v0, v11, v15

    if-gtz v0, :cond_7

    .line 83
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v9, v0, [Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    move-wide v4, v13

    const/4 v6, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v6, v0, :cond_5

    move-object/from16 v7, p1

    .line 85
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 86
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v0, -0x1

    if-ne v6, v13, :cond_0

    const-string v2, ".zip"

    goto :goto_1

    :cond_0
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    add-int/lit8 v14, v6, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v14, v2, v17

    const-string v14, ".z%02d"

    invoke-static {v13, v14, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    const-string v13, "nome"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 88
    new-instance v13, Ljava/net/URL;

    const-string v14, "url"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v14, "https"

    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "github.com"

    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v13}, Ljava/net/URL;->getPort()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

    invoke-virtual {v13}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    invoke-virtual {v13}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    invoke-virtual {v13}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    .line 90
    invoke-virtual {v13}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    move/from16 v16, v6

    const-string v6, "/afroditevtin-maker/distrito-city-oficial/releases/download/[A-Za-z0-9._-]+/"

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 91
    const-string v6, "tamanho"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v6, "sha256"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v20, 0x0

    cmp-long v3, v14, v20

    if-lez v3, :cond_2

    const-wide v22, 0x80000000L

    cmp-long v3, v14, v22

    if-gez v3, :cond_2

    .line 92
    const-string v3, "[0-9a-f]{64}"

    invoke-virtual {v6, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-long v22, v4, v14

    const-wide v18, 0x400000000L

    cmp-long v3, v22, v18

    if-gtz v3, :cond_1

    .line 94
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7c

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    new-instance v24, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v25, 0x0

    move-object/from16 v2, v24

    move-wide v4, v14

    move-object v14, v6

    move/from16 v13, v16

    move-wide/from16 v6, v25

    move-object v15, v8

    move-object v8, v14

    move-object v14, v9

    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    aput-object v24, v14, v13

    add-int/lit8 v6, v13, 0x1

    move-object v9, v14

    move-object v8, v15

    move-wide/from16 v15, v18

    move-wide/from16 v13, v20

    move-wide/from16 v4, v22

    goto/16 :goto_0

    .line 93
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DATA excede o limite seguro."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tamanho ou hash de parte inv\u00e1lido."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parte fora do Release oficial."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Ordem ou nome de parte inv\u00e1lido."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v15, v8

    move-object v14, v9

    .line 98
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v3

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_6

    aget-byte v9, v3, v8

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v13, "%02x"

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v15, v2, [Ljava/lang/Object;

    aput-object v9, v15, v17

    invoke-static {v10, v13, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 100
    :cond_6
    new-instance v13, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    sub-int/2addr v0, v2

    aget-object v0, v14, v0

    iget-object v3, v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->url:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v13

    move-wide v6, v11

    move-object v9, v1

    move-object v10, v14

    invoke-direct/range {v2 .. v10}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;[Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v13

    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 82
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tamanho extra\u00eddo inv\u00e1lido."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Divis\u00e3o ou criptografia da DATA inv\u00e1lida."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
