.class public final Lcom/xyron/game/launcher/util/UpdateSourceResolver;
.super Ljava/lang/Object;
.source "UpdateSourceResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;,
        Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;
    }
.end annotation


# static fields
.field private static final CONFIG_ASSET_PATH:Ljava/lang/String; = "update_sources.json"

.field private static final DEFAULT_CLIENT_CONFIG_URL:Ljava/lang/String; = "https://rp.goldcityrolrplay.space/dowloandoficial/client_config.json"

.field private static final DEFAULT_DATA_VARIANT_ID:Ljava/lang/String; = "lite"

.field private static final DEFAULT_FILES_BASE_URL:Ljava/lang/String; = "https://rp.goldcityrolrplay.space/dowloandoficial/files"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAll(Ljava/util/Set;Lorg/json/JSONArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 160
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static buildHuggingFaceResolveBaseUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://huggingface.co/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->resolveRepoTypePathSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {p0}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->trimSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/resolve/"

    .line 197
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {p2}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->trimSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildHuggingFaceTreeApiUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://huggingface.co/api/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-static {p1}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->resolveRepoTypePathSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {p0}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->trimSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/tree/"

    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {p2}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->trimSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {p3}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->trimSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 215
    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_0
    const-string p0, "?recursive=true&expand=true&limit=100"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildHuggingFaceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->buildHuggingFaceResolveBaseUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-static {p3}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->trimLeadingSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 181
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findDataVariantConfig(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 124
    const-string v0, "data_variants"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 129
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 130
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 131
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->normalizeVariantId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static hasValues(Lorg/json/JSONArray;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 168
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidRepoId(Ljava/lang/String;)Z
    .locals 1

    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SEU_USUARIO"

    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SEU_REPO"

    .line 234
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "<"

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ">"

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static loadJsonAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 140
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :try_start_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v0, 0x1000

    .line 142
    :try_start_2
    new-array v0, v0, [B

    .line 144
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 147
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    return-object v1

    :catchall_0
    move-exception v0

    .line 140
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_2

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static normalizeVariantId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 244
    invoke-static {p0}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "lite"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static parseSourceConfig(Lorg/json/JSONObject;)Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;
    .locals 9

    .line 77
    new-instance v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;-><init>(Lcom/xyron/game/launcher/util/UpdateSourceResolver$1;)V

    if-nez p0, :cond_0

    return-object v0

    .line 82
    :cond_0
    const-string v1, "huggingface"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 84
    const-string v3, "repo_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {v3}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->isValidRepoId(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 86
    const-string v4, "repo_type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    const-string v5, "revision"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    const-string v6, "client_config_path"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    const-string v7, "files_path_prefix"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 90
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_1
    const-string v1, "files"

    .line 93
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 94
    const-string v5, "main"

    .line 96
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 97
    const-string v6, "client_config.json"

    .line 100
    :cond_3
    iput-boolean v2, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->hasCustomSource:Z

    .line 101
    invoke-static {v1}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->trimSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->huggingFaceFilesPathPrefix:Ljava/lang/String;

    .line 102
    iget-object v7, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->huggingFaceFilesPathPrefix:Ljava/lang/String;

    invoke-static {v3, v4, v5, v7}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->buildHuggingFaceTreeApiUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->huggingFaceTreeApiUrl:Ljava/lang/String;

    .line 108
    invoke-static {v3, v4, v5}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->buildHuggingFaceResolveBaseUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->huggingFaceResolveBaseUrl:Ljava/lang/String;

    .line 109
    iget-object v7, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->clientConfigUrls:Ljava/util/LinkedHashSet;

    invoke-static {v3, v4, v5, v6}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->buildHuggingFaceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v6, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->fallbackFileBaseUrls:Ljava/util/LinkedHashSet;

    invoke-static {v3, v4, v5, v1}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->buildHuggingFaceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_4
    iget-object v1, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->clientConfigUrls:Ljava/util/LinkedHashSet;

    const-string v3, "client_config_urls"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->addAll(Ljava/util/Set;Lorg/json/JSONArray;)V

    .line 115
    iget-object v1, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->fallbackFileBaseUrls:Ljava/util/LinkedHashSet;

    const-string v4, "fallback_file_base_urls"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->addAll(Ljava/util/Set;Lorg/json/JSONArray;)V

    .line 116
    iget-boolean v1, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->hasCustomSource:Z

    if-nez v1, :cond_6

    .line 117
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->hasValues(Lorg/json/JSONArray;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 118
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->hasValues(Lorg/json/JSONArray;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_1
    iput-boolean v2, v0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->hasCustomSource:Z

    return-object v0
.end method

.method public static resolve(Landroid/content/Context;)Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;
    .locals 1

    .line 29
    const-string v0, "lite"

    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->resolve(Landroid/content/Context;Ljava/lang/String;)Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static resolve(Landroid/content/Context;Ljava/lang/String;)Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;
    .locals 13

    .line 33
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 34
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->normalizeVariantId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v2, "update_sources.json"

    invoke-static {p0, v2}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->loadJsonAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    .line 44
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->findDataVariantConfig(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object p0, v4

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 51
    :goto_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->parseSourceConfig(Lorg/json/JSONObject;)Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;

    move-result-object p0

    .line 52
    iget-object v5, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->clientConfigUrls:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 53
    iget-object v5, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->fallbackFileBaseUrls:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 54
    iget-boolean v5, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->hasCustomSource:Z

    .line 55
    iget-object v6, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->huggingFaceTreeApiUrl:Ljava/lang/String;

    .line 56
    iget-object v7, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->huggingFaceResolveBaseUrl:Ljava/lang/String;

    .line 57
    iget-object p0, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->huggingFaceFilesPathPrefix:Ljava/lang/String;

    move-object v12, p0

    move-object v10, v6

    move-object v11, v7

    goto :goto_1

    .line 43
    :cond_1
    const-string v6, ""

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-eqz v4, :cond_3

    .line 60
    const-string p0, "lite"

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    if-nez v5, :cond_4

    if-eqz v2, :cond_4

    .line 63
    const-string p0, "https://rp.goldcityrolrplay.space/dowloandoficial/client_config.json"

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 64
    const-string p0, "https://rp.goldcityrolrplay.space/dowloandoficial/files"

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_4
    new-instance p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static resolveRepoTypePathSegment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 222
    const-string v0, "dataset"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "datasets"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 225
    :cond_0
    const-string v0, "space"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "spaces"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 228
    :cond_1
    const-string p0, "models/"

    return-object p0

    .line 226
    :cond_2
    :goto_0
    const-string p0, "spaces/"

    return-object p0

    .line 223
    :cond_3
    :goto_1
    const-string p0, "datasets/"

    return-object p0
.end method

.method private static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 240
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static trimLeadingSlashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 260
    invoke-static {p0}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 261
    :goto_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static trimSlashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 249
    invoke-static {p0}, Lcom/xyron/game/launcher/util/UpdateSourceResolver;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 250
    :goto_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 253
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    return-object p0
.end method
