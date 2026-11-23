.class Lcom/xyron/game/main/ui/CustomKeyboard$1;
.super Ljava/lang/Object;
.source "CustomKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/ui/CustomKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/ui/CustomKeyboard;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/ui/CustomKeyboard;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard$1;->this$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard$1;->this$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    invoke-static {v0}, Lcom/xyron/game/main/ui/CustomKeyboard;->access$000(Lcom/xyron/game/main/ui/CustomKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard$1;->this$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    invoke-static {v0}, Lcom/xyron/game/main/ui/CustomKeyboard;->access$100(Lcom/xyron/game/main/ui/CustomKeyboard;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard$1;->this$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    invoke-static {v0}, Lcom/xyron/game/main/ui/CustomKeyboard;->access$200(Lcom/xyron/game/main/ui/CustomKeyboard;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_3

    .line 49
    invoke-static {v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 50
    invoke-static {}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m$3()I

    move-result v3

    invoke-static {v1, v3}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    invoke-static {}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m$3()I

    move-result v3

    invoke-static {v1, v3}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Insets;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 52
    :goto_0
    iget-object v3, p0, Lcom/xyron/game/main/ui/CustomKeyboard$1;->this$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    invoke-static {v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->access$300(Lcom/xyron/game/main/ui/CustomKeyboard;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/xyron/game/main/ui/CustomKeyboard$1;->this$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    invoke-static {v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->access$400(Lcom/xyron/game/main/ui/CustomKeyboard;)[I

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 53
    iget-object v3, p0, Lcom/xyron/game/main/ui/CustomKeyboard$1;->this$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    invoke-static {v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->access$400(Lcom/xyron/game/main/ui/CustomKeyboard;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard$1;->this$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    invoke-static {v0}, Lcom/xyron/game/main/ui/CustomKeyboard;->access$300(Lcom/xyron/game/main/ui/CustomKeyboard;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 54
    iget-object v2, p0, Lcom/xyron/game/main/ui/CustomKeyboard$1;->this$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v2, v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->access$500(Lcom/xyron/game/main/ui/CustomKeyboard;F)I

    move-result v2

    if-le v0, v2, :cond_2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard$1;->this$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/ui/CustomKeyboard;->onHeightChanged(I)V

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard$1;->this$0:Lcom/xyron/game/main/ui/CustomKeyboard;

    invoke-static {v0}, Lcom/xyron/game/main/ui/CustomKeyboard;->access$600(Lcom/xyron/game/main/ui/CustomKeyboard;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-wide/16 v1, 0x50

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method
