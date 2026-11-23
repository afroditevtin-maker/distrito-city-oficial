.class Lcom/xyron/game/launcher/UpdateService$2;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/launcher/UpdateService;->requestClientConfig(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/UpdateService;

.field final synthetic val$clientConfigUrl:Ljava/lang/String;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/UpdateService;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 356
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService$2;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iput-object p2, p0, Lcom/xyron/game/launcher/UpdateService$2;->val$clientConfigUrl:Ljava/lang/String;

    iput p3, p0, Lcom/xyron/game/launcher/UpdateService$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 356
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/UpdateService$2;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    .line 360
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "client_config"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 361
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$2;->this$0:Lcom/xyron/game/launcher/UpdateService;

    const-string v1, "version_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/xyron/game/launcher/UpdateService;->mUpdateVersion:I

    .line 362
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$2;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$2;->val$clientConfigUrl:Ljava/lang/String;

    const-string v2, "url_launcher"

    .line 364
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-static {v0, v1, v2}, Lcom/xyron/game/launcher/UpdateService;->access$400(Lcom/xyron/game/launcher/UpdateService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameURL:Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$2;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object v1, p0, Lcom/xyron/game/launcher/UpdateService$2;->val$clientConfigUrl:Ljava/lang/String;

    const-string v2, "url_cache_files"

    .line 369
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-static {v0, v1, p1}, Lcom/xyron/game/launcher/UpdateService;->access$400(Lcom/xyron/game/launcher/UpdateService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$2;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget v0, p0, Lcom/xyron/game/launcher/UpdateService$2;->val$index:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/xyron/game/launcher/UpdateService;->access$500(Lcom/xyron/game/launcher/UpdateService;I)V

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$2;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-virtual {v0, p1}, Lcom/xyron/game/launcher/UpdateService;->getFilesInfo(Ljava/lang/String;)V

    .line 378
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$2;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-virtual {p1}, Lcom/xyron/game/launcher/UpdateService;->isGameUpdateExists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 379
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$2;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget-object p1, p1, Lcom/xyron/game/launcher/UpdateService;->mUpdateFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 380
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$2;->this$0:Lcom/xyron/game/launcher/UpdateService;

    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->Updated:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    iput-object v0, p1, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    goto :goto_0

    .line 383
    :cond_1
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$2;->this$0:Lcom/xyron/game/launcher/UpdateService;

    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->UpdateRequired:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    iput-object v0, p1, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    goto :goto_0

    .line 387
    :cond_2
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$2;->this$0:Lcom/xyron/game/launcher/UpdateService;

    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$GameStatus;->GameUpdateRequired:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    iput-object v0, p1, Lcom/xyron/game/launcher/UpdateService;->mGameStatus:Lcom/xyron/game/launcher/UpdateActivity$GameStatus;

    .line 390
    :goto_0
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$2;->this$0:Lcom/xyron/game/launcher/UpdateService;

    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->Undefined:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    invoke-virtual {p1, v0}, Lcom/xyron/game/launcher/UpdateService;->setUpdateStatus(Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 393
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$2;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget v0, p0, Lcom/xyron/game/launcher/UpdateService$2;->val$index:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/xyron/game/launcher/UpdateService;->access$500(Lcom/xyron/game/launcher/UpdateService;I)V

    :goto_1
    return-void
.end method
