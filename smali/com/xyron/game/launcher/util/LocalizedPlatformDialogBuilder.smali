.class public final Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "LocalizedPlatformDialogBuilder.java"


# instance fields
.field private final languageContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->languageContext:Landroid/content/Context;

    return-void
.end method

.method private tr(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->languageContext:Landroid/content/Context;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 2

    .line 22
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method synthetic lambda$create$0$com-xyron-game-launcher-util-LocalizedPlatformDialogBuilder(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 22
    iget-object p2, p0, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->languageContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->attach(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;
    .locals 3

    .line 21
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->tr(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, v0, p2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public bridge synthetic setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setMessage(I)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(I)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->languageContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->tr(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public bridge synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->languageContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->tr(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public bridge synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->languageContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->tr(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->languageContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->tr(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setTitle(I)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(I)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->languageContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/util/LocalizedPlatformDialogBuilder;->tr(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method
