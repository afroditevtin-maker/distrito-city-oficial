.class final Lcom/xyron/game/main/HudButtonEditor;
.super Ljava/lang/Object;
.source "HudButtonEditor.java"


# static fields
.field private static final IDS:[I

.field private static final KEYS:[Ljava/lang/String;

.field private static final NAMES:[Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final boxes:[Lcom/xyron/game/main/HudControlBox;

.field private caption:Landroid/widget/TextView;

.field private downX:F

.field private downY:F

.field private final hud:Landroid/view/ViewGroup;

.field private overlay:Landroid/widget/FrameLayout;

.field private pinch:F

.field private final prefs:Landroid/content/SharedPreferences;

.field private final previews:[Landroid/widget/ImageView;

.field private selected:I

.field private startX:F

.field private startY:F

.field private toolbar:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f0a0091

    const v1, 0x7f0a0056

    const v2, 0x7f0a0164

    const v3, 0x7f0a03b7

    const v4, 0x7f0a009b

    .line 20
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/xyron/game/main/HudButtonEditor;->IDS:[I

    .line 21
    const-string v0, "animations"

    const-string v1, "radio"

    const-string v2, "passenger"

    const-string v3, "lock"

    const-string v4, "weapons"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/main/HudButtonEditor;->KEYS:[Ljava/lang/String;

    .line 22
    const-string v0, "Anima\u00e7\u00f5es"

    const-string v1, "R\u00e1dio"

    const-string v2, "Passageiro"

    const-string v3, "Trancar ve\u00edculo"

    const-string v4, "Radial de armas"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/main/HudButtonEditor;->NAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/xyron/game/main/HudButtonEditor;->IDS:[I

    array-length v1, v0

    new-array v1, v1, [Lcom/xyron/game/main/HudControlBox;

    iput-object v1, p0, Lcom/xyron/game/main/HudButtonEditor;->boxes:[Lcom/xyron/game/main/HudControlBox;

    .line 27
    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->previews:[Landroid/widget/ImageView;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/xyron/game/main/HudButtonEditor;->selected:I

    .line 33
    iput-object p1, p0, Lcom/xyron/game/main/HudButtonEditor;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    const-string p2, "angra_hud_buttons_v1"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/main/HudButtonEditor;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private static distance(Landroid/view/MotionEvent;)F
    .locals 5

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    float-to-double v3, v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private dp(F)I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method static hasSavedWeaponPosition(Landroid/content/Context;)Z
    .locals 6

    .line 55
    const-string v0, "angra_hud_buttons_v1"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 56
    new-instance v0, Lcom/xyron/game/main/HudControlBox;

    const-string v1, "weapons.x"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v3, "weapons.y"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    const-string v3, "weapons.w"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    const-string v5, "weapons.h"

    invoke-interface {p0, v5, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/xyron/game/main/HudControlBox;-><init>(FFFF)V

    invoke-virtual {v0}, Lcom/xyron/game/main/HudControlBox;->valid()Z

    move-result p0

    return p0
.end method

.method private position(I)V
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->boxes:[Lcom/xyron/game/main/HudControlBox;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/xyron/game/main/HudButtonEditor;->previews:[Landroid/widget/ImageView;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Lcom/xyron/game/main/HudControlBox;->width:F

    iget-object v3, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, v0, Lcom/xyron/game/main/HudControlBox;->height:F

    iget-object v4, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, v0, Lcom/xyron/game/main/HudControlBox;->x:F

    iget-object v3, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Lcom/xyron/game/main/HudControlBox;->y:F

    iget-object v2, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private read(I)Lcom/xyron/game/main/HudControlBox;
    .locals 8

    .line 59
    sget-object v0, Lcom/xyron/game/main/HudButtonEditor;->KEYS:[Ljava/lang/String;

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->prefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 60
    :cond_0
    new-instance v0, Lcom/xyron/game/main/HudControlBox;

    iget-object v3, p0, Lcom/xyron/game/main/HudButtonEditor;->prefs:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iget-object v3, p0, Lcom/xyron/game/main/HudButtonEditor;->prefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".y"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iget-object v5, p0, Lcom/xyron/game/main/HudButtonEditor;->prefs:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".w"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    iget-object v6, p0, Lcom/xyron/game/main/HudButtonEditor;->prefs:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".h"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-direct {v0, v2, v3, v5, p1}, Lcom/xyron/game/main/HudControlBox;-><init>(FFFF)V

    invoke-virtual {v0}, Lcom/xyron/game/main/HudControlBox;->valid()Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method private resize(F)V
    .locals 9

    .line 98
    iget v0, p0, Lcom/xyron/game/main/HudButtonEditor;->selected:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/xyron/game/main/HudButtonEditor;->boxes:[Lcom/xyron/game/main/HudControlBox;

    aget-object v3, v2, v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v6, v0

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-direct {p0, v0}, Lcom/xyron/game/main/HudButtonEditor;->dp(F)I

    move-result v0

    int-to-float v7, v0

    const/high16 v0, 0x43340000    # 180.0f

    invoke-direct {p0, v0}, Lcom/xyron/game/main/HudButtonEditor;->dp(F)I

    move-result v0

    int-to-float v8, v0

    move v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/xyron/game/main/HudControlBox;->resize(FFFFF)V

    iget p1, p0, Lcom/xyron/game/main/HudButtonEditor;->selected:I

    invoke-direct {p0, p1}, Lcom/xyron/game/main/HudButtonEditor;->position(I)V

    invoke-direct {p0}, Lcom/xyron/game/main/HudButtonEditor;->showToolbar()V

    :cond_1
    :goto_0
    return-void
.end method

.method private showToolbar()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xyron/game/main/HudButtonEditor;->selected:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/HudButtonEditor;->caption:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xyron/game/main/HudButtonEditor;->activity:Landroid/app/Activity;

    sget-object v3, Lcom/xyron/game/main/HudButtonEditor;->NAMES:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-static {v2, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/xyron/game/main/HudButtonEditor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/HudButtonEditor$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/HudButtonEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private touch(ILandroid/view/MotionEvent;)Z
    .locals 6

    .line 85
    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->boxes:[Lcom/xyron/game/main/HudControlBox;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 86
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 87
    iput p1, p0, Lcom/xyron/game/main/HudButtonEditor;->selected:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/xyron/game/main/HudButtonEditor;->downX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/xyron/game/main/HudButtonEditor;->downY:F

    iget p1, v0, Lcom/xyron/game/main/HudControlBox;->x:F

    iget-object p2, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float p1, p1, p2

    iput p1, p0, Lcom/xyron/game/main/HudButtonEditor;->startX:F

    iget p1, v0, Lcom/xyron/game/main/HudControlBox;->y:F

    iget-object p2, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float p1, p1, p2

    iput p1, p0, Lcom/xyron/game/main/HudButtonEditor;->startY:F

    iput v4, p0, Lcom/xyron/game/main/HudButtonEditor;->pinch:F

    invoke-direct {p0}, Lcom/xyron/game/main/HudButtonEditor;->showToolbar()V

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x5

    if-ne v2, v5, :cond_2

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-le v5, v3, :cond_2

    invoke-static {p2}, Lcom/xyron/game/main/HudButtonEditor;->distance(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/xyron/game/main/HudButtonEditor;->pinch:F

    goto/16 :goto_1

    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    .line 90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v3, :cond_4

    invoke-static {p2}, Lcom/xyron/game/main/HudButtonEditor;->distance(Landroid/view/MotionEvent;)F

    move-result p1

    iget p2, p0, Lcom/xyron/game/main/HudButtonEditor;->pinch:F

    cmpl-float v0, p2, v4

    if-lez v0, :cond_3

    div-float p2, p1, p2

    invoke-direct {p0, p2}, Lcom/xyron/game/main/HudButtonEditor;->resize(F)V

    :cond_3
    iput p1, p0, Lcom/xyron/game/main/HudButtonEditor;->pinch:F

    goto/16 :goto_1

    .line 91
    :cond_4
    iget v1, p0, Lcom/xyron/game/main/HudButtonEditor;->pinch:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_9

    iget v1, p0, Lcom/xyron/game/main/HudButtonEditor;->startX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/xyron/game/main/HudButtonEditor;->downX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/xyron/game/main/HudButtonEditor;->startY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    add-float/2addr v2, p2

    iget p2, p0, Lcom/xyron/game/main/HudButtonEditor;->downY:F

    sub-float/2addr v2, p2

    iget-object p2, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v4, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, p2, v4}, Lcom/xyron/game/main/HudControlBox;->move(FFFF)V

    invoke-direct {p0, p1}, Lcom/xyron/game/main/HudButtonEditor;->position(I)V

    invoke-direct {p0}, Lcom/xyron/game/main/HudButtonEditor;->showToolbar()V

    goto :goto_1

    :cond_5
    const/4 p1, 0x6

    if-ne v2, p1, :cond_7

    .line 92
    iput v4, p0, Lcom/xyron/game/main/HudButtonEditor;->pinch:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/xyron/game/main/HudButtonEditor;->downX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v2, p1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/xyron/game/main/HudButtonEditor;->downY:F

    iget p1, v0, Lcom/xyron/game/main/HudControlBox;->x:F

    iget-object p2, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float p1, p1, p2

    iput p1, p0, Lcom/xyron/game/main/HudButtonEditor;->startX:F

    iget p1, v0, Lcom/xyron/game/main/HudControlBox;->y:F

    iget-object p2, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float p1, p1, p2

    iput p1, p0, Lcom/xyron/game/main/HudButtonEditor;->startY:F

    goto :goto_1

    :cond_7
    if-eq v2, v3, :cond_8

    const/4 p1, 0x3

    if-ne v2, p1, :cond_9

    .line 93
    :cond_8
    iput v4, p0, Lcom/xyron/game/main/HudButtonEditor;->pinch:F

    :cond_9
    :goto_1
    return v3

    :cond_a
    :goto_2
    return v1
.end method


# virtual methods
.method apply()V
    .locals 9

    .line 35
    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    :goto_0
    sget-object v2, Lcom/xyron/game/main/HudButtonEditor;->IDS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 37
    invoke-direct {p0, v1}, Lcom/xyron/game/main/HudButtonEditor;->read(I)Lcom/xyron/game/main/HudControlBox;

    move-result-object v3

    iget-object v4, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    aget v2, v2, v1

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v3, :cond_4

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 38
    :cond_1
    invoke-virtual {v3}, Lcom/xyron/game/main/HudControlBox;->clamp()V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 39
    iget v5, v3, Lcom/xyron/game/main/HudControlBox;->width:F

    iget-object v6, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    iget v5, v3, Lcom/xyron/game/main/HudControlBox;->height:F

    iget-object v7, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v5, v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 40
    iput v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 41
    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 42
    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 43
    iput v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 44
    iget v5, v3, Lcom/xyron/game/main/HudControlBox;->x:F

    iget-object v6, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    iget v3, v3, Lcom/xyron/game/main/HudControlBox;->y:F

    iget-object v5, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 45
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    iput v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    int-to-float v3, v3

    const/high16 v5, 0x41000000    # 8.0f

    mul-float v3, v3, v5

    const/high16 v5, 0x42180000    # 38.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    const v5, 0x7f0a0312

    .line 48
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    div-int/2addr v7, v3

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    int-to-float v3, v3

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v3, v6

    invoke-virtual {v5, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v3, 0x7f0a0313

    .line 49
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    int-to-float v6, v6

    const/high16 v7, 0x41b80000    # 23.0f

    mul-float v6, v6, v7

    const/high16 v7, 0x41e00000    # 28.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    int-to-float v6, v6

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v6, v6, v8

    const/high16 v8, 0x42600000    # 56.0f

    div-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f0a0314

    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    int-to-float v5, v5

    const/high16 v6, 0x41900000    # 18.0f

    mul-float v5, v5, v6

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float v4, v4, v5

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method finish(Z)V
    .locals 11

    .line 102
    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 103
    iget-object p1, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x2

    .line 104
    new-array v0, p1, [I

    new-array p1, p1, [I

    iget-object v1, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 105
    iget-object v1, p0, Lcom/xyron/game/main/HudButtonEditor;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 106
    :goto_0
    iget-object v4, p0, Lcom/xyron/game/main/HudButtonEditor;->boxes:[Lcom/xyron/game/main/HudControlBox;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    .line 107
    sget-object v5, Lcom/xyron/game/main/HudButtonEditor;->KEYS:[Ljava/lang/String;

    aget-object v5, v5, v3

    .line 108
    new-instance v6, Lcom/xyron/game/main/HudControlBox;

    iget v7, v4, Lcom/xyron/game/main/HudControlBox;->x:F

    iget-object v8, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    aget v8, v0, v2

    int-to-float v8, v8

    add-float/2addr v7, v8

    aget v8, p1, v2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, v4, Lcom/xyron/game/main/HudControlBox;->y:F

    iget-object v9, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v8, v8, v9

    const/4 v9, 0x1

    aget v10, v0, v9

    int-to-float v10, v10

    add-float/2addr v8, v10

    aget v9, p1, v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, v4, Lcom/xyron/game/main/HudControlBox;->width:F

    iget-object v10, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v9, v9, v10

    iget-object v10, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v4, v4, Lcom/xyron/game/main/HudControlBox;->height:F

    iget-object v10, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float v4, v4, v10

    iget-object v10, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v4, v10

    invoke-direct {v6, v7, v8, v9, v4}, Lcom/xyron/game/main/HudControlBox;-><init>(FFFF)V

    invoke-virtual {v6}, Lcom/xyron/game/main/HudControlBox;->clamp()V

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v7, v6, Lcom/xyron/game/main/HudControlBox;->x:F

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".y"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v6, Lcom/xyron/game/main/HudControlBox;->y:F

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".w"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v6, Lcom/xyron/game/main/HudControlBox;->width:F

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".h"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v6, Lcom/xyron/game/main/HudControlBox;->height:F

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 110
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    const/4 p1, -0x1

    iput p1, p0, Lcom/xyron/game/main/HudButtonEditor;->selected:I

    invoke-virtual {p0}, Lcom/xyron/game/main/HudButtonEditor;->apply()V

    return-void
.end method

.method synthetic lambda$show$0$com-xyron-game-main-HudButtonEditor(ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1, p3}, Lcom/xyron/game/main/HudButtonEditor;->touch(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$show$1$com-xyron-game-main-HudButtonEditor(ILandroid/view/View;)V
    .locals 0

    .line 0
    if-gez p1, :cond_0

    const p1, 0x3f68ba2e

    goto :goto_0

    :cond_0
    const p1, 0x3f8ccccd    # 1.1f

    .line 80
    :goto_0
    invoke-direct {p0, p1}, Lcom/xyron/game/main/HudButtonEditor;->resize(F)V

    return-void
.end method

.method synthetic lambda$show$2$com-xyron-game-main-HudButtonEditor()V
    .locals 13

    .line 67
    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 68
    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 69
    :goto_0
    sget-object v4, Lcom/xyron/game/main/HudButtonEditor;->IDS:[I

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v3, v5, :cond_3

    .line 70
    iget-object v5, p0, Lcom/xyron/game/main/HudButtonEditor;->hud:Landroid/view/ViewGroup;

    aget v4, v4, v3

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    .line 71
    :cond_1
    new-array v5, v1, [I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 72
    iget-object v7, p0, Lcom/xyron/game/main/HudButtonEditor;->boxes:[Lcom/xyron/game/main/HudControlBox;

    new-instance v8, Lcom/xyron/game/main/HudControlBox;

    aget v9, v5, v0

    aget v10, v2, v0

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    aget v5, v5, v6

    aget v10, v2, v6

    sub-int/2addr v5, v10

    int-to-float v5, v5

    iget-object v10, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v5, v10

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-direct {v8, v9, v5, v10, v11}, Lcom/xyron/game/main/HudControlBox;-><init>(FFFF)V

    aput-object v8, v7, v3

    iget-object v5, p0, Lcom/xyron/game/main/HudButtonEditor;->boxes:[Lcom/xyron/game/main/HudControlBox;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/xyron/game/main/HudControlBox;->clamp()V

    .line 73
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 74
    new-instance v4, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/xyron/game/main/HudButtonEditor;->activity:Landroid/app/Activity;

    invoke-direct {v4, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v5, Lcom/xyron/game/main/HudButtonEditor;->NAMES:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v5, p0, Lcom/xyron/game/main/HudButtonEditor;->previews:[Landroid/widget/ImageView;

    aput-object v4, v5, v3

    iget-object v5, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v5, Lcom/xyron/game/main/HudButtonEditor$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3}, Lcom/xyron/game/main/HudButtonEditor$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/HudButtonEditor;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0, v3}, Lcom/xyron/game/main/HudButtonEditor;->position(I)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 78
    :cond_3
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/xyron/game/main/HudButtonEditor;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    const v3, -0x12f0e1dd

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 79
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xyron/game/main/HudButtonEditor;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xyron/game/main/HudButtonEditor;->caption:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/xyron/game/main/HudButtonEditor;->caption:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/xyron/game/main/HudButtonEditor;->caption:Landroid/widget/TextView;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-direct {p0, v4}, Lcom/xyron/game/main/HudButtonEditor;->dp(F)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/xyron/game/main/HudButtonEditor;->dp(F)I

    move-result v7

    invoke-direct {p0, v4}, Lcom/xyron/game/main/HudButtonEditor;->dp(F)I

    move-result v8

    invoke-direct {p0, v4}, Lcom/xyron/game/main/HudButtonEditor;->dp(F)I

    move-result v4

    invoke-virtual {v2, v5, v7, v8, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/xyron/game/main/HudButtonEditor;->caption:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    filled-new-array {v3, v6}, [I

    move-result-object v2

    :goto_2
    if-ge v0, v1, :cond_5

    aget v4, v2, v0

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/xyron/game/main/HudButtonEditor;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-gez v4, :cond_4

    const-string/jumbo v6, "\u2212"

    goto :goto_3

    :cond_4
    const-string v6, "+"

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42200000    # 40.0f

    invoke-direct {p0, v8}, Lcom/xyron/game/main/HudButtonEditor;->dp(F)I

    move-result v9

    invoke-direct {p0, v8}, Lcom/xyron/game/main/HudButtonEditor;->dp(F)I

    move-result v8

    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/xyron/game/main/HudButtonEditor$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, v4}, Lcom/xyron/game/main/HudButtonEditor$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/main/HudButtonEditor;I)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$showToolbar$3$com-xyron-game-main-HudButtonEditor()V
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/HudButtonEditor;->boxes:[Lcom/xyron/game/main/HudControlBox;

    iget v2, p0, Lcom/xyron/game/main/HudButtonEditor;->selected:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, v1, Lcom/xyron/game/main/HudControlBox;->x:F

    iget-object v4, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setX(F)V

    iget v0, v1, Lcom/xyron/game/main/HudControlBox;->y:F

    iget-object v2, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    iget-object v2, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-direct {p0, v2}, Lcom/xyron/game/main/HudButtonEditor;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/xyron/game/main/HudButtonEditor;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, v1, Lcom/xyron/game/main/HudControlBox;->y:F

    iget v1, v1, Lcom/xyron/game/main/HudControlBox;->height:F

    add-float/2addr v3, v1

    iget-object v1, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v3, v1

    invoke-direct {p0, v2}, Lcom/xyron/game/main/HudButtonEditor;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setY(F)V

    return-void
.end method

.method show()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xyron/game/main/HudButtonEditor;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 65
    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/xyron/game/main/HudButtonEditor;->overlay:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/xyron/game/main/HudButtonEditor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/HudButtonEditor$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/HudButtonEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
