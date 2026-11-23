.class public Lcom/xyron/game/launcher/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/util/Util$LoadNewsImage;
    }
.end annotation


# static fields
.field private static final MULT_X:F = 5.2083336E-4f

.field private static final MULT_Y:F = 9.259259E-4f

.field public static responseFiles:Ljava/lang/String; = ""

.field public static responseFilesInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HideLayout(Landroid/view/View;Z)V
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 61
    invoke-static {p0}, Lcom/xyron/game/launcher/util/Util;->fadeOut(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/16 p1, 0x8

    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static ShowLayout(Landroid/view/View;Z)V
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 51
    invoke-static {p0}, Lcom/xyron/game/launcher/util/Util;->fadeIn(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 53
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static convertToReadableValue(I)Ljava/lang/String;
    .locals 5

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ltz p0, :cond_1

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    if-eqz p0, :cond_0

    add-int/lit8 v3, p0, -0x1

    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    const/16 v2, 0x20

    .line 247
    invoke-virtual {v0, p0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static delete(Ljava/io/File;)V
    .locals 4

    .line 37
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 40
    invoke-static {v3}, Lcom/xyron/game/launcher/util/Util;->delete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private static fadeIn(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/xyron/game/launcher/util/Util$1;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/Util$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method private static fadeOut(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/launcher/util/Util$2;

    invoke-direct {v1, p0}, Lcom/xyron/game/launcher/util/Util$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public static getColoredString(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 93
    invoke-static {p0}, Lcom/xyron/game/launcher/util/Util;->getStringWithColors(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static getStringWithColors(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 102
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "</font>"

    if-ge v1, v4, :cond_3

    .line 103
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x7b

    const/4 v7, 0x1

    if-ne v4, v6, :cond_2

    add-int/lit8 v4, v1, 0x7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x7d

    if-ne v6, v8, :cond_2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_0
    const-string v2, "<font color=#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/2addr v1, v7

    if-lt v1, v4, :cond_1

    const/16 v1, 0x3e

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v4

    const/4 v2, 0x1

    goto :goto_2

    .line 113
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/2addr v1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 125
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-lez v3, :cond_5

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    const-string v1, "<br/>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0
.end method

.method public static getStringWithoutColors(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 230
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 231
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_1

    .line 234
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTextWidth(Ljava/lang/String;Landroid/text/TextPaint;)I
    .locals 9

    .line 223
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v3, 0x7fffffff

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    const/4 p0, 0x0

    invoke-virtual {v8, p0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static scale(Landroid/app/Activity;F)F
    .locals 2

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 184
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 185
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 186
    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    const v1, 0x3a088889

    mul-float p0, p0, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v1, 0x3a72b9d6

    mul-float v0, v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float p1, p1, p0

    return p1
.end method

.method public static scaleViewAndChildren(Landroid/app/Activity;Landroid/view/View;)V
    .locals 5

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 136
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 138
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v2, 0x3a088889

    mul-float v0, v0, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const v2, 0x3a72b9d6

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 140
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v3, :cond_0

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    if-eqz v2, :cond_0

    .line 141
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    :cond_0
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v4, :cond_1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v3, :cond_1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    if-eqz v2, :cond_1

    .line 144
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    :cond_1
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 147
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 148
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 149
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 150
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 151
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 153
    :cond_2
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v2, :cond_3

    .line 154
    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 155
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 156
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 157
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 158
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 160
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 164
    instance-of v1, p1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 165
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 166
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    mul-float v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 169
    :cond_4
    instance-of v1, p1, Lcom/xyron/game/launcher/util/CustomRecyclerView;

    if-eqz v1, :cond_5

    .line 170
    move-object v1, p1

    check-cast v1, Lcom/xyron/game/launcher/util/CustomRecyclerView;

    .line 171
    invoke-virtual {v1}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->getScrollBarSize()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v0, v3

    invoke-virtual {v1, v0}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->setScrollBarSize(I)V

    .line 174
    :cond_5
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 175
    check-cast p1, Landroid/view/ViewGroup;

    .line 176
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 177
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/Util;->scaleViewAndChildren(Landroid/app/Activity;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
