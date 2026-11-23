.class public final synthetic Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Landroid/widget/VideoView;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/widget/VideoView;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda4;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda4;->f$1:Landroid/widget/VideoView;

    iput-object p3, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda4;->f$3:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda4;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda4;->f$1:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/xyron/game/launcher/util/LauncherMedia$$ExternalSyntheticLambda4;->f$3:Ljava/io/File;

    invoke-static {v0, v1, v2, v3}, Lcom/xyron/game/launcher/util/LauncherMedia;->lambda$bindVideo$3(Landroid/app/Activity;Landroid/widget/VideoView;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
