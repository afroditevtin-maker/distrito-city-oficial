.class public Lcom/xyron/game/launcher/util/CustomRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "CustomRecyclerView.java"


# instance fields
.field private mEnableScrolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/xyron/game/launcher/util/CustomRecyclerView;->mEnableScrolling:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/xyron/game/launcher/util/CustomRecyclerView;->mEnableScrolling:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/xyron/game/launcher/util/CustomRecyclerView;->mEnableScrolling:Z

    return-void
.end method

.method static synthetic access$001(Lcom/xyron/game/launcher/util/CustomRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 9
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$101(Lcom/xyron/game/launcher/util/CustomRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 9
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getScrollForRecycler()I
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public isEnableScrolling()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/xyron/game/launcher/util/CustomRecyclerView;->mEnableScrolling:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->isEnableScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->access$001(Lcom/xyron/game/launcher/util/CustomRecyclerView;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->isEnableScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->access$101(Lcom/xyron/game/launcher/util/CustomRecyclerView;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setEnableScrolling(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/xyron/game/launcher/util/CustomRecyclerView;->mEnableScrolling:Z

    return-void
.end method
