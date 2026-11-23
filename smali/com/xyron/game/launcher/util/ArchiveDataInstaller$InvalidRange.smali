.class final Lcom/xyron/game/launcher/util/ArchiveDataInstaller$InvalidRange;
.super Ljava/io/IOException;
.source "ArchiveDataInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/ArchiveDataInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InvalidRange"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 206
    const-string v0, "O servidor recusou a retomada do download."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
