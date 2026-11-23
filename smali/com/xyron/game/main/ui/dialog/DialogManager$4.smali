.class Lcom/xyron/game/main/ui/dialog/DialogManager$4;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/ui/dialog/DialogManager;->loadButtons()V
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

    .line 390
    iput-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$4;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 398
    iget-object p2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager$4;->this$0:Lcom/xyron/game/main/ui/dialog/DialogManager;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCurrentInputtext:Ljava/lang/String;

    return-void
.end method
