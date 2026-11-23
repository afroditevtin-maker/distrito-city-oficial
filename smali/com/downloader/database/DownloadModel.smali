.class public Lcom/downloader/database/DownloadModel;
.super Ljava/lang/Object;
.source "DownloadModel.java"


# static fields
.field static final DIR_PATH:Ljava/lang/String; = "dir_path"

.field static final DOWNLOADED_BYTES:Ljava/lang/String; = "downloaded_bytes"

.field static final ETAG:Ljava/lang/String; = "etag"

.field static final FILE_NAME:Ljava/lang/String; = "file_name"

.field static final ID:Ljava/lang/String; = "id"

.field static final LAST_MODIFIED_AT:Ljava/lang/String; = "last_modified_at"

.field static final TOTAL_BYTES:Ljava/lang/String; = "total_bytes"

.field static final URL:Ljava/lang/String; = "url"


# instance fields
.field private dirPath:Ljava/lang/String;

.field private downloadedBytes:J

.field private eTag:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private id:I

.field private lastModifiedAt:J

.field private totalBytes:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirPath()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/downloader/database/DownloadModel;->dirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedBytes()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/downloader/database/DownloadModel;->downloadedBytes:J

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/downloader/database/DownloadModel;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/downloader/database/DownloadModel;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/downloader/database/DownloadModel;->id:I

    return v0
.end method

.method public getLastModifiedAt()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/downloader/database/DownloadModel;->lastModifiedAt:J

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/downloader/database/DownloadModel;->totalBytes:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/downloader/database/DownloadModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDirPath(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/downloader/database/DownloadModel;->dirPath:Ljava/lang/String;

    return-void
.end method

.method public setDownloadedBytes(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/downloader/database/DownloadModel;->downloadedBytes:J

    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/downloader/database/DownloadModel;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/downloader/database/DownloadModel;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/downloader/database/DownloadModel;->id:I

    return-void
.end method

.method public setLastModifiedAt(J)V
    .locals 0

    .line 88
    iput-wide p1, p0, Lcom/downloader/database/DownloadModel;->lastModifiedAt:J

    return-void
.end method

.method public setTotalBytes(J)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/downloader/database/DownloadModel;->totalBytes:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/downloader/database/DownloadModel;->url:Ljava/lang/String;

    return-void
.end method
