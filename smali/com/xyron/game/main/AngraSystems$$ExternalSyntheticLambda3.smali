.class public final synthetic Lcom/xyron/game/main/AngraSystems$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/AngraSystems;

.field public final synthetic f$1:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/AngraSystems;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/AngraSystems$$ExternalSyntheticLambda3;->f$0:Lcom/xyron/game/main/AngraSystems;

    iput-object p2, p0, Lcom/xyron/game/main/AngraSystems$$ExternalSyntheticLambda3;->f$1:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/AngraSystems$$ExternalSyntheticLambda3;->f$0:Lcom/xyron/game/main/AngraSystems;

    iget-object v1, p0, Lcom/xyron/game/main/AngraSystems$$ExternalSyntheticLambda3;->f$1:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lcom/xyron/game/main/AngraSystems;->lambda$receive$2$com-xyron-game-main-AngraSystems(Lorg/json/JSONObject;Landroid/content/DialogInterface;)V

    return-void
.end method
