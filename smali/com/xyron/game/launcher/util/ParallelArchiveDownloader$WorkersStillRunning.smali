.class public final Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$WorkersStillRunning;
.super Ljava/io/IOException;
.source "ParallelArchiveDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WorkersStillRunning"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    const-string v0, "Aguarde a rede encerrar antes de retomar."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
