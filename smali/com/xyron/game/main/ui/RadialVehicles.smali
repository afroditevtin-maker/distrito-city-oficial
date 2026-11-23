.class public Lcom/xyron/game/main/ui/RadialVehicles;
.super Ljava/lang/Object;
.source "RadialVehicles.java"


# static fields
.field public static menuVisibleV:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private mRadialMenu:Lcom/xyron/game/main/ui/RadialMenu;

.field private radialLayout:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method native sendCommandV([B)V
.end method

.method public show()V
    .locals 2

    .line 22
    const-string v0, "/mv"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/ui/RadialVehicles;->sendCommandV([B)V

    return-void
.end method
