.class final Lcom/xyron/game/main/AngraServerBridge;
.super Ljava/lang/Object;
.source "AngraServerBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/AngraServerBridge$Auth;
    }
.end annotation


# static fields
.field static final DIALOG:I = 0x7918


# instance fields
.field private acceptedAccessSession:I

.field private activeAuthRequest:I

.field private activeAuthWire:Ljava/lang/String;

.field private authRequestSequence:I

.field private authRetrySupported:Z

.field private final chunkOriginals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private chunkSequence:I

.field private connected:Z

.field private dialogAvailable:Z

.field private final game:Lcom/xyron/game/main/SAMP;

.field private generation:I

.field private helloAccepted:Z

.field private inventoryGiveSequence:I

.field private final inventoryUseKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inventoryUseSequence:I

.field private final inventoryUseUi:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private legacyLogin:Z

.field private legacyRegistration:Z

.field private legacySubmitted:Z

.field private login:Landroid/webkit/WebView;

.field private loginRequested:Z

.field private passwordMax:I

.field private passwordMin:I

.field private pendingAuth:Lorg/json/JSONObject;

.field private final pendingItemUses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pendingLogin:Lorg/json/JSONObject;

.field private pendingSpawn:I

.field private proofAccepted:Z

.field private proofSession:I

.field private proofWire:Ljava/lang/String;

.field private ready:Z

.field private registrationGender:I

.field private final requests:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sending:Z

.field private spawnComplete:Z

.field private spawnRequestSequence:I

.field private spawnSelectionStarted:Z


