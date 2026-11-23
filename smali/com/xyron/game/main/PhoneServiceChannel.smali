.class final Lcom/xyron/game/main/PhoneServiceChannel;
.super Ljava/lang/Object;
.source "PhoneServiceChannel.java"


# instance fields
.field private active:Lorg/json/JSONObject;

.field private final apps:Lcom/xyron/game/main/PhoneApps;

.field private document:Ljava/lang/String;

.field private final game:Lcom/xyron/game/main/SAMP;

.field private final handler:Landroid/os/Handler;

.field private lastSent:J

.field private operation:I

.field private pageKind:I

.field private pendingWireText:Ljava/lang/String;

.field private protocolVersion:I

.field private final queue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final queuedTimeout:Ljava/lang/Runnable;

.field private replayOriginal:Ljava/lang/String;

.field private replaySettings:Ljava/lang/String;

.field private replayToken:Ljava/lang/String;

.field private retries:I

.field private final settingsOutbox:Lcom/xyron/game/main/PhoneSettingsOutbox;

.field private settingsReplayDone:Z

.field private final timeout:Ljava/lang/Runnable;

.field private uncertain:Z

.field private wallData:Ljava/lang/String;

.field private wallEtag:Ljava/lang/String;

.field private wallPosition:I

.field private wallTarget:I

.field private wallToken:Ljava/lang/String;

.field private wire:I


