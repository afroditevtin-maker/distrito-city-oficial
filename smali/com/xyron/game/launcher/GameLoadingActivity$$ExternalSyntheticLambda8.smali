.class public final synthetic Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/launcher/GameLoadingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/launcher/GameLoadingActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda8;->f$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity$$ExternalSyntheticLambda8;->f$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-virtual {v0, p1, p2}, Lcom/xyron/game/launcher/GameLoadingActivity;->lambda$startServerCheck$2$com-xyron-game-launcher-GameLoadingActivity(Landroid/content/DialogInterface;I)V

    return-void
.end method
