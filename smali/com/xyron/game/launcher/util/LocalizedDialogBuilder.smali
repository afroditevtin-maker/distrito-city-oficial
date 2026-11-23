.class public final Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "LocalizedDialogBuilder.java"


# instance fields
.field private final languageContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->languageContext:Landroid/content/Context;

    return-void
.end method

.method private tr(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->languageContext:Landroid/content/Context;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public create()Landroidx/appcompat/app/AlertDialog;
    .locals 2

    .line 22
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method synthetic lambda$create$0$com-xyron-game-launcher-util-LocalizedDialogBuilder(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 22
    iget-object p2, p0, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->languageContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->attach(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;
    .locals 3

    .line 21
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->tr(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public bridge synthetic setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setMessage(I)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(I)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->languageContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->tr(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public bridge synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->languageContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->tr(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public bridge synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->languageContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->tr(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->languageContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->tr(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setTitle(I)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(I)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->languageContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->tr(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method
