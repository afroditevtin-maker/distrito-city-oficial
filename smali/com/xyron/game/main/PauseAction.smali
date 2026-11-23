.class public final Lcom/xyron/game/main/PauseAction;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "PauseAction.java"

.field private final game:Lcom/xyron/game/main/SAMP;
.field private final action:I

.method public constructor <init>(Lcom/xyron/game/main/SAMP;I)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xyron/game/main/PauseAction;->game:Lcom/xyron/game/main/SAMP;
    iput p2, p0, Lcom/xyron/game/main/PauseAction;->action:I
    return-void
.end method

.method public run()V
    .locals 2
    iget v0, p0, Lcom/xyron/game/main/PauseAction;->action:I
    iget-object v1, p0, Lcom/xyron/game/main/PauseAction;->game:Lcom/xyron/game/main/SAMP;
    if-nez v0, :cond_1
    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->showSettingsOverlay()V
    return-void
    :cond_1
    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->openHudFixNativeMap()V
    return-void
.end method
