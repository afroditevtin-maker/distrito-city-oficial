.class public Lcom/downloader/core/DefaultExecutorSupplier;
.super Ljava/lang/Object;
.source "DefaultExecutorSupplier.java"

# interfaces
.implements Lcom/downloader/core/ExecutorSupplier;


# static fields
.field private static final DEFAULT_MAX_NUM_THREADS:I


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mainThreadExecutor:Ljava/util/concurrent/Executor;

.field private final networkExecutor:Lcom/downloader/core/DownloadExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/downloader/core/DefaultExecutorSupplier;->DEFAULT_MAX_NUM_THREADS:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/downloader/core/PriorityThreadFactory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/downloader/core/PriorityThreadFactory;-><init>(I)V

    .line 22
    new-instance v1, Lcom/downloader/core/DownloadExecutor;

    sget v2, Lcom/downloader/core/DefaultExecutorSupplier;->DEFAULT_MAX_NUM_THREADS:I

    invoke-direct {v1, v2, v0}, Lcom/downloader/core/DownloadExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/downloader/core/DefaultExecutorSupplier;->networkExecutor:Lcom/downloader/core/DownloadExecutor;

    .line 23
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/downloader/core/DefaultExecutorSupplier;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 24
    new-instance v0, Lcom/downloader/core/MainThreadExecutor;

    invoke-direct {v0}, Lcom/downloader/core/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/downloader/core/DefaultExecutorSupplier;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public forBackgroundTasks()Ljava/util/concurrent/Executor;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/downloader/core/DefaultExecutorSupplier;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public forDownloadTasks()Lcom/downloader/core/DownloadExecutor;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/downloader/core/DefaultExecutorSupplier;->networkExecutor:Lcom/downloader/core/DownloadExecutor;

    return-object v0
.end method

.method public forMainThreadTasks()Ljava/util/concurrent/Executor;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/downloader/core/DefaultExecutorSupplier;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
