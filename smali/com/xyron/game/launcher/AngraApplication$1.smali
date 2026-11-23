.class Lcom/xyron/game/launcher/AngraApplication$1;
.super Ljava/lang/Object;
.source "AngraApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/launcher/AngraApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/AngraApplication;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/AngraApplication;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xyron/game/launcher/AngraApplication$1;->this$0:Lcom/xyron/game/launcher/AngraApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-static {p1}, Lcom/xyron/game/launcher/AngraApplication;->access$000(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/xyron/game/launcher/util/LauncherMedia;->startMusic(Landroid/content/Context;)V

    :cond_0
    const p2, 0x1020002

    .line 25
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xyron/game/launcher/util/AngraLanguage;->attach(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x1020002

    .line 38
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->attach(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/xyron/game/launcher/AngraApplication$1;->this$0:Lcom/xyron/game/launcher/AngraApplication;

    invoke-static {v0}, Lcom/xyron/game/launcher/AngraApplication;->access$108(Lcom/xyron/game/launcher/AngraApplication;)I

    .line 29
    iget-object v0, p0, Lcom/xyron/game/launcher/AngraApplication$1;->this$0:Lcom/xyron/game/launcher/AngraApplication;

    invoke-static {v0}, Lcom/xyron/game/launcher/AngraApplication;->access$300(Lcom/xyron/game/launcher/AngraApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/launcher/AngraApplication$1;->this$0:Lcom/xyron/game/launcher/AngraApplication;

    invoke-static {v1}, Lcom/xyron/game/launcher/AngraApplication;->access$200(Lcom/xyron/game/launcher/AngraApplication;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    invoke-static {p1}, Lcom/xyron/game/launcher/util/LauncherMedia;->resumeMusic(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 33
    iget-object p1, p0, Lcom/xyron/game/launcher/AngraApplication$1;->this$0:Lcom/xyron/game/launcher/AngraApplication;

    invoke-static {p1}, Lcom/xyron/game/launcher/AngraApplication;->access$100(Lcom/xyron/game/launcher/AngraApplication;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/xyron/game/launcher/AngraApplication;->access$102(Lcom/xyron/game/launcher/AngraApplication;I)I

    .line 34
    iget-object p1, p0, Lcom/xyron/game/launcher/AngraApplication$1;->this$0:Lcom/xyron/game/launcher/AngraApplication;

    invoke-static {p1}, Lcom/xyron/game/launcher/AngraApplication;->access$300(Lcom/xyron/game/launcher/AngraApplication;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/xyron/game/launcher/AngraApplication$1;->this$0:Lcom/xyron/game/launcher/AngraApplication;

    invoke-static {v0}, Lcom/xyron/game/launcher/AngraApplication;->access$200(Lcom/xyron/game/launcher/AngraApplication;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    iget-object p1, p0, Lcom/xyron/game/launcher/AngraApplication$1;->this$0:Lcom/xyron/game/launcher/AngraApplication;

    invoke-static {p1}, Lcom/xyron/game/launcher/AngraApplication;->access$300(Lcom/xyron/game/launcher/AngraApplication;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/xyron/game/launcher/AngraApplication$1;->this$0:Lcom/xyron/game/launcher/AngraApplication;

    invoke-static {v0}, Lcom/xyron/game/launcher/AngraApplication;->access$200(Lcom/xyron/game/launcher/AngraApplication;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
