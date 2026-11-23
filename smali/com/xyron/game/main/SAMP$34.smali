.class Lcom/xyron/game/main/SAMP$34;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SAMP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP;->runNativeOverlayMotion(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/SAMP;

.field final synthetic val$done:Ljava/lang/Runnable;

.field final synthetic val$epoch:I


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;ILjava/lang/Runnable;)V
    .locals 0

    .line 3466
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$34;->this$0:Lcom/xyron/game/main/SAMP;

    iput p2, p0, Lcom/xyron/game/main/SAMP$34;->val$epoch:I

    iput-object p3, p0, Lcom/xyron/game/main/SAMP$34;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 3468
    iget v0, p0, Lcom/xyron/game/main/SAMP$34;->val$epoch:I

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$34;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v1}, Lcom/xyron/game/main/SAMP;->access$10700(Lcom/xyron/game/main/SAMP;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$34;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$10800(Lcom/xyron/game/main/SAMP;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 3469
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$34;->this$0:Lcom/xyron/game/main/SAMP;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xyron/game/main/SAMP;->access$10802(Lcom/xyron/game/main/SAMP;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 3470
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$34;->val$done:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method
