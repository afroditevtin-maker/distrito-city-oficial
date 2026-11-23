.class Lcom/xyron/game/launcher/UpdateActivity$2;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/UpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/UpdateActivity;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity$2;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 449
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity$2;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/xyron/game/launcher/UpdateActivity;->mService:Landroid/os/Messenger;

    .line 450
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity$2;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/xyron/game/launcher/UpdateActivity;->isBindingService:Z

    .line 451
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity$2;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/xyron/game/launcher/UpdateActivity;->isBind:Z

    .line 452
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity$2;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-static {p1}, Lcom/xyron/game/launcher/UpdateActivity;->access$1000(Lcom/xyron/game/launcher/UpdateActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 457
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity$2;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xyron/game/launcher/UpdateActivity;->mService:Landroid/os/Messenger;

    .line 458
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity$2;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/xyron/game/launcher/UpdateActivity;->isBind:Z

    .line 459
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity$2;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    iput-boolean v0, p1, Lcom/xyron/game/launcher/UpdateActivity;->isBindingService:Z

    return-void
.end method
