.class public final Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;
.super Ljava/lang/Object;
.source "PickupStudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/PickupStudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PickupDefinition"
.end annotation


# instance fields
.field public amount:I

.field public createdAt:J

.field public id:Ljava/lang/String;

.field public interiorId:I

.field public label:Ljava/lang/String;

.field public modelId:I

.field public pickupType:I

.field public updatedAt:J

.field public worldId:I

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    .line 347
    iput-object v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->label:Ljava/lang/String;

    const/16 v0, 0x4da

    .line 348
    iput v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->modelId:I

    const/4 v0, 0x2

    .line 349
    iput v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->pickupType:I

    const/4 v0, 0x0

    .line 350
    iput v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->worldId:I

    .line 351
    iput v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->interiorId:I

    const/4 v0, 0x1

    .line 352
    iput v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->amount:I

    const/4 v0, 0x0

    .line 353
    iput v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->x:F

    .line 354
    iput v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->y:F

    .line 355
    iput v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->z:F

    const-wide/16 v0, 0x0

    .line 356
    iput-wide v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->createdAt:J

    .line 357
    iput-wide v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->updatedAt:J

    return-void
.end method

.method static fromJson(Lorg/json/JSONObject;)Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 400
    :cond_0
    new-instance v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;-><init>()V

    .line 401
    const-string v1, "id"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    .line 402
    const-string v1, "label"

    const-string v2, "Pickup"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->label:Ljava/lang/String;

    .line 403
    const-string v1, "modelId"

    const/16 v2, 0x4da

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->modelId:I

    .line 404
    const-string v1, "pickupType"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->pickupType:I

    .line 405
    const-string/jumbo v1, "worldId"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->worldId:I

    .line 406
    const-string v1, "interiorId"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->interiorId:I

    .line 407
    const-string v1, "amount"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->amount:I

    .line 408
    const-string/jumbo v1, "x"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->x:F

    .line 409
    const-string/jumbo v1, "y"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->y:F

    .line 410
    const-string/jumbo v1, "z"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->z:F

    .line 411
    const-string v1, "createdAt"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->createdAt:J

    .line 412
    const-string v1, "updatedAt"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->updatedAt:J

    .line 413
    invoke-virtual {v0}, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->sanitized()Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public sanitized()Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;
    .locals 3

    .line 360
    new-instance v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;-><init>()V

    .line 361
    iget-object v1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    .line 362
    iget-object v1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->label:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Pickup"

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->label:Ljava/lang/String;

    .line 363
    iget v1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->modelId:I

    if-gtz v1, :cond_2

    const/16 v1, 0x4da

    :cond_2
    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->modelId:I

    .line 364
    iget v1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->pickupType:I

    if-gtz v1, :cond_3

    const/4 v1, 0x2

    :cond_3
    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->pickupType:I

    .line 365
    iget v1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->worldId:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->worldId:I

    .line 366
    iget v1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->interiorId:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->interiorId:I

    .line 367
    iget v1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->amount:I

    if-gtz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->amount:I

    .line 368
    iget v1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->x:F

    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->x:F

    .line 369
    iget v1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->y:F

    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->y:F

    .line 370
    iget v1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->z:F

    iput v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->z:F

    .line 371
    iget-wide v1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->createdAt:J

    iput-wide v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->createdAt:J

    .line 372
    iget-wide v1, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->updatedAt:J

    iput-wide v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->updatedAt:J

    return-object v0
.end method

.method toJson()Lorg/json/JSONObject;
    .locals 4

    .line 377
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 379
    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string v1, "label"

    iget-object v2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    const-string v1, "modelId"

    iget v2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->modelId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 382
    const-string v1, "pickupType"

    iget v2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->pickupType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 383
    const-string/jumbo v1, "worldId"

    iget v2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->worldId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    const-string v1, "interiorId"

    iget v2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->interiorId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 385
    const-string v1, "amount"

    iget v2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->amount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 386
    const-string/jumbo v1, "x"

    iget v2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->x:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 387
    const-string/jumbo v1, "y"

    iget v2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->y:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 388
    const-string/jumbo v1, "z"

    iget v2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->z:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 389
    const-string v1, "createdAt"

    iget-wide v2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->createdAt:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 390
    const-string v1, "updatedAt"

    iget-wide v2, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->updatedAt:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
