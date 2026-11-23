.class final Lcom/xyron/game/main/AngraHudExperiment;
.super Landroid/view/View;
.source "AngraHudExperiment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/AngraHudExperiment$Ring;
    }
.end annotation


# static fields
.field private static final BLUE:I = -0x83630b

.field private static final GOLD:I = -0xb3abe

.field private static final ICONS:[I

.field private static final MENU:[I

.field private static final RED:I = -0xa7a8


# instance fields
.field private battery:I

.field private final bold:Landroid/graphics/Typeface;

.field private final box:Landroid/graphics/RectF;

.field private final cashShortcut:Landroid/view/View;

.field private cellLevel:I

.field private final classic:Lcom/xyron/game/main/ClassicHudLayout;

.field private final data:Lcom/xyron/game/main/AngraHudReadout;

.field private final device:Landroid/content/BroadcastReceiver;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private registered:Z

.field private final regular:Landroid/graphics/Typeface;

.field private final ring:Lcom/xyron/game/main/AngraHudExperiment$Ring;

.field private final root:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private safe:Z

.field private scale:F

.field private final signal:Landroid/telephony/PhoneStateListener;

.field private telephony:Landroid/telephony/TelephonyManager;

.field private wifi:Z

.field private wifiLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    .line 87
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/xyron/game/main/AngraHudExperiment;->MENU:[I

    .line 89
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xyron/game/main/AngraHudExperiment;->ICONS:[I

    return-void

    :array_0
    .array-data 4
        0x7f0a0097
        0x7f0a0099
        0x7f0a0098
        0x7f0a0096
        0x7f0a009a
        0x7f0a0093
    .end array-data

    :array_1
    .array-data 4
        0x7f080117
        0x7f08011a
        0x7f080119
        0x7f080116
        0x7f08011b
        0x7f080118
    .end array-data
.end method

.method constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 4

    .line 107
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/xyron/game/main/AngraHudReadout;

    invoke-direct {v0}, Lcom/xyron/game/main/AngraHudReadout;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    .line 59
    new-instance v0, Lcom/xyron/game/main/AngraHudExperiment$Ring;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/xyron/game/main/AngraHudExperiment$Ring;-><init>(Lcom/xyron/game/main/AngraHudExperiment;Lcom/xyron/game/main/AngraHudExperiment$1;)V

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->ring:Lcom/xyron/game/main/AngraHudExperiment$Ring;

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->battery:I

    .line 67
    iput v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->cellLevel:I

    iput v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->wifiLevel:I

    .line 71
    new-instance v0, Lcom/xyron/game/main/AngraHudExperiment$1;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/AngraHudExperiment$1;-><init>(Lcom/xyron/game/main/AngraHudExperiment;)V

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->signal:Landroid/telephony/PhoneStateListener;

    .line 85
    const-string v0, "sans-serif-medium"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->regular:Landroid/graphics/Typeface;

    const-string v0, "sans-serif"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->bold:Landroid/graphics/Typeface;

    .line 91
    new-instance v0, Lcom/xyron/game/main/AngraHudExperiment$2;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/AngraHudExperiment$2;-><init>(Lcom/xyron/game/main/AngraHudExperiment;)V

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->device:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v3}, Lcom/xyron/game/main/AngraHudExperiment;->setClickable(Z)V

    invoke-virtual {p0, v3}, Lcom/xyron/game/main/AngraHudExperiment;->setFocusable(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/AngraHudExperiment;->setImportantForAccessibility(I)V

    .line 109
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    invoke-virtual {p1, p0, v3, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->cashShortcut:Landroid/view/View;

    const-string v3, "Abrir Reais na loja"

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/xyron/game/main/AngraHudExperiment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/xyron/game/main/AngraHudExperiment$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/AngraHudExperiment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xyron/game/main/ClassicHudLayout;->enabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/xyron/game/main/ClassicHudLayout;

    invoke-direct {v2, p1, v0}, Lcom/xyron/game/main/ClassicHudLayout;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;)V

    :cond_0
    iput-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->classic:Lcom/xyron/game/main/ClassicHudLayout;

    .line 114
    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->style()V

    new-instance v0, Lcom/xyron/game/main/AngraHudExperiment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/AngraHudExperiment$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/AngraHudExperiment;)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$102(Lcom/xyron/game/main/AngraHudExperiment;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/xyron/game/main/AngraHudExperiment;->cellLevel:I

    return p1
.end method

.method static synthetic access$202(Lcom/xyron/game/main/AngraHudExperiment;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/xyron/game/main/AngraHudExperiment;->battery:I

    return p1
.end method

.method static synthetic access$300(Lcom/xyron/game/main/AngraHudExperiment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xyron/game/main/AngraHudExperiment;->refreshNetwork()V

    return-void
.end method

.method static synthetic access$400(Lcom/xyron/game/main/AngraHudExperiment;)Lcom/xyron/game/main/ClassicHudLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xyron/game/main/AngraHudExperiment;->classic:Lcom/xyron/game/main/ClassicHudLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xyron/game/main/AngraHudExperiment;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/xyron/game/main/AngraHudExperiment;->safe:Z

    return p0
.end method

.method private card(IIF)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x45200000    # 2560.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-float p3, p3, v0

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v1
.end method

.method private devices(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    .line 321
    iget v1, v0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v2, 0x43720000    # 242.0f

    mul-float v8, v1, v2

    const/high16 v2, 0x42500000    # 52.0f

    mul-float v9, v1, v2

    iget-object v1, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    const v10, 0x55ffffff    # 3.518437E13f

    const v11, -0xb0a09

    if-ge v2, v3, :cond_1

    .line 323
    iget-object v3, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/xyron/game/main/AngraHudExperiment;->cellLevel:I

    if-le v4, v2, :cond_0

    const v10, -0xb0a09

    :cond_0
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColor(I)V

    mul-int/lit8 v3, v2, 0x9

    int-to-float v3, v3

    iget v4, v0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v3, v3, v4

    add-float/2addr v3, v8

    iget-object v5, v0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    mul-int/lit8 v6, v2, 0x5

    rsub-int/lit8 v6, v6, 0x8

    int-to-float v6, v6

    mul-float v6, v6, v4

    add-float/2addr v6, v9

    const/high16 v10, 0x40c00000    # 6.0f

    mul-float v10, v10, v4

    add-float/2addr v10, v3

    const/high16 v11, 0x41600000    # 14.0f

    mul-float v4, v4, v11

    add-float/2addr v4, v9

    invoke-virtual {v5, v3, v6, v10, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v4, v0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    iget-object v5, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x428a0000    # 69.0f

    .line 325
    iget v3, v0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v3, v3, v2

    add-float v12, v8, v3

    iget-object v2, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v13, 0x40800000    # 4.0f

    mul-float v3, v3, v13

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v14, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v14, v1, :cond_3

    mul-int/lit8 v1, v14, 0x8

    add-int/lit8 v1, v1, 0x9

    int-to-float v1, v1

    .line 327
    iget v2, v0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v1, v1, v2

    iget-object v2, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    iget-boolean v3, v0, Lcom/xyron/game/main/AngraHudExperiment;->wifi:Z

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/xyron/game/main/AngraHudExperiment;->wifiLevel:I

    if-lt v3, v14, :cond_2

    const v3, -0xb0a09

    goto :goto_2

    :cond_2
    const v3, 0x55ffffff    # 3.518437E13f

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    sub-float v3, v12, v1

    const v4, 0x3f333333    # 0.7f

    mul-float v4, v4, v1

    sub-float v5, v9, v4

    add-float/2addr v1, v12

    add-float/2addr v4, v9

    invoke-virtual {v2, v3, v5, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x435e0000    # 222.0f

    const/high16 v4, 0x42c00000    # 96.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 329
    :cond_3
    iget-object v1, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    iget-boolean v2, v0, Lcom/xyron/game/main/AngraHudExperiment;->wifi:Z

    if-eqz v2, :cond_4

    const v10, -0xb0a09

    :cond_4
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, v0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float v2, v2, v1

    add-float/2addr v2, v9

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v1, v1, v3

    iget-object v4, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v2, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v1, 0x42e60000    # 115.0f

    .line 331
    iget v2, v0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v2, v2, v1

    add-float/2addr v8, v2

    iget-object v1, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v2, v0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v4, 0x41300000    # 11.0f

    mul-float v5, v2, v4

    sub-float v5, v9, v5

    const/high16 v6, 0x42380000    # 46.0f

    mul-float v6, v6, v2

    add-float/2addr v6, v8

    mul-float v2, v2, v4

    add-float/2addr v2, v9

    invoke-virtual {v1, v8, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    iget v4, v0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v4, v4, v2

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v2, v0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v4, v2, v3

    mul-float v2, v2, v3

    iget-object v3, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, v0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v2, 0x42400000    # 48.0f

    mul-float v2, v2, v1

    add-float/2addr v2, v8

    mul-float v3, v1, v13

    sub-float v3, v9, v3

    const/high16 v4, 0x424c0000    # 51.0f

    mul-float v4, v4, v1

    add-float/2addr v4, v8

    mul-float v1, v1, v13

    add-float v5, v9, v1

    iget-object v6, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/xyron/game/main/AngraHudExperiment;->battery:I

    if-ltz v1, :cond_5

    iget v2, v0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v3, v2, v13

    add-float/2addr v3, v8

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float v5, v2, v4

    sub-float v5, v9, v5

    mul-int/lit8 v1, v1, 0x26

    int-to-float v1, v1

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v1, v6

    add-float/2addr v1, v13

    mul-float v1, v1, v2

    add-float v6, v8, v1

    mul-float v2, v2, v4

    add-float v8, v9, v2

    iget-object v9, v0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move v4, v6

    move v5, v8

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method private fit(Ljava/lang/String;FF)F
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    mul-float p3, p3, p2

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private frame(IFFFF)V
    .locals 2

    .line 214
    iget v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const v1, 0x3f47ae14    # 0.78f

    mul-float v0, v0, v1

    .line 216
    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    mul-float p2, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-float p3, p3, v0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    mul-float p4, p4, v0

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    mul-float p5, p5, v0

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    .line 218
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v0, p4, :cond_0

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v0, p5, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const p4, 0x800033

    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private hunger(Landroid/graphics/Canvas;)V
    .locals 11

    .line 289
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v2, 0x42e00000    # 112.0f

    mul-float v2, v2, v1

    const v3, 0x44084000    # 545.0f

    mul-float v3, v3, v1

    const v4, 0x44068000    # 538.0f

    mul-float v4, v4, v1

    const v5, 0x4417c000    # 607.0f

    mul-float v1, v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v1, -0x77cfccca

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v2, 0x41f80000    # 31.0f

    mul-float v3, v1, v2

    mul-float v1, v1, v2

    iget-object v4, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 291
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    iget v3, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v1, 0x668c8d8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v3, v1, v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v1, 0x43070000    # 135.0f

    mul-float v1, v1, v0

    const v2, 0x440b8000    # 558.0f

    mul-float v0, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v1, -0xb3abe

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    const/high16 v2, 0x41b80000    # 23.0f

    const/4 v3, 0x0

    const/high16 v4, 0x42180000    # 38.0f

    invoke-virtual {v0, v3, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v8, 0x43340000    # 180.0f

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p1, v0, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    const/high16 v2, 0x41a80000    # 21.0f

    const/high16 v6, 0x41d00000    # 26.0f

    invoke-virtual {v0, v3, v2, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    const/high16 v2, 0x41e80000    # 29.0f

    const/high16 v5, 0x420c0000    # 35.0f

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 295
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v4, 0x43470000    # 199.0f

    mul-float v4, v4, v2

    const/high16 v5, 0x440e0000    # 568.0f

    mul-float v5, v5, v2

    const v6, 0x43dd8000    # 443.0f

    mul-float v6, v6, v2

    const/high16 v7, 0x44120000    # 584.0f

    mul-float v2, v2, v7

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v2, -0x66898581

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v4, v2, v3

    mul-float v2, v2, v3

    iget-object v5, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x43740000    # 244.0f

    iget v5, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v5, v5, v4

    iget-object v4, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget v4, v4, Lcom/xyron/game/main/AngraHudReadout;->hunger:I

    int-to-float v4, v4

    mul-float v5, v5, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v5, v4

    add-float/2addr v2, v5

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v2, v1, v3

    mul-float v1, v1, v3

    iget-object v3, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 297
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget-boolean v0, v0, Lcom/xyron/game/main/AngraHudReadout;->vitalsReady:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget v1, v1, Lcom/xyron/game/main/AngraHudReadout;->hunger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u2014"

    :goto_0
    move-object v3, v0

    iget v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v1, 0x44000000    # 512.0f

    mul-float v4, v0, v1

    const v1, 0x44124000    # 585.0f

    mul-float v5, v0, v1

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float v6, v0, v1

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    const/4 v9, 0x1

    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/xyron/game/main/AngraHudExperiment;->label(Landroid/graphics/Canvas;Ljava/lang/String;FFFILandroid/graphics/Paint$Align;Z)V

    return-void
.end method

.method private label(Landroid/graphics/Canvas;Ljava/lang/String;FFFILandroid/graphics/Paint$Align;Z)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    if-eqz p8, :cond_0

    iget-object p8, p0, Lcom/xyron/game/main/AngraHudExperiment;->bold:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object p8, p0, Lcom/xyron/game/main/AngraHudExperiment;->regular:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v0, p8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p8, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p8, p7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p7, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p7, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p5, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p5, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object p6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p5, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    iget p6, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/4 p7, 0x0

    const/high16 p8, -0x34000000    # -3.3554432E7f

    invoke-virtual {p5, p6, p7, p6, p8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object p5, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    return-void
.end method

.method private logo(Landroid/graphics/Canvas;)V
    .locals 14

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x42700000    # 60.0f

    iget v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v1, v1, v0

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42fc0000    # 126.0f

    iget v3, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v3, v3, v2

    sub-float/2addr v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v1, -0x2c2824

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 339
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v3, 0x41d80000    # 27.0f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v4, 0x42000000    # 32.0f

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v4, 0x42680000    # 58.0f

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v4, 0x42280000    # 42.0f

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v4, 0x420c0000    # 35.0f

    const/high16 v5, 0x42440000    # 49.0f

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v5, 0x42240000    # 41.0f

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v2, 0x42040000    # 33.0f

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v2, 0x41980000    # 19.0f

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 341
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const-string v2, "serif"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x42800000    # 64.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const-string v2, "NGRA"

    const/high16 v5, 0x42580000    # 54.0f

    const/high16 v6, 0x42840000    # 66.0f

    invoke-virtual {p1, v2, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 343
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v2, -0x23b8b9

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v2, 0x427c0000    # 63.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v1, 0x422c0000    # 43.0f

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v1, 0x42400000    # 48.0f

    const/high16 v5, 0x425c0000    # 55.0f

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v1, 0x42080000    # 34.0f

    const/high16 v5, 0x42500000    # 52.0f

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v1, 0x42540000    # 53.0f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 345
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v1, -0x322e29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->regular:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const-string v1, "ROLEPLAY"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/4 v2, 0x7

    int-to-float v2, v2

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float v2, v2, v4

    add-float/2addr v0, v2

    const/high16 v2, 0x43820000    # 260.0f

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v3, v0, :cond_0

    add-int/lit8 v0, v3, 0x1

    .line 347
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x42c40000    # 98.0f

    iget-object v6, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    move v3, v0

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v6, 0x42b80000    # 92.0f

    iget-object v7, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v4, 0x42b80000    # 92.0f

    const/high16 v5, 0x41b00000    # 22.0f

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v12, 0x42b80000    # 92.0f

    iget-object v13, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v9, 0x43700000    # 240.0f

    const/high16 v10, 0x42b80000    # 92.0f

    const v11, 0x43838000    # 263.0f

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private panel(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget p3, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float v1, p3, v0

    mul-float p3, p3, v0

    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p3, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget p3, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float p4, p3, v0

    mul-float p3, p3, v0

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private place(Landroid/view/View;FFFF)V
    .locals 3

    .line 204
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

    .line 206
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

    .line 208
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

.method private refreshNetwork()V
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lcom/xyron/game/main/AngraHudExperiment;->wifi:Z

    iput v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->wifiLevel:I

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v4, -0x7f

    if-le v2, v4, :cond_3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    iput v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->wifiLevel:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    iput-boolean v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->wifi:Z

    iput v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->wifiLevel:I

    :cond_3
    :goto_3
    return-void
.end method

.method private status(Landroid/graphics/Canvas;FFIZI)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v1, p1

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float v3, v0, v2

    sub-float v3, p2, v3

    mul-float v0, v0, v2

    sub-float v0, p3, v0

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    mul-float v0, v0, v2

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    move/from16 v3, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    if-nez p5, :cond_0

    .line 309
    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v2, 0x41400000    # 12.0f

    const v3, 0x41aacccd    # 21.35f

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const v2, 0x4128cccd    # 10.55f

    const v3, 0x41a03d71    # 20.03f

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v15, 0x40000000    # 2.0f

    const/high16 v16, 0x41080000    # 8.5f

    const v11, 0x40accccd    # 5.4f

    const v12, 0x4175c28f    # 15.36f

    const/high16 v13, 0x40000000    # 2.0f

    const v14, 0x41447ae1    # 12.28f

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v7, 0x40f00000    # 7.5f

    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x40ad70a4    # 5.42f

    const v5, 0x408d70a4    # 4.42f

    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v10, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v15, 0x41400000    # 12.0f

    const v16, 0x40a2e148    # 5.09f

    const v11, 0x4113d70a    # 9.24f

    const/high16 v12, 0x40400000    # 3.0f

    const v13, 0x412e8f5c    # 10.91f

    const v14, 0x4073d70a    # 3.81f

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v7, 0x41840000    # 16.5f

    const v3, 0x415170a4    # 13.09f

    const v4, 0x4073d70a    # 3.81f

    const v5, 0x416c28f6    # 14.76f

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v10, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v15, 0x41b00000    # 22.0f

    const/high16 v16, 0x41080000    # 8.5f

    const v11, 0x419ca3d7    # 19.58f

    const/high16 v13, 0x41b00000    # 22.0f

    const v14, 0x40ad70a4    # 5.42f

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const v7, 0x41573333    # 13.45f

    const v8, 0x41a051ec    # 20.04f

    const/high16 v3, 0x41b00000    # 22.0f

    const v4, 0x41447ae1    # 12.28f

    const v5, 0x4194cccd    # 18.6f

    const v6, 0x4175c28f    # 15.36f

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x41100000    # 9.0f

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v15, 0x41700000    # 15.0f

    const/high16 v16, 0x40a00000    # 5.0f

    const/high16 v11, 0x41100000    # 9.0f

    const/high16 v12, 0x41100000    # 9.0f

    const/high16 v13, 0x41700000    # 15.0f

    const/high16 v14, 0x41100000    # 9.0f

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    const/high16 v2, 0x41980000    # 19.0f

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 313
    :goto_0
    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->path:Landroid/graphics/Path;

    iget-object v2, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget-boolean v0, v0, Lcom/xyron/game/main/AngraHudReadout;->vitalsReady:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v2, p6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "\u2014"

    :goto_1
    move-object v2, v0

    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v3, 0x42540000    # 53.0f

    mul-float v3, v3, v0

    add-float v4, p3, v3

    const/high16 v3, 0x41d80000    # 27.0f

    mul-float v5, v0, v3

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/4 v8, 0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/xyron/game/main/AngraHudExperiment;->label(Landroid/graphics/Canvas;Ljava/lang/String;FFFILandroid/graphics/Paint$Align;Z)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-xyron-game-main-AngraHudExperiment(Landroid/view/View;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/xyron/game/main/SAMP;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->openAngraCashShop()V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$1$com-xyron-game-main-AngraHudExperiment(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->layoutGeometry()V

    return-void
.end method

.method layoutGeometry()V
    .locals 14

    .line 158
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x45200000    # 2560.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    .line 160
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a02f1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0306

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const v1, 0x3f47ae14    # 0.78f

    mul-float v0, v0, v1

    .line 164
    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->classic:Lcom/xyron/game/main/ClassicHudLayout;

    const/high16 v7, 0x42c00000    # 96.0f

    if-nez v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0304

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v7}, Lcom/xyron/game/main/AngraHudGeometry;->leftX(F)F

    move-result v2

    iget v3, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v2, v2, v3

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lcom/xyron/game/main/AngraHudGeometry;->leftY(F)F

    move-result v3

    iget v4, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v3, v3, v4

    const/high16 v4, 0x44000000    # 512.0f

    mul-float v5, v0, v4

    move-object v0, p0

    move v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/AngraHudExperiment;->place(Landroid/view/View;FFFF)V

    const/high16 v4, 0x43c00000    # 384.0f

    const/high16 v5, 0x43c00000    # 384.0f

    const v1, 0x7f0a0305

    const/high16 v2, 0x42140000    # 37.0f

    const/high16 v3, 0x42100000    # 36.0f

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/AngraHudExperiment;->frame(IFFFF)V

    const v1, 0x7f0a0303

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/AngraHudExperiment;->frame(IFFFF)V

    const/high16 v4, 0x42800000    # 64.0f

    const/high16 v5, 0x42800000    # 64.0f

    const v1, 0x7f0a0306

    const v2, 0x43db8000    # 439.0f

    const/high16 v3, 0x43bf0000    # 382.0f

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/AngraHudExperiment;->frame(IFFFF)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0307

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 173
    iget v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v2, v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v7, 0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    iget v4, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 175
    iget v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-ne v4, v2, :cond_2

    iget v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-ne v4, v2, :cond_2

    iget v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    if-eq v4, v3, :cond_3

    :cond_2
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v8, 0x7f0a004c

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 179
    :goto_0
    iget v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v2, 0x42b00000    # 88.0f

    mul-float v10, v1, v2

    const/high16 v2, 0x42000000    # 32.0f

    mul-float v11, v1, v2

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a030e

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object v12, v1

    check-cast v12, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/xyron/game/main/AngraHudGeometry;->menuLeft(FZ)F

    move-result v2

    iget v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v13, 0x42500000    # 52.0f

    mul-float v3, v0, v13

    const/high16 v1, 0x440e0000    # 568.0f

    mul-float v4, v0, v1

    move-object v0, p0

    move-object v1, v12

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/AngraHudExperiment;->place(Landroid/view/View;FFFF)V

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_8

    .line 181
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_5

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    move v3, v11

    :goto_2
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v5, v4, :cond_6

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v5, v4, :cond_6

    invoke-virtual {v2}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v5

    if-eq v5, v3, :cond_7

    :cond_6
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_8
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v3, 0x42ec0000    # 118.0f

    mul-float v3, v3, v2

    sub-float v3, v0, v3

    mul-float v4, v2, v13

    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v10

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/AngraHudExperiment;->place(Landroid/view/View;FFFF)V

    .line 185
    :goto_3
    sget-object v0, Lcom/xyron/game/main/AngraHudExperiment;->MENU:[I

    array-length v1, v0

    if-ge v9, v1, :cond_b

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    aget v0, v0, v9

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/high16 v1, 0x41880000    # 17.0f

    iget v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v1, 0x4

    if-ne v9, v1, :cond_9

    const v2, 0x553e3212

    goto :goto_4

    :cond_9
    const v2, 0x66323538

    :goto_4
    if-ne v9, v1, :cond_a

    const v1, -0x660b3abe

    goto :goto_5

    :cond_a
    const v1, 0x668c8d8f

    :goto_5
    const/high16 v3, 0x41100000    # 9.0f

    invoke-direct {p0, v2, v1, v3}, Lcom/xyron/game/main/AngraHudExperiment;->card(IIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 187
    :cond_b
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->classic:Lcom/xyron/game/main/ClassicHudLayout;

    if-eqz v0, :cond_c

    .line 188
    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0091

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->classic:Lcom/xyron/game/main/ClassicHudLayout;

    invoke-virtual {v0}, Lcom/xyron/game/main/ClassicHudLayout;->layout()V

    .line 191
    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->invalidate()V

    return-void

    .line 194
    :cond_c
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/xyron/game/main/AngraHudGeometry;->cash(F)[F

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->cashShortcut:Landroid/view/View;

    const/4 v2, 0x2

    aget v2, v0, v2

    iget v3, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v4, 0x42900000    # 72.0f

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    aget v5, v0, v7

    mul-float v6, v3, v4

    mul-float v7, v3, v4

    move-object v0, p0

    move v3, v5

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/AngraHudExperiment;->place(Landroid/view/View;FFFF)V

    .line 198
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a009b

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xyron/game/main/HudButtonEditor;->hasSavedWeaponPosition(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42200000    # 40.0f

    iget v4, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x43de0000    # 444.0f

    iget v4, p0, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v3, v3, v4

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/AngraHudExperiment;->place(Landroid/view/View;FFFF)V

    :cond_d
    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 120
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->device:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->registered:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->device:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->telephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->signal:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->cellLevel:I

    .line 126
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/xyron/game/main/AngraHudExperiment;->refreshNetwork()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 130
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->registered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->device:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-boolean v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->registered:Z

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->telephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->signal:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->telephony:Landroid/telephony/TelephonyManager;

    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 240
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/xyron/game/main/AngraHudExperiment;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x45200000    # 2560.0f

    div-float/2addr v0, v1

    iput v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->classic:Lcom/xyron/game/main/ClassicHudLayout;

    const v1, 0x7f0a0304

    if-eqz v0, :cond_2

    .line 243
    iget-object v2, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    invoke-virtual {v0, v10, v2}, Lcom/xyron/game/main/ClassicHudLayout;->draw(Landroid/graphics/Canvas;Lcom/xyron/game/main/AngraHudReadout;)V

    .line 244
    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/xyron/game/main/AngraHudExperiment;->logo(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    .line 247
    :cond_2
    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/high16 v11, 0x41a00000    # 20.0f

    if-eqz v0, :cond_5

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 251
    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const v1, 0x416147b0    # 14.080002f

    mul-float v1, v1, v0

    const v2, 0x40e147b0    # 7.040001f

    mul-float v0, v0, v2

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const v0, 0x3f47ae14    # 0.78f

    .line 253
    invoke-virtual {v10, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 255
    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const v1, 0x43a28000    # 325.0f

    mul-float v1, v1, v0

    const/high16 v2, 0x438a0000    # 276.0f

    mul-float v2, v2, v0

    const/high16 v3, 0x43650000    # 229.0f

    mul-float v0, v0, v3

    iget-object v3, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    sub-float v6, v1, v0

    sub-float v7, v2, v0

    add-float v8, v1, v0

    add-float v12, v2, v0

    invoke-virtual {v3, v6, v7, v8, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v1, v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v1, 0x554c2525

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x43060000    # 134.0f

    const/high16 v3, 0x42c00000    # 96.0f

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v1, -0xa7a8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget-boolean v0, v0, Lcom/xyron/game/main/AngraHudReadout;->vitalsReady:Z

    const/high16 v13, 0x42c80000    # 100.0f

    if-eqz v0, :cond_3

    iget-object v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget v0, v0, Lcom/xyron/game/main/AngraHudReadout;->health:I

    mul-int/lit8 v0, v0, 0x60

    int-to-float v0, v0

    div-float v3, v0, v13

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x43060000    # 134.0f

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_3
    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 257
    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    invoke-virtual {v0, v6, v7, v8, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v1, v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v1, 0x55324468

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x439b0000    # 310.0f

    const/high16 v3, 0x42c00000    # 96.0f

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v1, -0x83630b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget-boolean v0, v0, Lcom/xyron/game/main/AngraHudReadout;->vitalsReady:Z

    if-eqz v0, :cond_4

    iget-object v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget v0, v0, Lcom/xyron/game/main/AngraHudReadout;->armour:I

    mul-int/lit8 v0, v0, -0x60

    int-to-float v0, v0

    div-float v3, v0, v13

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x42380000    # 46.0f

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_4
    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 259
    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v1, 0x432e0000    # 174.0f

    mul-float v2, v0, v1

    const/high16 v7, 0x43ea0000    # 468.0f

    mul-float v3, v0, v7

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget v6, v0, Lcom/xyron/game/main/AngraHudReadout;->health:I

    const v4, -0xa7a8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/xyron/game/main/AngraHudExperiment;->status(Landroid/graphics/Canvas;FFIZI)V

    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const v1, 0x43e88000    # 465.0f

    mul-float v2, v0, v1

    mul-float v3, v0, v7

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget v6, v0, Lcom/xyron/game/main/AngraHudReadout;->armour:I

    const v4, -0x83630b

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/xyron/game/main/AngraHudExperiment;->status(Landroid/graphics/Canvas;FFIZI)V

    invoke-direct/range {p0 .. p1}, Lcom/xyron/game/main/AngraHudExperiment;->hunger(Landroid/graphics/Canvas;)V

    invoke-direct/range {p0 .. p1}, Lcom/xyron/game/main/AngraHudExperiment;->devices(Landroid/graphics/Canvas;)V

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 265
    :cond_5
    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a030e

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 267
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/xyron/game/main/AngraHudExperiment;->logo(Landroid/graphics/Canvas;)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/xyron/game/main/AngraHudExperiment;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/xyron/game/main/AngraHudGeometry;->cash(F)[F

    move-result-object v0

    const/4 v12, 0x0

    aget v13, v0, v12

    const/4 v14, 0x1

    aget v15, v0, v14

    const/16 v16, 0x2

    aget v8, v0, v16

    const/16 v17, 0x3

    aget v7, v0, v17

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v18, 0x429c0000    # 78.0f

    mul-float v1, v1, v18

    sub-float v1, v8, v1

    invoke-virtual {v0, v13, v15, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    const v1, -0x50edebea

    const v2, 0x338c8d8f

    invoke-direct {v9, v10, v0, v1, v2}, Lcom/xyron/game/main/AngraHudExperiment;->panel(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v19, 0x42900000    # 72.0f

    mul-float v1, v1, v19

    add-float/2addr v1, v13

    invoke-virtual {v0, v13, v15, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    const v1, -0x66e8e7ea

    const v2, -0x440b3abe

    invoke-direct {v9, v10, v0, v1, v2}, Lcom/xyron/game/main/AngraHudExperiment;->panel(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V

    .line 271
    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v20, 0x42100000    # 36.0f

    mul-float v1, v0, v20

    add-float v3, v13, v1

    const/high16 v1, 0x42440000    # 49.0f

    mul-float v1, v1, v0

    add-float v4, v15, v1

    const/high16 v1, 0x420c0000    # 35.0f

    mul-float v5, v0, v1

    sget-object v21, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v22, 0x1

    const-string v2, "R$"

    const v6, -0xb3abe

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v11, v7

    move-object/from16 v7, v21

    move v12, v8

    move/from16 v8, v22

    invoke-direct/range {v0 .. v8}, Lcom/xyron/game/main/AngraHudExperiment;->label(Landroid/graphics/Canvas;Ljava/lang/String;FFFILandroid/graphics/Paint$Align;Z)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget-object v2, v0, Lcom/xyron/game/main/AngraHudReadout;->cash:Ljava/lang/String;

    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v1, v0, v19

    add-float/2addr v13, v1

    add-float/2addr v13, v12

    mul-float v18, v18, v0

    sub-float v13, v13, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v3, v13, v18

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v0, v0, v1

    add-float v4, v15, v0

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget-object v0, v0, Lcom/xyron/game/main/AngraHudReadout;->cash:Ljava/lang/String;

    iget v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v5, 0x42280000    # 42.0f

    mul-float v5, v5, v1

    const/high16 v6, 0x43a00000    # 320.0f

    mul-float v1, v1, v6

    invoke-direct {v9, v0, v5, v1}, Lcom/xyron/game/main/AngraHudExperiment;->fit(Ljava/lang/String;FF)F

    move-result v5

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/4 v8, 0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/xyron/game/main/AngraHudExperiment;->label(Landroid/graphics/Canvas;Ljava/lang/String;FFFILandroid/graphics/Paint$Align;Z)V

    .line 273
    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v1, v1, v19

    sub-float v8, v12, v1

    invoke-virtual {v0, v8, v15, v12, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    const v1, 0x663d3b2c

    const v2, -0x550b3abe

    invoke-direct {v9, v10, v0, v1, v2}, Lcom/xyron/game/main/AngraHudExperiment;->panel(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v11, -0xb3abe

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    iget v2, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v6, 0x42580000    # 54.0f

    mul-float v1, v0, v6

    sub-float v1, v12, v1

    mul-float v2, v0, v20

    add-float/2addr v2, v15

    const/high16 v7, 0x41900000    # 18.0f

    mul-float v3, v0, v7

    sub-float v3, v12, v3

    mul-float v0, v0, v20

    add-float v4, v15, v0

    iget-object v5, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v1, v0, v20

    sub-float v1, v12, v1

    mul-float v7, v7, v0

    add-float v2, v15, v7

    mul-float v3, v0, v20

    sub-float v3, v12, v3

    mul-float v0, v0, v6

    add-float v4, v15, v0

    iget-object v5, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/xyron/game/main/AngraHudExperiment;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/xyron/game/main/AngraHudGeometry;->xp(F)[F

    move-result-object v12

    aget v0, v12, v14

    aget v1, v12, v17

    add-float/2addr v0, v1

    div-float v13, v0, v18

    const/4 v0, 0x0

    aget v1, v12, v0

    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v2, 0x42400000    # 48.0f

    mul-float v2, v2, v0

    add-float v3, v1, v2

    iget-object v2, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    const/high16 v4, 0x42d00000    # 104.0f

    mul-float v4, v4, v0

    add-float/2addr v1, v4

    const/high16 v4, 0x41d80000    # 27.0f

    mul-float v5, v0, v4

    sub-float v5, v13, v5

    aget v6, v12, v16

    mul-float v0, v0, v4

    add-float/2addr v0, v13

    invoke-virtual {v2, v1, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    const v1, -0x75edebea

    const v2, 0x448c8d8f

    invoke-direct {v9, v10, v0, v1, v2}, Lcom/xyron/game/main/AngraHudExperiment;->panel(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V

    .line 277
    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v1, -0x33cbc8c5    # -4.7242476E7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v0, v0, v20

    iget-object v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3, v13, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v1, v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v1, -0x5566625e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v0, v0, v20

    iget-object v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3, v13, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget-boolean v0, v0, Lcom/xyron/game/main/AngraHudReadout;->experienceReady:Z

    if-eqz v0, :cond_7

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget v0, v0, Lcom/xyron/game/main/AngraHudReadout;->level:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "\u2014"

    :goto_0
    move-object v2, v0

    iget v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v1, v1, v0

    add-float v4, v13, v1

    mul-float v5, v0, v20

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/4 v8, 0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/xyron/game/main/AngraHudExperiment;->label(Landroid/graphics/Canvas;Ljava/lang/String;FFFILandroid/graphics/Paint$Align;Z)V

    const/4 v0, 0x0

    .line 279
    aget v0, v12, v0

    iget v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v2, 0x42dc0000    # 110.0f

    mul-float v2, v2, v1

    add-float/2addr v2, v0

    const/high16 v3, 0x439b0000    # 310.0f

    mul-float v3, v3, v1

    add-float/2addr v0, v3

    iget-object v3, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    const/high16 v4, 0x41000000    # 8.0f

    mul-float v5, v1, v4

    sub-float v5, v13, v5

    mul-float v1, v1, v4

    add-float/2addr v1, v13

    invoke-virtual {v3, v2, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    const v3, -0x66737271

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v3, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v5, v3, v18

    mul-float v3, v3, v18

    iget-object v6, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v1, v5, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    sub-float/2addr v0, v2

    iget-object v3, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget v3, v3, Lcom/xyron/game/main/AngraHudReadout;->progress:F

    mul-float v0, v0, v3

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->box:Landroid/graphics/RectF;

    iget v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    mul-float v2, v1, v18

    mul-float v1, v1, v18

    iget-object v3, v9, Lcom/xyron/game/main/AngraHudExperiment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget-object v2, v0, Lcom/xyron/game/main/AngraHudReadout;->experience:Ljava/lang/String;

    aget v0, v12, v16

    iget v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v11, v1, v3

    sub-float v3, v0, v11

    mul-float v1, v1, v4

    add-float v4, v13, v1

    iget-object v0, v9, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget-object v0, v0, Lcom/xyron/game/main/AngraHudReadout;->experience:Ljava/lang/String;

    iget v1, v9, Lcom/xyron/game/main/AngraHudExperiment;->scale:F

    const/high16 v5, 0x41c00000    # 24.0f

    mul-float v5, v5, v1

    const/high16 v6, 0x431e0000    # 158.0f

    mul-float v1, v1, v6

    invoke-direct {v9, v0, v5, v1}, Lcom/xyron/game/main/AngraHudExperiment;->fit(Ljava/lang/String;FF)F

    move-result v5

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    const/4 v8, 0x0

    const v6, -0x171615

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/xyron/game/main/AngraHudExperiment;->label(Landroid/graphics/Canvas;Ljava/lang/String;FFFILandroid/graphics/Paint$Align;Z)V

    return-void
.end method

.method playerSummary()Ljava/lang/String;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "N\u00edvel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget v1, v1, Lcom/xyron/game/main/AngraHudReadout;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nExperi\u00eancia: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget-object v1, v1, Lcom/xyron/game/main/AngraHudReadout;->experience:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nDinheiro em m\u00e3os: R$ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget-object v1, v1, Lcom/xyron/game/main/AngraHudReadout;->cash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nVida: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget v1, v1, Lcom/xyron/game/main/AngraHudReadout;->health:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%\nColete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget v1, v1, Lcom/xyron/game/main/AngraHudReadout;->armour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%\nFome: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    iget v1, v1, Lcom/xyron/game/main/AngraHudReadout;->hunger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method reset()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraHudReadout;->reset()V

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->invalidate()V

    return-void
.end method

.method safe(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/xyron/game/main/AngraHudExperiment;->safe:Z

    iget-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment;->ring:Lcom/xyron/game/main/AngraHudExperiment$Ring;

    invoke-virtual {p1}, Lcom/xyron/game/main/AngraHudExperiment$Ring;->invalidateSelf()V

    return-void
.end method

.method server(Ljava/lang/Integer;ILjava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/AngraHudReadout;->serverCash(I)V

    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    invoke-virtual {p1, p2, p3}, Lcom/xyron/game/main/AngraHudReadout;->experience(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    invoke-static {p4}, Lcom/xyron/game/main/AngraHudReadout;->percent(I)I

    move-result p2

    iput p2, p1, Lcom/xyron/game/main/AngraHudReadout;->hunger:I

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->invalidate()V

    return-void
.end method

.method style()V
    .locals 11

    .line 138
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a02f1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0306

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01d4

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0305

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->ring:Lcom/xyron/game/main/AngraHudExperiment$Ring;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 142
    :goto_0
    sget-object v3, Lcom/xyron/game/main/AngraHudExperiment;->MENU:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    aget v3, v3, v2

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget-object v4, Lcom/xyron/game/main/AngraHudExperiment;->ICONS:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-ne v2, v1, :cond_0

    const v4, -0xb3abe

    goto :goto_1

    :cond_0
    const v4, -0x1b1a1a

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a030e

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v4, 0x7f0a0097

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 146
    iget-object v4, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v5, 0x7f0a0099

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v6, 0x7f0a0098

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v7, 0x7f0a0096

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v8, 0x7f0a009a

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x5

    new-array v9, v8, [Landroid/view/View;

    aput-object v3, v9, v0

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v4, 0x2

    aput-object v5, v9, v4

    const/4 v4, 0x3

    aput-object v6, v9, v4

    aput-object v7, v9, v1

    .line 148
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, v3, :cond_3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_2

    aget-object v3, v9, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_3

    aget-object v3, v9, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a030d

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080213

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0309

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080210

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0055

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, -0x668a2753

    const/high16 v2, 0x41000000    # 8.0f

    const v3, -0x2fe8dade

    invoke-direct {p0, v3, v1, v2}, Lcom/xyron/game/main/AngraHudExperiment;->card(IIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/xyron/game/main/AngraHudExperiment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/AngraHudExperiment$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/AngraHudExperiment;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->invalidate()V

    return-void
.end method

.method update(IIII)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->data:Lcom/xyron/game/main/AngraHudReadout;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xyron/game/main/AngraHudReadout;->vitals(IIII)V

    invoke-virtual {p0}, Lcom/xyron/game/main/AngraHudExperiment;->invalidate()V

    return-void
.end method

.method usesRetroHud()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment;->classic:Lcom/xyron/game/main/ClassicHudLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
