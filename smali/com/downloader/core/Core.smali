.class public Lcom/downloader/core/Core;
.super Ljava/lang/Object;
.source "Core.java"


# static fields
.field private static instance:Lcom/downloader/core/Core;


# instance fields
.field private final executorSupplier:Lcom/downloader/core/ExecutorSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/downloader/core/DefaultExecutorSupplier;

    invoke-direct {v0}, Lcom/downloader/core/DefaultExecutorSupplier;-><init>()V

    iput-object v0, p0, Lcom/downloader/core/Core;->executorSupplier:Lcom/downloader/core/ExecutorSupplier;

    return-void
.end method

.method public static getInstance()Lcom/downloader/core/Core;
    .locals 2

    .line 17
    sget-object v0, Lcom/downloader/core/Core;->instance:Lcom/downloader/core/Core;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lcom/downloader/core/Core;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/downloader/core/Core;->instance:Lcom/downloader/core/Core;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/downloader/core/Core;

    invoke-direct {v1}, Lcom/downloader/core/Core;-><init>()V

    sput-object v1, Lcom/downloader/core/Core;->instance:Lcom/downloader/core/Core;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/downloader/core/Core;->instance:Lcom/downloader/core/Core;

    return-object v0
.end method

.method public static shutDown()V
    .locals 1

    .line 32
    sget-object v0, Lcom/downloader/core/Core;->instance:Lcom/downloader/core/Core;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/downloader/core/Core;->instance:Lcom/downloader/core/Core;

    :cond_0
    return-void
.end method


# virtual methods
.method public getExecutorSupplier()Lcom/downloader/core/ExecutorSupplier;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/downloader/core/Core;->executorSupplier:Lcom/downloader/core/ExecutorSupplier;

    return-object v0
.end method
