.class public final Lcom/xyron/game/launcher/util/OfficialServers;
.super Ljava/lang/Object;
.source "OfficialServers.java"


# static fields
.field static volatile latestJson:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isPlaceholderAddress(Ljava/lang/String;)Z
    .locals 1

    .line 53
    const-string v0, "0.0.0.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "192.0.2."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "198.51.100."

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "203.0.113."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/OfficialServers;->parse(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static parse(Ljava/lang/String;Z)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    const-string v0, "angra-classico"

    const-string v1, "nome"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v3, "formato"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 23
    const-string v3, "paises"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v5, 0x64

    if-gt v3, v5, :cond_c

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 27
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 28
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 29
    const-string v11, "codigo"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 30
    const-string v12, "[A-Z]{2}"

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x3c

    if-gt v12, v13, :cond_9

    .line 31
    const-string v12, "servidores"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v15, 0x0

    .line 32
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v15, v12, :cond_8

    .line 33
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 34
    const-string v13, "id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v5, "host"

    const-string v4, ""

    invoke-virtual {v12, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    const-string v5, "online"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v24, v1

    .line 36
    const-string v1, "porta"

    invoke-virtual {v12, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 37
    const-string v8, "data"

    invoke-virtual {v12, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move v8, v15

    const/16 v1, 0x64

    goto/16 :goto_5

    :cond_0
    if-nez v5, :cond_1

    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v1, :cond_1

    move-object/from16 v25, v0

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v25, v0

    const/4 v8, 0x0

    .line 39
    :goto_2
    const-string v0, "[A-Za-z0-9_-]{1,40}"

    invoke-virtual {v13, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    move-object/from16 v26, v2

    const/16 v2, 0x50

    if-gt v0, v2, :cond_7

    if-nez v8, :cond_2

    .line 40
    invoke-static {v4}, Lcom/xyron/game/launcher/util/OfficialServers;->validHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    if-lt v1, v0, :cond_7

    const v2, 0xffff

    if-gt v1, v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 41
    :cond_2
    const-string v0, "mensagem"

    const-string v2, "O servidor encontra-se indispon\u00edvel no momento. Pode estar em manuten\u00e7\u00e3o. Consulte o Discord para mais informa\u00e7\u00f5es."

    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 42
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1f4

    if-gt v0, v2, :cond_6

    if-nez v5, :cond_4

    if-eqz p1, :cond_3

    if-nez v8, :cond_3

    .line 43
    invoke-static {v4}, Lcom/xyron/game/launcher/util/OfficialServers;->isPlaceholderAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/16 v20, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/16 v20, 0x1

    .line 44
    :goto_4
    new-instance v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    const-string v17, "angra-classico"

    const-string v22, "retro"

    move-object v12, v0

    move v8, v15

    move-object v15, v4

    move/from16 v16, v1

    move-object/from16 v18, v11

    move-object/from16 v19, v23

    invoke-direct/range {v12 .. v22}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_5

    :goto_5
    add-int/lit8 v15, v8, 0x1

    move-object/from16 v1, v24

    move-object/from16 v0, v25

    move-object/from16 v2, v26

    const/4 v4, 0x1

    const/16 v5, 0x64

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cat\u00e1logo de servidores muito grande."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mensagem do servidor muito grande."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Servidor inv\u00e1lido ou duplicado."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v25, v0

    move-object/from16 v24, v1

    move-object/from16 v26, v2

    const/16 v1, 0x64

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v24

    const/4 v4, 0x1

    const/16 v5, 0x64

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 30
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pa\u00eds inv\u00e1lido."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    return-object v3

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cat\u00e1logo sem servidores."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cat\u00e1logo de pa\u00edses muito grande."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Formato do cat\u00e1logo de servidores inv\u00e1lido."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 50
    :goto_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cat\u00e1logo de servidores inv\u00e1lido."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static validHost(Ljava/lang/String;)Z
    .locals 8

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfd

    const/4 v2, 0x0

    if-gt v0, v1, :cond_7

    const-string v0, "[A-Za-z0-9](?:[A-Za-z0-9.-]*[A-Za-z0-9])?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, -0x1

    .line 59
    const-string v1, "\\."

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x3f

    if-gt v6, v7, :cond_2

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    .line 60
    :cond_3
    const-string v0, "[0-9.]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    return v2

    .line 62
    :cond_4
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    aget-object v3, p0, v1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xff

    if-le v3, v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    return v2

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_3
    return v2
.end method
