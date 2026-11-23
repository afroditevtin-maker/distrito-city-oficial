.class Lcom/xyron/game/launcher/UpdateService$4;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/launcher/UpdateService;->requestHuggingFaceTreeManifest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/UpdateService;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/UpdateService;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService$4;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$4;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateService;->access$600(Lcom/xyron/game/launcher/UpdateService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$4;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateService;->access$700(Lcom/xyron/game/launcher/UpdateService;)V

    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$4;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateService;->access$800(Lcom/xyron/game/launcher/UpdateService;)I

    move-result v1

    iput v1, v0, Lcom/xyron/game/launcher/UpdateService;->mUpdateVersion:I

    .line 439
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$4;->this$0:Lcom/xyron/game/launcher/UpdateService;

    const-string v1, ""

    iput-object v1, v0, Lcom/xyron/game/launcher/UpdateService;->mUpdateGameURL:Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$4;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateService;->access$900(Lcom/xyron/game/launcher/UpdateService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 442
    const-string/jumbo v1, "x1y2z"

    const-string v2, "hugging face tree fallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$4;->this$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateService;->access$700(Lcom/xyron/game/launcher/UpdateService;)V

    :goto_0
    return-void
.end method
