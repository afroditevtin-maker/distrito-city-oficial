.class public final Lcom/xyron/game/launcher/util/GameIntegrity;
.super Ljava/lang/Object;
.source "GameIntegrity.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verify(Landroid/content/Context;Lcom/xyron/game/launcher/util/DataIntegrity$Progress;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {v0}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->hasPendingCommit(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 14
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->manifestPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "installed_sha256"

    const-string v3, ""

    .line 15
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->integrityIndex(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 19
    :cond_0
    const-string v2, "980405c360ddbf88cb376709e71e1d883375743355611c7bfaacfe622325a25b"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v2, "data-integrity-angra-novo.tsv"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 20
    :cond_1
    const-string v2, "06ec87e3786ac8cbfd64443c98f92e47c0807dc9962489bff1d0e22f23cd3d9a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v2, "data-integrity-angra-classico.tsv"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 22
    :goto_0
    invoke-static {v0, p0, v1, p1}, Lcom/xyron/game/launcher/util/DataIntegrity;->verify(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;Lcom/xyron/game/launcher/util/DataIntegrity$Progress;)V

    return-void

    .line 21
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Referencia de integridade ausente. Repare a data antes de jogar."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Instalacao incompleta. Repare a data antes de jogar."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
