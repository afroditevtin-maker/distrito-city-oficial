.class public final synthetic Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

.field public final synthetic f$1:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;Landroid/app/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    iput-object p2, p0, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder$$ExternalSyntheticLambda0;->f$1:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    iget-object v1, p0, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder$$ExternalSyntheticLambda0;->f$1:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, p1}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->lambda$create$0$com-xyron-game-launcher-util-LocalizedPlatformDialogBuilder(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
