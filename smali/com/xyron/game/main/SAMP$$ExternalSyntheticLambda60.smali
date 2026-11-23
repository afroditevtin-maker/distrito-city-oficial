.class public final synthetic Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/SAMP;

.field public final synthetic f$1:Lcom/xyron/game/main/InventoryAdapter$RequestHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/SAMP;Lcom/xyron/game/main/InventoryAdapter$RequestHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda60;->f$0:Lcom/xyron/game/main/SAMP;

    iput-object p2, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda60;->f$1:Lcom/xyron/game/main/InventoryAdapter$RequestHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda60;->f$0:Lcom/xyron/game/main/SAMP;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda60;->f$1:Lcom/xyron/game/main/InventoryAdapter$RequestHandler;

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->lambda$setInventoryRequestHandler$70$com-xyron-game-main-SAMP(Lcom/xyron/game/main/InventoryAdapter$RequestHandler;)V

    return-void
.end method
