.class public final synthetic Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/NearbyPlayerMenu;

.field public final synthetic f$1:[Landroid/view/View;

.field public final synthetic f$2:[Landroid/widget/TextView;

.field public final synthetic f$3:Landroid/widget/TextView;

.field public final synthetic f$4:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/NearbyPlayerMenu;[Landroid/view/View;[Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda1;->f$0:Lcom/xyron/game/main/NearbyPlayerMenu;

    iput-object p2, p0, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda1;->f$1:[Landroid/view/View;

    iput-object p3, p0, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda1;->f$2:[Landroid/widget/TextView;

    iput-object p4, p0, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda1;->f$3:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda1;->f$4:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 15

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda1;->f$0:Lcom/xyron/game/main/NearbyPlayerMenu;

    iget-object v2, v0, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda1;->f$1:[Landroid/view/View;

    iget-object v3, v0, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda1;->f$2:[Landroid/widget/TextView;

    iget-object v4, v0, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda1;->f$3:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda1;->f$4:Landroid/widget/TextView;

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-virtual/range {v1 .. v14}, Lcom/xyron/game/main/NearbyPlayerMenu;->lambda$open$2$com-xyron-game-main-NearbyPlayerMenu([Landroid/view/View;[Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;IIIIIIII)V

    return-void
.end method
