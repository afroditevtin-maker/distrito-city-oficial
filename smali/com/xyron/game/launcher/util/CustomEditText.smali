.class public Lcom/xyron/game/launcher/util/CustomEditText;
.super Landroid/widget/EditText;
.source "CustomEditText.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object p1, p0, Lcom/xyron/game/launcher/util/CustomEditText;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p0}, Lcom/xyron/game/launcher/util/CustomEditText;->getImeOptions()I

    move-result p1

    const/high16 p2, 0x12000000

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/CustomEditText;->setImeOptions(I)V

    return-void
.end method


# virtual methods
.method public SetBackListener(Landroid/content/Context;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/xyron/game/launcher/util/CustomEditText;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/xyron/game/launcher/util/CustomEditText;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/xyron/game/main/SAMP;

    if-eqz v1, :cond_0

    .line 29
    check-cast v0, Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->onEventBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 32
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
