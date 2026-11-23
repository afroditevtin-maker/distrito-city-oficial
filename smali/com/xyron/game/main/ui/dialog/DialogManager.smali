.class public Lcom/xyron/game/main/ui/dialog/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# instance fields
.field public final DIALOG_STYLE_INPUT:I

.field public final DIALOG_STYLE_LIST:I

.field public final DIALOG_STYLE_MSGBOX:I

.field public final DIALOG_STYLE_PASSWORD:I

.field public final DIALOG_STYLE_TABLIST:I

.field public final DIALOG_STYLE_TABLIST_HEADERS:I

.field private activity:Landroid/app/Activity;

.field public isShow:Z

.field public mAnimBtn:Landroid/view/animation/Animation;

.field private mAnimHide:Landroid/view/animation/Animation;

.field private mAnimShow:Landroid/view/animation/Animation;

.field private mButtonNegative:Ljava/lang/String;

.field private mButtonPositive:Ljava/lang/String;

.field private mCaption:Ljava/lang/String;

.field private mCurrentDialogId:I

.field public mCurrentInputtext:Ljava/lang/String;

.field public mCurrentListitem:I

.field public mDialogBody:Landroid/view/View;

.field private mDialogButtonNegative:Landroid/view/View;

.field private mDialogButtonNegativeText:Landroid/widget/TextView;

.field private mDialogButtonPositive:Landroid/view/View;

.field private mDialogButtonPositiveText:Landroid/widget/TextView;

.field private mDialogCaption:Landroid/widget/TextView;

.field private mDialogInput:Landroid/widget/EditText;

.field private mDialogInputLayout:Landroid/view/View;

.field public mDialogList:Landroid/view/View;

.field public mDialogListLayout:Landroid/view/View;

.field public mDialogListRecycler:Lcom/xyron/game/launcher/util/CustomRecyclerView;

.field public mDialogStyle:I

