.class public final Lcom/xyron/game/launcher/ApkReplacedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApkReplacedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 7
    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    invoke-static {p1}, Lcom/xyron/game/launcher/util/ApkUpdateStorage;->afterUpdate(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
