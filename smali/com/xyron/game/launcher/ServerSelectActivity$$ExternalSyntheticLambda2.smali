.class public final synthetic Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/launcher/ServerSelectActivity;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:Landroid/widget/TextView;

.field public final synthetic f$4:Landroid/widget/ProgressBar;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/launcher/ServerSelectActivity;[Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda2;->f$0:Lcom/xyron/game/launcher/ServerSelectActivity;

    iput-object p2, p0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda2;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda2;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda2;->f$3:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda2;->f$4:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda2;->f$0:Lcom/xyron/game/launcher/ServerSelectActivity;

    iget-object v1, p0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda2;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda2;->f$2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda2;->f$3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/xyron/game/launcher/ServerSelectActivity$$ExternalSyntheticLambda2;->f$4:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xyron/game/launcher/ServerSelectActivity;->lambda$queryServer$6$com-xyron-game-launcher-ServerSelectActivity([Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    return-void
.end method
