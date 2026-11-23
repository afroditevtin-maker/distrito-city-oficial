.class public Lcom/xyron/game/main/ui/CustomKeyboard;
.super Ljava/lang/Object;
.source "CustomKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/ui/CustomKeyboard$InputListener;
    }
.end annotation


# static fields
.field private static final BASE_BOTTOM_MARGIN_DP:I


# instance fields
.field private binderAction:Ljava/lang/Runnable;

.field private final decorLocation:[I

.field private final imeVisibleFrame:Landroid/graphics/Rect;

.field private keyboardHeight:I

.field private final mBaseBottomMarginPx:I

.field private final mContext:Landroid/app/Activity;

.field private mCurrentHistoryMessage:I

.field private mEmoji:Z

.field private mInputEt:Landroid/widget/EditText;

.field private final mInputHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputLayout:Landroid/widget/LinearLayout;

.field private mIsShowing:Z

.field private mKeysContainer:Landroid/widget/LinearLayout;

.field private mMoreSymbols:Z

.field private mSavedInput:Ljava/lang/String;

.field private mShift:Z

.field private mSymbols:Z

.field private systemKeyboard:Z

.field private final trackSystemIme:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputHistory:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->imeVisibleFrame:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->decorLocation:[I

    .line 45
    new-instance v0, Lcom/xyron/game/main/ui/CustomKeyboard$1;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/ui/CustomKeyboard$1;-><init>(Lcom/xyron/game/main/ui/CustomKeyboard;)V

    iput-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->trackSystemIme:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mContext:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mBaseBottomMarginPx:I

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f0a0224

    .line 80
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a01fa

    .line 81
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mKeysContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0222

    .line 82
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    const v1, 0x12000004

    .line 83
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 84
    iget-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 85
    iget-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    const p1, 0x7f0a0221

    .line 86
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v1, 0x7f0a021f

    .line 87
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a021e

    .line 88
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0a0220

    .line 89
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 90
    iget-object v4, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    .line 91
    new-instance v4, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/ui/CustomKeyboard;)V

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance p1, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/ui/CustomKeyboard;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance p1, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/ui/CustomKeyboard;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance p1, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/main/ui/CustomKeyboard;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a021d

    .line 95
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/main/ui/CustomKeyboard;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    new-instance v0, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/main/ui/CustomKeyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 106
    invoke-direct {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->rebuildKeys()V

    .line 107
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->HideInputLayout()V

    return-void
.end method

.method private accentOptions(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "o"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    const-string/jumbo p1, "\u00fa \u00f9 \u00fb \u00fc"

    return-object p1

    :pswitch_1
    const-string/jumbo p1, "\u00f3 \u00f2 \u00f4 \u00f5 \u00f6"

    return-object p1

    :pswitch_2
    const-string/jumbo p1, "\u00f1"

    return-object p1

    :pswitch_3
    const-string/jumbo p1, "\u00ed \u00ec \u00ee \u00ef"

    return-object p1

    :pswitch_4
    const-string/jumbo p1, "\u00e9 \u00e8 \u00ea \u00eb"

    return-object p1

    :pswitch_5
    const-string/jumbo p1, "\u00e7"

    return-object p1

    :pswitch_6
    const-string/jumbo p1, "\u00e1 \u00e0 \u00e2 \u00e3 \u00e4"

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_6
        0x63 -> :sswitch_5
        0x65 -> :sswitch_4
        0x69 -> :sswitch_3
        0x6e -> :sswitch_2
        0x6f -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/xyron/game/main/ui/CustomKeyboard;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mIsShowing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xyron/game/main/ui/CustomKeyboard;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->systemKeyboard:Z

    return p0
.end method

.method static synthetic access$200(Lcom/xyron/game/main/ui/CustomKeyboard;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xyron/game/main/ui/CustomKeyboard;)Landroid/graphics/Rect;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->imeVisibleFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xyron/game/main/ui/CustomKeyboard;)[I
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->decorLocation:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/xyron/game/main/ui/CustomKeyboard;F)I
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/xyron/game/main/ui/CustomKeyboard;)Landroid/widget/LinearLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private addRow([Ljava/lang/String;Z)V
    .locals 7

    .line 145
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 147
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    if-eqz p2, :cond_1

    .line 148
    const-string/jumbo v5, "\u21e7"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "\u232b"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ABC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    const v6, 0x3fa8f5c3    # 1.32f

    goto :goto_2

    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    .line 149
    :goto_2
    invoke-direct {p0, v4, v6, v5}, Lcom/xyron/game/main/ui/CustomKeyboard;->makeKey(Ljava/lang/String;FZ)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_3
    iget-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mKeysContainer:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x422c0000    # 43.0f

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyBottomOffset()V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 259
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    .line 260
    iget v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mBaseBottomMarginPx:I

    iget-boolean v2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->systemKeyboard:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mIsShowing:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->keyboardHeight:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 261
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v3, v1, :cond_2

    return-void

    .line 262
    :cond_2
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private deleteBeforeCursor()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v2, v1, :cond_1

    .line 211
    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v2

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_2
    :goto_0
    return-void
.end method

.method private dp(F)I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mContext:Landroid/app/Activity;

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

.method private handleKey(Ljava/lang/String;)V
    .locals 6

    .line 187
    const-string/jumbo v0, "\u21e7"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mShift:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mShift:Z

    invoke-direct {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->rebuildKeys()V

    goto/16 :goto_3

    .line 188
    :cond_0
    const-string/jumbo v0, "\u232b"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->deleteBeforeCursor()V

    goto/16 :goto_3

    .line 189
    :cond_1
    const-string/jumbo v0, "\u263a"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mEmoji:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mEmoji:Z

    iput-boolean v2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mSymbols:Z

    invoke-direct {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->rebuildKeys()V

    goto/16 :goto_3

    .line 190
    :cond_2
    const-string v0, "#+="

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mMoreSymbols:Z

    invoke-direct {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->rebuildKeys()V

    goto/16 :goto_3

    .line 191
    :cond_3
    const-string v0, "123"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mSymbols:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mMoreSymbols:Z

    if-eqz v3, :cond_4

    iput-boolean v2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mMoreSymbols:Z

    invoke-direct {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->rebuildKeys()V

    goto/16 :goto_3

    .line 192
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "ABC"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_2

    .line 193
    :cond_5
    const-string/jumbo v0, "\u2190"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "\u2192"

    if-nez v3, :cond_a

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    .line 194
    :cond_6
    const-string v0, "espa\u00e7o"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, " "

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/CustomKeyboard;->insertText(Ljava/lang/String;)V

    goto :goto_3

    .line 195
    :cond_7
    const-string v0, "enviar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->submitInput()V

    goto :goto_3

    .line 197
    :cond_8
    iget-boolean v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mShift:Z

    if-eqz v0, :cond_9

    const-string v0, "pt-BR"

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_9
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/CustomKeyboard;->insertText(Ljava/lang/String;)V

    goto :goto_3

    .line 193
    :cond_a
    :goto_0
    iget-object v3, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-object v5, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v3, :cond_e

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-lez v2, :cond_b

    const/4 v0, -0x1

    invoke-static {v3, v2, v0}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_1

    :cond_b
    move v0, v2

    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result p1

    if-ge v2, p1, :cond_c

    invoke-static {v3, v2, v1}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v0

    :cond_c
    iget-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_3

    .line 192
    :cond_d
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mSymbols:Z

    iput-boolean v2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mMoreSymbols:Z

    iput-boolean v2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mEmoji:Z

    invoke-direct {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->rebuildKeys()V

    :cond_e
    :goto_3
    return-void
.end method

.method private insertText(Ljava/lang/String;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 205
    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method private makeKey(Ljava/lang/String;FZ)Landroid/widget/Button;
    .locals 6

    .line 155
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const-string v1, "ABC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "123"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "angra_literal_key"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 157
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x3

    if-le v1, v4, :cond_2

    const/high16 v1, 0x41200000    # 10.0f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x41800000    # 16.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 158
    const-string v1, "enviar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    goto :goto_1

    :cond_3
    const/16 v4, 0x1c

    const/16 v5, 0x18

    invoke-static {v5, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 159
    const-string v4, "sans-serif-medium"

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setGravity(I)V

    .line 160
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 161
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const p3, 0x7f080195

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    const p3, 0x7f080196

    goto :goto_2

    :cond_5
    const p3, 0x7f080194

    :goto_2
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 163
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x421c0000    # 39.0f

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result v1

    invoke-direct {p3, v2, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 164
    invoke-direct {p0, p2}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result p2

    invoke-virtual {p3, v1, v2, p2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    const-string/jumbo p2, "\u21e7"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 166
    iget-boolean p3, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mShift:Z

    if-eqz p3, :cond_6

    const-string/jumbo p2, "\u21ea"

    :cond_6
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-boolean p2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mShift:Z

    if-eqz p2, :cond_7

    const-string p2, "Caps Lock ligado"

    goto :goto_3

    :cond_7
    const-string p2, "Caps Lock desligado"

    :goto_3
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 168
    iget-boolean p2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mShift:Z

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setSelected(Z)V

    .line 169
    iget-boolean p2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mShift:Z

    if-eqz p2, :cond_a

    const p2, -0x8c4001    # -3.239993E38f

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/high16 p2, -0x1000000

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_5

    .line 170
    :cond_8
    iget-boolean p2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mSymbols:Z

    if-nez p2, :cond_a

    iget-boolean p2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mEmoji:Z

    if-nez p2, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v3, :cond_a

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isLetter(C)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 171
    iget-boolean p2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mShift:Z

    if-eqz p2, :cond_9

    const-string p2, "pt-BR"

    invoke-static {p2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_9
    move-object p2, p1

    :goto_4
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/CustomKeyboard;->accentOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 173
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_a

    new-instance p3, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, v0, p2}, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda7;-><init>(Lcom/xyron/game/main/ui/CustomKeyboard;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 179
    :cond_a
    :goto_5
    new-instance p2, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1}, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda8;-><init>(Lcom/xyron/game/main/ui/CustomKeyboard;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private moveHistory(I)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mCurrentHistoryMessage:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mCurrentHistoryMessage:I

    .line 216
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputHistory:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private rebuildKeys()V
    .locals 15

    .line 113
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mKeysContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 114
    iget-boolean v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mEmoji:Z

    const-string v1, "ABC"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 115
    const-string/jumbo v12, "\u2764\ufe0f"

    const-string/jumbo v13, "\ud83d\udd25"

    const-string/jumbo v4, "\ud83d\ude00"

    const-string/jumbo v5, "\ud83d\ude02"

    const-string/jumbo v6, "\ud83d\ude0d"

    const-string/jumbo v7, "\ud83d\ude0e"

    const-string/jumbo v8, "\ud83d\ude22"

    const-string/jumbo v9, "\ud83d\ude21"

    const-string/jumbo v10, "\ud83e\udd14"

    const-string/jumbo v11, "\ud83d\udc4d"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->addRow([Ljava/lang/String;Z)V

    .line 116
    const-string/jumbo v12, "\u2b50"

    const-string/jumbo v13, "\ud83d\udc80"

    const-string/jumbo v4, "\ud83c\udf89"

    const-string/jumbo v5, "\ud83d\ude4f"

    const-string/jumbo v6, "\ud83d\udc40"

    const-string/jumbo v7, "\ud83d\udcaa"

    const-string/jumbo v8, "\u2705"

    const-string/jumbo v9, "\u274c"

    const-string/jumbo v10, "\ud83d\ude97"

    const-string/jumbo v11, "\ud83d\udcb0"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->addRow([Ljava/lang/String;Z)V

    .line 117
    const-string v0, "?"

    const-string/jumbo v4, "\u232b"

    const-string v5, "_"

    const-string v6, "!"

    filled-new-array {v1, v5, v6, v0, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/xyron/game/main/ui/CustomKeyboard;->addRow([Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mSymbols:Z

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mMoreSymbols:Z

    if-eqz v4, :cond_1

    .line 119
    const-string v13, "*"

    const-string v14, "\\"

    const-string v5, "["

    const-string v6, "]"

    const-string/jumbo v7, "{"

    const-string/jumbo v8, "}"

    const-string v9, "<"

    const-string v10, ">"

    const-string v11, "="

    const-string v12, "+"

    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->addRow([Ljava/lang/String;Z)V

    .line 120
    const-string/jumbo v12, "\u00a7"

    const-string/jumbo v13, "\u00a9"

    const-string/jumbo v4, "~"

    const-string v5, "`"

    const-string v6, "^"

    const-string/jumbo v7, "|"

    const-string/jumbo v8, "\u20ac"

    const-string/jumbo v9, "\u00a3"

    const-string/jumbo v10, "\u00a5"

    const-string/jumbo v11, "\u00b0"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->addRow([Ljava/lang/String;Z)V

    .line 121
    const-string v11, "/"

    const-string/jumbo v12, "\u232b"

    const-string v4, "123"

    const-string v5, "_"

    const-string v6, "$"

    const-string v7, "&"

    const-string v8, "@"

    const-string v9, "#"

    const-string v10, "%"

    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/xyron/game/main/ui/CustomKeyboard;->addRow([Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 123
    const-string v12, "9"

    const-string v13, "0"

    const-string v4, "1"

    const-string v5, "2"

    const-string v6, "3"

    const-string v7, "4"

    const-string v8, "5"

    const-string v9, "6"

    const-string v10, "7"

    const-string v11, "8"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->addRow([Ljava/lang/String;Z)V

    .line 124
    const-string v12, "@"

    const-string v13, "\""

    const-string v4, "-"

    const-string v5, "/"

    const-string v6, ":"

    const-string v7, ";"

    const-string v8, "("

    const-string v9, ")"

    const-string v10, "R$"

    const-string v11, "&"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->addRow([Ljava/lang/String;Z)V

    .line 125
    const-string v11, "%"

    const-string/jumbo v12, "\u232b"

    const-string v4, "#+="

    const-string v5, "_"

    const-string v6, ","

    const-string v7, "?"

    const-string v8, "!"

    const-string v9, "\'"

    const-string v10, "#"

    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/xyron/game/main/ui/CustomKeyboard;->addRow([Ljava/lang/String;Z)V

    goto :goto_0

    .line 127
    :cond_2
    const-string v12, "o"

    const-string v13, "p"

    const-string v4, "q"

    const-string v5, "w"

    const-string v6, "e"

    const-string v7, "r"

    const-string v8, "t"

    const-string/jumbo v9, "y"

    const-string v10, "u"

    const-string v11, "i"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->addRow([Ljava/lang/String;Z)V

    .line 128
    const-string v12, "l"

    const-string/jumbo v13, "\u00e7"

    const-string v4, "a"

    const-string v5, "s"

    const-string v6, "d"

    const-string v7, "f"

    const-string v8, "g"

    const-string v9, "h"

    const-string v10, "j"

    const-string v11, "k"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->addRow([Ljava/lang/String;Z)V

    .line 129
    const-string v11, "m"

    const-string/jumbo v12, "\u232b"

    const-string/jumbo v4, "\u21e7"

    const-string/jumbo v5, "z"

    const-string/jumbo v6, "x"

    const-string v7, "c"

    const-string v8, "v"

    const-string v9, "b"

    const-string v10, "n"

    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/xyron/game/main/ui/CustomKeyboard;->addRow([Ljava/lang/String;Z)V

    .line 131
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    .line 132
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {p0, v4}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result v6

    invoke-direct {p0, v4}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result v7

    invoke-direct {p0, v4}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result v4

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 133
    iget-boolean v4, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mSymbols:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "123"

    :goto_1
    const/high16 v4, 0x3fa00000    # 1.25f

    invoke-direct {p0, v1, v4, v2}, Lcom/xyron/game/main/ui/CustomKeyboard;->makeKey(Ljava/lang/String;FZ)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    const-string/jumbo v1, "\u263a"

    const v4, 0x3f59999a    # 0.85f

    invoke-direct {p0, v1, v4, v2}, Lcom/xyron/game/main/ui/CustomKeyboard;->makeKey(Ljava/lang/String;FZ)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    const-string v1, ","

    const v4, 0x3f3851ec    # 0.72f

    invoke-direct {p0, v1, v4, v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->makeKey(Ljava/lang/String;FZ)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    const-string/jumbo v1, "\u2190"

    const v5, 0x3f333333    # 0.7f

    invoke-direct {p0, v1, v5, v2}, Lcom/xyron/game/main/ui/CustomKeyboard;->makeKey(Ljava/lang/String;FZ)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    const-string v1, "espa\u00e7o"

    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {p0, v1, v6, v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->makeKey(Ljava/lang/String;FZ)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    const-string/jumbo v1, "\u2192"

    invoke-direct {p0, v1, v5, v2}, Lcom/xyron/game/main/ui/CustomKeyboard;->makeKey(Ljava/lang/String;FZ)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    const-string v1, "."

    invoke-direct {p0, v1, v4, v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->makeKey(Ljava/lang/String;FZ)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    const-string v1, "enviar"

    const v3, 0x3fb9999a    # 1.45f

    invoke-direct {p0, v1, v3, v2}, Lcom/xyron/game/main/ui/CustomKeyboard;->makeKey(Ljava/lang/String;FZ)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mKeysContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x422c0000    # 43.0f

    invoke-direct {p0, v3}, Lcom/xyron/game/main/ui/CustomKeyboard;->dp(F)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private submitInput()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 270
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mContext:Landroid/app/Activity;

    check-cast v1, Lcom/xyron/game/main/ui/CustomKeyboard$InputListener;

    invoke-interface {v1, v0}, Lcom/xyron/game/main/ui/CustomKeyboard$InputListener;->OnInputEnd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public HideInputLayout()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->trackSystemIme:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mContext:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 250
    :cond_1
    iput v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mCurrentHistoryMessage:I

    .line 251
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mSavedInput:Ljava/lang/String;

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    :cond_3
    iput-boolean v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mIsShowing:Z

    return-void
.end method

.method public IsShowing()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mIsShowing:Z

    return v0
.end method

.method public ShowInputLayout()V
    .locals 3

    .line 232
    iget-boolean v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mIsShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mIsShowing:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mCurrentHistoryMessage:I

    .line 234
    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mSavedInput:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->applyBottomOffset()V

    .line 236
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->trackSystemIme:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->systemKeyboard:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->trackSystemIme:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    new-instance v1, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda6;-><init>(Lcom/xyron/game/main/ui/CustomKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$ShowInputLayout$9$com-xyron-game-main-ui-CustomKeyboard()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 239
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mContext:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 241
    iget-boolean v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->systemKeyboard:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$makeKey$6$com-xyron-game-main-ui-CustomKeyboard(Landroid/view/MenuItem;)Z
    .locals 0

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/CustomKeyboard;->insertText(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$makeKey$7$com-xyron-game-main-ui-CustomKeyboard(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View;)Z
    .locals 4

    .line 174
    new-instance p3, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mContext:Landroid/app/Activity;

    invoke-direct {p3, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 175
    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mShift:Z

    if-eqz v3, :cond_0

    const-string v3, "pt-BR"

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v2, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    new-instance p1, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/ui/CustomKeyboard$$ExternalSyntheticLambda9;-><init>(Lcom/xyron/game/main/ui/CustomKeyboard;)V

    invoke-virtual {p3, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {p3}, Landroid/widget/PopupMenu;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$makeKey$8$com-xyron-game-main-ui-CustomKeyboard(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/CustomKeyboard;->handleKey(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$new$0$com-xyron-game-main-ui-CustomKeyboard(Landroid/view/View;)V
    .locals 0

    .line 91
    const-string p1, "/"

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/CustomKeyboard;->insertText(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$new$1$com-xyron-game-main-ui-CustomKeyboard(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, -0x1

    .line 92
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/CustomKeyboard;->moveHistory(I)V

    return-void
.end method

.method synthetic lambda$new$2$com-xyron-game-main-ui-CustomKeyboard(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    .line 93
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/CustomKeyboard;->moveHistory(I)V

    return-void
.end method

.method synthetic lambda$new$3$com-xyron-game-main-ui-CustomKeyboard(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->submitInput()V

    return-void
.end method

.method synthetic lambda$new$4$com-xyron-game-main-ui-CustomKeyboard(Landroid/view/View;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->binderAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$5$com-xyron-game-main-ui-CustomKeyboard(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    if-eqz p3, :cond_0

    .line 100
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 102
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->submitInput()V

    const/4 p1, 0x1

    return p1
.end method

.method public onHeightChanged(I)V
    .locals 2

    const/4 v0, 0x0

    .line 220
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->keyboardHeight:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->keyboardHeight:I

    iget-boolean v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mIsShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->systemKeyboard:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "imeHeight="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AngraKeyboard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->applyBottomOffset()V

    return-void
.end method

.method public openCommandDraft(Ljava/lang/String;)V
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->ShowInputLayout()V

    .line 224
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setBinderAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->binderAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setSystemKeyboard(Z)V
    .locals 2

    .line 62
    iput-boolean p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->systemKeyboard:Z

    .line 63
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    .line 64
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mKeysContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    invoke-direct {p0}, Lcom/xyron/game/main/ui/CustomKeyboard;->applyBottomOffset()V

    .line 66
    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->trackSystemIme:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mIsShowing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->mInputLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/xyron/game/main/ui/CustomKeyboard;->trackSystemIme:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
