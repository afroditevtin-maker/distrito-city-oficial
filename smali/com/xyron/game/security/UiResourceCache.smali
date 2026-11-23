.class final Lcom/xyron/game/security/UiResourceCache;
.super Ljava/lang/Object;
.source "UiResourceCache.java"


# instance fields
.field private bytes:I

.field private final entries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final limit:I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/xyron/game/security/UiResourceCache;->entries:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 11
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/xyron/game/security/UiResourceCache;->limit:I

    return-void
.end method


# virtual methods
.method declared-synchronized bytes()I
    .locals 1

    monitor-enter p0

    .line 25
    :try_start_0
    iget v0, p0, Lcom/xyron/game/security/UiResourceCache;->bytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/security/UiResourceCache;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xyron/game/security/UiResourceCache;->bytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(Ljava/lang/String;)[B
    .locals 1

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/security/UiResourceCache;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized put(Ljava/lang/String;[B)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_3

    .line 14
    :try_start_0
    array-length v0, p2

    iget v1, p0, Lcom/xyron/game/security/UiResourceCache;->limit:I

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/security/UiResourceCache;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    .line 16
    iget v1, p0, Lcom/xyron/game/security/UiResourceCache;->bytes:I

    array-length v0, v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/xyron/game/security/UiResourceCache;->bytes:I

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/security/UiResourceCache;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/xyron/game/security/UiResourceCache;->bytes:I

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xyron/game/security/UiResourceCache;->bytes:I

    .line 18
    iget-object p1, p0, Lcom/xyron/game/security/UiResourceCache;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 19
    :goto_0
    iget p2, p0, Lcom/xyron/game/security/UiResourceCache;->bytes:I

    iget v0, p0, Lcom/xyron/game/security/UiResourceCache;->limit:I

    if-le p2, v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 20
    iget p2, p0, Lcom/xyron/game/security/UiResourceCache;->bytes:I

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/xyron/game/security/UiResourceCache;->bytes:I

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 23
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 14
    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method
