.class public final synthetic Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/launcher/SettingsActivity;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/launcher/SettingsActivity;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/launcher/SettingsActivity;

    iput-object p2, p0, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/launcher/SettingsActivity;

    iget-object v1, p0, Lcom/xyron/game/launcher/SettingsActivity$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/xyron/game/launcher/SettingsActivity;->lambda$shareLogs$0$com-xyron-game-launcher-SettingsActivity(Ljava/io/File;)V

    return-void
.end method
