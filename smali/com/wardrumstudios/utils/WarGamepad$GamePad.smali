.class public Lcom/wardrumstudios/utils/WarGamepad$GamePad;
.super Ljava/lang/Object;
.source "WarGamepad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wardrumstudios/utils/WarGamepad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GamePad"
.end annotation


# instance fields
.field public final GamepadAxes:[F

.field public GamepadButtonMask:I

.field public GamepadType:I

.field public active:Z

.field public deviceId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 19
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 22
    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    .line 23
    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->deviceId:I

    return-void
.end method
