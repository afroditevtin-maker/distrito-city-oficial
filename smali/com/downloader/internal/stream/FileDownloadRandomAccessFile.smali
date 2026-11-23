.class public Lcom/downloader/internal/stream/FileDownloadRandomAccessFile;
.super Ljava/lang/Object;
.source "FileDownloadRandomAccessFile.java"

# interfaces
.implements Lcom/downloader/internal/stream/FileDownloadOutputStream;


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private final out:Ljava/io/BufferedOutputStream;

.field private final randomAccess:Ljava/io/RandomAccessFile;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/downloader/internal/stream/FileDownloadRandomAccessFile;->randomAccess:Ljava/io/RandomAccessFile;

    .line 18
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/downloader/internal/stream/FileDownloadRandomAccessFile;->fd:Ljava/io/FileDescriptor;

    .line 19
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/downloader/internal/stream/FileDownloadRandomAccessFile;->out:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method public static create(Ljava/io/File;)Lcom/downloader/internal/stream/FileDownloadOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/downloader/internal/stream/FileDownloadRandomAccessFile;

    invoke-direct {v0, p0}, Lcom/downloader/internal/stream/FileDownloadRandomAccessFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/downloader/internal/stream/FileDownloadRandomAccessFile;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 36
    iget-object v0, p0, Lcom/downloader/internal/stream/FileDownloadRandomAccessFile;->randomAccess:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public flushAndSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/downloader/internal/stream/FileDownloadRandomAccessFile;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 30
    iget-object v0, p0, Lcom/downloader/internal/stream/FileDownloadRandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    return-void
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/downloader/internal/stream/FileDownloadRandomAccessFile;->randomAccess:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public setLength(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/downloader/internal/stream/FileDownloadRandomAccessFile;->randomAccess:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/downloader/internal/stream/FileDownloadRandomAccessFile;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void
.end method
