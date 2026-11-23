.class public final synthetic Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/ui/CustomKeyboard;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/ui/CustomKeyboard;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda9;->f$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda9;->f$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/ui/CustomKeyboard;->lambda$makeKey$6$com-xyron-game-main-ui-CustomKeyboard(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
