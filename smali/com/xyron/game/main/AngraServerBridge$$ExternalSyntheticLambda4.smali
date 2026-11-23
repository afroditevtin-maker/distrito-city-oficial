.class public final synthetic Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/AngraServerBridge;

.field public final synthetic f$1:Lorg/json/JSONObject;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/AngraServerBridge;Lorg/json/JSONObject;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda4;->f$0:Lcom/xyron/game/main/AngraServerBridge;

    iput-object p2, p0, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda4;->f$1:Lorg/json/JSONObject;

    iput p3, p0, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda4;->f$2:I

    iput p4, p0, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda4;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda4;->f$0:Lcom/xyron/game/main/AngraServerBridge;

    iget-object v1, p0, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda4;->f$1:Lorg/json/JSONObject;

    iget v2, p0, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda4;->f$2:I

    iget v3, p0, Lcom/xyron/game/main/AngraServerBridge$$ExternalSyntheticLambda4;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/xyron/game/main/AngraServerBridge;->lambda$authorizeClient$8$com-xyron-game-main-AngraServerBridge(Lorg/json/JSONObject;II)V

    return-void
.end method
