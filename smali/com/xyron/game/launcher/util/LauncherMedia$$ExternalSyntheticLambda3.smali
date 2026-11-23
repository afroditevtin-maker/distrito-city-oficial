.class public final synthetic Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/widget/VideoView;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/app/Activity;Landroid/widget/VideoView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda3;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda3;->f$2:Landroid/widget/VideoView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda3;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda3;->f$2:Landroid/widget/VideoView;

    invoke-static {v0, v1, v2}, Lcom/xyron/game/launcher/util/LauncherMedia;->lambda$bindVideo$4(Ljava/lang/String;Landroid/app/Activity;Landroid/widget/VideoView;)V

    return-void
.end method
