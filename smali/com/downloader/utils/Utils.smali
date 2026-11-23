.class public final Lcom/downloader/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final MAX_REDIRECTION:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteTempFileAndDatabaseEntryInBackground(Ljava/lang/String;I)V
    .locals 2

    .line 59
    invoke-static {}, Lcom/downloader/core/Core;->getInstance()Lcom/downloader/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/core/Core;->getExecutorSupplier()Lcom/downloader/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/downloader/core/ExecutorSupplier;->forBackgroundTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/downloader/utils/Utils$1;

    invoke-direct {v1, p1, p0}, Lcom/downloader/utils/Utils$1;-><init>(ILjava/lang/String;)V

    .line 60
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deleteUnwantedModelsAndTempFiles(I)V
    .locals 2

    .line 74
    invoke-static {}, Lcom/downloader/core/Core;->getInstance()Lcom/downloader/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/downloader/core/Core;->getExecutorSupplier()Lcom/downloader/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/downloader/core/ExecutorSupplier;->forBackgroundTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/downloader/utils/Utils$2;

    invoke-direct {v1, p0}, Lcom/downloader/utils/Utils$2;-><init>(I)V

    .line 75
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRedirectedConnectionIfAny(Lcom/downloader/httpclient/HttpClient;Lcom/downloader/request/DownloadRequest;)Lcom/downloader/httpclient/HttpClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 125
    invoke-interface {p0}, Lcom/downloader/httpclient/HttpClient;->getResponseCode()I

    move-result v0

    .line 126
    const-string v1, "Location"

    invoke-interface {p0, v1}, Lcom/downloader/httpclient/HttpClient;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 128
    :goto_0
    invoke-static {v0}, Lcom/downloader/utils/Utils;->isRedirection(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    .line 132
    invoke-interface {p0}, Lcom/downloader/httpclient/HttpClient;->close()V

    .line 134
    invoke-virtual {p1, v2}, Lcom/downloader/request/DownloadRequest;->setUrl(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/downloader/internal/ComponentHolder;->getInstance()Lcom/downloader/internal/ComponentHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/downloader/internal/ComponentHolder;->getHttpClient()Lcom/downloader/httpclient/HttpClient;

    move-result-object p0

    .line 136
    invoke-interface {p0, p1}, Lcom/downloader/httpclient/HttpClient;->connect(Lcom/downloader/request/DownloadRequest;)V

    .line 137
    invoke-interface {p0}, Lcom/downloader/httpclient/HttpClient;->getResponseCode()I

    move-result v0

    .line 138
    invoke-interface {p0, v1}, Lcom/downloader/httpclient/HttpClient;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "Max redirection done"

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_1
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "Location is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p0
.end method

.method public static getTempPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/downloader/utils/Utils;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".temp"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUniqueId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 103
    :try_start_0
    const-string p1, "MD5"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    array-length p2, p0

    mul-int/lit8 p2, p2, 0x2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 112
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 113
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    .line 107
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "UnsupportedEncodingException"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 105
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "NoSuchAlgorithmException"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static isRedirection(I)Z
    .locals 1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x133

    if-eq p0, v0, :cond_1

    const/16 v0, 0x134

    if-ne p0, v0, :cond_0

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

.method public static renameFileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Deletion Failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    .line 48
    :cond_3
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Rename Failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 55
    :cond_4
    throw p0
.end method
