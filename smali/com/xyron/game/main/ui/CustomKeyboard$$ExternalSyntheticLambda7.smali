.class public final synthetic Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/ui/CustomKeyboard;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/ui/CustomKeyboard;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda7;->f$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    iput-object p2, p0, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda7;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda7;->f$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda7;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/xyron/game/main/ui/CustomKeyboard;->lambda$makeKey$7$com-xyron-game-main-ui-CustomKeyboard(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
