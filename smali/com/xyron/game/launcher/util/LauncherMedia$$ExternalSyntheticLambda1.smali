.class public final synthetic Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Landroid/widget/VideoView;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/widget/VideoView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda1;->f$1:Landroid/widget/VideoView;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda1;->f$1:Landroid/widget/VideoView;

    invoke-static {v0, v1, p1}, Lcom/xyron/game/launcher/util/LauncherMedia;->lambda$bindVideo$1(Landroid/app/Activity;Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V

    return-void
.end method
