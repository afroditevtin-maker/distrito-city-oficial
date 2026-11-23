.class final Lcom/xyron/game/main/InventoryPages;
.super Ljava/lang/Object;
.source "InventoryPages.java"


# instance fields
.field private expected:I

.field private newest:J

.field private final parts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/xyron/game/main/InventoryPages;->newest:J

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/InventoryPages;->parts:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method accept(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    const-string v0, "revision"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 14
    const-string v2, "pages"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "part"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_8

    if-lt v2, v3, :cond_8

    const/4 v6, 0x4

    if-gt v2, v6, :cond_8

    if-ltz v4, :cond_8

    if-ge v4, v2, :cond_8

    .line 15
    const-string v6, "items"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/json/JSONArray;

    if-eqz v7, :cond_8

    .line 16
    iget-wide v7, p0, Lcom/xyron/game/main/InventoryPages;->newest:J

    const/4 v9, 0x0

    cmp-long v10, v0, v7

    if-gez v10, :cond_0

    return-object v9

    :cond_0
    cmp-long v10, v0, v7

    if-lez v10, :cond_1

    .line 17
    iput-wide v0, p0, Lcom/xyron/game/main/InventoryPages;->newest:J

    iput v2, p0, Lcom/xyron/game/main/InventoryPages;->expected:I

    iget-object v0, p0, Lcom/xyron/game/main/InventoryPages;->parts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 18
    :cond_1
    iget v0, p0, Lcom/xyron/game/main/InventoryPages;->expected:I

    if-ne v0, v2, :cond_7

    .line 19
    iget-object v0, p0, Lcom/xyron/game/main/InventoryPages;->parts:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/xyron/game/main/InventoryPages;->parts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v0, v2, :cond_2

    return-object v9

    .line 21
    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/16 v1, 0x2a

    new-array v4, v1, [Z

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_6

    .line 23
    iget-object v8, p0, Lcom/xyron/game/main/InventoryPages;->parts:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONArray;

    if-nez v8, :cond_3

    return-object v9

    :cond_3
    const/4 v10, 0x0

    .line 24
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 25
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "slot"

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    if-ltz v12, :cond_4

    if-ge v12, v1, :cond_4

    .line 26
    aget-boolean v13, v4, v12

    if-nez v13, :cond_4

    const-string v13, "quantity"

    invoke-virtual {v11, v13, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    if-lt v13, v3, :cond_4

    const-string v13, "itemId"

    invoke-virtual {v11, v13, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    if-lt v13, v3, :cond_4

    .line 27
    aput-boolean v3, v4, v12

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 26
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid inventory row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 30
    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/xyron/game/main/InventoryPages;->parts:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-object v1

    .line 18
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Inventory page count changed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid inventory page"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method reset()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 11
    iput-wide v0, p0, Lcom/xyron/game/main/InventoryPages;->newest:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/xyron/game/main/InventoryPages;->expected:I

    iget-object v0, p0, Lcom/xyron/game/main/InventoryPages;->parts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
