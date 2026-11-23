.class final Lcom/xyron/game/main/ClassicHudLayout;
.super Ljava/lang/Object;
.source "ClassicHudLayout.java"


# static fields
.field static final RADAR_RADIUS:F = 140.0f

.field static final RADAR_X:F = 534.0f

.field static final RADAR_Y:F = 205.0f


# instance fields
.field private final boldFont:Landroid/graphics/Typeface;

.field private final box:Landroid/graphics/RectF;

.field private final cashShortcut:Landroid/view/View;

.field private final colours:[I

.field private final icons:[Landroid/graphics/drawable/Drawable;

.field private final normalFont:Landroid/graphics/Typeface;

.field private final paint:Landroid/graphics/Paint;

.field private final radarCutout:Landroid/graphics/Path;

.field private final root:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private scale:F

.field private final shortcuts:Landroid/widget/LinearLayout;

.field private styledWidth:I

.field private final trophy:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;)V
    .locals 8

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->box:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->radarCutout:Landroid/graphics/Path;

    const/4 v2, 0x3

    .line 33
    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/xyron/game/main/ClassicHudLayout;->icons:[Landroid/graphics/drawable/Drawable;

    const v4, -0x17110c

    const v5, -0x2549a4

    const v6, -0xea5a1

    .line 34
    filled-new-array {v6, v4, v5}, [I

    move-result-object v4

    iput-object v4, p0, Lcom/xyron/game/main/ClassicHudLayout;->colours:[I

    .line 37
    const-string v4, "sans-serif"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/xyron/game/main/ClassicHudLayout;->normalFont:Landroid/graphics/Typeface;

    .line 43
    iput-object p1, p0, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/xyron/game/main/ClassicHudLayout;->cashShortcut:Landroid/view/View;

    .line 44
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v4, 0x7f090001

    invoke-static {p2, v4}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/xyron/game/main/ClassicHudLayout;->boldFont:Landroid/graphics/Typeface;

    const/high16 p2, 0x43110000    # 145.0f

    .line 45
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const v6, 0x44058000    # 534.0f

    const/high16 v7, 0x434d0000    # 205.0f

    invoke-virtual {v0, v6, v7, p2, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 46
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f080216

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, v3, v5

    .line 47
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f080214

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, v3, v1

    .line 48
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f080215

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v3, v0

    .line 49
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v4, 0x7f080126

    invoke-static {p2, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/xyron/game/main/ClassicHudLayout;->trophy:Landroid/graphics/drawable/Drawable;

    .line 50
    aget-object p2, v3, v5

    const v4, -0x8b7b9

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 51
    aget-object p2, v3, v0

    const v0, -0xc3a95

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 52
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xyron/game/main/ClassicHudLayout;->shortcuts:Landroid/widget/LinearLayout;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x7f080125

    const v0, 0x7f080124

    const v3, 0x7f080181

    .line 54
    filled-new-array {v3, p2, v0}, [I

    move-result-object p2

    .line 55
    const-string v0, "Miss\u00f5es"

    const-string v3, "Celular"

    const-string v4, "Menu de a\u00e7\u00f5es"

    filled-new-array {v4, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-ge v5, v2, :cond_0

    .line 57
    new-instance v3, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    aget v4, p2, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 58
    new-instance v4, Lcom/xyron/game/main/ClassicHudLayout$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1, v5}, Lcom/xyron/game/main/ClassicHudLayout$$ExternalSyntheticLambda1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v4, p0, Lcom/xyron/game/main/ClassicHudLayout;->shortcuts:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/xyron/game/main/ClassicHudLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/ClassicHudLayout$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/ClassicHudLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static enabled(Landroid/content/Context;)Z
    .locals 0

    .line 40
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$new$0(Landroidx/constraintlayout/widget/ConstraintLayout;ILandroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Lcom/xyron/game/main/SAMP;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/xyron/game/main/SAMP;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->openClassicMenu()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->openClassicMissions()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->showPhoneOverlay()V

    :cond_2
    :goto_0
    return-void
.end method

.method private place(Landroid/view/View;FFFF)V
    .locals 3

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    .line 102
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, p4, :cond_0

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-ne v1, p5, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getMarginStart()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    if-ne v1, p3, :cond_0

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    if-nez v1, :cond_0

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    if-nez v1, :cond_0

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v1, v2, :cond_0

    return-void

    .line 103
    :cond_0
    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    iput p5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    const/4 p4, 0x0

    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static radar(F)[F
    .locals 4

    const/high16 v0, 0x45200000    # 2560.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x43c50000    # 394.0f

    mul-float v0, v0, p0

    const/high16 v1, 0x42820000    # 65.0f

    mul-float v1, v1, p0

    const/high16 v2, 0x438c0000    # 280.0f

    mul-float p0, p0, v2

    const/4 v2, 0x4

    .line 64
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    const/4 v0, 0x2

    aput p0, v2, v0

    const/4 v0, 0x3

    aput p0, v2, v0

    return-object v2
.end method

.method private text(Landroid/graphics/Canvas;Ljava/lang/String;FFFIZ)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    if-eqz p7, :cond_0

    iget-object p7, p0, Lcom/xyron/game/main/ClassicHudLayout;->boldFont:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object p7, p0, Lcom/xyron/game/main/ClassicHudLayout;->normalFont:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 151
    iget-object p7, p0, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 152
    iget-object p7, p0, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p7, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 153
    iget-object p7, p0, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p7, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p7

    const/high16 v0, 0x432f0000    # 175.0f

    cmpl-float v1, p7, v0

    if-lez v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    mul-float p5, p5, v0

    div-float/2addr p5, p7

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    :cond_1
    iget-object p5, p0, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object p5, p0, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Lcom/xyron/game/main/AngraHudReadout;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 106
    iget-object v0, v8, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0304

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 108
    iget-object v0, v8, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x45200000    # 2560.0f

    div-float/2addr v0, v1

    iget-object v2, v8, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v9, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    iget-object v0, v8, Lcom/xyron/game/main/ClassicHudLayout;->radarCutout:Landroid/graphics/Path;

    invoke-static {v9, v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Canvas;Landroid/graphics/Path;)Z

    .line 111
    iget-object v0, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v0, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    const v1, -0x57dec6b8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x43140000    # 148.0f

    .line 113
    iget-object v5, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x431c0000    # 156.0f

    const/high16 v2, 0x42300000    # 44.0f

    const v3, 0x43f28000    # 485.0f

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x43810000    # 258.0f

    .line 114
    iget-object v5, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x431a0000    # 154.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const v4, 0x43b78000    # 367.0f

    .line 115
    iget-object v5, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x43840000    # 264.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const v6, -0xa730fc

    const/4 v7, 0x1

    .line 117
    const-string v2, "R$"

    const/high16 v3, 0x43230000    # 163.0f

    const/high16 v4, 0x42ba0000    # 93.0f

    const/high16 v5, 0x42240000    # 41.0f

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/xyron/game/main/ClassicHudLayout;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFFIZ)V

    .line 118
    iget-object v2, v10, Lcom/xyron/game/main/AngraHudReadout;->cash:Ljava/lang/String;

    const/4 v6, -0x1

    const/high16 v3, 0x43570000    # 215.0f

    const/high16 v4, 0x42b60000    # 91.0f

    const/high16 v5, 0x42000000    # 32.0f

    invoke-direct/range {v0 .. v7}, Lcom/xyron/game/main/ClassicHudLayout;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFFIZ)V

    .line 119
    iget-object v0, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    const/16 v1, -0x2b00

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v0, v8, Lcom/xyron/game/main/ClassicHudLayout;->box:Landroid/graphics/RectF;

    const/high16 v1, 0x43bf0000    # 382.0f

    const/high16 v2, 0x43030000    # 131.0f

    const/high16 v3, 0x43420000    # 194.0f

    const/high16 v4, 0x42d00000    # 104.0f

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 121
    iget-object v0, v8, Lcom/xyron/game/main/ClassicHudLayout;->box:Landroid/graphics/RectF;

    iget-object v1, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v9, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 122
    iget-object v0, v8, Lcom/xyron/game/main/ClassicHudLayout;->trophy:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x68

    const/16 v2, 0x80

    const/16 v3, 0xa1

    const/16 v11, 0xb9

    invoke-virtual {v0, v3, v1, v11, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    iget-object v0, v8, Lcom/xyron/game/main/ClassicHudLayout;->trophy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LVL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v10, Lcom/xyron/game/main/AngraHudReadout;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [EXP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v10, Lcom/xyron/game/main/AngraHudReadout;->experienceReady:Z

    const-string/jumbo v12, "\u2014"

    if-eqz v1, :cond_1

    iget-object v1, v10, Lcom/xyron/game/main/AngraHudReadout;->experience:Ljava/lang/String;

    const-string v2, " XP"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v12

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v6, -0x1000000

    const/4 v7, 0x1

    const/high16 v3, 0x434b0000    # 203.0f

    const/high16 v4, 0x42f80000    # 124.0f

    const/high16 v5, 0x41900000    # 18.0f

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/xyron/game/main/ClassicHudLayout;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFFIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_6

    if-nez v1, :cond_2

    .line 127
    iget v2, v10, Lcom/xyron/game/main/AngraHudReadout;->health:I

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget v2, v10, Lcom/xyron/game/main/AngraHudReadout;->armour:I

    goto :goto_2

    :cond_3
    iget v2, v10, Lcom/xyron/game/main/AngraHudReadout;->hunger:I

    :goto_2
    mul-int/lit8 v3, v1, 0x1c

    add-int/lit16 v3, v3, 0xb0

    int-to-float v3, v3

    .line 129
    iget-object v4, v8, Lcom/xyron/game/main/ClassicHudLayout;->icons:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    float-to-int v5, v3

    add-int/lit8 v6, v5, -0xb

    add-int/lit8 v5, v5, 0xb

    const/16 v7, 0xa2

    .line 131
    invoke-virtual {v4, v7, v6, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    :cond_4
    iget-object v4, v8, Lcom/xyron/game/main/ClassicHudLayout;->box:Landroid/graphics/RectF;

    const/high16 v5, 0x41000000    # 8.0f

    sub-float v6, v3, v5

    const/high16 v7, 0x43b20000    # 356.0f

    add-float v13, v3, v5

    const/high16 v14, 0x43440000    # 196.0f

    invoke-virtual {v4, v14, v6, v7, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 135
    iget-object v4, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    const v6, -0x4de8d9d0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v4, v8, Lcom/xyron/game/main/ClassicHudLayout;->box:Landroid/graphics/RectF;

    iget-object v6, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 137
    iget-object v4, v8, Lcom/xyron/game/main/ClassicHudLayout;->box:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    const/16 v7, 0x64

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    mul-int/lit16 v7, v7, 0xa0

    int-to-float v7, v7

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v7, v13

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 138
    iget-object v4, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    iget-object v6, v8, Lcom/xyron/game/main/ClassicHudLayout;->colours:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v4, v8, Lcom/xyron/game/main/ClassicHudLayout;->box:Landroid/graphics/RectF;

    iget-object v6, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 140
    iget-object v4, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    iget-object v5, v8, Lcom/xyron/game/main/ClassicHudLayout;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 141
    iget-object v4, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 142
    iget-object v4, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 143
    iget-object v4, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-boolean v4, v10, Lcom/xyron/game/main/AngraHudReadout;->vitalsReady:Z

    if-eqz v4, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v12

    :goto_3
    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v3, v4

    iget-object v4, v8, Lcom/xyron/game/main/ClassicHudLayout;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x438a0000    # 276.0f

    invoke-virtual {v9, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 146
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method synthetic lambda$new$1$com-xyron-game-main-ClassicHudLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->shortcuts:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0304

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method layout()V
    .locals 10

    .line 66
    iget-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x45200000    # 2560.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->scale:F

    .line 67
    iget-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/xyron/game/main/ClassicHudLayout;->radar(F)[F

    move-result-object v6

    iget-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0304

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v7, 0x0

    aget v2, v6, v7

    const/4 v0, 0x1

    aget v3, v6, v0

    const/4 v8, 0x2

    aget v4, v6, v8

    const/4 v9, 0x3

    aget v5, v6, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/ClassicHudLayout;->place(Landroid/view/View;FFFF)V

    const v0, 0x7f0a0305

    const v1, 0x7f0a0303

    .line 68
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_3

    aget v2, v0, v1

    .line 69
    iget-object v3, p0, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    aget v4, v6, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 70
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v5, v4, :cond_1

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v5, v4, :cond_1

    invoke-virtual {v3}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v5

    if-nez v5, :cond_1

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v5, :cond_2

    .line 71
    :cond_1
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v4, 0x800033

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 72
    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/xyron/game/main/ClassicHudLayout;->cashShortcut:Landroid/view/View;

    iget v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->scale:F

    const/high16 v6, 0x431c0000    # 156.0f

    mul-float v2, v0, v6

    const/high16 v3, 0x42300000    # 44.0f

    mul-float v3, v3, v0

    const v4, 0x43a48000    # 329.0f

    mul-float v4, v4, v0

    const/high16 v5, 0x42d00000    # 104.0f

    mul-float v5, v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/ClassicHudLayout;->place(Landroid/view/View;FFFF)V

    .line 76
    iget-object v1, p0, Lcom/xyron/game/main/ClassicHudLayout;->shortcuts:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->scale:F

    mul-float v2, v0, v6

    const/high16 v3, 0x43bc0000    # 376.0f

    mul-float v3, v3, v0

    const/high16 v4, 0x43e00000    # 448.0f

    mul-float v4, v4, v0

    const/high16 v6, 0x42b00000    # 88.0f

    mul-float v5, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/ClassicHudLayout;->place(Landroid/view/View;FFFF)V

    .line 78
    iget-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v8, 0x7f0a009b

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->scale:F

    const/high16 v2, 0x436c0000    # 236.0f

    mul-float v2, v2, v0

    const v3, 0x43848000    # 265.0f

    mul-float v3, v3, v0

    const/high16 v4, 0x43110000    # 145.0f

    mul-float v4, v4, v0

    const/high16 v5, 0x42c00000    # 96.0f

    mul-float v5, v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/ClassicHudLayout;->place(Landroid/view/View;FFFF)V

    .line 79
    iget v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->styledWidth:I

    iget-object v1, p0, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    return-void

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->styledWidth:I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_6

    .line 82
    iget-object v1, p0, Lcom/xyron/game/main/ClassicHudLayout;->shortcuts:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43100000    # 144.0f

    iget v4, p0, Lcom/xyron/game/main/ClassicHudLayout;->scale:F

    mul-float v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/xyron/game/main/ClassicHudLayout;->scale:F

    mul-float v3, v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_5

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/high16 v3, 0x41000000    # 8.0f

    iget v4, p0, Lcom/xyron/game/main/ClassicHudLayout;->scale:F

    mul-float v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41400000    # 12.0f

    iget v3, p0, Lcom/xyron/game/main/ClassicHudLayout;->scale:F

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 83
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v3, -0x57dec6b8

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v3, 0x41880000    # 17.0f

    iget v4, p0, Lcom/xyron/game/main/ClassicHudLayout;->scale:F

    mul-float v4, v4, v3

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 87
    iget-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0314

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0312

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    .line 90
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 91
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v2, 0x800055

    .line 92
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x41200000    # 10.0f

    .line 93
    iget v3, p0, Lcom/xyron/game/main/ClassicHudLayout;->scale:F

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 95
    iget v2, p0, Lcom/xyron/game/main/ClassicHudLayout;->scale:F

    mul-float v2, v2, v1

    invoke-virtual {v0, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    const/high16 v3, 0x3f800000    # 1.0f

    .line 96
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 97
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/xyron/game/main/ClassicHudLayout;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0313

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/xyron/game/main/ClassicHudLayout;->scale:F

    const/high16 v3, 0x42a40000    # 82.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/xyron/game/main/ClassicHudLayout;->scale:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v2, 0x800013

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    return-void
.end method
