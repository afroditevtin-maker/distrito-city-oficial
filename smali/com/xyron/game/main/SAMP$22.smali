.class Lcom/xyron/game/main/SAMP$22;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP;->EsconderTeclas()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/SAMP;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 1791
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$22;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1794
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$22;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    return-void

    .line 1795
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$22;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v1, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a01e3

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/xyron/game/main/SAMP;->hud_y_v:Landroid/widget/TextView;

    .line 1796
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$22;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v1, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a01d1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/xyron/game/main/SAMP;->hud_f_v:Landroid/widget/TextView;

    .line 1797
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$22;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v1, v0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a01ce

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/xyron/game/main/SAMP;->hud_alt_v:Landroid/widget/TextView;

    .line 1798
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$22;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_y_v:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1799
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$22;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_f_v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1800
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$22;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->hud_alt_v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1801
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$22;->this$0:Lcom/xyron/game/main/SAMP;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$3600(Lcom/xyron/game/main/SAMP;Z)V

    .line 1802
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$22;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$3702(Lcom/xyron/game/main/SAMP;Z)Z

    return-void
.end method
