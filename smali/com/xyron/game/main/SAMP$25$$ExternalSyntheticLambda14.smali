.class public final synthetic Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/SAMP$25;

.field public final synthetic f$1:Landroid/widget/ImageButton;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/SAMP$25;Landroid/widget/ImageButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda14;->f$0:Lcom/xyron/game/main/SAMP$25;

    iput-object p2, p0, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda14;->f$1:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 12

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda14;->f$0:Lcom/xyron/game/main/SAMP$25;

    iget-object v2, v0, Lcom/xyron/game/main/SAMP$25$$ExternalSyntheticLambda14;->f$1:Landroid/widget/ImageButton;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Lcom/xyron/game/main/SAMP$25;->lambda$run$14$com-xyron-game-main-SAMP$25(Landroid/widget/ImageButton;Landroid/view/View;IIIIIIII)V

    return-void
.end method
