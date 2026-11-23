.class public final Lcom/xyron/game/launcher/util/ApkUpdateManifest;
.super Ljava/lang/Object;
.source "ApkUpdateManifest.java"


# instance fields
.field public final description:Ljava/lang/String;

.field public final gameName:Ljava/lang/String;

.field public final news:Ljava/lang/String;

.field public final sha256:Ljava/lang/String;

.field public final size:J

.field public final title:Ljava/lang/String;

.field public final url:Ljava/lang/String;

.field public final versionCode:I

.field public final versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "jogo"

    const-string v1, "DESTRITO NOBRE"

    const/16 v2, 0x50

    invoke-static {p1, v0, v1, v2}, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->label(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->gameName:Ljava/lang/String;

    .line 12
    const-string p1, "titulo"

    const-string v0, "Seu launcher, atualizado"

    invoke-static {p2, p1, v0, v2}, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->label(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->title:Ljava/lang/String;

    .line 13
    const-string p1, "Uma nova vers\u00e3o do aplicativo est\u00e1 dispon\u00edvel para voc\u00ea."

    const/16 v0, 0xdc

    const-string v1, "descricao"

    invoke-static {p2, v1, p1, v0}, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->label(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->description:Ljava/lang/String;

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v0, "novidades"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    .line 16
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 17
    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    :cond_1
    const-string/jumbo v5, "\u2022 "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x64

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->news:Ljava/lang/String;

    .line 23
    const-string p1, "version_code"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->versionCode:I

    const-string v0, "version_name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->versionName:Ljava/lang/String;

    .line 24
    const-string v1, "url"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->url:Ljava/lang/String;

    const-string v3, "sha256"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->sha256:Ljava/lang/String;

    .line 25
    const-string v4, "tamanho"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xyron/game/launcher/util/ApkUpdateManifest;->size:J

    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-lez p1, :cond_3

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, v2, :cond_3

    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    if-lez p1, :cond_3

    const-wide/32 v0, 0x20000000

    cmp-long p1, v4, v0

    if-gtz p1, :cond_3

    const-string p1, "[0-9a-f]{64}"

    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "https"

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "github.com"

    .line 28
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 29
    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 30
    invoke-virtual {p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/baltarv1948-dotcom/angra-data/releases/download/[A-Za-z0-9._-]+/[A-Za-z0-9._-]+\\.apk"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 31
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Configuracao da atualizacao do aplicativo invalida."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static label(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    .line 42
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/xyron/game/launcher/util/ApkUpdateManifest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const-string v0, "apk"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance p0, Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/xyron/game/launcher/util/ApkUpdateManifest;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    .line 37
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bloco apk invalido no manifesto."

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
