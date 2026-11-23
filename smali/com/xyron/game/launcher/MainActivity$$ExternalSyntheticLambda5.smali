.class public final synthetic Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/launcher/MainActivity;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/launcher/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda5;->f$0:Lcom/xyron/game/launcher/MainActivity;

    iput-object p2, p0, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda5;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda5;->f$0:Lcom/xyron/game/launcher/MainActivity;

    iget-object v1, p0, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda5;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1}, Lcom/xyron/game/launcher/MainActivity;->lambda$showNickDialog$14$com-xyron-game-launcher-MainActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method
