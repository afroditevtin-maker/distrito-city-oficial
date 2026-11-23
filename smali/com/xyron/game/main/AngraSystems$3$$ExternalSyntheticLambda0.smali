.class public final synthetic Lcom/xyron/game/main/AngraSystems$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/AngraSystems$3;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/AngraSystems$3;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/AngraSystems$3$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/AngraSystems$3;

    iput-object p2, p0, Lcom/xyron/game/main/AngraSystems$3$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xyron/game/main/AngraSystems$3$$ExternalSyntheticLambda0;->f$2:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems$3$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/AngraSystems$3;

    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems$3$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xyron/game/main/AngraSystems$3$$ExternalSyntheticLambda0;->f$2:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/xyron/game/main/AngraSystems$3;->lambda$onRenderProcessGone$0$com-xyron-game-main-AngraSystems$3(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
