.class public final synthetic Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/launcher/ServerSelectActivity;

.field public final synthetic f$1:Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/launcher/ServerSelectActivity;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda6;->f$0:Lcom/xyron/game/launcher/ServerSelectActivity;

    iput-object p2, p0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda6;->f$1:Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda6;->f$0:Lcom/xyron/game/launcher/ServerSelectActivity;

    iget-object v1, p0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda6;->f$1:Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    invoke-virtual {v0, v1, p1}, Lcom/xyron/game/launcher/ServerSelectActivity;->lambda$serverCard$5$com-xyron-game-launcher-ServerSelectActivity(Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;Landroid/view/View;)V

    return-void
.end method
