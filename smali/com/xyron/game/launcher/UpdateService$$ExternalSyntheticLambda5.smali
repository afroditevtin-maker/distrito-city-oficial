.class public final synthetic Lcom/xyron/game/launcher/UpdateService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/launcher/UpdateService;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/launcher/UpdateService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService$$ExternalSyntheticLambda5;->f$0:Lcom/xyron/game/launcher/UpdateService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/UpdateService$$ExternalSyntheticLambda5;->f$0:Lcom/xyron/game/launcher/UpdateService;

    invoke-virtual {v0}, Lcom/xyron/game/launcher/UpdateService;->lambda$onStartCommand$0$com-xyron-game-launcher-UpdateService()V

    return-void
.end method
