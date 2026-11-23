.class final Lcom/xyron/game/main/LocalPhonePreferences;
.super Ljava/lang/Object;
.source "LocalPhonePreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/LocalPhonePreferences$Store;
    }
.end annotation


# static fields
.field private static final DEFAULTS:Ljava/lang/String; = "{\"wallpaper\":\"aurora\",\"lockWallpaper\":\"same\",\"size\":115,\"sizeVersion\":2,\"text\":100,\"dark\":false,\"wifi\":true,\"bluetooth\":false,\"notifications\":true,\"silent\":false,\"volume\":60,\"previews\":true}"


# instance fields
.field private final store:Lcom/xyron/game/main/LocalPhonePreferences$Store;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/LocalPhonePreferences$Store;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/LocalPhonePreferences;->store:Lcom/xyron/game/main/LocalPhonePreferences$Store;

    return-void
.end method

.method private key(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "account:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Aguarde a identifica\u00e7\u00e3o da sua conta."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private normalized(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "{\"wallpaper\":\"aurora\",\"lockWallpaper\":\"same\",\"size\":115,\"sizeVersion\":2,\"text\":100,\"dark\":false,\"wifi\":true,\"bluetooth\":false,\"notifications\":true,\"silent\":false,\"volume\":60,\"previews\":true}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x64

    const-string v4, "size"

    if-eqz v2, :cond_8

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v5, :cond_0

    .line 21
    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v5, v7, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_2

    instance-of v3, v5, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 23
    :cond_2
    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_6

    instance-of v6, v5, Ljava/lang/Number;

    if-eqz v6, :cond_6

    .line 24
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 25
    const-string v6, "volume"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 26
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/16 v3, 0x96

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x50

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 27
    :cond_5
    :goto_1
    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 28
    :cond_6
    instance-of v3, v5, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 29
    check-cast v5, Ljava/lang/String;

    .line 30
    const-string v3, "aurora"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "montanha"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "lua"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "abstrato"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "lockWallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "same"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_7
    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 33
    :cond_8
    const-string v1, "sizeVersion"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_9

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_9

    const/16 p1, 0x73

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    :cond_9
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method private object(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 14
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Ajustes inv\u00e1lidos."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method declared-synchronized importLegacy(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/LocalPhonePreferences;->store:Lcom/xyron/game/main/LocalPhonePreferences$Store;

    invoke-direct {p0, p1}, Lcom/xyron/game/main/LocalPhonePreferences;->key(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xyron/game/main/LocalPhonePreferences$Store;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/LocalPhonePreferences;->load(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 48
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo p2, "{}"

    :cond_2
    invoke-direct {p0, p2}, Lcom/xyron/game/main/LocalPhonePreferences;->object(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 49
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/LocalPhonePreferences;->load(I)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xyron/game/main/LocalPhonePreferences;->save(ILjava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized load(I)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/LocalPhonePreferences;->store:Lcom/xyron/game/main/LocalPhonePreferences$Store;

    invoke-direct {p0, p1}, Lcom/xyron/game/main/LocalPhonePreferences;->key(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xyron/game/main/LocalPhonePreferences$Store;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo p1, "{}"

    :cond_1
    invoke-direct {p0, p1}, Lcom/xyron/game/main/LocalPhonePreferences;->object(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/LocalPhonePreferences;->normalized(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized save(ILjava/lang/String;Z)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-direct {p0, p2}, Lcom/xyron/game/main/LocalPhonePreferences;->object(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/LocalPhonePreferences;->load(I)Lorg/json/JSONObject;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance p3, Lorg/json/JSONObject;

    const-string/jumbo v0, "{\"wallpaper\":\"aurora\",\"lockWallpaper\":\"same\",\"size\":115,\"sizeVersion\":2,\"text\":100,\"dark\":false,\"wifi\":true,\"bluetooth\":false,\"notifications\":true,\"silent\":false,\"volume\":60,\"previews\":true}"

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 42
    :cond_1
    invoke-direct {p0, p3}, Lcom/xyron/game/main/LocalPhonePreferences;->normalized(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 43
    iget-object p3, p0, Lcom/xyron/game/main/LocalPhonePreferences;->store:Lcom/xyron/game/main/LocalPhonePreferences$Store;

    invoke-direct {p0, p1}, Lcom/xyron/game/main/LocalPhonePreferences;->key(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lcom/xyron/game/main/LocalPhonePreferences$Store;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 44
    monitor-exit p0

    return-object p2

    .line 43
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "N\u00e3o foi poss\u00edvel salvar os ajustes no aparelho."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
