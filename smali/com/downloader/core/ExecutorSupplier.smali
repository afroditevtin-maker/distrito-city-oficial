.class public interface abstract Lcom/downloader/core/ExecutorSupplier;
.super Ljava/lang/Object;
.source "ExecutorSupplier.java"


# virtual methods
.method public abstract forBackgroundTasks()Ljava/util/concurrent/Executor;
.end method

.method public abstract forDownloadTasks()Lcom/downloader/core/DownloadExecutor;
.end method

.method public abstract forMainThreadTasks()Ljava/util/concurrent/Executor;
.end method