# direct methods
.method public static synthetic $r8$lambda$SP-Tbh7HFL24viQeQWycwzn-eEc(Lcom/xyron/game/main/PhoneServiceChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/PhoneServiceChannel;->queueExpired()V

    return-void
.end method

.method public static synthetic $r8$lambda$Yf7_JdBQ09kTku4y8604s4Vp8Jw(Lcom/xyron/game/main/PhoneServiceChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/PhoneServiceChannel;->timedOut()V

    return-void
.end method

.method public static synthetic $r8$lambda$sXkqHTlA10ThpE1izXYTunKvHQc(Lcom/xyron/game/main/PhoneServiceChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/PhoneServiceChannel;->pump()V

    return-void
.end method

.method constructor <init>(Lcom/xyron/game/main/SAMP;Lcom/xyron/game/main/PhoneApps;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queue:Ljava/util/ArrayDeque;

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->pageKind:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wallToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wallEtag:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->replaySettings:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->replayToken:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->replayOriginal:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->document:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->pendingWireText:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/xyron/game/main/PhoneServiceChannel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/PhoneServiceChannel$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/PhoneServiceChannel;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queuedTimeout:Ljava/lang/Runnable;

    .line 53
    new-instance v0, Lcom/xyron/game/main/PhoneServiceChannel$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/PhoneServiceChannel$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/main/PhoneServiceChannel;)V

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->timeout:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    iput-object p2, p0, Lcom/xyron/game/main/PhoneServiceChannel;->apps:Lcom/xyron/game/main/PhoneApps;

    .line 55
    const-string p2, "angra_phone_pending"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/xyron/game/main/PhoneSettingsOutbox;

    new-instance v0, Lcom/xyron/game/main/PhoneServiceChannel$1;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/PhoneServiceChannel$1;-><init>(Lcom/xyron/game/main/PhoneServiceChannel;Landroid/content/SharedPreferences;)V

    invoke-direct {p2, v0}, Lcom/xyron/game/main/PhoneSettingsOutbox;-><init>(Lcom/xyron/game/main/PhoneSettingsOutbox$Store;)V

    iput-object p2, p0, Lcom/xyron/game/main/PhoneServiceChannel;->settingsOutbox:Lcom/xyron/game/main/PhoneSettingsOutbox;

    return-void
.end method

.method private static bankError(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "O banco recusou a opera\u00e7\u00e3o (c\u00f3digo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 268
    :pswitch_0
    const-string p0, "O acesso ao banco n\u00e3o est\u00e1 dispon\u00edvel no seu estado atual."

    return-object p0

    .line 267
    :pswitch_1
    const-string p0, "A conta de destino atingiu seu limite de saldo."

    return-object p0

    .line 266
    :pswitch_2
    const-string p0, "Aguarde um instante antes de movimentar a conta novamente."

    return-object p0

    .line 269
    :cond_0
    const-string p0, "O atendimento banc\u00e1rio est\u00e1 temporariamente indispon\u00edvel."

    return-object p0

    .line 265
    :cond_1
    const-string p0, "O saldo banc\u00e1rio \u00e9 insuficiente."

    return-object p0

    .line 264
    :cond_2
    const-string p0, "A transfer\u00eancia deve ser de R$ 1.000 a R$ 1.000.000."

    return-object p0

    .line 263
    :cond_3
    const-string p0, "Escolha outra conta; n\u00e3o \u00e9 poss\u00edvel transferir para si mesmo."

    return-object p0

    .line 262
    :cond_4
    const-string p0, "O jogador informado n\u00e3o est\u00e1 conectado. Confira o ID e tente novamente."

    return-object p0

    .line 261
    :cond_5
    const-string p0, "O banco est\u00e1 temporariamente indispon\u00edvel."

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private confirmedSettings(Ljava/lang/String;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->settingsOutbox:Lcom/xyron/game/main/PhoneSettingsOutbox;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->phoneAccountId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/xyron/game/main/PhoneSettingsOutbox;->confirmed(ILjava/lang/String;)Z

    return-void
.end method

.method private dispatchActive()V
    .locals 16

    move-object/from16 v9, p0

    .line 99
    const-string v0, "angra_phone_delivery"

    const-string v1, "settings:get"

    .line 0
    const-string v2, "phonebank|"

    .line 99
    iget-object v3, v9, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    const-string v4, "payload"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 100
    :cond_0
    iget-object v4, v9, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    const-string v5, "action"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 103
    :try_start_0
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "operationToken"

    if-eqz v4, :cond_1

    :try_start_1
    iget-object v4, v9, Lcom/xyron/game/main/PhoneServiceChannel;->replaySettings:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    iget-object v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    iget-object v1, v9, Lcom/xyron/game/main/PhoneServiceChannel;->replayToken:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, v9, Lcom/xyron/game/main/PhoneServiceChannel;->replaySettings:Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 106
    :cond_1
    invoke-direct {v9, v10}, Lcom/xyron/game/main/PhoneServiceChannel;->mutation(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, ""

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    :try_start_2
    iget-object v4, v9, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 107
    iget-object v4, v9, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v4}, Lcom/xyron/game/main/SAMP;->phoneAccountId()I

    move-result v4

    if-lt v4, v7, :cond_4

    .line 108
    invoke-direct {v9, v10, v3}, Lcom/xyron/game/main/PhoneServiceChannel;->ledgerKey(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, v9, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v8, v0, v11}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 109
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "-"

    invoke-virtual {v8, v12, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 110
    :cond_2
    iget-object v12, v9, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v12, v0, v11}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    const-string v8, "ledgerKey"

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 110
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "N\u00e3o foi poss\u00edvel preparar o comprovante local."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Aguarde a identifica\u00e7\u00e3o da sua conta antes de salvar."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_5
    :goto_0
    const-string v0, "wallpaper:save"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "lock"

    const-string v8, "target"

    if-eqz v0, :cond_8

    .line 114
    :try_start_3
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wallTarget:I

    .line 115
    const-string v0, "data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^data:image/jpeg;base64,"

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    iget-object v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5dc0

    if-gt v0, v1, :cond_7

    iget-object v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_7

    iget-object v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    const-string v1, "/9j/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    const-string v1, "[A-Za-z0-9+/=]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    iget-object v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wallToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wallToken:Ljava/lang/String;

    .line 118
    :cond_6
    iget-object v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wallToken:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-direct {v9, v2, v0, v6, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->sendWall(IILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 116
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Imagem inv\u00e1lida ou acima do limite."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_8
    const-string v0, "wallpaper:get"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wallTarget:I

    iput-object v6, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    iput-object v6, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wallEtag:Ljava/lang/String;

    iput v11, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wallPosition:I

    const/16 v0, 0x1b

    invoke-direct {v9, v0, v11, v6, v6}, Lcom/xyron/game/main/PhoneServiceChannel;->sendWall(IILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_9
    const-string v0, "offset"

    const v4, 0x7fffffff

    invoke-static {v3, v0, v11, v11, v4}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v6

    .line 122
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v8, "olx:edit"

    const/4 v12, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    :try_start_4
    const-string v0, "notes:get"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "notes:delete"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xd

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "environment:get"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x11

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "olx:decision"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x21

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "contacts:save"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    goto/16 :goto_2

    :sswitch_5
    const-string v0, "news:get"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x12

    goto/16 :goto_2

    :sswitch_6
    const-string v0, "olx:offer"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x20

    goto/16 :goto_2

    :sswitch_7
    const-string v0, "contacts:get"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto/16 :goto_2

    :sswitch_8
    const-string v0, "phone:authorize"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto/16 :goto_2

    :sswitch_9
    const-string v0, "call:start"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x7

    goto/16 :goto_2

    :sswitch_a
    const-string v0, "bank:transfer"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x1a

    goto/16 :goto_2

    :sswitch_b
    const-string v0, "olx:save"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x1c

    goto/16 :goto_2

    :sswitch_c
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x1d

    goto/16 :goto_2

    :sswitch_d
    const-string v0, "call:accept"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    goto/16 :goto_2

    :sswitch_e
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xe

    goto/16 :goto_2

    :sswitch_f
    const-string v0, "contacts:delete"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    goto/16 :goto_2

    :sswitch_10
    const-string v0, "news:save"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x13

    goto/16 :goto_2

    :sswitch_11
    const-string v0, "bank:history"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x19

    goto/16 :goto_2

    :sswitch_12
    const-string v0, "notifications:clear"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x17

    goto/16 :goto_2

    :sswitch_13
    const-string v0, "notes:save"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    goto/16 :goto_2

    :sswitch_14
    const-string v0, "call:end"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    goto/16 :goto_2

    :sswitch_15
    const-string v0, "olx:offers"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x1f

    goto/16 :goto_2

    :sswitch_16
    const-string v0, "settings:save"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xf

    goto/16 :goto_2

    :sswitch_17
    const-string v0, "olx:delete"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x1e

    goto/16 :goto_2

    :sswitch_18
    const-string v0, "messages:send"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    goto/16 :goto_2

    :sswitch_19
    const-string v0, "notifications:read"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x16

    goto/16 :goto_2

    :sswitch_1a
    const-string v0, "call:history"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_1b
    const-string v0, "messages:get"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_1c
    const-string v0, "olx:get"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x1b

    goto :goto_2

    :sswitch_1d
    const-string v0, "support:create"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    goto :goto_2

    :sswitch_1e
    const-string v0, "notifications:get"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x15

    goto :goto_2

    :sswitch_1f
    const-string v0, "news:delete"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x14

    goto :goto_2

    :sswitch_20
    const-string v0, "bank:getBalance"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x18

    goto :goto_2

    :sswitch_21
    const-string v0, "support:get"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x10

    goto :goto_2

    :sswitch_22
    const-string v0, "olx:negotiation"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v0, :cond_a

    const/16 v0, 0x22

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v0, -0x1

    :goto_2
    const-string v1, "message"

    const-string v15, "to"

    const-string v14, "title"

    const-string v11, "id"

    const-string v13, "bank|"

    packed-switch v0, :pswitch_data_0

    .line 157
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_6

    .line 156
    :pswitch_0
    invoke-static {v3, v11, v12, v7, v4}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v3

    const-string v0, ""

    const-string v7, ""

    const-string v8, ""

    const/16 v2, 0xa

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move v4, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/xyron/game/main/PhoneServiceChannel;->extended(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 155
    :pswitch_1
    invoke-static {v3, v11, v12, v7, v4}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    const-string v2, "value"

    const v4, 0x3b9aca00

    const/4 v5, 0x0

    invoke-static {v3, v2, v5, v5, v4}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v4

    const-string v2, "decision"

    const/4 v5, 0x3

    invoke-static {v3, v2, v12, v7, v5}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v5

    const/16 v2, 0x8c

    invoke-static {v3, v1, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, ""

    const/16 v2, 0x9

    move-object/from16 v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/xyron/game/main/PhoneServiceChannel;->extended(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_2
    const v0, 0xc350

    .line 154
    invoke-static {v3, v11, v12, v7, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    const-string v2, "value"

    const v4, 0x3b9aca00

    invoke-static {v3, v2, v12, v7, v4}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v4

    const/16 v2, 0x8c

    invoke-static {v3, v1, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, ""

    const/16 v2, 0x8

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/xyron/game/main/PhoneServiceChannel;->extended(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 153
    :pswitch_3
    const-string v0, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move v4, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/xyron/game/main/PhoneServiceChannel;->extended(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_4
    const v0, 0xc350

    .line 152
    invoke-static {v3, v11, v12, v7, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v3

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/16 v2, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/xyron/game/main/PhoneServiceChannel;->extended(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 151
    :pswitch_5
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x6

    const v0, 0xc350

    const/4 v1, 0x0

    const/4 v2, 0x6

    goto :goto_3

    :cond_b
    const/4 v0, 0x5

    const v0, 0xc350

    const/4 v1, 0x0

    const/4 v2, 0x5

    :goto_3
    invoke-static {v3, v11, v1, v1, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    const-string v1, "price"

    const v4, 0x3b9aca00

    invoke-static {v3, v1, v12, v7, v4}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v4

    const/16 v1, 0x3c

    invoke-static {v3, v14, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "description"

    const/16 v5, 0xdc

    invoke-static {v3, v1, v5}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "image"

    const/16 v5, 0xa0

    invoke-static {v3, v1, v5}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/xyron/game/main/PhoneServiceChannel;->extended(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_6
    if-nez v6, :cond_c

    const/4 v2, 0x0

    goto :goto_4

    :cond_c
    const/4 v2, 0x1

    .line 150
    :goto_4
    const-string v0, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move v4, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/xyron/game/main/PhoneServiceChannel;->market(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 149
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->nextAngraBankRequest()I

    move-result v1

    iput v1, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e7

    const/4 v2, 0x0

    invoke-static {v3, v15, v12, v2, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "amount"

    const/16 v2, 0x3e8

    const v4, 0xf4240

    invoke-static {v3, v1, v12, v2, v4}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->transmit(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 148
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->nextAngraBankRequest()I

    move-result v1

    iput v1, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|1|0|0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->transmit(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 147
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->nextAngraBankRequest()I

    move-result v1

    iput v1, v9, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|1|0|0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->transmit(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 146
    :pswitch_a
    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/16 v2, 0x17

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :pswitch_b
    const/4 v1, 0x0

    .line 145
    invoke-static {v3, v11, v1, v1, v4}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    const-string v1, "app"

    const/16 v2, 0x14

    invoke-static {v3, v1, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    const/16 v2, 0x16

    move-object/from16 v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 144
    :pswitch_c
    const-string v4, ""

    const-string v5, ""

    const/16 v2, 0x15

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 143
    :pswitch_d
    invoke-static {v3, v11, v12, v7, v4}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v3

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/xyron/game/main/PhoneServiceChannel;->extended(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_e
    const/4 v1, 0x0

    .line 142
    invoke-static {v3, v11, v1, v1, v4}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    const/16 v1, 0x3c

    invoke-static {v3, v14, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "body"

    const/16 v2, 0xdc

    invoke-static {v3, v1, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "image"

    const/16 v2, 0xa0

    invoke-static {v3, v1, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/xyron/game/main/PhoneServiceChannel;->extended(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 141
    :pswitch_f
    const-string v0, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move v4, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/xyron/game/main/PhoneServiceChannel;->extended(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 140
    :pswitch_10
    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/xyron/game/main/PhoneServiceChannel;->extended(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 139
    :pswitch_11
    const-string v4, ""

    const-string v5, ""

    const/16 v2, 0x12

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 138
    :pswitch_12
    const-string v0, "settings"

    const/16 v1, 0xf0

    invoke-static {v3, v0, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 137
    :pswitch_13
    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/16 v2, 0xf

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :pswitch_14
    const/16 v0, 0x32

    .line 136
    invoke-static {v3, v11, v12, v7, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/16 v2, 0xe

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :pswitch_15
    const/16 v0, 0x32

    const/4 v1, 0x0

    .line 135
    invoke-static {v3, v11, v1, v1, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v4

    const-string v1, "body"

    const/16 v2, 0xf0

    invoke-static {v3, v1, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v14, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const/16 v2, 0xd

    move-object/from16 v1, p0

    move v3, v4

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 134
    :pswitch_16
    const-string v4, ""

    const-string v5, ""

    const/16 v2, 0xc

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 133
    :pswitch_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-static {v3, v14, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-static {v3, v1, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 132
    :pswitch_18
    iget-object v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->apps:Lcom/xyron/game/main/PhoneApps;

    invoke-virtual {v0}, Lcom/xyron/game/main/PhoneApps;->stopIncomingSound()V

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 131
    :pswitch_19
    iget-object v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->apps:Lcom/xyron/game/main/PhoneApps;

    invoke-virtual {v0}, Lcom/xyron/game/main/PhoneApps;->stopIncomingSound()V

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :pswitch_1a
    const v0, 0x186a0

    const v1, 0xf423f

    .line 130
    invoke-static {v3, v15, v12, v0, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v2, 0x7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :pswitch_1b
    const v0, 0x186a0

    const v1, 0xf423f

    .line 129
    invoke-static {v3, v15, v12, v0, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    const-string v1, "text"

    const/16 v2, 0xf0

    invoke-static {v3, v1, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v2, 0x6

    move-object/from16 v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :pswitch_1c
    const v0, 0x186a0

    const v1, 0xf423f

    .line 128
    invoke-static {v3, v11, v12, v0, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v2, 0x5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 127
    :pswitch_1d
    const-string v0, "phone"

    const v1, 0x186a0

    const v2, 0xf423f

    invoke-static {v3, v0, v12, v1, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    const-string v1, "name"

    const/16 v2, 0x1e

    invoke-static {v3, v1, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v2, 0x4

    move-object/from16 v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :pswitch_1e
    const/4 v0, 0x2

    .line 126
    iput v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->pageKind:I

    const-string v4, ""

    const-string v5, ""

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 125
    :pswitch_1f
    iput v7, v9, Lcom/xyron/game/main/PhoneServiceChannel;->pageKind:I

    const-string v0, "number"

    const v1, 0xf423f

    const/4 v2, 0x0

    invoke-static {v3, v0, v2, v2, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->integer(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v3

    const-string v4, ""

    const-string v5, ""

    const/4 v2, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :pswitch_20
    const/4 v1, 0x0

    .line 124
    iput v1, v9, Lcom/xyron/game/main/PhoneServiceChannel;->pageKind:I

    const-string v4, ""

    const-string v5, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 123
    :pswitch_21
    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/16 v2, 0x11

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    .line 159
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/xyron/game/main/PhoneServiceChannel;->lastSent:J

    goto :goto_7

    .line 157
    :goto_6
    const-string v1, "Solicita\u00e7\u00e3o desconhecida."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 160
    iget v1, v9, Lcom/xyron/game/main/PhoneServiceChannel;->retries:I

    if-lez v1, :cond_d

    invoke-direct {v9, v10}, Lcom/xyron/game/main/PhoneServiceChannel;->mutation(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v9, Lcom/xyron/game/main/PhoneServiceChannel;->uncertain:Z

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v9, v2, v1, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V

    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x762adede -> :sswitch_22
        -0x6e6412d5 -> :sswitch_21
        -0x6c04d95c -> :sswitch_20
        -0x623adbce -> :sswitch_1f
        -0x5cb2323c -> :sswitch_1e
        -0x55cd08f9 -> :sswitch_1d
        -0x5129fa69 -> :sswitch_1c
        -0x4ba897d8 -> :sswitch_1b
        -0x3f86b488 -> :sswitch_1a
        -0x398f1718 -> :sswitch_19
        -0x2964ef0a -> :sswitch_18
        -0x292c2436 -> :sswitch_17
        -0x260c898c -> :sswitch_16
        -0x165b784a -> :sswitch_15
        -0xa55fe41 -> :sswitch_14
        -0x643296a -> :sswitch_13
        0x6dc113b -> :sswitch_12
        0xd161956 -> :sswitch_11
        0xfe855c4 -> :sswitch_10
        0x10981eb2 -> :sswitch_f
        0x1fcddf7f -> :sswitch_e
        0x2b73e1a4 -> :sswitch_d
        0x2be9bfe9 -> :sswitch_c
        0x2bf0135c -> :sswitch_b
        0x31491b69 -> :sswitch_a
        0x33f89446 -> :sswitch_9
        0x3a0f74dd -> :sswitch_8
        0x4d2aebaf -> :sswitch_7
        0x51dc045d -> :sswitch_6
        0x5317d62f -> :sswitch_5
        0x5837f044 -> :sswitch_4
        0x62287a3b -> :sswitch_3
        0x641fdd6f -> :sswitch_2
        0x647cb884 -> :sswitch_1
        0x6b26f31d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private extended(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 178
    iget v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->protocolVersion:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x64

    .line 179
    iput v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->operation:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "phoneext|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    const-string p2, "operationToken"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/PhoneServiceChannel;->transmit(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Este recurso precisa da GM v2.28 na hospedagem. Nenhuma alteracao foi enviada."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private finish(ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queuedTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->pendingWireText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->cancelAngraQueued(Ljava/lang/String;)Z

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 281
    iget-boolean v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->uncertain:Z

    if-nez v1, :cond_1

    const-string v1, "ledgerKey"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    const-string v2, "angra_phone_delivery"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/xyron/game/main/PhoneServiceChannel;->respond(Lorg/json/JSONObject;ZLorg/json/JSONObject;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    .line 284
    iput-object p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/xyron/game/main/PhoneServiceChannel$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/xyron/game/main/PhoneServiceChannel$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/PhoneServiceChannel;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    const-string p1, ""

    iput-object p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wallToken:Ljava/lang/String;

    return-void
.end method

.method private static integer(Lorg/json/JSONObject;Ljava/lang/String;III)I
    .locals 2

    int-to-double v0, p2

    .line 163
    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide p0

    .line 164
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double p2, p0, v0

    if-nez p2, :cond_0

    int-to-double p2, p3

    cmpg-double v0, p0, p2

    if-ltz v0, :cond_0

    int-to-double p2, p4

    cmpl-double p4, p0, p2

    if-gtz p4, :cond_0

    double-to-int p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "N\u00famero ou valor inv\u00e1lido."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private ledgerKey(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->phoneAccountId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p1, v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const-string v3, "%02x"

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private market(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/PhoneServiceChannel;->transmit(Ljava/lang/String;)V

    return-void
.end method

.method private mutation(Ljava/lang/String;)Z
    .locals 1

    .line 181
    const-string v0, "bank:transfer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "contacts:save"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "contacts:delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "messages:send"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "notes:save"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "notes:delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "settings:save"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "support:create"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "news:save"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "news:delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "olx:save"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "olx:edit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "olx:delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "olx:offer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "olx:decision"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private phone(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 173
    iput p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->operation:I

    .line 174
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    const-string v1, "operationToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phone|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/PhoneServiceChannel;->transmit(Ljava/lang/String;)V

    return-void
.end method

.method private pump()V
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xyron/game/main/PhoneServiceChannel;->lastSent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x28a

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 89
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/xyron/game/main/PhoneServiceChannel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/PhoneServiceChannel$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/PhoneServiceChannel;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->apps:Lcom/xyron/game/main/PhoneApps;

    invoke-virtual {v0}, Lcom/xyron/game/main/PhoneApps;->nextSequence()I

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->operation:I

    iput v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->pageKind:I

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->retries:I

    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->uncertain:Z

    .line 92
    const-string v1, ""

    iput-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->replayOriginal:Ljava/lang/String;

    iput-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->replayToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->replaySettings:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->settingsReplayDone:Z

    .line 93
    iget-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    const-string v2, "deadline"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    const/4 v1, 0x0

    .line 94
    const-string v2, "Solicita\u00e7\u00e3o expirada antes do envio. Nenhuma opera\u00e7\u00e3o foi executada."

    invoke-direct {p0, v0, v1, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_2
    invoke-direct {p0}, Lcom/xyron/game/main/PhoneServiceChannel;->dispatchActive()V

    :cond_3
    :goto_0
    return-void
.end method

.method private queueExpired()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->pendingWireText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->cancelAngraQueued(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/xyron/game/main/PhoneServiceChannel;->retries:I

    if-lez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    const-string v3, "action"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->mutation(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/xyron/game/main/PhoneServiceChannel;->uncertain:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->retries:I

    if-nez v0, :cond_2

    const-string v0, "O pedido foi retirado da fila antes da conclus\u00e3o do envio. Tente novamente quando a conex\u00e3o voltar."

    goto :goto_1

    :cond_2
    const-string v0, "A conex\u00e3o n\u00e3o confirmou a entrega. Consulte os registros antes de repetir; o comprovante do pedido foi preservado."

    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private respond(Lorg/json/JSONObject;ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    .line 274
    const-string v0, "id"

    const-string v1, "document"

    :try_start_0
    iget-object v2, p0, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "type"

    const-string v5, "response"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "ok"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "error"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/xyron/game/main/SAMP;->publishPhoneApp(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private sendWall(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->apps:Lcom/xyron/game/main/PhoneApps;

    invoke-virtual {v0}, Lcom/xyron/game/main/PhoneApps;->nextSequence()I

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    iput p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->operation:I

    iput p2, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wallPosition:I

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wall|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wallTarget:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/PhoneServiceChannel;->transmit(Ljava/lang/String;)V

    return-void
.end method

.method private static text(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 168
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 169
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    if-gt p1, p2, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Texto acima do limite de "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private timedOut()V
    .locals 5

    .line 187
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    iget v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->retries:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xyron/game/main/PhoneServiceChannel;->retries:I

    if-nez v1, :cond_3

    const-string v1, "wallpaper:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":get"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":history"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->mutation(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->pendingWireText:Ljava/lang/String;

    const-string v1, "\\|"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 193
    array-length v1, v0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    aget-object v3, v0, v3

    const/4 v4, 0x5

    aget-object v0, v0, v4

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->sendWall(IILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->apps:Lcom/xyron/game/main/PhoneApps;

    invoke-virtual {v0}, Lcom/xyron/game/main/PhoneApps;->nextSequence()I

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    invoke-direct {p0}, Lcom/xyron/game/main/PhoneServiceChannel;->dispatchActive()V

    return-void

    .line 197
    :cond_3
    invoke-direct {p0, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->mutation(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "bank:transfer"

    if-nez v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->uncertain:Z

    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "O banco n\u00e3o confirmou a transfer\u00eancia. Confira o extrato antes de repetir; nenhuma confirma\u00e7\u00e3o de sucesso foi apresentada."

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->uncertain:Z

    if-eqz v0, :cond_7

    const-string v0, "A confirma\u00e7\u00e3o n\u00e3o chegou. Repetir este mesmo pedido usa o comprovante anterior, sem criar uma segunda opera\u00e7\u00e3o."

    goto :goto_2

    :cond_7
    const-string v0, "A conex\u00e3o n\u00e3o respondeu. Tente novamente ap\u00f3s conferir sua conex\u00e3o e a vers\u00e3o da GM."

    :goto_2
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private transmit(Ljava/lang/String;)V
    .locals 4

    .line 41
    iput-object p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->pendingWireText:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queuedTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queuedTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queuedTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "O pedido n\u00e3o foi enviado. Aguarde a conex\u00e3o ou a fila de opera\u00e7\u00f5es liberar."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method hasPending()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic lambda$request$0$com-xyron-game-main-PhoneServiceChannel(Ljava/lang/String;)V
    .locals 6

    .line 66
    const-string v0, "action"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    const-string p1, "deadline"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wallpaper:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x927c0

    goto :goto_0

    :cond_0
    const v4, 0x249f0

    :goto_0
    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 68
    const-string p1, "id"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-lt p1, v2, :cond_7

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 69
    :cond_1
    const-string p1, "document"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x50

    if-le v0, v2, :cond_2

    return-void

    .line 71
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->document:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xyron/game/main/PhoneServiceChannel;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queuedTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    iget-object v3, p0, Lcom/xyron/game/main/PhoneServiceChannel;->pendingWireText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/xyron/game/main/SAMP;->cancelAngraQueued(Ljava/lang/String;)Z

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput-object v2, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->replayOriginal:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->replayToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->replaySettings:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wallEtag:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wallToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->document:Ljava/lang/String;

    .line 79
    :cond_4
    iget p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->protocolVersion:I

    const/4 v0, 0x2

    const/4 v3, 0x0

    if-ge p1, v0, :cond_5

    const-string p1, "O telefone est\u00e1 indispon\u00edvel no momento. Nenhuma altera\u00e7\u00e3o foi feita."

    invoke-direct {p0, v1, v3, v2, p1}, Lcom/xyron/game/main/PhoneServiceChannel;->respond(Lorg/json/JSONObject;ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_5
    iget-object p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/16 v0, 0x18

    if-lt p1, v0, :cond_6

    const-string p1, "Aguarde as solicita\u00e7\u00f5es anteriores."

    invoke-direct {p0, v1, v3, v2, p1}, Lcom/xyron/game/main/PhoneServiceChannel;->respond(Lorg/json/JSONObject;ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_6
    iget-object p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/xyron/game/main/PhoneServiceChannel;->pump()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_7
    :goto_1
    return-void
.end method

.method onWireSent(Ljava/lang/String;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->pendingWireText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "\\|"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 48
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 49
    :try_start_0
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p1, v0, :cond_2

    return-void

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Request sent wire="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " operation="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->operation:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AngraPhone"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queuedTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->timeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->timeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x61a8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method protocol(I)V
    .locals 2

    .line 36
    iget v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->protocolVersion:I

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Server phone protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AngraPhone"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->protocolVersion:I

    return-void
.end method

.method receive(Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 208
    const-string v1, "etag"

    const-string v7, "action"

    const-string v2, "data"

    const-string v3, "requestId"

    .line 0
    const-string v4, "data:image/jpeg;base64,"

    const-string v5, "Reply wire="

    .line 208
    iget-object v8, v6, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    if-nez v8, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x0

    .line 210
    :try_start_0
    const-string v10, "event"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    .line 211
    invoke-virtual {v0, v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    iget v14, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v15, "operation"

    if-ne v13, v14, :cond_1

    :try_start_1
    const-string v13, "AngraPhone"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event="

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " operation="

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    const-string v5, "phoneData"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v13, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v0, v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iget v14, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    if-ne v5, v14, :cond_2

    const-string v5, "kind"

    invoke-virtual {v0, v5, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iget v14, v6, Lcom/xyron/game/main/PhoneServiceChannel;->pageKind:I

    if-ne v5, v14, :cond_2

    invoke-direct {v6, v13, v0, v8}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 213
    :cond_2
    const-string v5, "wallpaper:"

    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v14, "error"

    const-string v12, "phoneAppData"

    const-string v13, "success"

    const-string v8, "phoneResult"

    const-string v9, ""

    if-eqz v5, :cond_f

    :try_start_2
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v16, v7

    :try_start_3
    iget v7, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    if-ne v5, v7, :cond_10

    const/4 v5, 0x0

    .line 214
    iput v5, v6, Lcom/xyron/game/main/PhoneServiceChannel;->retries:I

    .line 215
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 216
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Imagem n\u00e3o foi salva."

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v6, v2, v1, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 217
    :cond_3
    iget v1, v6, Lcom/xyron/game/main/PhoneServiceChannel;->operation:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "token"

    iget-object v2, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v6, v2, v0, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v9, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallToken:Ljava/lang/String;

    return-void

    :cond_4
    const/16 v3, 0x18

    if-ne v1, v3, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    .line 218
    :cond_5
    const-string v1, "number"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_7

    .line 219
    iget-object v1, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_7

    .line 220
    iget-object v1, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallToken:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v6, v2, v1, v9, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->sendWall(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 221
    :cond_6
    iget-object v1, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    add-int/lit16 v2, v0, 0xa0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallToken:Ljava/lang/String;

    const/16 v3, 0x19

    invoke-direct {v6, v3, v0, v1, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->sendWall(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 219
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 222
    :cond_8
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, v6, Lcom/xyron/game/main/PhoneServiceChannel;->operation:I

    const/16 v5, 0x1b

    if-ne v3, v5, :cond_e

    .line 223
    const-string v3, "offset"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iget v7, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallPosition:I

    if-ne v3, v7, :cond_d

    iget-object v3, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    const/16 v7, 0x5dc0

    if-gt v3, v7, :cond_d

    .line 224
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallEtag:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallEtag:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_a
    :goto_1
    iput-object v3, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallEtag:Ljava/lang/String;

    .line 225
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    const-string v7, "next"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_c

    .line 226
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v0, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v6, v2, v0, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_3

    .line 227
    :cond_c
    invoke-direct {v6, v5, v0, v9, v9}, Lcom/xyron/game/main/PhoneServiceChannel;->sendWall(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 223
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_e
    :goto_3
    return-void

    :cond_f
    move-object/from16 v16, v7

    .line 231
    :cond_10
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_11
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iget v2, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    if-ne v1, v2, :cond_1a

    .line 232
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-string v2, "rows"

    const/16 v3, 0x10

    const-string v4, "settingsHex"

    if-eqz v1, :cond_13

    :try_start_4
    iget v1, v6, Lcom/xyron/game/main/PhoneServiceChannel;->operation:I

    if-ne v1, v3, :cond_13

    iget-object v1, v6, Lcom/xyron/game/main/PhoneServiceChannel;->replaySettings:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 233
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "Os ajustes pendentes nao foram confirmados. Eles foram preservados para nova tentativa."

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v6, v2, v1, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 234
    :cond_12
    iget-object v0, v6, Lcom/xyron/game/main/PhoneServiceChannel;->replayOriginal:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->confirmedSettings(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/xyron/game/main/PhoneServiceChannel;->apps:Lcom/xyron/game/main/PhoneApps;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, v6, Lcom/xyron/game/main/PhoneServiceChannel;->replaySettings:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/PhoneApps;->applyPhoneSettings(Lorg/json/JSONObject;)V

    .line 235
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, v6, Lcom/xyron/game/main/PhoneServiceChannel;->replaySettings:Ljava/lang/String;

    invoke-static {v5}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 236
    iput-object v9, v6, Lcom/xyron/game/main/PhoneServiceChannel;->replayOriginal:Ljava/lang/String;

    iput-object v9, v6, Lcom/xyron/game/main/PhoneServiceChannel;->replayToken:Ljava/lang/String;

    iput-object v9, v6, Lcom/xyron/game/main/PhoneServiceChannel;->replaySettings:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/xyron/game/main/PhoneServiceChannel;->settingsReplayDone:Z

    const/4 v2, 0x0

    invoke-direct {v6, v1, v0, v2}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 238
    :cond_13
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, v6, Lcom/xyron/game/main/PhoneServiceChannel;->operation:I

    const/16 v5, 0xf

    if-ne v1, v5, :cond_16

    .line 239
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 240
    const-string v2, "settings:get"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-boolean v2, v6, Lcom/xyron/game/main/PhoneServiceChannel;->settingsReplayDone:Z

    if-nez v2, :cond_15

    .line 241
    iget-object v2, v6, Lcom/xyron/game/main/PhoneServiceChannel;->settingsOutbox:Lcom/xyron/game/main/PhoneSettingsOutbox;

    iget-object v5, v6, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v5}, Lcom/xyron/game/main/SAMP;->phoneAccountId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/xyron/game/main/PhoneSettingsOutbox;->pending(I)Lcom/xyron/game/main/PhoneSettingsOutbox$Pending;

    move-result-object v2

    if-eqz v2, :cond_15

    if-eqz v1, :cond_14

    .line 243
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xyron/game/main/PhoneApps;->unhex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_14
    const-string/jumbo v0, "{}"

    .line 244
    :goto_4
    iget-object v1, v2, Lcom/xyron/game/main/PhoneSettingsOutbox$Pending;->value:Ljava/lang/String;

    iput-object v1, v6, Lcom/xyron/game/main/PhoneServiceChannel;->replayOriginal:Ljava/lang/String;

    iget-object v1, v2, Lcom/xyron/game/main/PhoneSettingsOutbox$Pending;->token:Ljava/lang/String;

    iput-object v1, v6, Lcom/xyron/game/main/PhoneServiceChannel;->replayToken:Ljava/lang/String;

    iget-object v1, v2, Lcom/xyron/game/main/PhoneSettingsOutbox$Pending;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xyron/game/main/PhoneSettingsOutbox;->merge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/xyron/game/main/PhoneServiceChannel;->replaySettings:Ljava/lang/String;

    .line 245
    iget-object v0, v6, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    const-string v1, "operationToken"

    iget-object v2, v6, Lcom/xyron/game/main/PhoneServiceChannel;->replayToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v6, Lcom/xyron/game/main/PhoneServiceChannel;->apps:Lcom/xyron/game/main/PhoneApps;

    invoke-virtual {v0}, Lcom/xyron/game/main/PhoneApps;->nextSequence()I

    move-result v0

    iput v0, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    iget-object v3, v6, Lcom/xyron/game/main/PhoneServiceChannel;->replaySettings:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    const/16 v1, 0x10

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/PhoneServiceChannel;->phone(IILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_15
    if-eqz v1, :cond_16

    .line 248
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-lez v2, :cond_16

    :try_start_5
    iget-object v2, v6, Lcom/xyron/game/main/PhoneServiceChannel;->apps:Lcom/xyron/game/main/PhoneApps;

    new-instance v5, Lorg/json/JSONObject;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xyron/game/main/PhoneApps;->unhex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/xyron/game/main/PhoneApps;->applyPhoneSettings(Lorg/json/JSONObject;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 250
    :catch_0
    :cond_16
    :try_start_6
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, v6, Lcom/xyron/game/main/PhoneServiceChannel;->operation:I

    if-ne v1, v3, :cond_17

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v1, :cond_17

    :try_start_7
    iget-object v1, v6, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    const-string v2, "payload"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "settings"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->confirmedSettings(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/xyron/game/main/PhoneServiceChannel;->apps:Lcom/xyron/game/main/PhoneApps;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/xyron/game/main/PhoneApps;->applyPhoneSettings(Lorg/json/JSONObject;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    :cond_17
    const/4 v1, -0x2

    .line 251
    :try_start_8
    invoke-virtual {v0, v15, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, v6, Lcom/xyron/game/main/PhoneServiceChannel;->operation:I

    if-ne v1, v2, :cond_23

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_5

    :cond_18
    const/4 v13, 0x0

    goto :goto_6

    :cond_19
    :goto_5
    const/4 v13, 0x1

    :goto_6
    const-string v1, "A opera\u00e7\u00e3o foi recusada. Verifique sua linha, os dados e o item Celular."

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v13, v0, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 252
    :cond_1a
    const-string v1, "bankUpdate"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    const-string v2, "bank:history"

    if-eqz v1, :cond_1e

    :try_start_9
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iget v4, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    if-ne v1, v4, :cond_1e

    const-string v1, "bank:"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 253
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    const-string v2, "status"

    if-eqz v1, :cond_1b

    :try_start_a
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1c

    return-void

    :cond_1b
    const/4 v3, 0x1

    .line 254
    :cond_1c
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_1d

    const/4 v13, 0x1

    goto :goto_7

    :cond_1d
    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/xyron/game/main/PhoneServiceChannel;->bankError(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v13, v0, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 255
    :cond_1e
    const-string v1, "bankHistory"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iget v4, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    if-ne v1, v4, :cond_1f

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v6, v2, v0, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_a

    :cond_1f
    const/4 v2, 0x1

    .line 256
    const-string v1, "marketData"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    const-string v4, "marketResult"

    if-nez v1, :cond_20

    :try_start_b
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_20
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iget v3, v6, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    if-ne v1, v3, :cond_23

    const-string v1, "olx:"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_8

    :cond_21
    const/4 v13, 0x0

    goto :goto_9

    :cond_22
    :goto_8
    const/4 v13, 0x1

    :goto_9
    const-string v1, "O an\u00fancio n\u00e3o p\u00f4de ser alterado."

    invoke-direct {v6, v13, v0, v1}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_a

    :catch_2
    move-object/from16 v16, v7

    .line 257
    :catch_3
    iget-object v0, v6, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->mutation(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/xyron/game/main/PhoneServiceChannel;->uncertain:Z

    const-string v0, "A confirma\u00e7\u00e3o recebida est\u00e1 incompleta. Confira o extrato ou repita o mesmo pedido, sem alterar os dados."

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v6, v2, v1, v0}, Lcom/xyron/game/main/PhoneServiceChannel;->finish(ZLorg/json/JSONObject;Ljava/lang/String;)V

    :cond_23
    :goto_a
    return-void
.end method

.method request(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0x9c40

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/PhoneServiceChannel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/PhoneServiceChannel$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/PhoneServiceChannel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method reset()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    iget-object v2, p0, Lcom/xyron/game/main/PhoneServiceChannel;->pendingWireText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xyron/game/main/SAMP;->cancelAngraQueued(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->active:Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wire:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->lastSent:J

    iput v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->protocolVersion:I

    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wallEtag:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wallToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->wallData:Ljava/lang/String;

    return-void
.end method

.method stageSettings(Ljava/lang/String;)Z
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->settingsOutbox:Lcom/xyron/game/main/PhoneSettingsOutbox;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->phoneAccountId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/xyron/game/main/PhoneSettingsOutbox;->stage(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method stageSettingsPatch(Ljava/lang/String;)Z
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/xyron/game/main/PhoneServiceChannel;->settingsOutbox:Lcom/xyron/game/main/PhoneSettingsOutbox;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneServiceChannel;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->phoneAccountId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/xyron/game/main/PhoneSettingsOutbox;->stagePatch(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method
