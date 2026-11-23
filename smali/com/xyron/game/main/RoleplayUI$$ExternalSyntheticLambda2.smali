.class public final synthetic Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/RoleplayUI;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/RoleplayUI;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda2;->f$0:Lcom/xyron/game/main/RoleplayUI;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda2;->f$0:Lcom/xyron/game/main/RoleplayUI;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xyron/game/main/RoleplayUI;->lambda$setPurgeAudio$4$com-xyron-game-main-RoleplayUI(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
