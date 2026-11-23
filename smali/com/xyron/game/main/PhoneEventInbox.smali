.class final Lcom/xyron/game/main/PhoneEventInbox;
.super Ljava/lang/Object;
.source "PhoneEventInbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/PhoneEventInbox$Entry;
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/xyron/game/main/PhoneEventInbox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private revision:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneEventInbox;->entries:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method declared-synchronized acknowledge(Lcom/xyron/game/main/PhoneEventInbox$Entry;)V
    .locals 5

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneEventInbox;->entries:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/xyron/game/main/PhoneEventInbox$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xyron/game/main/PhoneEventInbox$Entry;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/xyron/game/main/PhoneEventInbox$Entry;->revision:J

    iget-wide v2, p1, Lcom/xyron/game/main/PhoneEventInbox$Entry;->revision:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/PhoneEventInbox;->entries:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/xyron/game/main/PhoneEventInbox$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized claim()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xyron/game/main/PhoneEventInbox$Entry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 17
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/xyron/game/main/PhoneEventInbox;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xyron/game/main/PhoneEventInbox$Entry;

    iget-boolean v3, v2, Lcom/xyron/game/main/PhoneEventInbox$Entry;->delivering:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/xyron/game/main/PhoneEventInbox$Entry;->delivering:Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneEventInbox;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pending()Z
    .locals 1

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneEventInbox;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneEventInbox;->entries:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/xyron/game/main/PhoneEventInbox$Entry;

    iget-wide v2, p0, Lcom/xyron/game/main/PhoneEventInbox;->revision:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/xyron/game/main/PhoneEventInbox;->revision:J

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/xyron/game/main/PhoneEventInbox$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/xyron/game/main/PhoneEventInbox;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    const/16 p2, 0x80

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/PhoneEventInbox;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "r:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized resume()V
    .locals 3

    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneEventInbox;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xyron/game/main/PhoneEventInbox$Entry;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/xyron/game/main/PhoneEventInbox$Entry;->delivering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized retry(Lcom/xyron/game/main/PhoneEventInbox$Entry;)V
    .locals 5

    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneEventInbox;->entries:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/xyron/game/main/PhoneEventInbox$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xyron/game/main/PhoneEventInbox$Entry;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/xyron/game/main/PhoneEventInbox$Entry;->revision:J

    iget-wide v3, p1, Lcom/xyron/game/main/PhoneEventInbox$Entry;->revision:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/xyron/game/main/PhoneEventInbox$Entry;->delivering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized snapshot()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xyron/game/main/PhoneEventInbox$Entry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 16
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneEventInbox;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
