.class final Lcom/xyron/game/main/PhoneApps$PanelBridge;
.super Ljava/lang/Object;
.source "PhoneApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/PhoneApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/PhoneApps;


# direct methods
.method private constructor <init>(Lcom/xyron/game/main/PhoneApps;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xyron/game/main/PhoneApps;Lcom/xyron/game/main/PhoneApps$1;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/xyron/game/main/PhoneApps$PanelBridge;-><init>(Lcom/xyron/game/main/PhoneApps;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$send$0$com-xyron-game-main-PhoneApps$PanelBridge(Ljava/lang/String;)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    .line 274
    const-string v1, "target"

    const-string v2, "requestId"

    const-string v3, "event"

    const-string v4, "action"

    .line 0
    const-string v5, "familyui|"

    const-string v6, "admin|"

    const-string v7, "orgui|"

    const-string v8, "panelform|"

    .line 274
    :try_start_0
    iget-object v9, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v9}, Lcom/xyron/game/main/PhoneApps;->access$300(Lcom/xyron/game/main/PhoneApps;)Landroid/webkit/WebView;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    .line 275
    :cond_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v10, p1

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 276
    const-string v11, "panelFormResponse"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, -0x1

    const/16 v13, 0xf0

    const/4 v14, 0x0

    const-string/jumbo v15, "|"

    if-eqz v11, :cond_3

    .line 277
    :try_start_1
    const-string v1, "text"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    if-gt v2, v13, :cond_2

    .line 278
    iget-object v2, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v2}, Lcom/xyron/game/main/PhoneApps;->access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "token"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "response"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v14, 0x1

    :cond_1
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "row"

    invoke-virtual {v9, v4, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    return-void

    .line 277
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Input too long"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_3
    const-string v8, "adminClose"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v1, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v1}, Lcom/xyron/game/main/PhoneApps;->access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;

    move-result-object v1

    const-string v2, "panelform|0|0|0|"

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    iget-object v1, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v1}, Lcom/xyron/game/main/PhoneApps;->access$700(Lcom/xyron/game/main/PhoneApps;)V

    return-void

    .line 281
    :cond_4
    const-string v8, "orgUiClose"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "org"

    if-nez v8, :cond_1d

    :try_start_2
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "close"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto/16 :goto_6

    .line 282
    :cond_5
    iget-object v8, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v8}, Lcom/xyron/game/main/PhoneApps;->access$800(Lcom/xyron/game/main/PhoneApps;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v11, "page"

    const-string v13, " "

    if-eqz v8, :cond_a

    .line 283
    :try_start_3
    const-string v1, "orgFractionSelect"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "orgFractionOperate"

    if-nez v1, :cond_6

    :try_start_4
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    .line 284
    :cond_6
    const-string v1, "menuKey"

    invoke-virtual {v9, v1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_9

    const/4 v3, 0x5

    if-le v1, v3, :cond_7

    goto :goto_1

    .line 285
    :cond_7
    iget-object v3, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v3}, Lcom/xyron/game/main/PhoneApps;->access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v5}, Lcom/xyron/game/main/PhoneApps;->access$904(Lcom/xyron/game/main/PhoneApps;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "operate"

    goto :goto_0

    :cond_8
    const-string v2, "select"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_9
    :goto_1
    return-void

    .line 287
    :cond_a
    iget-object v7, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v7}, Lcom/xyron/game/main/PhoneApps;->access$800(Lcom/xyron/game/main/PhoneApps;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "family"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v8, "message"

    if-eqz v7, :cond_17

    .line 288
    :try_start_5
    const-string v2, "type"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "angra:family"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    .line 289
    :cond_b
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[a-z.]{2,30}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    return-void

    .line 290
    :cond_c
    const-string v3, "fields"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_d

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :cond_d
    const-string v4, ""

    .line 291
    const-string v6, "members.list"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    const-string v6, "ranking.list"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    const-string v6, "families.list"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto/16 :goto_3

    .line 292
    :cond_e
    const-string v6, "announcement.save"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 293
    :cond_f
    const-string v6, "family.leave"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v1, "confirmation"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 294
    :cond_10
    const-string v6, "bank."

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "deposit"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string/jumbo v6, "withdraw"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_11
    const-string v1, "amount"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 295
    :cond_12
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "members.rank"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "rank"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_13
    const-string v1, "applications.respond"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "decision"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 291
    :cond_14
    :goto_3
    invoke-virtual {v3, v11, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 296
    :cond_15
    :goto_4
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    const/16 v3, 0xf0

    if-gt v1, v3, :cond_16

    .line 297
    iget-object v1, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v1}, Lcom/xyron/game/main/PhoneApps;->access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v5}, Lcom/xyron/game/main/PhoneApps;->access$904(Lcom/xyron/game/main/PhoneApps;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    return-void

    .line 296
    :cond_16
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Payload too long"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_17
    const-string v1, "adminRequest"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v1}, Lcom/xyron/game/main/PhoneApps;->access$1000(Lcom/xyron/game/main/PhoneApps;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_18

    goto/16 :goto_5

    .line 301
    :cond_18
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "params"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v10, -0x1

    invoke-virtual {v9, v2, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 302
    const-string v5, "[a-z]{2,24}"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-ltz v5, :cond_1b

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    const/16 v7, 0xf0

    if-gt v5, v7, :cond_1b

    .line 303
    iget-object v5, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v5}, Lcom/xyron/game/main/PhoneApps;->access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 304
    iget-object v1, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "adminResult"

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "accepted"

    invoke-virtual {v2, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "N\u00e3o foi poss\u00edvel enviar a solicita\u00e7\u00e3o. Confira sua conex\u00e3o."

    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xyron/game/main/PhoneApps;->access$1100(Lcom/xyron/game/main/PhoneApps;Lorg/json/JSONObject;)V

    return-void

    .line 307
    :cond_19
    const-string v2, "profilegoto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "profilebring"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "profilespectate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "ir"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "trazer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "sp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1a
    iget-object v1, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v1}, Lcom/xyron/game/main/PhoneApps;->access$700(Lcom/xyron/game/main/PhoneApps;)V

    goto :goto_8

    .line 302
    :cond_1b
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid request"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    :goto_5
    return-void

    .line 281
    :cond_1d
    :goto_6
    iget-object v1, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v1}, Lcom/xyron/game/main/PhoneApps;->access$800(Lcom/xyron/game/main/PhoneApps;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "admin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v1}, Lcom/xyron/game/main/PhoneApps;->access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v3}, Lcom/xyron/game/main/PhoneApps;->access$800(Lcom/xyron/game/main/PhoneApps;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "orgui"

    goto :goto_7

    :cond_1e
    const-string v3, "familyui"

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v3}, Lcom/xyron/game/main/PhoneApps;->access$904(Lcom/xyron/game/main/PhoneApps;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|close|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_1f
    iget-object v1, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v1}, Lcom/xyron/game/main/PhoneApps;->access$700(Lcom/xyron/game/main/PhoneApps;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    .line 308
    :catch_0
    iget-object v1, v0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v1}, Lcom/xyron/game/main/PhoneApps;->access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;

    move-result-object v1

    const-string v2, "N\u00e3o foi poss\u00edvel enviar a solicita\u00e7\u00e3o."

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    :cond_20
    :goto_8
    return-void
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 271
    invoke-virtual {p0, p1}, Lcom/xyron/game/main/PhoneApps$PanelBridge;->send(Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_1

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps$PanelBridge;->this$0:Lcom/xyron/game/main/PhoneApps;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneApps;->access$200(Lcom/xyron/game/main/PhoneApps;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/PhoneApps$PanelBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/PhoneApps$PanelBridge$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/PhoneApps$PanelBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
