.class Lcom/xyron/game/main/SAMP$13;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP;->showKeyboard()V
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

    .line 1094
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$13;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1097
    const-string v0, "AXL"

    const-string v1, "showKeyboard()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$13;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2500(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/CustomKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/CustomKeyboard;->ShowInputLayout()V

    return-void
.end method
