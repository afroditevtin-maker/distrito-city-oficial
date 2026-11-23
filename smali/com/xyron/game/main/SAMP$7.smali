.class Lcom/xyron/game/main/SAMP$7;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP;->showLoadingScreen()V
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

    .line 818
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$7;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 823
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$7;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->loadingscreen:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$7;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP;->loadingscreen:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$7;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2200(Lcom/xyron/game/main/SAMP;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 825
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$7;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2200(Lcom/xyron/game/main/SAMP;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_1
    return-void
.end method