# direct methods
.method public static synthetic $r8$lambda$43FgutpWxi9Jm-LGR26lFbmhrcY(Lcom/xyron/game/main/AngraServerBridge;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xyron/game/main/AngraServerBridge;->inventoryRequest(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->chunkOriginals:Ljava/util/HashMap;

    const/16 v0, 0x8

    .line 33
    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->passwordMin:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->passwordMax:I

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingSpawn:I

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingItemUses:Ljava/util/HashMap;

    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseUi:Ljava/util/HashMap;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseKeys:Ljava/util/HashMap;

    .line 48
    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->proofSession:I

    .line 51
    iput-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    return-void
.end method

.method static synthetic access$100(Lcom/xyron/game/main/AngraServerBridge;)Lcom/xyron/game/main/SAMP;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xyron/game/main/AngraServerBridge;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    return p0
.end method

.method static synthetic access$1100(Lcom/xyron/game/main/AngraServerBridge;Lorg/json/JSONObject;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xyron/game/main/AngraServerBridge;->showLogin(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xyron/game/main/AngraServerBridge;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyLogin:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/xyron/game/main/AngraServerBridge;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/xyron/game/main/AngraServerBridge;->connected:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/xyron/game/main/AngraServerBridge;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/xyron/game/main/AngraServerBridge;->passwordHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xyron/game/main/AngraServerBridge;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/xyron/game/main/AngraServerBridge;->registrationGender:I

    return p0
.end method

.method static synthetic access$1502(Lcom/xyron/game/main/AngraServerBridge;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/xyron/game/main/AngraServerBridge;->registrationGender:I

    return p1
.end method

.method static synthetic access$1600(Lcom/xyron/game/main/AngraServerBridge;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyRegistration:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/xyron/game/main/AngraServerBridge;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/xyron/game/main/AngraServerBridge;->legacySubmitted:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/xyron/game/main/AngraServerBridge;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xyron/game/main/AngraServerBridge;->submitAuth(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/xyron/game/main/AngraServerBridge;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingAuth:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xyron/game/main/AngraServerBridge;)Landroid/webkit/WebView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/xyron/game/main/AngraServerBridge;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/xyron/game/main/AngraServerBridge;->passwordMin:I

    return p0
.end method

.method static synthetic access$202(Lcom/xyron/game/main/AngraServerBridge;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/xyron/game/main/AngraServerBridge;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/xyron/game/main/AngraServerBridge;->passwordMax:I

    return p0
.end method

.method static synthetic access$300(Lcom/xyron/game/main/AngraServerBridge;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/xyron/game/main/AngraServerBridge;->ready:Z

    return p0
.end method

.method static synthetic access$302(Lcom/xyron/game/main/AngraServerBridge;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/xyron/game/main/AngraServerBridge;->ready:Z

    return p1
.end method

.method static synthetic access$400(Lcom/xyron/game/main/AngraServerBridge;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->publishName()V

    return-void
.end method

.method static synthetic access$500(Lcom/xyron/game/main/AngraServerBridge;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->publishAuth()V

    return-void
.end method

.method static synthetic access$600(Lcom/xyron/game/main/AngraServerBridge;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/xyron/game/main/AngraServerBridge;->loginRequested:Z

    return p0
.end method

.method static synthetic access$700(Lcom/xyron/game/main/AngraServerBridge;)Lorg/json/JSONObject;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingLogin:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xyron/game/main/AngraServerBridge;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnSelectionStarted:Z

    return p0
.end method

.method static synthetic access$900(Lcom/xyron/game/main/AngraServerBridge;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnComplete:Z

    return p0
.end method

.method private adoptBridgeDialog()V
    .locals 4

    .line 213
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyLogin:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->clearAuthRequest()V

    .line 215
    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->chunkOriginals:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-boolean v2, p0, Lcom/xyron/game/main/AngraServerBridge;->sending:Z

    .line 216
    const-string v0, "AngraBridge"

    const-string v3, "login transport switched from legacy to bridge"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iput-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->connected:Z

    .line 219
    iput-boolean v2, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyLogin:Z

    .line 220
    iput-boolean v2, p0, Lcom/xyron/game/main/AngraServerBridge;->legacySubmitted:Z

    .line 221
    iput-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->dialogAvailable:Z

    .line 222
    iput-boolean v2, p0, Lcom/xyron/game/main/AngraServerBridge;->sending:Z

    return-void
.end method

.method private authorizeClient(Lorg/json/JSONObject;I)V
    .locals 3

    const/4 v0, 0x1

    .line 345
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->connected:Z

    .line 346
    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->proofSession:I

    if-ne v0, p2, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->proofWire:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->proofWire:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    :cond_0
    return-void

    .line 347
    :cond_1
    iput p2, p0, Lcom/xyron/game/main/AngraServerBridge;->proofSession:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->proofWire:Ljava/lang/String;

    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    .line 348
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/main/AngraServerBridge;Lorg/json/JSONObject;II)V

    const-string p1, "angra-session-proof"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private clearAuthRequest()V
    .locals 3

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->activeAuthWire:Ljava/lang/String;

    const/4 v0, 0x0

    .line 226
    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->activeAuthRequest:I

    .line 227
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 228
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 230
    const-string v2, "login|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "register|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private clearSpawnRequest()V
    .locals 3

    .line 268
    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingSpawn:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "spawn|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingSpawn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, -0x1

    .line 269
    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingSpawn:I

    .line 270
    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnRequestSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnRequestSequence:I

    .line 271
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->setAngraServerSpawnPending(Z)V

    return-void
.end method

.method private finishSpawn()V
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnComplete:Z

    if-eqz v0, :cond_0

    return-void

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->clearSpawnRequest()V

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnComplete:Z

    .line 278
    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->onSpawnSelectionReached()V

    .line 279
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->closeAngraServerSpawn()V

    return-void
.end method

.method private inventoryRequest(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    .line 412
    const-string v1, "requestId"

    const-string v2, "inventory-action"

    .line 0
    const-string v3, "useitem|"

    const-string v4, "giveauto|"

    const-string v5, "drop|"

    const-string v6, "move|"

    .line 412
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v8, p1

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 413
    const-string v8, "action"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 414
    const-string v9, "-ready"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "-refresh"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_6

    .line 415
    :cond_0
    const-string v9, "inventory-move"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v10, "|"

    const/4 v11, -0x1

    if-eqz v9, :cond_1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "fromSlot"

    invoke-virtual {v7, v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "toSlot"

    invoke-virtual {v7, v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    goto/16 :goto_7

    .line 416
    :cond_1
    const-string v6, "hotbar-use"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "itemId"

    const-string v12, "quantity"

    const-string v13, "hasQuantity"

    const-string v15, "slot"

    if-nez v6, :cond_7

    :try_start_2
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v14, "type"

    if-eqz v6, :cond_2

    :try_start_3
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "use"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_2

    .line 422
    :cond_2
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "drop"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v7, v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v7, v12, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    goto/16 :goto_7

    .line 424
    :cond_4
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "send"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryGiveSequence:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryGiveSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    invoke-virtual {v7, v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v7, v12, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    goto/16 :goto_7

    .line 428
    :cond_6
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    const-string v2, "Essa opera\u00e7\u00e3o ainda n\u00e3o est\u00e1 dispon\u00edvel na GM."

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_7
    :goto_2
    const/4 v2, -0x1

    .line 417
    invoke-virtual {v7, v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v7, v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ltz v4, :cond_8

    goto :goto_3

    :cond_8
    const v4, 0xffff

    .line 418
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v0, Lcom/xyron/game/main/AngraServerBridge;->pendingItemUses:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_a

    .line 419
    iget v6, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseSequence:I

    const/4 v8, 0x1

    add-int/2addr v6, v8

    iput v6, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseSequence:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "-"

    const-string v11, ""

    invoke-virtual {v3, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, -0x1

    invoke-virtual {v7, v12, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/xyron/game/main/AngraServerBridge;->pendingItemUses:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseKeys:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    const-string v3, "\\|"

    const/4 v4, 0x4

    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v16, v6

    move v6, v3

    move-object/from16 v3, v16

    .line 420
    :goto_5
    iget-object v4, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseUi:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/xyron/game/main/AngraServerBridge;->pendingItemUses:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseKeys:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseUi:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "state"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xyron/game/main/SAMP;->inventoryOperation(Lorg/json/JSONObject;)V

    goto :goto_7

    .line 414
    :cond_b
    :goto_6
    const-string v1, "inventory"

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_c
    :goto_7
    return-void
.end method

.method private passwordHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/xyron/game/main/AngraServerBridge;->passwordMin:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/xyron/game/main/AngraServerBridge;->passwordMax:I

    if-gt v0, v1, :cond_2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p1, v2

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_0

    ushr-int/lit8 v4, v3, 0x4

    const/16 v5, 0x10

    .line 406
    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 408
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 402
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method private publishAuth()V
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->ready:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingAuth:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.DXAuth&&window.DXAuth.handleResponse("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingAuth:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 500
    iput-object v2, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingAuth:Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-void
.end method

.method private publishName()V
    .locals 5

    .line 491
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->ready:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingLogin:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 492
    :cond_0
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "window.__angraPasswordPolicy={min:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/xyron/game/main/AngraServerBridge;->passwordMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",max:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xyron/game/main/AngraServerBridge;->passwordMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "};"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 494
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "if(window.__angraCurrentName!=="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "){window.__angraCurrentName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";window.DXAuth&&window.DXAuth.setRememberedLogin("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",\'\');}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 495
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[\'loginUsername\',\'registerUsername\',\'recoverUsername\'].forEach(id=>{const e=document.getElementById(id);e.value="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";e.readOnly=true;e.tabIndex=-1;});window.RevoltAuth&&window.RevoltAuth.openScreen("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingLogin:Lorg/json/JSONObject;

    const-string v4, "registration"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "register"

    goto :goto_0

    :cond_1
    const-string v0, "login"

    :goto_0
    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private pump(I)V
    .locals 4

    .line 380
    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    if-ne p1, v0, :cond_7

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->connected:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->dialogAvailable:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->sending:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 382
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v0}, Lcom/xyron/game/main/SAMP;->sendAngraServerResponse(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 384
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda10;-><init>(Lcom/xyron/game/main/AngraServerBridge;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 387
    :cond_2
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 389
    const-string p1, "chunk|"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 390
    const-string p1, "\\|"

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 391
    array-length v3, p1

    if-ne v3, v2, :cond_3

    const/4 v2, 0x2

    aget-object v2, p1, v2

    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xyron/game/main/AngraServerBridge;->chunkOriginals:Ljava/util/HashMap;

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_5

    .line 393
    iget-object v2, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2, p1}, Lcom/xyron/game/main/SAMP;->onAngraRequestSent(Ljava/lang/String;)V

    .line 394
    :cond_5
    const-string p1, "surrender"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "AngraDeath"

    const-string v0, "surrender sent"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_6
    iput-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->sending:Z

    const/4 p1, 0x0

    .line 396
    iput-boolean p1, p0, Lcom/xyron/game/main/AngraServerBridge;->dialogAvailable:Z

    :cond_7
    :goto_1
    return-void
.end method

.method private retryAuth(III)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/main/AngraServerBridge;III)V

    const-wide/16 p1, 0xbb8

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private retrySpawn(III)V
    .locals 3

    .line 283
    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    if-ne p1, v0, :cond_6

    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnRequestSequence:I

    if-ne p2, v0, :cond_6

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->connected:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnComplete:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingSpawn:I

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    .line 284
    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x5

    if-lt p3, v0, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->clearSpawnRequest()V

    .line 287
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    const-string p2, "N\u00e3o foi poss\u00edvel confirmar sua chegada. Escolha o local novamente."

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->showAngraServerSpawn()V

    return-void

    .line 291
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "spawn|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingSpawn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->dialogAvailable:Z

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_4

    .line 294
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    iget v2, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingSpawn:I

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->sendAngraSpawnCommand(I)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 299
    :cond_3
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 295
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    .line 301
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/main/AngraServerBridge;III)V

    const-wide/16 p1, 0x7d0

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_2
    return-void
.end method

.method static sameAccessSession(ZII)Z
    .locals 0

    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showLogin(Lorg/json/JSONObject;)V
    .locals 5

    .line 434
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnSelectionStarted:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnComplete:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 435
    :cond_0
    const-string v0, "passwordMin"

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->passwordMin:I

    .line 436
    const-string v2, "passwordMax"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->passwordMax:I

    .line 437
    iput-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingLogin:Lorg/json/JSONObject;

    const/4 p1, 0x1

    .line 438
    iput-boolean p1, p0, Lcom/xyron/game/main/AngraServerBridge;->loginRequested:Z

    .line 439
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 440
    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    const/high16 v2, -0x1000000

    .line 441
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 442
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 443
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 444
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 445
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 446
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 447
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 448
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 449
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    new-instance v2, Lcom/xyron/game/main/AngraServerBridge$Auth;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/xyron/game/main/AngraServerBridge$Auth;-><init>(Lcom/xyron/game/main/AngraServerBridge;Lcom/xyron/game/main/AngraServerBridge$1;)V

    const-string v3, "Android"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    new-instance v2, Lcom/xyron/game/main/AngraServerBridge$1;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/AngraServerBridge$1;-><init>(Lcom/xyron/game/main/AngraServerBridge;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 481
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/interfaces/login_angra/index.html"

    invoke-static {v0, v2}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    iget-boolean v2, p0, Lcom/xyron/game/main/AngraServerBridge;->ready:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 486
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->ready:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->bringToFront()V

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 487
    :cond_3
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->ready:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->finishLoadingForLogin()V

    .line 488
    :cond_4
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/SAMP;->setAngraAuthOverlay(Z)V

    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->publishName()V

    :cond_5
    :goto_1
    return-void
.end method

.method private submitAuth(Ljava/lang/String;)V
    .locals 2

    .line 234
    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->clearAuthRequest()V

    .line 235
    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->authRequestSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->authRequestSequence:I

    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->activeAuthRequest:I

    .line 236
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->authRetrySupported:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/xyron/game/main/AngraServerBridge;->activeAuthRequest:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->activeAuthWire:Ljava/lang/String;

    .line 237
    invoke-virtual {p0, p1}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    .line 238
    iget-boolean p1, p0, Lcom/xyron/game/main/AngraServerBridge;->authRetrySupported:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->activeAuthRequest:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/xyron/game/main/AngraServerBridge;->retryAuth(III)V

    :cond_1
    return-void
.end method


# virtual methods
.method cancelQueued(Ljava/lang/String;)Z
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->chunkOriginals:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 204
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chunk|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    iget-object v3, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 207
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_1

    .line 208
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return v0
.end method

.method confirmSpawn(I)Z
    .locals 3

    .line 259
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->connected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnSelectionStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnComplete:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingSpawn:I

    if-gez v0, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iput p1, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingSpawn:I

    .line 262
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->setAngraServerSpawnPending(Z)V

    .line 263
    iget p1, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    iget v2, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnRequestSequence:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnRequestSequence:I

    invoke-direct {p0, p1, v2, v1}, Lcom/xyron/game/main/AngraServerBridge;->retrySpawn(III)V

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method destroy()V
    .locals 3

    const/4 v0, 0x0

    .line 511
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->loginRequested:Z

    .line 512
    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->clearAuthRequest()V

    .line 513
    iget v1, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->connected:Z

    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->chunkOriginals:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->sending:Z

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->dialogAvailable:Z

    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingLogin:Lorg/json/JSONObject;

    .line 515
    iput-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingAuth:Lorg/json/JSONObject;

    .line 516
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 517
    const-string v2, "Android"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 520
    iput-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    :cond_1
    return-void
.end method

.method hasServerHandshake()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->connected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyLogin:Z

    if-eqz v0, :cond_0

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

.method hideLogin()V
    .locals 4

    const/4 v0, 0x0

    .line 503
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->loginRequested:Z

    .line 504
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 505
    const-string/jumbo v2, "window.DXAuth&&window.DXAuth.forceCloseFromGame();document.querySelectorAll(\'input[type=password]\').forEach(e=>e.value=\'\');"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 506
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v0}, Lcom/xyron/game/main/SAMP;->setAngraAuthOverlay(Z)V

    return-void
.end method

.method isConnected()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->connected:Z

    return v0
.end method

.method synthetic lambda$authorizeClient$6$com-xyron-game-main-AngraServerBridge(IILjava/lang/String;)V
    .locals 1

    .line 352
    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/xyron/game/main/AngraServerBridge;->proofSession:I

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/xyron/game/main/AngraServerBridge;->proofWire:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$authorizeClient$7$com-xyron-game-main-AngraServerBridge(I)V
    .locals 2

    .line 355
    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/xyron/game/main/AngraServerBridge;->proofSession:I

    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    const-string v0, "N\u00e3o foi poss\u00edvel confirmar a integridade do aplicativo. Confira a atualiza\u00e7\u00e3o oficial, sem desinstalar nem apagar dados."

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$authorizeClient$8$com-xyron-game-main-AngraServerBridge(Lorg/json/JSONObject;II)V
    .locals 3

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    const-string v1, "clientChallenge"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p2, p1}, Lcom/xyron/game/security/NativeSession;->proof(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 351
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/security/NativeSession;->deviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe0

    invoke-static {v1, v0, p1}, Lcom/xyron/game/security/ClientProofWire;->request(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 352
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/AngraServerBridge;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 354
    const-string p2, "AngraSession"

    const-string v0, "Official client validation failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    new-instance p2, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p3}, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/AngraServerBridge;I)V

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$pump$9$com-xyron-game-main-AngraServerBridge(I)V
    .locals 0

    .line 384
    invoke-direct {p0, p1}, Lcom/xyron/game/main/AngraServerBridge;->pump(I)V

    return-void
.end method

.method synthetic lambda$receive$0$com-xyron-game-main-AngraServerBridge(Ljava/lang/String;)V
    .locals 18

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 69
    const-string v2, "passwordMax"

    const-string v3, "passwordMin"

    const-string v4, "name"

    const-string v5, "awaitingSpawn"

    const-string v6, "active"

    const-string v7, "message"

    const-string v8, "choices"

    const-string v9, "version"

    const-string v10, "marketData"

    const-string v11, "event"

    const-string v12, "AngraBridge"

    .line 0
    const-string v13, "server acknowledged auth request="

    const-string v14, "page kind="

    if-eqz v1, :cond_12

    .line 69
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v16, v2

    const/16 v2, 0x1000

    if-gt v15, v2, :cond_12

    iget-object v2, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2}, Lcom/xyron/game/main/SAMP;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 71
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 73
    const-string v15, "rows"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 74
    const-string v1, "AngraMarket"

    move-object/from16 v17, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "kind"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " offset="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "offset"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " rows="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v15, :cond_1

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v14

    :goto_0
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " next="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "next"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " total="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "total"

    const/4 v15, -0x1

    invoke-virtual {v2, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object/from16 v17, v3

    .line 79
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->adoptBridgeDialog()V

    .line 80
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "state"

    const/4 v14, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    :try_start_1
    const-string v3, "paydayData"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x2a

    goto/16 :goto_3

    :sswitch_1
    const-string v3, "visibility"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x50

    goto/16 :goto_3

    :sswitch_2
    const-string v3, "accountWarning"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x4c

    goto/16 :goto_3

    :sswitch_3
    const-string v3, "vehicleLockSound"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x37

    goto/16 :goto_3

    :sswitch_4
    const-string v3, "accountRenamed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3f

    goto/16 :goto_3

    :sswitch_5
    const-string v3, "pvpInvite"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x36

    goto/16 :goto_3

    :sswitch_6
    const-string v3, "phoneRenumber"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x1a

    goto/16 :goto_3

    :sswitch_7
    const-string v3, "tabToggle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x2b

    goto/16 :goto_3

    :sswitch_8
    const-string v3, "orgPanel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x42

    goto/16 :goto_3

    :sswitch_9
    const-string v3, "bankHistory"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x15

    goto/16 :goto_3

    :sswitch_a
    const-string v3, "angraPassClose"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x39

    goto/16 :goto_3

    :sswitch_b
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x22

    goto/16 :goto_3

    :sswitch_c
    const-string v3, "phoneNotification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x1d

    goto/16 :goto_3

    :sswitch_d
    const-string v3, "familyData"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x45

    goto/16 :goto_3

    :sswitch_e
    const-string v3, "panelFormClear"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x41

    goto/16 :goto_3

    :sswitch_f
    const-string v3, "adminState"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x4b

    goto/16 :goto_3

    :sswitch_10
    const-string v3, "showroomClose"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x32

    goto/16 :goto_3

    :sswitch_11
    const-string v3, "phoneMessage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x19

    goto/16 :goto_3

    :sswitch_12
    const-string v3, "bankUpdate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x14

    goto/16 :goto_3

    :sswitch_13
    const-string v3, "store"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x11

    goto/16 :goto_3

    :sswitch_14
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    goto/16 :goto_3

    :sswitch_15
    const-string v3, "spawn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    goto/16 :goto_3

    :sswitch_16
    const-string v3, "login"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto/16 :goto_3

    :sswitch_17
    const-string v3, "hello"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto/16 :goto_3

    :sswitch_18
    const-string v3, "death"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x12

    goto/16 :goto_3

    :sswitch_19
    const-string v3, "phoneEnvironment"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x1f

    goto/16 :goto_3

    :sswitch_1a
    const-string v3, "adminTeam"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x4a

    goto/16 :goto_3

    :sswitch_1b
    const-string v3, "adminInit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x47

    goto/16 :goto_3

    :sswitch_1c
    const-string v3, "adminData"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x48

    goto/16 :goto_3

    :sswitch_1d
    const-string v3, "marketChanged"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x24

    goto/16 :goto_3

    :sswitch_1e
    const-string v3, "door"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3b

    goto/16 :goto_3

    :sswitch_1f
    const-string v3, "bank"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x13

    goto/16 :goto_3

    :sswitch_20
    const-string v3, "auth"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto/16 :goto_3

    :sswitch_21
    const-string v3, "pvp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x33

    goto/16 :goto_3

    :sswitch_22
    const-string v3, "ban"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto/16 :goto_3

    :sswitch_23
    const-string v3, "afk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x51

    goto/16 :goto_3

    :sswitch_24
    const-string v3, "radioState"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x52

    goto/16 :goto_3

    :sswitch_25
    const-string v3, "radioClose"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x54

    goto/16 :goto_3

    :sswitch_26
    const-string v3, "inventoryClose"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xe

    goto/16 :goto_3

    :sswitch_27
    const-string v3, "marketResult"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x23

    goto/16 :goto_3

    :sswitch_28
    const-string v3, "pvpLive"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x34

    goto/16 :goto_3

    :sswitch_29
    const-string v3, "rpLockEnd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_2a
    const-string v3, "spectateClose"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x56

    goto/16 :goto_3

    :sswitch_2b
    const-string v3, "showroom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x31

    goto/16 :goto_3

    :sswitch_2c
    const-string v3, "shopPage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x27

    goto/16 :goto_3

    :sswitch_2d
    const-string v3, "shopOpen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x25

    goto/16 :goto_3

    :sswitch_2e
    const-string v3, "shopOdds"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x29

    goto/16 :goto_3

    :sswitch_2f
    const-string v3, "angraPass"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x38

    goto/16 :goto_3

    :sswitch_30
    const-string v3, "adminResult"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x49

    goto/16 :goto_3

    :sswitch_31
    const-string v3, "purgeAudio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_32
    const-string v3, "tuningClose"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x2e

    goto/16 :goto_3

    :sswitch_33
    const-string v3, "phoneSettings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x1e

    goto/16 :goto_3

    :sswitch_34
    const-string v3, "garageClose"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x30

    goto/16 :goto_3

    :sswitch_35
    const-string v3, "tuning"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x2d

    goto/16 :goto_3

    :sswitch_36
    const-string v3, "rpLock"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto/16 :goto_3

    :sswitch_37
    const-string v3, "rpHood"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_38
    const-string v3, "rating"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x4d

    goto/16 :goto_3

    :sswitch_39
    const-string v3, "petrol"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3c

    goto/16 :goto_3

    :sswitch_3a
    const-string v3, "familyPanel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x43

    goto/16 :goto_3

    :sswitch_3b
    const-string v3, "phoneOpen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x1c

    goto/16 :goto_3

    :sswitch_3c
    const-string v3, "phoneData"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x17

    goto/16 :goto_3

    :sswitch_3d
    const-string v3, "marketProfile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x21

    goto/16 :goto_3

    :sswitch_3e
    const-string v3, "shopWallet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x26

    goto/16 :goto_3

    :sswitch_3f
    const-string v3, "notice"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    goto/16 :goto_3

    :sswitch_40
    const-string v3, "petrolResult"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3d

    goto/16 :goto_3

    :sswitch_41
    const-string v3, "phoneResult"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x18

    goto/16 :goto_3

    :sswitch_42
    const-string v3, "safeZones"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3a

    goto/16 :goto_3

    :sswitch_43
    const-string v3, "restrictions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x4f

    goto/16 :goto_3

    :sswitch_44
    const-string v3, "radioMembers"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x53

    goto/16 :goto_3

    :sswitch_45
    const-string v3, "shopResult"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x28

    goto/16 :goto_3

    :sswitch_46
    const-string v3, "adminPanelClose"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x4e

    goto/16 :goto_3

    :sswitch_47
    const-string v3, "petrolMarket"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3e

    goto/16 :goto_3

    :sswitch_48
    const-string v3, "orgData"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x44

    goto/16 :goto_3

    :sswitch_49
    const-string v3, "garage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x2f

    goto/16 :goto_3

    :sswitch_4a
    const-string v3, "authPending"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto/16 :goto_3

    :sswitch_4b
    const-string v3, "phoneAppData"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x1b

    goto/16 :goto_3

    :sswitch_4c
    const-string v3, "panelForm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x40

    goto/16 :goto_3

    :sswitch_4d
    const-string v3, "inventoryOpen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xf

    goto/16 :goto_3

    :sswitch_4e
    const-string v3, "pvpClose"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x35

    goto :goto_3

    :sswitch_4f
    const-string v3, "phoneState"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x16

    goto :goto_3

    :sswitch_50
    const-string v3, "inventoryAction"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xc

    goto :goto_3

    :sswitch_51
    const-string v3, "supportChanged"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x2c

    goto :goto_3

    :sswitch_52
    const-string v3, "phoneNewsChanged"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x20

    goto :goto_3

    :sswitch_53
    const-string v3, "systemPanelClose"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x46

    goto :goto_3

    :sswitch_54
    const-string v3, "spawned"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    goto :goto_3

    :sswitch_55
    const-string v3, "inventory"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xd

    goto :goto_3

    :sswitch_56
    const-string v3, "spectate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_3

    const/16 v1, 0x55

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, -0x1

    :goto_3
    const-string v3, "authRetry"

    const/4 v10, 0x0

    const-string v15, "requestId"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 191
    :pswitch_0
    :try_start_2
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->applyAngraSystemEvent(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 188
    :pswitch_1
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    const-string v3, "id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v14, :cond_4

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v2, v6, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/xyron/game/main/SAMP;->setAngraPlayerAfk(IZ)V

    goto/16 :goto_5

    .line 187
    :pswitch_2
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->applyAngraVisibility(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 186
    :pswitch_3
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->applyAngraRestrictions(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 185
    :pswitch_4
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->applyAngraSystemEvent(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 171
    :pswitch_5
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xyron/game/launcher/util/AngraNoticeKind;->resolve(ILjava/lang/String;)I

    move-result v3

    const-string v4, "title"

    invoke-virtual {v2, v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "duration"

    const/16 v7, 0xfa0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/xyron/game/main/SAMP;->showAngraNotification(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 170
    :pswitch_6
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->showInventoryOverlay()V

    goto/16 :goto_5

    .line 169
    :pswitch_7
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlay()V

    goto/16 :goto_5

    .line 168
    :pswitch_8
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->setAngraInventoryData(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 167
    :pswitch_9
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseUi:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    invoke-virtual {v2, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v3, v2}, Lcom/xyron/game/main/SAMP;->inventoryOperation(Lorg/json/JSONObject;)V

    :cond_5
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_11

    iget-object v2, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseKeys:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, v0, Lcom/xyron/game/main/AngraServerBridge;->pendingItemUses:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v2, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseUi:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 166
    :pswitch_a
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->roleplayEvent(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 150
    :pswitch_b
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    const-string v3, "heavyCarry"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xyron/game/main/SAMP;->setNativeHeavyLoad(Z)V

    .line 151
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    const-string v3, "loaderJog"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xyron/game/main/SAMP;->setNativeLoaderJog(Z)V

    .line 152
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    const-string v3, "invisible"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xyron/game/main/SAMP;->setAngraGhostMode(Z)V

    .line 153
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->applyAngraSystemEvent(Lorg/json/JSONObject;)V

    .line 154
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->applyAngraServerState(Lorg/json/JSONObject;)V

    .line 155
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 156
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 157
    iget-boolean v1, v0, Lcom/xyron/game/main/AngraServerBridge;->spawnSelectionStarted:Z

    if-eqz v1, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->finishSpawn()V

    goto/16 :goto_5

    .line 159
    :cond_7
    iput-boolean v14, v0, Lcom/xyron/game/main/AngraServerBridge;->spawnSelectionStarted:Z

    .line 160
    iget-boolean v1, v0, Lcom/xyron/game/main/AngraServerBridge;->spawnComplete:Z

    if-nez v1, :cond_11

    iget v1, v0, Lcom/xyron/game/main/AngraServerBridge;->pendingSpawn:I

    if-gez v1, :cond_11

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->hideLogin()V

    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->showAngraServerSpawn()V

    goto/16 :goto_5

    .line 148
    :pswitch_c
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->applyAngraSystemEvent(Lorg/json/JSONObject;)V

    const-string v1, "server confirmed spawn"

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->finishSpawn()V

    goto/16 :goto_5

    .line 139
    :pswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->clearAuthRequest()V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->hideLogin()V

    .line 141
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 142
    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->clearSpawnRequest()V

    .line 143
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->setAngraSpawnChoices(Lorg/json/JSONArray;)V

    .line 145
    :cond_8
    iput-boolean v14, v0, Lcom/xyron/game/main/AngraServerBridge;->spawnSelectionStarted:Z

    .line 146
    iget-boolean v1, v0, Lcom/xyron/game/main/AngraServerBridge;->spawnComplete:Z

    if-nez v1, :cond_11

    iget v1, v0, Lcom/xyron/game/main/AngraServerBridge;->pendingSpawn:I

    if-gez v1, :cond_11

    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->showAngraServerSpawn()V

    goto/16 :goto_5

    :pswitch_e
    const/4 v1, 0x0

    .line 133
    invoke-virtual {v2, v15, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iget v3, v0, Lcom/xyron/game/main/AngraServerBridge;->activeAuthRequest:I

    if-eq v1, v3, :cond_9

    goto/16 :goto_5

    .line 134
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->clearAuthRequest()V

    .line 135
    iput-object v2, v0, Lcom/xyron/game/main/AngraServerBridge;->pendingAuth:Lorg/json/JSONObject;

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->publishAuth()V

    .line 137
    const-string v1, "close"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->hideLogin()V

    goto/16 :goto_5

    .line 130
    :pswitch_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_10
    const/4 v1, 0x0

    .line 127
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/xyron/game/main/AngraServerBridge;->authRetrySupported:Z

    .line 128
    invoke-direct {v0, v2}, Lcom/xyron/game/main/AngraServerBridge;->showLogin(Lorg/json/JSONObject;)V

    const-string v1, "login metadata received"

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 90
    :pswitch_11
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v14, :cond_a

    return-void

    .line 91
    :cond_a
    const-string v1, "accessSession"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 92
    const-string v5, "clientRequired"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 93
    iget v5, v0, Lcom/xyron/game/main/AngraServerBridge;->proofSession:I

    if-eq v5, v1, :cond_b

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/xyron/game/main/AngraServerBridge;->proofAccepted:Z

    .line 94
    :cond_b
    const-string v5, "clientVerified"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 95
    iput-boolean v14, v0, Lcom/xyron/game/main/AngraServerBridge;->proofAccepted:Z

    .line 96
    iput v1, v0, Lcom/xyron/game/main/AngraServerBridge;->proofSession:I

    .line 97
    iget-object v5, v0, Lcom/xyron/game/main/AngraServerBridge;->proofWire:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v6, v0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 98
    :cond_c
    iput-object v10, v0, Lcom/xyron/game/main/AngraServerBridge;->proofWire:Ljava/lang/String;

    .line 100
    :cond_d
    iget-boolean v5, v0, Lcom/xyron/game/main/AngraServerBridge;->proofAccepted:Z

    if-nez v5, :cond_e

    invoke-direct {v0, v2, v1}, Lcom/xyron/game/main/AngraServerBridge;->authorizeClient(Lorg/json/JSONObject;I)V

    goto/16 :goto_5

    .line 102
    :cond_e
    iget-boolean v5, v0, Lcom/xyron/game/main/AngraServerBridge;->helloAccepted:Z

    iget v6, v0, Lcom/xyron/game/main/AngraServerBridge;->acceptedAccessSession:I

    invoke-static {v5, v1, v6}, Lcom/xyron/game/main/AngraServerBridge;->sameAccessSession(ZII)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "hello|1|17"

    if-eqz v5, :cond_f

    :try_start_3
    invoke-virtual {v0, v6}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    goto/16 :goto_5

    .line 103
    :cond_f
    iput v1, v0, Lcom/xyron/game/main/AngraServerBridge;->acceptedAccessSession:I

    .line 104
    iput-boolean v14, v0, Lcom/xyron/game/main/AngraServerBridge;->helloAccepted:Z

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->clearAuthRequest()V

    const/4 v1, 0x0

    .line 106
    iput v1, v0, Lcom/xyron/game/main/AngraServerBridge;->authRequestSequence:I

    .line 107
    iput v1, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryGiveSequence:I

    iput v1, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseSequence:I

    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->pendingItemUses:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseUi:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseKeys:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/xyron/game/main/AngraServerBridge;->authRetrySupported:Z

    .line 109
    iput-boolean v1, v0, Lcom/xyron/game/main/AngraServerBridge;->legacyLogin:Z

    iput-boolean v1, v0, Lcom/xyron/game/main/AngraServerBridge;->legacySubmitted:Z

    .line 110
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v14, :cond_10

    return-void

    .line 111
    :cond_10
    iget v1, v0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    add-int/2addr v1, v14

    iput v1, v0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->chunkOriginals:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xyron/game/main/AngraServerBridge;->sending:Z

    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->clearSpawnRequest()V

    iput-boolean v1, v0, Lcom/xyron/game/main/AngraServerBridge;->spawnComplete:Z

    iput-boolean v1, v0, Lcom/xyron/game/main/AngraServerBridge;->spawnSelectionStarted:Z

    .line 113
    iput-object v10, v0, Lcom/xyron/game/main/AngraServerBridge;->pendingAuth:Lorg/json/JSONObject;

    .line 114
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->resetAngraServerSession()V

    .line 115
    iput-boolean v14, v0, Lcom/xyron/game/main/AngraServerBridge;->connected:Z

    .line 116
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v3, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v3}, Lcom/xyron/game/main/SAMP;->lerNomeDoPlayer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v3, v17

    const/4 v4, 0x5

    .line 118
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v3, v16

    const/16 v4, 0x14

    .line 119
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {v0, v6}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    .line 123
    invoke-direct {v0, v1}, Lcom/xyron/game/main/AngraServerBridge;->showLogin(Lorg/json/JSONObject;)V

    .line 124
    const-string v1, "hello received; graphical login opened"

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    new-instance v2, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/AngraServerBridge;)V

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->attachAngraInventoryHandler(Lcom/xyron/game/main/InventoryAdapter$RequestHandler;)V

    goto :goto_5

    .line 82
    :pswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->clearAuthRequest()V

    .line 83
    iget v1, v0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    add-int/2addr v1, v14

    iput v1, v0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->chunkOriginals:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xyron/game/main/AngraServerBridge;->sending:Z

    iput-boolean v1, v0, Lcom/xyron/game/main/AngraServerBridge;->connected:Z

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->clearSpawnRequest()V

    .line 85
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->closeAngraServerSpawn()V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/xyron/game/main/AngraServerBridge;->hideLogin()V

    .line 87
    iget-object v1, v0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/SAMP;->showAngraBan(Lorg/json/JSONObject;)V

    return-void

    .line 194
    :cond_11
    :goto_5
    iget v1, v0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    invoke-direct {v0, v1}, Lcom/xyron/game/main/AngraServerBridge;->pump(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 195
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid bridge payload rejected; bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f1c2827 -> :sswitch_56
        -0x786fe6a4 -> :sswitch_55
        -0x77e5f2a6 -> :sswitch_54
        -0x77a6da1d -> :sswitch_53
        -0x769b79ed -> :sswitch_52
        -0x72181c1b -> :sswitch_51
        -0x7154f14e -> :sswitch_50
        -0x6d60343d -> :sswitch_4f
        -0x685b5b12 -> :sswitch_4e
        -0x5aee5a3a -> :sswitch_4d
        -0x58631718 -> :sswitch_4c
        -0x546a17e3 -> :sswitch_4b
        -0x52c1e931 -> :sswitch_4a
        -0x4ab0a4d9 -> :sswitch_49
        -0x47d7ff52 -> :sswitch_48
        -0x47977b54 -> :sswitch_47
        -0x46a830fd -> :sswitch_46
        -0x4626014d -> :sswitch_45
        -0x45111362 -> :sswitch_44
        -0x447199d9 -> :sswitch_43
        -0x43b2ad46 -> :sswitch_42
        -0x412658d5 -> :sswitch_41
        -0x3ed64773 -> :sswitch_40
        -0x3df86928 -> :sswitch_3f
        -0x3dd97571 -> :sswitch_3e
        -0x3d8d6e33 -> :sswitch_3d
        -0x3d5cc5c8 -> :sswitch_3c
        -0x3d578f28 -> :sswitch_3b
        -0x3c5dc300 -> :sswitch_3a
        -0x3b1b7fb0 -> :sswitch_39
        -0x37ea4e63 -> :sswitch_38
        -0x372ad786 -> :sswitch_37
        -0x37290777 -> :sswitch_36
        -0x3369814b -> :sswitch_35
        -0x2c7e8cef -> :sswitch_34
        -0x276cf04f -> :sswitch_33
        -0x2377a7bd -> :sswitch_32
        -0x218bd215 -> :sswitch_31
        -0x1f893fb4 -> :sswitch_30
        -0x1ea99ac6 -> :sswitch_2f
        -0x149722c6 -> :sswitch_2e
        -0x1496f5a0 -> :sswitch_2d
        -0x1496b95b -> :sswitch_2c
        -0x14246aa8 -> :sswitch_2b
        -0x12e6ea61 -> :sswitch_2a
        -0xf9aa06e -> :sswitch_29
        -0xb9bccca -> :sswitch_28
        -0x789d487 -> :sswitch_27
        -0x387b204 -> :sswitch_26
        -0x1ace143 -> :sswitch_25
        -0xc7faaa -> :sswitch_24
        0x178e6 -> :sswitch_23
        0x17c0f -> :sswitch_22
        0x1b32a -> :sswitch_21
        0x2ddda8 -> :sswitch_20
        0x2e063c -> :sswitch_1f
        0x2f23ae -> :sswitch_1e
        0xef6ad8 -> :sswitch_1d
        0x1462799 -> :sswitch_1c
        0x1489cff -> :sswitch_1b
        0x14d7a4c -> :sswitch_1a
        0x3cc8bc5 -> :sswitch_19
        0x5b09274 -> :sswitch_18
        0x5e918d2 -> :sswitch_17
        0x625ef69 -> :sswitch_16
        0x688f37b -> :sswitch_15
        0x68ac491 -> :sswitch_14
        0x68af8e1 -> :sswitch_13
        0x86c8e25 -> :sswitch_12
        0x13db02b9 -> :sswitch_11
        0x2126ef80 -> :sswitch_10
        0x285a8a82 -> :sswitch_f
        0x2dfb2e45 -> :sswitch_e
        0x2f946d2e -> :sswitch_d
        0x37fa6579 -> :sswitch_c
        0x42907a06 -> :sswitch_b
        0x44bcbcde -> :sswitch_a
        0x4a5e3ab8 -> :sswitch_9
        0x4d811980 -> :sswitch_8
        0x611aa349 -> :sswitch_7
        0x66848aca -> :sswitch_6
        0x674c46d3 -> :sswitch_5
        0x6be661f9 -> :sswitch_4
        0x6d2578d8 -> :sswitch_3
        0x6dd060af -> :sswitch_2
        0x73b66312 -> :sswitch_1
        0x7dbc7bbe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$receiveLegacyLogin$3$com-xyron-game-main-AngraServerBridge()V
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    iget v1, p0, Lcom/xyron/game/main/AngraServerBridge;->registrationGender:I

    const/4 v2, 0x0

    new-array v2, v2, [B

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/xyron/game/main/SAMP;->sendLegacyAngraLoginResponse(II[B)V

    return-void
.end method

.method synthetic lambda$receiveLegacyLogin$4$com-xyron-game-main-AngraServerBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 320
    :try_start_0
    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->clearAuthRequest()V

    .line 321
    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->chunkOriginals:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->sending:Z

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->dialogAvailable:Z

    .line 322
    iput-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyLogin:Z

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->legacySubmitted:Z

    .line 323
    const-string v0, "Registro - "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyRegistration:Z

    .line 324
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "name"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "passwordMin"

    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "passwordMax"

    const/16 v0, 0x14

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "registration"

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyRegistration:Z

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/AngraServerBridge;->showLogin(Lorg/json/JSONObject;)V

    .line 325
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "senha incorreta"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 326
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "type"

    const-string p3, "error"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "message"

    const-string p3, "Senha incorreta. Confira sua senha."

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingAuth:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->publishAuth()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    const-string p1, "AngraBridge"

    const-string p2, "login initialization failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$receiveLegacyLogin$5$com-xyron-game-main-AngraServerBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 334
    :try_start_0
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyLogin:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->legacySubmitted:Z

    const-string v0, "Registro - "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyRegistration:Z

    .line 335
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "name"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "passwordMin"

    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "passwordMax"

    const/16 v0, 0x14

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "registration"

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyRegistration:Z

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/AngraServerBridge;->showLogin(Lorg/json/JSONObject;)V

    .line 336
    const-string p1, "Senha incorreta"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 337
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "type"

    const-string p3, "error"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "message"

    const-string p3, "Senha incorreta. Confira sua senha; a Base limita as tentativas."

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingAuth:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->publishAuth()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method synthetic lambda$retryAuth$1$com-xyron-game-main-AngraServerBridge(III)V
    .locals 2

    .line 242
    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->activeAuthRequest:I

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->activeAuthWire:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-lt p3, v0, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->clearAuthRequest()V

    .line 246
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "type"

    const-string p3, "error"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "message"

    const-string p3, "N\u00e3o foi poss\u00edvel confirmar sua entrada. Tente novamente."

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingAuth:Lorg/json/JSONObject;

    .line 247
    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->publishAuth()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge;->activeAuthWire:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->activeAuthWire:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    .line 254
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "auth retry request="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AngraBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0, p1, p2, p3}, Lcom/xyron/game/main/AngraServerBridge;->retryAuth(III)V

    :cond_3
    :goto_0
    return-void
.end method

.method synthetic lambda$retrySpawn$2$com-xyron-game-main-AngraServerBridge(III)V
    .locals 0

    .line 0
    add-int/lit8 p3, p3, 0x1

    .line 302
    invoke-direct {p0, p1, p2, p3}, Lcom/xyron/game/main/AngraServerBridge;->retrySpawn(III)V

    return-void
.end method

.method onGameplayHudShown()V
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyLogin:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->legacySubmitted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->legacySubmitted:Z

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraServerBridge;->hideLogin()V

    :cond_0
    return-void
.end method

.method pause()V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->ready:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "window.__angraResumeMusic=Array.from(document.querySelectorAll(\'audio\')).some(a=>!a.paused);window.DXAuth&&window.DXAuth.stopMusic();"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method prepareForReconnect()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->setNativeHeavyLoad(Z)V

    .line 58
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->resetRoleplay()V

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingItemUses:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseUi:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput v1, p0, Lcom/xyron/game/main/AngraServerBridge;->inventoryUseSequence:I

    .line 59
    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->clearAuthRequest()V

    iget v0, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->chunkOriginals:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->sending:Z

    iput-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->connected:Z

    iput-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->dialogAvailable:Z

    .line 60
    iput-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyLogin:Z

    iput-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->legacySubmitted:Z

    iput-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->helloAccepted:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/xyron/game/main/AngraServerBridge;->proofSession:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->proofWire:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->proofAccepted:Z

    .line 61
    iput-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnComplete:Z

    iput-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->spawnSelectionStarted:Z

    invoke-direct {p0}, Lcom/xyron/game/main/AngraServerBridge;->clearSpawnRequest()V

    iput-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->pendingAuth:Lorg/json/JSONObject;

    .line 62
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->closeAngraServerSpawn()V

    .line 63
    invoke-virtual {p0}, Lcom/xyron/game/main/AngraServerBridge;->hideLogin()V

    return-void
.end method

.method receive(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x7918

    if-ne p1, v0, :cond_1

    .line 67
    const-string p1, "ANGRA:UI:1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    new-instance p2, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0, p3}, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda9;-><init>(Lcom/xyron/game/main/AngraServerBridge;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method receiveLegacyLogin(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 306
    const-string v1, "Registro - Genero"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyLogin:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->legacySubmitted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->legacyRegistration:Z

    if-eqz v1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    new-instance p2, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda6;-><init>(Lcom/xyron/game/main/AngraServerBridge;)V

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return v0

    .line 310
    :cond_0
    const-string v1, "\\{[0-9A-Fa-f]{6}\\}"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    if-nez p1, :cond_4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    .line 311
    const-string p2, "Login - "

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "Registro - "

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 312
    :cond_1
    const-string p2, " - "

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 313
    const-string p2, "[A-Za-z0-9_]{3,20}"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    .line 314
    :cond_2
    iget-boolean p2, p0, Lcom/xyron/game/main/AngraServerBridge;->connected:Z

    if-eqz p2, :cond_3

    .line 315
    iget-object p2, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda7;-><init>(Lcom/xyron/game/main/AngraServerBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return v0

    .line 332
    :cond_3
    iget-object p2, p0, Lcom/xyron/game/main/AngraServerBridge;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda8;-><init>(Lcom/xyron/game/main/AngraServerBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method resume()V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->ready:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->login:Landroid/webkit/WebView;

    const-string v1, "if(window.__angraResumeMusic&&window.DXAuth)window.DXAuth.startMusic();window.__angraResumeMusic=false;"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method send(Ljava/lang/String;)Z
    .locals 9

    .line 360
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraServerBridge;->connected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 361
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 362
    array-length v2, v0

    const/16 v3, 0x7f

    const/4 v4, 0x1

    if-le v2, v3, :cond_6

    .line 363
    array-length v2, v0

    const/16 v3, 0x400

    if-gt v2, v3, :cond_5

    const-string v2, "phone|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "phoneext|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "phonebank|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "admin|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "panelform|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "familyui|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "orgui|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "market|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 364
    :cond_1
    array-length v2, v0

    add-int/lit8 v2, v2, 0x27

    const/16 v3, 0x28

    div-int/2addr v2, v3

    iget-object v5, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    add-int/2addr v5, v2

    if-le v5, v3, :cond_2

    return v1

    .line 365
    :cond_2
    iget v5, p0, Lcom/xyron/game/main/AngraServerBridge;->chunkSequence:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/xyron/game/main/AngraServerBridge;->chunkSequence:I

    .line 366
    iget-object v6, p0, Lcom/xyron/game/main/AngraServerBridge;->chunkOriginals:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-ge v1, v2, :cond_3

    .line 368
    new-instance p1, Ljava/lang/String;

    mul-int/lit8 v6, v1, 0x28

    array-length v7, v0

    sub-int/2addr v7, v6

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 369
    iget-object v6, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "chunk|"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xyron/game/main/PhoneApps;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 371
    :cond_3
    iget-boolean p1, p0, Lcom/xyron/game/main/AngraServerBridge;->sending:Z

    if-nez p1, :cond_4

    iget p1, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    invoke-direct {p0, p1}, Lcom/xyron/game/main/AngraServerBridge;->pump(I)V

    :cond_4
    return v4

    :cond_5
    :goto_1
    return v1

    .line 373
    :cond_6
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_7

    return v1

    .line 374
    :cond_7
    const-string v0, "surrender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surrender queued; dialogAvailable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/xyron/game/main/AngraServerBridge;->dialogAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AngraDeath"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_8
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge;->requests:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 376
    iget-boolean p1, p0, Lcom/xyron/game/main/AngraServerBridge;->sending:Z

    if-nez p1, :cond_9

    iget p1, p0, Lcom/xyron/game/main/AngraServerBridge;->generation:I

    invoke-direct {p0, p1}, Lcom/xyron/game/main/AngraServerBridge;->pump(I)V

    :cond_9
    return v4

    :cond_a
    :goto_2
    return v1
.end method
