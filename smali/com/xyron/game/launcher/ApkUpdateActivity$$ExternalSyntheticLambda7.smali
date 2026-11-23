.class public final synthetic Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/launcher/ApkUpdateActivity;

.field public final synthetic f$1:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/launcher/ApkUpdateActivity;Lcom/xyron/game/launcher/util/ApkUpdateManifest;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda7;->f$0:Lcom/xyron/game/launcher/ApkUpdateActivity;

    iput-object p2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda7;->f$1:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iput-object p3, p0, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda7;->f$0:Lcom/xyron/game/launcher/ApkUpdateActivity;

    iget-object v1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda7;->f$1:Lcom/xyron/game/launcher/util/ApkUpdateManifest;

    iget-object v2, p0, Lcom/xyron/game/launcher/ApkUpdateActivity$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xyron/game/launcher/ApkUpdateActivity;->lambda$recoverManifest$1$com-xyron-game-launcher-ApkUpdateActivity(Lcom/xyron/game/launcher/util/ApkUpdateManifest;Ljava/lang/String;)V

    return-void
.end method
