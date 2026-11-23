.class public final synthetic Lcom/xyron/game/main/HudButtonEditor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/HudButtonEditor;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/HudButtonEditor;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/HudButtonEditor$$ExternalSyntheticLambda3;->f$0:Lcom/xyron/game/main/HudButtonEditor;

    iput p2, p0, Lcom/xyron/game/main/HudButtonEditor$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor$$ExternalSyntheticLambda3;->f$0:Lcom/xyron/game/main/HudButtonEditor;

    iget v1, p0, Lcom/xyron/game/main/HudButtonEditor$$ExternalSyntheticLambda3;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/xyron/game/main/HudButtonEditor;->lambda$show$1$com-xyron-game-main-HudButtonEditor(ILandroid/view/View;)V

    return-void
.end method
