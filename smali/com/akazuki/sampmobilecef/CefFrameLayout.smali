.class public Lcom/akazuki/sampmobilecef/CefFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CefFrameLayout.java"


# instance fields
.field private mInterceptTouches:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/akazuki/sampmobilecef/CefFrameLayout;->mInterceptTouches:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/akazuki/sampmobilecef/CefFrameLayout;->mInterceptTouches:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/akazuki/sampmobilecef/CefFrameLayout;->mInterceptTouches:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 44
    iget-boolean p1, p0, Lcom/akazuki/sampmobilecef/CefFrameLayout;->mInterceptTouches:Z

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/akazuki/sampmobilecef/CefFrameLayout;->mInterceptTouches:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 53
    :cond_0
    iget-boolean p1, p0, Lcom/akazuki/sampmobilecef/CefFrameLayout;->mInterceptTouches:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public setInterceptTouches(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/akazuki/sampmobilecef/CefFrameLayout;->mInterceptTouches:Z

    return-void
.end method
