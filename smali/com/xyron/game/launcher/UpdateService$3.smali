.class Lcom/xyron/game/launcher/UpdateService$3;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/launcher/UpdateService;->requestClientConfig(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/UpdateService;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/UpdateService;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService$3;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iput p2, p0, Lcom/xyron/game/launcher/UpdateService$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "x1y2z"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateService$3;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iget v0, p0, Lcom/xyron/game/launcher/UpdateService$3;->val$index:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/xyron/game/launcher/UpdateService;->access$500(Lcom/xyron/game/launcher/UpdateService;I)V

    return-void
.end method