.field public final mDialogTabField:[Landroid/widget/TextView;

.field private mDialogTabListRow:Landroid/view/View;

.field private mDialogText:Landroid/widget/TextView;

.field private mDialogTextLayout:Landroid/view/View;

.field public mListAdapter:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

.field public mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mRowsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTabSizes:[I

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->activity:Landroid/app/Activity;

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 89
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->DIALOG_STYLE_MSGBOX:I

    const/4 v1, 0x1

    .line 92
    iput v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->DIALOG_STYLE_INPUT:I

    const/4 v3, 0x2

    .line 93
    iput v3, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->DIALOG_STYLE_LIST:I

    const/4 v4, 0x3

    .line 94
    iput v4, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->DIALOG_STYLE_PASSWORD:I

    const/4 v5, 0x4

    .line 95
    iput v5, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->DIALOG_STYLE_TABLIST:I

    const/4 v6, 0x5

    .line 96
    iput v6, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->DIALOG_STYLE_TABLIST_HEADERS:I

    .line 97
    new-array v5, v5, [Landroid/widget/TextView;

    iput-object v5, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTabField:[Landroid/widget/TextView;

    .line 98
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mRowsList:Ljava/util/ArrayList;

    .line 99
    iput p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCurrentDialogId:I

    .line 100
    iput p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogStyle:I

    .line 101
    const-string v6, ""

    iput-object v6, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCaption:Ljava/lang/String;

    .line 102
    iput-object v6, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mText:Ljava/lang/String;

    .line 103
    iput-object v6, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mButtonPositive:Ljava/lang/String;

    .line 104
    iput-object v6, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mButtonNegative:Ljava/lang/String;

    .line 105
    iput v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCurrentListitem:I

    .line 106
    iput-object v6, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCurrentInputtext:Ljava/lang/String;

    .line 107
    filled-new-array {p1, p1, p1, p1}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mTabSizes:[I

    .line 109
    iput-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0106

    .line 110
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogBody:Landroid/view/View;

    const v2, 0x7f0a012e

    .line 111
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTextLayout:Landroid/view/View;

    const v2, 0x7f0a0121

    .line 112
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInputLayout:Landroid/view/View;

    const v2, 0x7f0a0123

    .line 113
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListLayout:Landroid/view/View;

    const v2, 0x7f0a012c

    .line 114
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTabListRow:Landroid/view/View;

    const v2, 0x7f0a0122

    .line 115
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogList:Landroid/view/View;

    const v2, 0x7f0a0109

    .line 116
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogCaption:Landroid/widget/TextView;

    const v2, 0x7f0a012d

    .line 117
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogText:Landroid/widget/TextView;

    const v2, 0x7f0a0120

    .line 118
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInput:Landroid/widget/EditText;

    const v2, 0x7f0a010b

    .line 119
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v5, p1

    const v2, 0x7f0a010c

    .line 120
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v5, v1

    const v1, 0x7f0a010d

    .line 121
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v5, v3

    const v1, 0x7f0a010e

    .line 122
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v5, v4

    const v1, 0x7f0a0124

    .line 123
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xyron/game/launcher/util/CustomRecyclerView;

    iput-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListRecycler:Lcom/xyron/game/launcher/util/CustomRecyclerView;

    const v1, 0x7f0a00b8

    .line 124
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogButtonPositive:Landroid/view/View;

    const v1, 0x7f0a00b5

    .line 125
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogButtonNegative:Landroid/view/View;

    const v1, 0x7f0a00b9

    .line 126
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogButtonPositiveText:Landroid/widget/TextView;

    const v1, 0x7f0a00b6

    .line 127
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogButtonNegativeText:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->activity:Landroid/app/Activity;

    const v1, 0x7f01002c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mAnimBtn:Landroid/view/animation/Animation;

    .line 130
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->activity:Landroid/app/Activity;

    const v1, 0x7f01001e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mAnimShow:Landroid/view/animation/Animation;

    .line 131
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->activity:Landroid/app/Activity;

    const v1, 0x7f01001c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mAnimHide:Landroid/view/animation/Animation;

    .line 133
    iput-boolean p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->isShow:Z

    .line 134
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, p1}, Lcom/xyron/game/launcher/util/Util;->HideLayout(Landroid/view/View;Z)V

    .line 135
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1, v0}, Lcom/xyron/game/launcher/util/Util;->scaleViewAndChildren(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method private native setDialogVisible(Z)V
.end method


# virtual methods
.method public Hide()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->activity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 195
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[Hide] closed input"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    :cond_0
    iput-boolean v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->isShow:Z

    .line 199
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/xyron/game/launcher/util/Util;->HideLayout(Landroid/view/View;Z)V

    .line 200
    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/dialog/DialogManager;->setDialogVisible(Z)V

    return-void
.end method

.method public SendDialogResponse(IILjava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 229
    iget v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p2, 0x0

    .line 236
    :cond_1
    :try_start_0
    const-string/jumbo v0, "windows-1251"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    .line 238
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/dialog/DialogManager;->Hide()V

    .line 239
    iget v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCurrentDialogId:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/xyron/game/main/ui/dialog/DialogManager;->sendDialogResponse(III[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 241
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public clearDialogData()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mRowsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 261
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    .line 262
    iput v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCurrentListitem:I

    .line 263
    iput-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCurrentInputtext:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mTabSizes:[I

    const/4 v1, 0x0

    .line 265
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 266
    aput v1, v0, v2

    const/4 v2, 0x2

    .line 267
    aput v1, v0, v2

    const/4 v2, 0x3

    .line 268
    aput v1, v0, v2

    return-void
.end method

.method public hideWithoutReset()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$show$0$com-xyron-game-main-ui-dialog-DialogManager()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 184
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->activity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInput:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public loadButtons()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogButtonPositive:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogButtonNegative:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogButtonPositiveText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mButtonPositive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogButtonNegativeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mButtonNegative:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogButtonPositive:Landroid/view/View;

    new-instance v1, Lcom/xyron/game/main/ui/dialog/DialogManager$2;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/ui/dialog/DialogManager$2;-><init>(Lcom/xyron/game/main/ui/dialog/DialogManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mButtonNegative:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogButtonNegative:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogButtonNegative:Landroid/view/View;

    new-instance v1, Lcom/xyron/game/main/ui/dialog/DialogManager$3;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/ui/dialog/DialogManager$3;-><init>(Lcom/xyron/game/main/ui/dialog/DialogManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    :goto_0
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInput:Landroid/widget/EditText;

    new-instance v1, Lcom/xyron/game/main/ui/dialog/DialogManager$4;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/ui/dialog/DialogManager$4;-><init>(Lcom/xyron/game/main/ui/dialog/DialogManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public loadDialog()V
    .locals 0

    .line 252
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/dialog/DialogManager;->clearDialogData()V

    .line 253
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/dialog/DialogManager;->loadDialogData()V

    .line 254
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/dialog/DialogManager;->loadButtons()V

    .line 255
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/dialog/DialogManager;->loadRecycler()V

    .line 256
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/dialog/DialogManager;->loadSizes()V

    return-void
.end method

.method public loadDialogData()V
    .locals 13

    .line 272
    iget v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogStyle:I

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/ui/dialog/DialogManager;->setDialogStyle(I)V

    .line 273
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogCaption:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCaption:Ljava/lang/String;

    invoke-static {v1}, Lcom/xyron/game/launcher/util/Util;->getColoredString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogStyle:I

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mText:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 281
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_2

    :goto_1
    add-int/lit8 v4, v2, 0x1

    .line 285
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_1

    goto :goto_2

    .line 288
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mText:Ljava/lang/String;

    .line 294
    :cond_4
    iput v3, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCurrentListitem:I

    .line 295
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mText:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 296
    :goto_3
    array-length v5, v0

    if-ge v4, v5, :cond_e

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-nez v4, :cond_7

    .line 297
    iget v7, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogStyle:I

    if-ne v7, v5, :cond_7

    .line 298
    aget-object v5, v0, v4

    const-string v7, "\t"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 299
    array-length v7, v5

    if-le v7, v6, :cond_5

    const/4 v7, 0x4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_d

    if-gt v7, v8, :cond_6

    .line 305
    iget-object v9, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTabField:[Landroid/widget/TextView;

    aget-object v9, v9, v8

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 307
    :cond_6
    iget-object v9, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTabField:[Landroid/widget/TextView;

    aget-object v9, v9, v8

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v9, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mTabSizes:[I

    aget-object v10, v5, v8

    invoke-static {v10}, Lcom/xyron/game/launcher/util/Util;->getColoredString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTabField:[Landroid/widget/TextView;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xyron/game/launcher/util/Util;->getTextWidth(Ljava/lang/String;Landroid/text/TextPaint;)I

    move-result v10

    iget-object v11, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->activity:Landroid/app/Activity;

    const/high16 v12, 0x42000000    # 32.0f

    invoke-static {v11, v12}, Lcom/xyron/game/launcher/util/Util;->scale(Landroid/app/Activity;F)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    aput v10, v9, v8

    .line 309
    iget-object v9, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTabField:[Landroid/widget/TextView;

    aget-object v9, v9, v8

    aget-object v10, v5, v8

    invoke-static {v10}, Lcom/xyron/game/launcher/util/Util;->getColoredString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    if-ne v4, v1, :cond_8

    .line 313
    iget v7, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogStyle:I

    if-eq v7, v5, :cond_9

    :cond_8
    if-nez v4, :cond_c

    .line 314
    :cond_9
    aget-object v7, v0, v4

    invoke-static {v7}, Lcom/xyron/game/launcher/util/Util;->getStringWithoutColors(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 315
    iget v8, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogStyle:I

    if-eq v8, v5, :cond_a

    if-ne v8, v6, :cond_b

    .line 317
    :cond_a
    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v7, v5, v3

    .line 319
    :cond_b
    iput-object v7, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCurrentInputtext:Ljava/lang/String;

    .line 321
    :cond_c
    iget-object v5, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mRowsList:Ljava/util/ArrayList;

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_e
    return-void

    .line 276
    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mText:Ljava/lang/String;

    invoke-static {v1}, Lcom/xyron/game/launcher/util/Util;->getColoredString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public loadRecycler()V
    .locals 12

    .line 442
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListRecycler:Lcom/xyron/game/launcher/util/CustomRecyclerView;

    invoke-virtual {v0}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 445
    iget-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListRecycler:Lcom/xyron/game/launcher/util/CustomRecyclerView;

    invoke-virtual {v2, v0}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListRecycler:Lcom/xyron/game/launcher/util/CustomRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->activity:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 448
    iget-object v6, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mRowsList:Ljava/util/ArrayList;

    .line 449
    iget-object v7, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->activity:Landroid/app/Activity;

    .line 450
    iget-object v8, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mAnimShow:Landroid/view/animation/Animation;

    .line 451
    iget-object v9, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mAnimHide:Landroid/view/animation/Animation;

    .line 452
    iget-object v10, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mAnimBtn:Landroid/view/animation/Animation;

    .line 453
    iget v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogStyle:I

    .line 454
    new-instance v2, Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v11, 0x1

    :goto_1
    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/xyron/game/main/ui/dialog/DialogAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Z)V

    iput-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mListAdapter:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    .line 455
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListRecycler:Lcom/xyron/game/launcher/util/CustomRecyclerView;

    invoke-virtual {v0, v2}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 457
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mListAdapter:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    new-instance v1, Lcom/xyron/game/main/ui/dialog/DialogManager$5;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/ui/dialog/DialogManager$5;-><init>(Lcom/xyron/game/main/ui/dialog/DialogManager;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->setOnClickListener(Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnClickListener;)V

    .line 465
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mListAdapter:Lcom/xyron/game/main/ui/dialog/DialogAdapter;

    new-instance v1, Lcom/xyron/game/main/ui/dialog/DialogManager$6;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/ui/dialog/DialogManager$6;-><init>(Lcom/xyron/game/main/ui/dialog/DialogManager;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->setOnDoubleClickListener(Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnDoubleClickListener;)V

    return-void
.end method

.method public loadSizes()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    .line 328
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 329
    iget-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogList:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 331
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 332
    iget-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogList:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListRecycler:Lcom/xyron/game/launcher/util/CustomRecyclerView;

    invoke-virtual {v0}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 334
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 335
    iget-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListRecycler:Lcom/xyron/game/launcher/util/CustomRecyclerView;

    invoke-virtual {v1, v0}, Lcom/xyron/game/launcher/util/CustomRecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogBody:Landroid/view/View;

    new-instance v1, Lcom/xyron/game/main/ui/dialog/DialogManager$1;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/ui/dialog/DialogManager$1;-><init>(Lcom/xyron/game/main/ui/dialog/DialogManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHeightChanged(I)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 205
    iget v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x96

    if-gt p1, v0, :cond_1

    .line 210
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTextLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v0, -0x2

    .line 211
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 212
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTextLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    .line 214
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 215
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTextLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 219
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->activity:Landroid/app/Activity;

    const/high16 v1, 0x42d00000    # 104.0f

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/Util;->scale(Landroid/app/Activity;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 220
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTextLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x31

    .line 222
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 223
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public native sendDialogResponse(III[B)V
.end method

.method public setDialogStyle(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 405
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTextLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInputLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 410
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTextLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInputLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInput:Landroid/widget/EditText;

    const v0, 0x80041

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 413
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 416
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTextLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInputLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTabListRow:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 422
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTextLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInputLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInput:Landroid/widget/EditText;

    const v0, 0x80081

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 425
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 428
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTextLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInputLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTabListRow:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    .line 434
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTextLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInputLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogListLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 437
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTabListRow:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public show(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCurrentDialogId:I

    .line 150
    iput p2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogStyle:I

    .line 151
    iput-object p3, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mCaption:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mText:Ljava/lang/String;

    .line 153
    iput-object p5, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mButtonPositive:Ljava/lang/String;

    .line 154
    iput-object p6, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mButtonNegative:Ljava/lang/String;

    .line 156
    const-string p1, ""

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mText:Ljava/lang/String;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mText:Ljava/lang/String;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTextLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 p2, -0x2

    .line 160
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 161
    iget-object p2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogTextLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x11

    .line 163
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    iget-object p2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/dialog/DialogManager;->loadDialog()V

    .line 167
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xyron/game/launcher/util/Util;->ShowLayout(Landroid/view/View;Z)V

    .line 168
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p3, 0x469c4000    # 20000.0f

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setElevation(F)V

    .line 169
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->bringToFront()V

    .line 170
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestFocus()Z

    .line 171
    iput-boolean p2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->isShow:Z

    .line 172
    invoke-direct {p0, p2}, Lcom/xyron/game/main/ui/dialog/DialogManager;->setDialogVisible(Z)V

    .line 181
    iget p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogStyle:I

    iget p2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->DIALOG_STYLE_INPUT:I

    if-eq p1, p2, :cond_1

    iget p2, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->DIALOG_STYLE_PASSWORD:I

    if-ne p1, p2, :cond_2

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mDialogInput:Landroid/widget/EditText;

    new-instance p2, Lcom/xyron/game/main/ui/dialog/DialogManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/xyron/game/main/ui/dialog/DialogManager$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/ui/dialog/DialogManager;)V

    const-wide/16 p3, 0xc8

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public showWithOldContent()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x469c4000    # 20000.0f

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setElevation(F)V

    .line 145
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogManager;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->bringToFront()V

    return-void
.end method
