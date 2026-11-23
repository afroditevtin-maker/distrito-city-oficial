.class public Lcom/nvidia/devtech/NvAPKFileHelper;
.super Ljava/lang/Object;
.source "NvAPKFileHelper.java"


# static fields
.field private static instance:Lcom/nvidia/devtech/NvAPKFileHelper;

.field private static final logAssetFiles:Z


# instance fields
.field apkCount:I

.field apkFiles:[Ljava/lang/String;

.field private context:Landroid/content/Context;

.field hasAPKFiles:Z

.field myApkCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/nvidia/devtech/NvAPKFileHelper;

    invoke-direct {v0}, Lcom/nvidia/devtech/NvAPKFileHelper;-><init>()V

    sput-object v0, Lcom/nvidia/devtech/NvAPKFileHelper;->instance:Lcom/nvidia/devtech/NvAPKFileHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkCount:I

    .line 15
    iput-boolean v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->hasAPKFiles:Z

    .line 16
    iput v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->myApkCount:I

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    return-void
.end method

.method private findInAPKFiles(Ljava/lang/String;)I
    .locals 5

    .line 24
    iget v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->myApkCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp3"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 28
    :goto_0
    iget-object v3, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 29
    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    return v2

    :cond_3
    return v1
.end method

.method public static getInstance()Lcom/nvidia/devtech/NvAPKFileHelper;
    .locals 1

    .line 20
    sget-object v0, Lcom/nvidia/devtech/NvAPKFileHelper;->instance:Lcom/nvidia/devtech/NvAPKFileHelper;

    return-object v0
.end method


# virtual methods
.method public AddAssetFile(Ljava/lang/String;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    .line 39
    iget v1, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->myApkCount:I

    add-int/lit8 v2, v1, 0x1

    .line 40
    iput v2, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->myApkCount:I

    .line 41
    aput-object p1, v0, v1

    return-void
.end method

.method public GetAssetList()V
    .locals 6

    const/4 v0, 0x0

    .line 46
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "assetfile.txt"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 48
    iput v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->myApkCount:I

    if-lez v2, :cond_1

    .line 50
    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    .line 52
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 54
    iget-object v3, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    .line 55
    iget v4, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->myApkCount:I

    add-int/lit8 v5, v4, 0x1

    .line 56
    iput v5, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->myApkCount:I

    .line 57
    aput-object v2, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    .line 64
    :catch_0
    iget-object v1, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 65
    const-string v2, ""

    invoke-virtual {p0, v1, v2, v0}, Lcom/nvidia/devtech/NvAPKFileHelper;->getDirectoryListing(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    .line 66
    iget v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkCount:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/nvidia/devtech/NvAPKFileHelper;->getDirectoryListing(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    :cond_1
    return-void
.end method

.method public closeFileAndroid(Lcom/nvidia/devtech/NvAPKFile;)V
    .locals 1

    .line 72
    :try_start_0
    iget-object v0, p1, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 75
    new-array v0, v0, [B

    iput-object v0, p1, Lcom/nvidia/devtech/NvAPKFile;->data:[B

    const/4 v0, 0x0

    .line 76
    iput-object v0, p1, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    return-void
.end method

.method public getDirectoryListing(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    .locals 6

    const/4 v0, 0x0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    if-nez v1, :cond_0

    if-lez p3, :cond_0

    .line 82
    new-array v1, p3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    .line 84
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    array-length v2, v1

    if-nez v2, :cond_2

    if-lez p3, :cond_1

    .line 87
    invoke-virtual {p0, p2}, Lcom/nvidia/devtech/NvAPKFileHelper;->AddAssetFile(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    iget v2, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkCount:I

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 93
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_7

    .line 94
    aget-object v3, v1, v2

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    const-string v5, "/"

    if-ne v3, v4, :cond_4

    .line 95
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    aget-object v3, v1, v2

    :goto_2
    invoke-virtual {p0, p1, v3, p3}, Lcom/nvidia/devtech/NvAPKFileHelper;->getDirectoryListing(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    goto :goto_4

    :cond_4
    if-lez p3, :cond_6

    .line 97
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    aget-object v3, v1, v2

    :goto_3
    invoke-virtual {p0, v3}, Lcom/nvidia/devtech/NvAPKFileHelper;->AddAssetFile(Ljava/lang/String;)V

    goto :goto_4

    .line 99
    :cond_6
    iget v3, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 103
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "ERROR: getDirectoryListing "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    return v0
.end method

.method public openFileAndroid(Ljava/lang/String;)Lcom/nvidia/devtech/NvAPKFile;
    .locals 4

    .line 109
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->hasAPKFiles:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 110
    iput v2, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkCount:I

    .line 111
    iput-object v1, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvAPKFileHelper;->GetAssetList()V

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->hasAPKFiles:Z

    .line 115
    :cond_0
    invoke-direct {p0, p1}, Lcom/nvidia/devtech/NvAPKFileHelper;->findInAPKFiles(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-object v1

    .line 119
    :cond_1
    new-instance v0, Lcom/nvidia/devtech/NvAPKFile;

    invoke-direct {v0}, Lcom/nvidia/devtech/NvAPKFile;-><init>()V

    .line 120
    iput-object v1, v0, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    .line 121
    iput v2, v0, Lcom/nvidia/devtech/NvAPKFile;->length:I

    .line 122
    iput v2, v0, Lcom/nvidia/devtech/NvAPKFile;->position:I

    .line 123
    iput v2, v0, Lcom/nvidia/devtech/NvAPKFile;->bufferSize:I

    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    aget-object p1, v3, p1

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, v0, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    .line 126
    iget-object p1, v0, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, v0, Lcom/nvidia/devtech/NvAPKFile;->length:I

    .line 128
    iget-object p1, v0, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    const/16 p1, 0x400

    .line 129
    iput p1, v0, Lcom/nvidia/devtech/NvAPKFile;->bufferSize:I

    .line 130
    iget p1, v0, Lcom/nvidia/devtech/NvAPKFile;->bufferSize:I

    new-array p1, p1, [B

    iput-object p1, v0, Lcom/nvidia/devtech/NvAPKFile;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public readFileAndroid(Lcom/nvidia/devtech/NvAPKFile;I)V
    .locals 3

    .line 138
    iget v0, p1, Lcom/nvidia/devtech/NvAPKFile;->bufferSize:I

    if-le p2, v0, :cond_0

    .line 139
    new-array v0, p2, [B

    iput-object v0, p1, Lcom/nvidia/devtech/NvAPKFile;->data:[B

    .line 140
    iput p2, p1, Lcom/nvidia/devtech/NvAPKFile;->bufferSize:I

    .line 143
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    iget-object v1, p1, Lcom/nvidia/devtech/NvAPKFile;->data:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    .line 144
    iget v0, p1, Lcom/nvidia/devtech/NvAPKFile;->position:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/nvidia/devtech/NvAPKFile;->position:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public seekFileAndroid(Lcom/nvidia/devtech/NvAPKFile;I)J
    .locals 8

    const-wide/16 v0, 0x0

    .line 154
    :try_start_0
    iget-object v2, p1, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x80

    move-wide v2, v0

    const/16 v4, 0x80

    :goto_0
    if-lez p2, :cond_0

    if-lez v4, :cond_0

    .line 157
    :try_start_1
    iget-object v5, p1, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    int-to-long v6, p2

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 159
    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-long/2addr v0, v2

    int-to-long v5, p2

    sub-long/2addr v5, v2

    long-to-int p2, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :catch_1
    :cond_0
    long-to-int p2, v0

    .line 167
    iput p2, p1, Lcom/nvidia/devtech/NvAPKFile;->position:I

    return-wide v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    return-void
.end method
