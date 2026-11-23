.class Lcom/xyron/game/main/SAMP$11;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP;->showEditObject()V
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

    .line 1057
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$11;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$11;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2400(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/AttachEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/AttachEdit;->show()V

    return-void
.end method
