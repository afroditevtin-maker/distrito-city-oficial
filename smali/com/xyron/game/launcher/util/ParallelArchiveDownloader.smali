.class public final Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;
.super Ljava/lang/Object;
.source "ParallelArchiveDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$ServerBusy;,
        Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$WorkersStillRunning;,
        Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$RangeUnsupported;
    }
.end annotation


# static fields
.field public static final CHUNK:I = 0x800000

.field public static final CONNECTIONS:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cachedBytes(Ljava/io/File;JLjava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-static {p0, p1, p2, p3}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->read(Ljava/io/File;JLjava/lang/String;)[Z

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 p3, 0x0

    :goto_0
    array-length v2, p0

    if-ge p3, v2, :cond_1

    aget-boolean v2, p0, p3

    if-eqz v2, :cond_0

    invoke-static {p3, p1, p2}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->length(IJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method static connectionCount(J)I
    .locals 3

    const-wide/32 v0, 0x10000000

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public static discardJournal(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->journal(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Falha ao limpar progresso do download."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static disconnectAll(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/HttpURLConnection;",
            ">;)V"
        }
    .end annotation

    .line 21
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/net/HttpURLConnection;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/HttpURLConnection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    array-length p0, v1

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static download(Ljava/io/File;JLjava/lang/String;[Ljava/lang/String;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p4

    .line 80
    const-string v1, "US-ASCII"

    const-string v2, "\n"

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_14

    array-length v3, v0

    if-eqz v3, :cond_14

    .line 81
    invoke-static/range {p0 .. p3}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->cachedBytes(Ljava/io/File;JLjava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    const/4 v2, 0x0

    const-string v7, "data-angra.zip"

    move-object/from16 v1, p5

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;->update(ZJJLjava/lang/String;)V

    return-void

    .line 84
    :cond_0
    array-length v3, v0

    new-array v15, v3, [Ljava/net/URL;

    const/16 v17, 0x0

    const/4 v3, 0x0

    .line 85
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->resolveSource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    aput-object v4, v15, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-static/range {p0 .. p3}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->read(Ljava/io/File;JLjava/lang/String;)[Z

    move-result-object v14

    .line 87
    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->journal(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 88
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->journal(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 90
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p3}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->header(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    const/4 v5, 0x0

    .line 91
    :goto_1
    array-length v6, v14

    if-ge v5, v6, :cond_3

    aget-boolean v6, v14, v5

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 94
    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->journal(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Falha ao salvar progresso."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 89
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    .line 98
    :cond_5
    :goto_3
    new-instance v18, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v13, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static/range {p0 .. p3}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->cachedBytes(Ljava/io/File;JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v13, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    new-instance v19, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 99
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v20, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v21, Ljava/lang/Object;

    invoke-direct/range {v21 .. v21}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->connectionCount(J)I

    move-result v11

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data-angra.zip ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " conexoes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    move-object/from16 v1, p5

    move-wide/from16 v5, p1

    move-object/from16 v7, v22

    invoke-interface/range {v1 .. v7}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;->update(ZJJLjava/lang/String;)V

    .line 103
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v23

    .line 104
    invoke-static {v11}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v11, :cond_6

    .line 105
    new-instance v6, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v12

    move-object/from16 v4, v18

    move-object v5, v14

    move-object v0, v6

    move-wide/from16 v6, p1

    move/from16 v24, v8

    move-object v8, v15

    move-object/from16 v25, v9

    move-object/from16 v9, p4

    move-object/from16 v26, v10

    move-object/from16 v10, v23

    move/from16 v27, v11

    move-object v11, v13

    move-object/from16 v28, v12

    move-object/from16 v12, v19

    move-object/from16 v29, v13

    move-object/from16 v13, p5

    move-object/from16 v30, v14

    move-object/from16 v14, v22

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v20

    invoke-direct/range {v1 .. v16}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;[ZJ[Ljava/net/URL;[Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;)V

    move-object/from16 v1, v26

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object/from16 v2, v25

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v24, 0x1

    move-object/from16 v0, p4

    move-object v10, v1

    move-object v9, v2

    move/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    goto :goto_4

    :cond_6
    move-object v2, v9

    move-object v1, v10

    move-object/from16 v28, v12

    move-object/from16 v30, v14

    const-wide/16 v3, 0x23

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 153
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v7, v0

    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/io/IOException;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v8, :cond_7

    :try_start_5
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v7}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v6, v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v6, v8

    goto :goto_9

    :cond_7
    move-object v6, v8

    :goto_6
    move-object/from16 v7, v28

    :try_start_6
    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_a

    :cond_8
    :goto_7
    if-eqz v6, :cond_a

    .line 156
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-interface {v2, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_8

    :cond_9
    invoke-static/range {v23 .. v23}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->disconnectAll(Ljava/util/Set;)V

    .line 157
    :cond_a
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 158
    :try_start_7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    new-instance v0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$WorkersStillRunning;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$WorkersStillRunning;-><init>()V

    throw v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v0

    .line 159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_2
    move-exception v0

    goto/16 :goto_e

    :catch_4
    move-exception v0

    :goto_9
    move-object/from16 v7, v28

    .line 154
    :goto_a
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Download interrompido."

    invoke-direct {v8, v9, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 156
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-interface {v2, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_b

    :cond_c
    invoke-static/range {v23 .. v23}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->disconnectAll(Ljava/util/Set;)V

    .line 157
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 158
    :try_start_a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5

    if-eqz v0, :cond_10

    move-object v6, v8

    :goto_c
    if-nez v6, :cond_f

    move-object/from16 v1, v30

    .line 162
    array-length v0, v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_e

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_d

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Download incompleto; toque para retomar."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v2, 0x0

    .line 163
    const-string v7, "data-angra.zip"

    move-object/from16 v1, p5

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;->update(ZJJLjava/lang/String;)V

    return-void

    .line 161
    :cond_f
    throw v6

    .line 158
    :cond_10
    :try_start_b
    new-instance v0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$WorkersStillRunning;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$WorkersStillRunning;-><init>()V

    throw v0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_5

    :catch_5
    move-exception v0

    .line 159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_3
    move-exception v0

    move-object v6, v8

    :goto_e
    if-eqz v6, :cond_12

    .line 156
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Future;

    invoke-interface {v6, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_f

    :cond_11
    invoke-static/range {v23 .. v23}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->disconnectAll(Ljava/util/Set;)V

    .line 157
    :cond_12
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 158
    :try_start_c
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$WorkersStillRunning;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$WorkersStillRunning;-><init>()V

    throw v0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_6

    .line 160
    :cond_13
    throw v0

    :catch_6
    move-exception v0

    .line 159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fonte de download inv\u00e1lida."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static header(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ANGRA-RANGE-1|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|8388608"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static journal(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 31
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".segments"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$download$0(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;[ZJ[Ljava/net/URL;[Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 33

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v9, p14

    const/high16 v7, 0x20000

    .line 106
    new-array v8, v7, [B

    .line 107
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    move-object/from16 v3, p0

    invoke-direct {v4, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 108
    :goto_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    array-length v0, v2

    if-ge v7, v0, :cond_16

    .line 109
    aget-boolean v0, v2, v7

    if-eqz v0, :cond_0

    const/high16 v7, 0x20000

    goto :goto_0

    :cond_0
    int-to-long v5, v7

    const-wide/32 v19, 0x800000

    mul-long v5, v5, v19

    .line 110
    invoke-static {v7, v10, v11}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->length(IJ)J

    move-result-wide v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_18

    add-long v19, v5, v19

    const-wide/16 v21, 0x1

    sub-long v1, v19, v21

    const/4 v9, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    :goto_1
    const/4 v0, 0x4

    if-ge v9, v0, :cond_12

    if-nez v20, :cond_12

    .line 111
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_14

    if-nez v0, :cond_12

    if-lez v9, :cond_1

    const-wide/16 v24, 0x1f4

    move-object/from16 v26, v4

    shl-long v3, v24, v9

    const-wide/16 v10, 0xfa0

    .line 113
    :try_start_3
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int v0, v7, v9

    .line 116
    :try_start_4
    array-length v3, v12

    rem-int v3, v0, v3

    array-length v4, v13

    rem-int/2addr v0, v4

    aget-object v0, v13, v0

    invoke-static {v0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->resolveSource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    aput-object v0, v12, v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v12, p14

    move-object v3, v0

    move-object/from16 v28, v26

    const/4 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1d

    :catch_0
    move-exception v0

    .line 114
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Download interrompido; progresso preservado."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    move-object/from16 v26, v4

    :catch_1
    :goto_2
    add-int v0, v7, v9

    .line 120
    :try_start_6
    array-length v10, v12

    rem-int/2addr v0, v10

    aget-object v0, v12, v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_11

    .line 121
    :try_start_7
    invoke-interface {v14, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x3a98

    .line 123
    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x4e20

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 124
    const-string v0, "Accept-Encoding"

    const-string v11, "identity"

    invoke-virtual {v10, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Range"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_c

    const/16 v3, 0x1ad

    if-eq v0, v3, :cond_b

    const/16 v3, 0x1f7

    if-eq v0, v3, :cond_b

    const/16 v3, 0xce

    if-ne v0, v3, :cond_a

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_10

    move-wide/from16 v27, v5

    move-wide/from16 v4, p4

    :try_start_8
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Content-Range"

    invoke-virtual {v10, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_10

    if-eqz v3, :cond_9

    move-object/from16 v6, v26

    move-wide/from16 v4, v27

    .line 128
    :try_start_9
    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 129
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/high16 v3, 0x20000

    invoke-direct {v11, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    const-wide/16 v24, 0x0

    .line 130
    :goto_3
    :try_start_a
    invoke-virtual {v11, v8}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    .line 131
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_5

    int-to-long v12, v0

    add-long v26, v24, v12

    sub-long v28, v1, v4

    add-long v28, v28, v21

    cmp-long v3, v26, v28

    if-gtz v3, :cond_4

    const/4 v3, 0x0

    .line 133
    invoke-virtual {v6, v8, v3, v0}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    invoke-virtual {v15, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-wide/from16 v28, v4

    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object/from16 v30, v6

    :try_start_e
    invoke-virtual/range {p10 .. p10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    sub-long v24, v3, v5

    const-wide/16 v31, 0xfa

    cmp-long v0, v24, v31

    if-lez v0, :cond_2

    move-object/from16 v15, p10

    .line 134
    :try_start_f
    invoke-virtual {v15, v5, v6, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/high16 v19, 0x20000

    move-object/from16 v3, p11

    move-wide/from16 v5, v28

    move-object/from16 v28, v30

    move-wide/from16 v17, v5

    move-wide v5, v12

    move v13, v7

    move-object v12, v8

    move-wide/from16 v7, p4

    move/from16 v16, v9

    move-object/from16 v29, v12

    const/16 v30, 0x0

    move-object/from16 v12, p14

    move-object/from16 v9, p12

    :try_start_10
    invoke-interface/range {v3 .. v9}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;->update(ZJJLjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_2
    move-object/from16 v15, p10

    :cond_3
    move-object/from16 v12, p14

    move v13, v7

    move/from16 v16, v9

    move-wide/from16 v17, v28

    move-object/from16 v28, v30

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    move-object/from16 v29, v8

    :goto_4
    move-object/from16 v12, p6

    move-object/from16 v15, p9

    move v7, v13

    move/from16 v9, v16

    move-wide/from16 v4, v17

    move-wide/from16 v24, v26

    move-object/from16 v6, v28

    move-object/from16 v8, v29

    const/high16 v3, 0x20000

    move-object/from16 v13, p7

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v15, p10

    :goto_5
    move-object/from16 v12, p14

    move v13, v7

    move/from16 v16, v9

    move-wide/from16 v17, v28

    move-object/from16 v28, v30

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move v13, v7

    move/from16 v16, v9

    move-wide/from16 v17, v28

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    move-object/from16 v28, v6

    :goto_6
    move-object/from16 v29, v8

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move-wide/from16 v17, v4

    move-object/from16 v28, v6

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    :goto_7
    move-object v3, v0

    move-wide/from16 v24, v26

    goto :goto_9

    :cond_4
    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move-wide/from16 v17, v4

    move-object/from16 v28, v6

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    .line 132
    :try_start_11
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Parte de download maior que o previsto."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move-wide/from16 v17, v4

    move-object/from16 v28, v6

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    .line 131
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Download interrompido."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move-wide/from16 v17, v4

    move-object/from16 v28, v6

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    :goto_8
    move-object v3, v0

    :goto_9
    const/4 v4, 0x1

    goto/16 :goto_d

    :cond_6
    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move-wide/from16 v17, v4

    move-object/from16 v28, v6

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    .line 136
    :try_start_12
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    sub-long v3, v1, v17

    add-long v3, v3, v21

    cmp-long v0, v24, v3

    if-nez v0, :cond_8

    .line 138
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 139
    monitor-enter p13
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 140
    :try_start_13
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->journal(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    const/4 v4, 0x1

    :try_start_14
    invoke-direct {v3, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "US-ASCII"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :try_start_16
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 141
    aput-boolean v4, p3, v13

    .line 142
    monitor-exit p13
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    if-eqz v10, :cond_7

    .line 145
    :try_start_17
    invoke-interface {v14, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_13

    :cond_7
    move-object/from16 v3, p9

    const/16 v20, 0x1

    goto/16 :goto_14

    :catchall_8
    move-exception v0

    move-object v5, v0

    .line 140
    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    goto :goto_a

    :catchall_9
    move-exception v0

    move-object v3, v0

    :try_start_19
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v5

    :catchall_a
    move-exception v0

    const/4 v4, 0x1

    .line 142
    :goto_b
    monitor-exit p13
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    :try_start_1a
    throw v0

    :catchall_b
    move-exception v0

    goto :goto_b

    :cond_8
    const/4 v4, 0x1

    .line 137
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Parte incompleta; retomando."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    :catchall_c
    move-exception v0

    goto/16 :goto_10

    :catch_2
    move-exception v0

    const/4 v4, 0x1

    :goto_c
    move-wide/from16 v5, v24

    goto/16 :goto_13

    :catchall_d
    move-exception v0

    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move-wide/from16 v17, v4

    move-object/from16 v28, v6

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    const/4 v4, 0x1

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    move-object v3, v0

    .line 129
    :goto_d
    :try_start_1b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    goto :goto_e

    :catchall_e
    move-exception v0

    move-object v5, v0

    :try_start_1c
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v3
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_3
    .catchall {:try_start_1c .. :try_end_1c} :catchall_12

    :catch_3
    move-exception v0

    goto :goto_c

    :catchall_f
    move-exception v0

    move-object/from16 v12, p14

    move-object/from16 v28, v6

    goto/16 :goto_10

    :catch_4
    move-exception v0

    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move-wide/from16 v17, v4

    move-object/from16 v28, v6

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    goto/16 :goto_11

    :cond_9
    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    move-wide/from16 v17, v27

    const/4 v4, 0x1

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    move-object/from16 v28, v26

    goto :goto_f

    :catch_5
    move-exception v0

    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    move-wide/from16 v17, v27

    const/4 v4, 0x1

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    move-object/from16 v28, v26

    goto/16 :goto_12

    :cond_a
    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move-wide/from16 v17, v5

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    move-object/from16 v28, v26

    const/4 v4, 0x1

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    .line 127
    :goto_f
    :try_start_1d
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parte de download invalida (HTTP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move-wide/from16 v17, v5

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    move-object/from16 v28, v26

    const/4 v4, 0x1

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    .line 126
    new-instance v0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$ServerBusy;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$ServerBusy;-><init>()V

    throw v0

    :cond_c
    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move-wide/from16 v17, v5

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    move-object/from16 v28, v26

    const/4 v4, 0x1

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    .line 125
    new-instance v0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$RangeUnsupported;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$RangeUnsupported;-><init>()V

    throw v0

    :cond_d
    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move-wide/from16 v17, v5

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    move-object/from16 v28, v26

    const/4 v4, 0x1

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    .line 122
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Download interrompido."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    :catch_6
    move-exception v0

    goto :goto_12

    :catchall_10
    move-exception v0

    move-object/from16 v12, p14

    move-object/from16 v28, v26

    :goto_10
    const/4 v4, 0x1

    goto/16 :goto_16

    :catch_7
    move-exception v0

    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move-wide/from16 v17, v5

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    move-object/from16 v28, v26

    :goto_11
    const/4 v4, 0x1

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    :goto_12
    const-wide/16 v5, 0x0

    goto :goto_13

    :catchall_11
    move-exception v0

    move-object/from16 v12, p14

    move-object/from16 v28, v26

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_17

    :catch_8
    move-exception v0

    move-object/from16 v15, p10

    move-object/from16 v12, p14

    move-wide/from16 v17, v5

    move v13, v7

    move-object/from16 v29, v8

    move/from16 v16, v9

    move-object/from16 v28, v26

    const/4 v4, 0x1

    const/high16 v19, 0x20000

    const/16 v30, 0x0

    const-wide/16 v5, 0x0

    const/4 v10, 0x0

    :goto_13
    neg-long v5, v5

    move-object/from16 v3, p9

    .line 144
    :try_start_1e
    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    instance-of v5, v0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$RangeUnsupported;

    if-nez v5, :cond_10

    instance-of v5, v0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$ServerBusy;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    if-eqz v5, :cond_e

    goto :goto_15

    :cond_e
    if-eqz v10, :cond_f

    .line 145
    :try_start_1f
    invoke-interface {v14, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    move-object/from16 v23, v0

    :goto_14
    add-int/lit8 v9, v16, 0x1

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move-object v15, v3

    move v7, v13

    move-wide/from16 v5, v17

    move-object/from16 v4, v28

    move-object/from16 v8, v29

    move-object/from16 v3, p0

    move-object/from16 v13, p7

    goto/16 :goto_1

    :cond_10
    :goto_15
    if-eqz v10, :cond_13

    invoke-interface {v14, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_19

    :catchall_12
    move-exception v0

    :goto_16
    move-object v5, v10

    :goto_17
    if-eqz v5, :cond_11

    invoke-interface {v14, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    :catchall_13
    move-exception v0

    goto :goto_18

    :catchall_14
    move-exception v0

    move-object/from16 v12, p14

    move-object/from16 v28, v4

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v2, p1

    move-object v3, v0

    const/4 v1, 0x0

    goto/16 :goto_1d

    :cond_12
    move-object/from16 v12, p14

    move-object/from16 v28, v4

    move-object/from16 v29, v8

    move-object v3, v15

    const/4 v4, 0x1

    const/high16 v19, 0x20000

    move-object/from16 v0, v23

    :cond_13
    :goto_19
    if-nez v20, :cond_15

    if-eqz v0, :cond_14

    :goto_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 147
    :cond_14
    :try_start_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Download interrompido."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_17

    goto :goto_1a

    :goto_1b
    :try_start_21
    invoke-static {v12, v1, v0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_16

    move-object/from16 v2, p1

    :try_start_22
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_15

    :catchall_15
    move-exception v0

    goto :goto_1c

    :catchall_16
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_1c

    :catchall_17
    move-exception v0

    move-object/from16 v2, p1

    const/4 v1, 0x0

    goto :goto_1c

    :cond_15
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v10, p4

    move-object/from16 v13, p7

    move-object v15, v3

    move-object v9, v12

    move-object/from16 v4, v28

    move-object/from16 v8, v29

    const/high16 v7, 0x20000

    move-object/from16 v3, p0

    move-object/from16 v12, p6

    goto/16 :goto_0

    :cond_16
    move-object v2, v1

    move-object/from16 v28, v4

    move-object v12, v9

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 149
    :try_start_23
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_9

    return-void

    :catch_9
    move-exception v0

    goto :goto_1f

    :catchall_18
    move-exception v0

    move-object v2, v1

    move-object/from16 v28, v4

    move-object v12, v9

    const/4 v1, 0x0

    const/4 v4, 0x1

    :goto_1c
    move-object v3, v0

    .line 107
    :goto_1d
    :try_start_24
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception v0

    move-object v5, v0

    :try_start_25
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw v3
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_9

    :catch_a
    move-exception v0

    move-object v2, v1

    move-object v12, v9

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 149
    :goto_1f
    invoke-static {v12, v1, v0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static/range {p8 .. p8}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->disconnectAll(Ljava/util/Set;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static length(IJ)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x800000

    mul-long v0, v0, v2

    sub-long/2addr p1, v0

    .line 33
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static prepareSequential(Ljava/io/File;JLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-static {p0, p1, p2, p3}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->read(Ljava/io/File;JLjava/lang/String;)[Z

    move-result-object p3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_0

    aget-boolean v3, p3, v2

    if-eqz v3, :cond_0

    invoke-static {v2, p1, p2}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->length(IJ)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string p2, "rw"

    invoke-direct {p1, p0, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 76
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->discardJournal(Ljava/io/File;)V

    return-void

    :catchall_0
    move-exception p0

    .line 75
    :try_start_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private static read(Ljava/io/File;JLjava/lang/String;)[Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffff

    add-long/2addr v0, p1

    const-wide/32 v2, 0x800000

    .line 51
    div-long/2addr v0, v2

    long-to-int v1, v0

    new-array v0, v1, [Z

    .line 52
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->journal(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 54
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 55
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->header(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 56
    :catch_0
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_0

    if-ge p3, v1, :cond_0

    int-to-long v7, p3

    mul-long v7, v7, v2

    invoke-static {p3, p1, p2}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->length(IJ)J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-gtz v4, :cond_0

    aput-boolean v6, v0, p3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_5

    .line 55
    :cond_2
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Progresso de outra versao da data."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    .line 54
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    .line 59
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x0

    :goto_2
    const/4 p0, 0x0

    const/4 p3, 0x0

    :goto_3
    if-ge p3, v1, :cond_6

    int-to-long v7, p3

    mul-long v7, v7, v2

    .line 60
    invoke-static {p3, p1, p2}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->length(IJ)J

    move-result-wide v9

    add-long/2addr v7, v9

    cmp-long v9, v7, v4

    if-gtz v9, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    aput-boolean v7, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    return-object v0
.end method

.method public static requestUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 27
    const-string v1, "https"

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "github.com"

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 28
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?t="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static resolveSource(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const-string v0, "https"

    invoke-static {p0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader;->requestUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 37
    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 38
    const-string v2, "Accept-Encoding"

    const-string v3, "identity"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x1ad

    if-eq v2, v3, :cond_3

    const/16 v3, 0x1f7

    if-eq v2, v3, :cond_3

    .line 42
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 43
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Redirecionamento inseguro."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$ServerBusy; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    const/16 v0, 0xc8

    if-ne v2, v0, :cond_2

    move-object p0, v3

    .line 47
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0

    .line 41
    :cond_3
    :try_start_1
    new-instance v0, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$ServerBusy;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$ServerBusy;-><init>()V

    throw v0
    :try_end_1
    .catch Lcom/xyron/game/launcher/util/ParallelArchiveDownloader$ServerBusy; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 47
    :catch_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0

    :catch_1
    move-exception p0

    .line 45
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0
.end method
