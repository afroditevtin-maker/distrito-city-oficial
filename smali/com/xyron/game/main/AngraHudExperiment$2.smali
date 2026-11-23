.class Lcom/xyron/game/main/AngraHudExperiment$2;
.super Landroid/content/BroadcastReceiver;
.source "AngraHudExperiment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/AngraHudExperiment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AngraHudExperiment;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/AngraHudExperiment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment$2;->this$0:Lcom/xyron/game/main/AngraHudExperiment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 93
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    const-string p1, "level"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "scale"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 97
    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment$2;->this$0:Lcom/xyron/game/main/AngraHudExperiment;

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    const/16 v0, 0x64

    mul-int/lit8 p1, p1, 0x64

    div-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    invoke-static {v1, v0}, Lcom/xyron/game/main/AngraHudExperiment;->access$202(Lcom/xyron/game/main/AngraHudExperiment;I)I

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment$2;->this$0:Lcom/xyron/game/main/AngraHudExperiment;

    invoke-static {p1}, Lcom/xyron/game/main/AngraHudExperiment;->access$300(Lcom/xyron/game/main/AngraHudExperiment;)V

    iget-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment$2;->this$0:Lcom/xyron/game/main/AngraHudExperiment;

    invoke-virtual {p1}, Lcom/xyron/game/main/AngraHudExperiment;->invalidate()V

    return-void
.end method
