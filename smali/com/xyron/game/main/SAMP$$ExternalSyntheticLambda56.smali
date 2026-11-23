.class public final synthetic Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/xyron/game/main/ReferencePanels$SpawnAction;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/SAMP;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda56;->f$0:Lcom/xyron/game/main/SAMP;

    return-void
.end method


# virtual methods
.method public final select(I)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda56;->f$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/SAMP;->lambda$showAngraServerSpawn$6$com-xyron-game-main-SAMP(I)Z

    move-result p1

    return p1
.end method
