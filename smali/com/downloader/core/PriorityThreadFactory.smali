.class public Lcom/downloader/core/PriorityThreadFactory;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mThreadPriority:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/downloader/core/PriorityThreadFactory;->mThreadPriority:I

    return-void
.end method

.method static synthetic access$000(Lcom/downloader/core/PriorityThreadFactory;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/downloader/core/PriorityThreadFactory;->mThreadPriority:I

    return p0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 21
    new-instance v0, Lcom/downloader/core/PriorityThreadFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/downloader/core/PriorityThreadFactory$1;-><init>(Lcom/downloader/core/PriorityThreadFactory;Ljava/lang/Runnable;)V

    .line 32
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object p1
.end method
