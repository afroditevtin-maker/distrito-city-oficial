.class final Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;
.super Landroid/widget/FrameLayout;
.source "AngraAccountScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/AngraAccountScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccountLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/AngraAccountScreen;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/AngraAccountScreen;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;->this$0:Lcom/xyron/game/launcher/AngraAccountScreen;

    invoke-static {p1}, Lcom/xyron/game/launcher/AngraAccountScreen;->access$000(Lcom/xyron/game/launcher/AngraAccountScreen;)Lcom/xyron/game/launcher/SettingsActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method add(Landroid/view/View;IIIII)V
    .locals 0

    .line 161
    filled-new-array {p2, p3, p4, p5, p6}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    sub-int/2addr p4, p2

    int-to-float p1, p4

    const p2, 0x44c44000    # 1570.0f

    div-float/2addr p1, p2

    sub-int/2addr p5, p3

    int-to-float p2, p5

    const/high16 p3, 0x44340000    # 720.0f

    div-float/2addr p2, p3

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 187
    invoke-virtual {p0, p4}, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 188
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 189
    aget v1, v0, p3

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 190
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p5, v1, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 165
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;->setMeasuredDimension(II)V

    int-to-float p1, p1

    const v0, 0x44c44000    # 1570.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    const/high16 v0, 0x44340000    # 720.0f

    div-float/2addr p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 169
    invoke-virtual {p0, v1}, Lcom/xyron/game/launcher/AngraAccountScreen$AccountLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x2

    .line 171
    aget v4, v3, v4

    int-to-float v4, v4

    mul-float v4, v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v6, 0x3

    aget v6, v3, v6

    int-to-float v6, v6

    mul-float v6, v6, p2

    .line 172
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 171
    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 173
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 174
    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x4

    aget v5, v3, v5

    int-to-float v5, v5

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v5, v5, v6

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 175
    :cond_0
    array-length v4, v3

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 176
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v5, 0x5

    .line 177
    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, p2

    .line 178
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x6

    aget v6, v3, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/4 v5, 0x7

    .line 179
    aget v3, v3, v5

    int-to-float v3, v3

    mul-float v3, v3, p2

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 180
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
