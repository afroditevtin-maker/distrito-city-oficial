.class Lcom/xyron/game/launcher/ApkUpdateActivity$1;
.super Ljava/lang/Object;
.source "ApkUpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/ApkUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/ApkUpdateActivity;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/ApkUpdateActivity;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xyron/game/launcher/ApkUpdateActivity$1;->this$0:Lcom/xyron/game/launcher/ApkUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xyron/game/launcher/ApkUpdateActivity$1;->this$0:Lcom/xyron/game/launcher/ApkUpdateActivity;

    invoke-static {v0}, Lcom/xyron/game/launcher/ApkUpdateActivity;->access$000(Lcom/xyron/game/launcher/ApkUpdateActivity;)V

    return-void
.end method
