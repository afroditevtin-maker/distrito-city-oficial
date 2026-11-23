.class Lcom/xyron/game/main/ui/dialog/DialogManager$5;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/ui/dialog/DialogManager;->loadRecycler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/ui/dialog/DialogManager;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$5;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(ILjava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$5;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iput p1, v0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCurrentListitem:I

    .line 461
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$5;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    iput-object p2, p1, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCurrentInputtext:Ljava/lang/String;

    :cond_0
    return-void
.end method
