.class public final synthetic Lcom/xyron/game/main/AngraPhoneAudio$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/AngraPhoneAudio;

.field public final synthetic f$1:Landroid/media/MediaPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/AngraPhoneAudio;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/AngraPhoneAudio$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/AngraPhoneAudio;

    iput-object p2, p0, Lcom/xyron/game/main/AngraPhoneAudio$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/AngraPhoneAudio$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/AngraPhoneAudio;

    iget-object v1, p0, Lcom/xyron/game/main/AngraPhoneAudio$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, p1}, Lcom/xyron/game/main/AngraPhoneAudio;->lambda$notification$0$com-xyron-game-main-AngraPhoneAudio(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V

    return-void
.end method
