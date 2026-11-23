.class public final synthetic Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/VideoView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/VideoView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda2;->f$0:Landroid/widget/VideoView;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda2;->f$0:Landroid/widget/VideoView;

    invoke-static {v0, p1}, Lcom/xyron/game/launcher/util/LauncherMedia;->lambda$bindVideo$2(Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V

    return-void
.end method
