.class public Lcom/xyron/game/main/HeightProvider;
.super Landroid/widget/PopupWindow;
.source "HeightProvider.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/HeightProvider$HeightListener;
    }
.end annotation


# instance fields
.field private heightMaxHorizontal:I

.field private heightMaxVertical:I

.field private insetAnchor:Landroid/view/View;

.field private lastHeight:I

.field private lastOrientation:I

.field private listener:Lcom/xyron/game/main/HeightProvider$HeightListener;

.field private mActivity:Landroid/app/Activity;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/xyron/game/main/HeightProvider;->lastHeight:I

    iput v0, p0, Lcom/xyron/game/main/HeightProvider;->lastOrientation:I

    .line 24
    iput-object p1, p0, Lcom/xyron/game/main/HeightProvider;->mActivity:Landroid/app/Activity;

    .line 27
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xyron/game/main/HeightProvider;->rootView:Landroid/view/View;

    .line 28
    invoke-virtual {p0, v1}, Lcom/xyron/game/main/HeightProvider;->setContentView(Landroid/view/View;)V

    .line 31
    iget-object p1, p0, Lcom/xyron/game/main/HeightProvider;->rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 32
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/HeightProvider;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p0, v1}, Lcom/xyron/game/main/HeightProvider;->setWidth(I)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/HeightProvider;->setHeight(I)V

    const/16 p1, 0x10

    .line 39
    invoke-virtual {p0, p1}, Lcom/xyron/game/main/HeightProvider;->setSoftInputMode(I)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/xyron/game/main/HeightProvider;->setInputMethodMode(I)V

    return-void
.end method

.method private reportHeight(I)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/xyron/game/main/HeightProvider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    .line 107
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 108
    iget v1, p0, Lcom/xyron/game/main/HeightProvider;->lastHeight:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/xyron/game/main/HeightProvider;->lastOrientation:I

    if-ne v0, v1, :cond_0

    return-void

    .line 109
    :cond_0
    iput p1, p0, Lcom/xyron/game/main/HeightProvider;->lastHeight:I

    iput v0, p0, Lcom/xyron/game/main/HeightProvider;->lastOrientation:I

    .line 110
    iget-object v1, p0, Lcom/xyron/game/main/HeightProvider;->listener:Lcom/xyron/game/main/HeightProvider$HeightListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p1}, Lcom/xyron/game/main/HeightProvider$HeightListener;->onHeightChanged(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;)Lcom/xyron/game/main/HeightProvider;
    .locals 2

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 49
    iget-object p1, p0, Lcom/xyron/game/main/HeightProvider;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/xyron/game/main/HeightProvider;->insetAnchor:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 51
    iput-object p1, p0, Lcom/xyron/game/main/HeightProvider;->insetAnchor:Landroid/view/View;

    .line 52
    new-instance v0, Lcom/xyron/game/main/HeightProvider$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/HeightProvider$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/main/HeightProvider;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    return-object p0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/xyron/game/main/HeightProvider;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    new-instance v0, Lcom/xyron/game/main/HeightProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/HeightProvider$1;-><init>(Lcom/xyron/game/main/HeightProvider;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-object p0
.end method

.method synthetic lambda$init$0$com-xyron-game-main-HeightProvider(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 53
    invoke-static {}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m$3()I

    move-result p1

    invoke-static {p2, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    invoke-static {}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m$3()I

    move-result p1

    invoke-static {p2, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Insets;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 53
    :goto_0
    invoke-direct {p0, p1}, Lcom/xyron/game/main/HeightProvider;->reportHeight(I)V

    return-object p2
.end method

.method public onGlobalLayout()V
    .locals 3

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/xyron/game/main/HeightProvider;->rootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 86
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_1

    .line 88
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/xyron/game/main/HeightProvider;->heightMaxVertical:I

    if-le v1, v2, :cond_0

    .line 89
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/xyron/game/main/HeightProvider;->heightMaxVertical:I

    .line 92
    :cond_0
    iget v1, p0, Lcom/xyron/game/main/HeightProvider;->heightMaxVertical:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 96
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/xyron/game/main/HeightProvider;->heightMaxHorizontal:I

    if-le v1, v2, :cond_2

    .line 97
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/xyron/game/main/HeightProvider;->heightMaxHorizontal:I

    .line 100
    :cond_2
    iget v1, p0, Lcom/xyron/game/main/HeightProvider;->heightMaxHorizontal:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    sub-int/2addr v1, v0

    .line 103
    invoke-direct {p0, v1}, Lcom/xyron/game/main/HeightProvider;->reportHeight(I)V

    return-void
.end method

.method public setHeightListener(Lcom/xyron/game/main/HeightProvider$HeightListener;)Lcom/xyron/game/main/HeightProvider;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xyron/game/main/HeightProvider;->listener:Lcom/xyron/game/main/HeightProvider$HeightListener;

    return-object p0
.end method
