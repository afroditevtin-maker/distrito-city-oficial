.class public final synthetic Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$10:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;

.field public final synthetic f$11:Ljava/lang/String;

.field public final synthetic f$12:Ljava/lang/Object;

.field public final synthetic f$13:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$3:[Z

.field public final synthetic f$4:J

.field public final synthetic f$5:[Ljava/net/URL;

.field public final synthetic f$6:[Ljava/lang/String;

.field public final synthetic f$7:Ljava/util/Set;

.field public final synthetic f$8:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic f$9:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;[ZJ[Ljava/net/URL;[Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$3:[Z

    iput-wide p5, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$4:J

    iput-object p7, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$5:[Ljava/net/URL;

    iput-object p8, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$6:[Ljava/lang/String;

    iput-object p9, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$7:Ljava/util/Set;

    iput-object p10, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$8:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p11, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$9:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p12, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$10:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;

    iput-object p13, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$11:Ljava/lang/String;

    iput-object p14, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$12:Ljava/lang/Object;

    iput-object p15, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$13:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$3:[Z

    iget-wide v4, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$4:J

    iget-object v6, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$5:[Ljava/net/URL;

    iget-object v7, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$6:[Ljava/lang/String;

    iget-object v8, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$7:Ljava/util/Set;

    iget-object v9, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$8:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v10, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$9:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v11, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$10:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;

    iget-object v12, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$11:Ljava/lang/String;

    iget-object v13, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$12:Ljava/lang/Object;

    iget-object v14, p0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;->f$13:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static/range {v0 .. v14}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->lambda$download$0(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;[ZJ[Ljava/net/URL;[Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
