.class Lcom/xyron/game/main/SAMP$25$9;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xyron/game/main/SAMP$25;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP$25;)V
    .locals 0

    .line 2672
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$25$9;->this$1:Lcom/xyron/game/main/SAMP$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2676
    const-string v0, "LogCat"

    const-string v1, "Called change ocultar chat"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$25$9;->this$1:Lcom/xyron/game/main/SAMP$25;

    iget-object v0, v0, Lcom/xyron/game/main/SAMP$25;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->MostrarChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43340000    # 180.0f

    .line 2678
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    if-eqz v0, :cond_1

    .line 2679
    const-string v0, "Ocultar chat"

    goto :goto_1

    :cond_1
    const-string v0, "Mostrar chat"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
