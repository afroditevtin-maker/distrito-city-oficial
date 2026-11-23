.class public final synthetic Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/ui/AngraPause;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/ui/AngraPause;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda2;->f$0:Lcom/xyron/game/main/ui/AngraPause;

    iput-object p2, p0, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda2;->f$0:Lcom/xyron/game/main/ui/AngraPause;

    iget-object v1, p0, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/xyron/game/main/ui/AngraPause$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/xyron/game/main/ui/AngraPause;->lambda$new$0$com-xyron-game-main-ui-AngraPause(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
