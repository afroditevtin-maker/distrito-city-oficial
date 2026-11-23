.class public Lcom/xyron/game/main/ui/Radinho;
.super Ljava/lang/Object;
.source "Radinho.java"


# static fields
.field private static radinhoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public static radinhoVisible:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private mRadialMenu:Lcom/xyron/game/main/ui/RadialMenu;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xyron/game/main/ui/Radinho;->activity:Landroid/app/Activity;

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0089

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a02e6

    .line 28
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    sput-object p1, Lcom/xyron/game/main/ui/Radinho;->radinhoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    .line 29
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 32
    sput-boolean p1, Lcom/xyron/game/main/ui/Radinho;->radinhoVisible:Z

    .line 35
    sget-object v0, Lcom/xyron/game/main/ui/Radinho;->radinhoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, p1}, Lcom/xyron/game/launcher/util/Util;->HideLayout(Landroid/view/View;Z)V

    return-void
.end method

.method public static RadioNaTela()V
    .locals 2

    .line 47
    sget-boolean v0, Lcom/xyron/game/main/ui/Radinho;->radinhoVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/xyron/game/main/ui/Radinho;->radinhoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/Util;->HideLayout(Landroid/view/View;Z)V

    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lcom/xyron/game/main/ui/Radinho;->radinhoVisible:Z

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lcom/xyron/game/main/ui/Radinho;->radinhoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/Util;->ShowLayout(Landroid/view/View;Z)V

    .line 55
    sput-boolean v1, Lcom/xyron/game/main/ui/Radinho;->radinhoVisible:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 60
    sget-boolean v0, Lcom/xyron/game/main/ui/Radinho;->radinhoVisible:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/xyron/game/main/ui/Radinho;->radinhoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/Util;->HideLayout(Landroid/view/View;Z)V

    const/4 v0, 0x0

    .line 63
    sput-boolean v0, Lcom/xyron/game/main/ui/Radinho;->radinhoVisible:Z

    :cond_0
    return-void
.end method

.method native sendCommandV([B)V
.end method

.method public show()V
    .locals 2

    .line 39
    sget-boolean v0, Lcom/xyron/game/main/ui/Radinho;->radinhoVisible:Z

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/xyron/game/main/ui/Radinho;->radinhoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/Util;->ShowLayout(Landroid/view/View;Z)V

    .line 42
    sput-boolean v1, Lcom/xyron/game/main/ui/Radinho;->radinhoVisible:Z

    :cond_0
    return-void
.end method
