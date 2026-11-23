.class public final synthetic Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/RoleplayUI;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/RoleplayUI;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda1;->f$0:Lcom/xyron/game/main/RoleplayUI;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda1;->f$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/RoleplayUI;->lambda$setPurgeAudio$3$com-xyron-game-main-RoleplayUI(Landroid/media/MediaPlayer;)V

    return-void
.end method
