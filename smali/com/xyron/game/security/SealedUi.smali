.class public final Lcom/xyron/game/security/SealedUi;
.super Ljava/lang/Object;
.source "SealedUi.java"


# static fields
.field private static volatile key:[B

.field private static volatile optimizedImages:Lorg/json/JSONObject;

.field private static volatile resources:Lcom/xyron/game/security/UiResourceCache;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static denied()Landroid/webkit/WebResourceResponse;
    .locals 8

    .line 66
    new-instance v7, Landroid/webkit/WebResourceResponse;

    const-string v0, "Cache-Control"

    const-string v1, "no-store"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "text/plain"

    const-string v2, "UTF-8"

    const/16 v3, 0x193

    const-string v4, "Forbidden"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v7
.end method

.method private static declared-synchronized imageIndex(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/xyron/game/security/SealedUi;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/xyron/game/security/SealedUi;->optimizedImages:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v3, "interfaces/shared/optimized-images.json"

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const/high16 v3, 0x100000

    invoke-static {p0, v3}, Lcom/xyron/game/security/SealedUi;->read(Ljava/io/InputStream;I)[B

    move-result-object p0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/xyron/game/security/SealedUi;->optimizedImages:Lorg/json/JSONObject;

    .line 41
    :cond_0
    sget-object p0, Lcom/xyron/game/security/SealedUi;->optimizedImages:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static intercept(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 17

    move-object/from16 v0, p0

    .line 70
    const-string v1, "interfaces/"

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/xyron/game/security/MusicCoverPolicy;->allows(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 71
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 72
    const-string v4, "data"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "about"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_9

    .line 73
    :cond_1
    const-string v4, "file"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_8

    .line 74
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 75
    const-string v4, "/android_asset/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, ".."

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    const/16 v4, 0x5c

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_3

    goto/16 :goto_7

    :cond_3
    const/16 v4, 0xf

    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "Cache-Control"

    if-eqz v4, :cond_5

    :try_start_1
    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 78
    invoke-static/range {p0 .. p0}, Lcom/xyron/game/security/SealedUi;->imageIndex(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 80
    invoke-static {v0, v4}, Lcom/xyron/game/security/DataUi;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    invoke-static {v0, v4}, Lcom/xyron/game/security/DataUi;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    move-object v12, v0

    .line 82
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v7, "image/webp"

    const-string v10, "OK"

    const-string v1, "max-age=86400"

    invoke-static {v5, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v11

    const/4 v8, 0x0

    const/16 v9, 0xc8

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v0

    .line 87
    :cond_5
    const-string v4, "interfaces/shared/language-bootstrap.js"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "no-store"

    if-eqz v4, :cond_6

    :try_start_2
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v8, "application/javascript"

    const-string v9, "UTF-8"

    const-string v11, "OK"

    invoke-static {v5, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->bootstrapScript(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v10, 0xc8

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v1

    .line 88
    :cond_6
    const-string v4, ".html"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_7

    const-string v7, ".js"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ".css"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    .line 89
    :goto_2
    invoke-static {v0, v2}, Lcom/xyron/game/security/DataUi;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v4, :cond_a

    if-nez v7, :cond_a

    if-nez v8, :cond_a

    if-nez v1, :cond_9

    return-object v3

    .line 92
    :cond_9
    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-static {v2}, Lcom/xyron/game/security/DataUi;->mimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "OK"

    .line 93
    invoke-static {v5, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v15

    invoke-static {v0, v2}, Lcom/xyron/game/security/DataUi;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    const/4 v12, 0x0

    const/16 v13, 0xc8

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v1

    .line 95
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/xyron/game/security/SealedUi;->resources(Landroid/content/Context;)Lcom/xyron/game/security/UiResourceCache;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xyron/game/security/UiResourceCache;->get(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_d

    if-eqz v1, :cond_b

    .line 98
    invoke-static {v0, v2}, Lcom/xyron/game/security/DataUi;->openBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    :goto_3
    move-object v3, v1

    goto :goto_4

    .line 100
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".agu"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/high16 v3, 0x800000

    invoke-static {v1, v3}, Lcom/xyron/game/security/SealedUi;->read(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 101
    array-length v10, v1

    const/16 v11, 0x1c

    if-ge v10, v11, :cond_c

    invoke-static {}, Lcom/xyron/game/security/SealedUi;->denied()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 102
    :cond_c
    const-string v10, "AES/GCM/NoPadding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v10

    .line 103
    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static/range {p0 .. p0}, Lcom/xyron/game/security/SealedUi;->key(Landroid/content/Context;)[B

    move-result-object v12

    const-string v13, "AES"

    invoke-direct {v11, v12, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v12, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v13, 0xc

    invoke-static {v1, v9, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    const/16 v15, 0x80

    invoke-direct {v12, v15, v14}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v14, 0x2

    invoke-virtual {v10, v14, v11, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 104
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 105
    new-instance v11, Ljava/util/zip/GZIPInputStream;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    array-length v14, v1

    sub-int/2addr v14, v13

    invoke-virtual {v10, v1, v13, v14}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v12}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v11, v3}, Lcom/xyron/game/security/SealedUi;->read(Ljava/io/InputStream;I)[B

    move-result-object v1

    goto :goto_3

    .line 107
    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/xyron/game/security/SealedUi;->resources(Landroid/content/Context;)Lcom/xyron/game/security/UiResourceCache;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/xyron/game/security/UiResourceCache;->put(Ljava/lang/String;[B)V

    :cond_d
    if-eqz v4, :cond_f

    .line 110
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 111
    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->htmlBootstrap(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 112
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<head>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_e

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_5
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 116
    :cond_f
    new-instance v0, Landroid/webkit/WebResourceResponse;

    if-eqz v7, :cond_10

    const-string v1, "application/javascript"

    goto :goto_6

    :cond_10
    if-eqz v8, :cond_11

    const-string v1, "text/css"

    goto :goto_6

    :cond_11
    const-string v1, "text/html"

    :goto_6
    move-object v10, v1

    const-string v11, "UTF-8"

    const-string v13, "OK"

    invoke-static {v5, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v14

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v12, 0xc8

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v0

    .line 75
    :cond_12
    :goto_7
    invoke-static {}, Lcom/xyron/game/security/SealedUi;->denied()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 73
    :cond_13
    :goto_8
    invoke-static {}, Lcom/xyron/game/security/SealedUi;->denied()Landroid/webkit/WebResourceResponse;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :cond_14
    :goto_9
    return-object v3

    .line 117
    :catch_0
    const-string v0, "AngraUi"

    const-string v1, "Packaged interface validation failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xyron/game/security/SealedUi;->denied()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static isPhoneFrameUrl(Ljava/lang/String;)Z
    .locals 1

    .line 45
    const-string v0, "about:blank"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static declared-synchronized key(Landroid/content/Context;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/xyron/game/security/SealedUi;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/xyron/game/security/SealedUi;->key:[B

    if-eqz v1, :cond_0

    sget-object p0, Lcom/xyron/game/security/SealedUi;->key:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 56
    :cond_0
    :try_start_1
    const-string v1, "com.angrarp.online"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 58
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 59
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object p0, p0, v3

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-byte v6, p0, v5

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "%02x"

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v3

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const-string p0, "ac74c197a447f25e80576760fb8bb6181c74bab2600e926de9d91197fe87a430"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 62
    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const-string v2, "5Lf3eVY7Y0G2tqoPNyWaf2ODQHTNqYPwQRPDnoyuLII="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 63
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    sput-object p0, Lcom/xyron/game/security/SealedUi;->key:[B

    sget-object p0, Lcom/xyron/game/security/SealedUi;->key:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 61
    :cond_2
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "Unexpected signer"

    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "Unexpected signer"

    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "Unexpected package"

    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static read(Ljava/io/InputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0x2000

    .line 49
    :try_start_1
    new-array v1, v1, [B

    .line 50
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, p1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v1, "UI too large"

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 48
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_3

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
.end method

.method private static resources(Landroid/content/Context;)Lcom/xyron/game/security/UiResourceCache;
    .locals 2

    .line 26
    sget-object v0, Lcom/xyron/game/security/SealedUi;->resources:Lcom/xyron/game/security/UiResourceCache;

    if-nez v0, :cond_4

    .line 27
    const-class v1, Lcom/xyron/game/security/SealedUi;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/xyron/game/security/SealedUi;->resources:Lcom/xyron/game/security/UiResourceCache;

    if-nez v0, :cond_3

    .line 29
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_1

    .line 30
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    const/16 v0, 0xc0

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 31
    :goto_0
    new-instance v0, Lcom/xyron/game/security/UiResourceCache;

    if-eqz p0, :cond_2

    const/high16 p0, 0x40000

    goto :goto_1

    :cond_2
    const/high16 p0, 0x200000

    :goto_1
    invoke-direct {v0, p0}, Lcom/xyron/game/security/UiResourceCache;-><init>(I)V

    sput-object v0, Lcom/xyron/game/security/SealedUi;->resources:Lcom/xyron/game/security/UiResourceCache;

    .line 33
    :cond_3
    sget-object v0, Lcom/xyron/game/security/SealedUi;->resources:Lcom/xyron/game/security/UiResourceCache;

    .line 34
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static trimMemory()V
    .locals 1

    .line 37
    sget-object v0, Lcom/xyron/game/security/SealedUi;->resources:Lcom/xyron/game/security/UiResourceCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/security/UiResourceCache;->clear()V

    :cond_0
    return-void
.end method
