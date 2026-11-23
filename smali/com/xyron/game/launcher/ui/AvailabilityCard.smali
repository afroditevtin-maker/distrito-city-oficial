.class public final Lcom/xyron/game/launcher/ui/AvailabilityCard;
.super Ljava/lang/Object;
.source "AvailabilityCard.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static action(Landroid/app/Activity;Ljava/lang/String;IIF)Landroid/widget/TextView;
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x1

    .line 68
    invoke-static {p0, p1, v0, p2, v1}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->text(Landroid/app/Activity;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x11

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 70
    invoke-static {v0, p4}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {v0, p4}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 p1, 0x8

    .line 71
    invoke-static {p1, p4}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result p1

    .line 72
    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    const p4, 0x33ffffff

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    .line 73
    invoke-static {p3, p1}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->surface(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    const/4 v0, -0x1

    invoke-static {v0, p1}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->surface(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-direct {p2, p4, p3, p1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    return-object p0
.end method

.method private static dp(IF)I
    .locals 0

    int-to-float p0, p0

    mul-float p0, p0, p1

    .line 95
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$show$0(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$show$1(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 53
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "about:blank"

    .line 54
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .line 21
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    xor-int/lit8 v1, p3, 0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 26
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 27
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x16

    .line 28
    invoke-static {v5, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result v6

    const/16 v7, 0x14

    invoke-static {v7, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result v8

    invoke-static {v5, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result v5

    const/16 v9, 0xe

    invoke-static {v9, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result v9

    invoke-virtual {v3, v6, v8, v5, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v5, 0xc

    .line 29
    invoke-static {v5, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result v5

    const v6, -0xe4dfd8

    invoke-static {v6, v5}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->surface(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    .line 30
    invoke-static {v4, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result v6

    const v8, -0xc6bfb5

    invoke-virtual {v5, v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 31
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, -0x1

    .line 33
    invoke-static {p0, p1, v7, v5, v4}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->text(Landroid/app/Activity;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 p1, 0xf

    const v4, -0x483f34

    .line 34
    invoke-static {p0, p2, p1, v4, v1}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->text(Landroid/app/Activity;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    .line 35
    invoke-static {p2, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result v4

    const/16 v6, 0x10

    invoke-static {v6, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result v6

    invoke-virtual {p1, v1, v4, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 36
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 38
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v4, 0x800015

    .line 39
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 40
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v4, 0x30

    const/4 v6, -0x2

    if-nez p3, :cond_0

    .line 42
    const-string p3, "Voltar"

    const v7, -0x1f1a14

    invoke-static {p0, p3, v7, v1, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->action(Landroid/app/Activity;Ljava/lang/String;IIF)Landroid/widget/TextView;

    move-result-object p3

    .line 43
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result v8

    invoke-direct {v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    invoke-static {p2, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result p2

    invoke-virtual {v7, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 45
    invoke-virtual {p1, p3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance p2, Lcom/xyron/game/launcher/ui/AvailabilityCard$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lcom/xyron/game/launcher/ui/AvailabilityCard$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    :cond_0
    const-string p2, "Abrir Discord"

    const p3, -0xcac2b7

    invoke-static {p0, p2, v5, p3, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->action(Landroid/app/Activity;Ljava/lang/String;IIF)Landroid/widget/TextView;

    move-result-object p2

    .line 50
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result v4

    invoke-direct {p3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance p1, Lcom/xyron/game/launcher/ui/AvailabilityCard$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/xyron/game/launcher/ui/AvailabilityCard$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 59
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 60
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x186

    invoke-static {p2, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result p2

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 p3, 0x24

    invoke-static {p3, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->dp(IF)I

    move-result p3

    sub-int/2addr p0, p3

    .line 62
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p1, p0, v6}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void
.end method

.method private static surface(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 79
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 80
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float p0, p1

    .line 81
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private static text(Landroid/app/Activity;Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .locals 1

    .line 86
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p0, p2

    .line 88
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 89
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p4, :cond_0

    .line 90
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-object v0
.end method
