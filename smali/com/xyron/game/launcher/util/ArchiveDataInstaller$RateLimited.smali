.class final Lcom/xyron/game/launcher/util/ArchiveDataInstaller$RateLimited;
.super Ljava/io/IOException;
.source "ArchiveDataInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/ArchiveDataInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RateLimited"
.end annotation


# instance fields
.field final delay:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 194
    const-string v0, "O servidor de arquivos pediu uma pausa. O download parcial foi preservado."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 196
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0xf

    :goto_0
    const-wide/16 v2, 0x1e

    .line 197
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$RateLimited;->delay:J

    return-void
.end method
