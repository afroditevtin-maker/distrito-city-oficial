.class public Lcom/wardrumstudios/utils/WarGamepad;
.super Lcom/wardrumstudios/utils/WarBilling;
.source "WarGamepad.java"

# interfaces
.implements Lcom/bda/controller/ControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    }
.end annotation


# static fields
.field private static final MAX_GAME_PADS:I = 0x4


# instance fields
.field public final GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarBilling;-><init>()V

    const/4 v0, 0x4

    .line 16
    new-array v0, v0, [Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    return-void
.end method

.method private static buttonMaskForKey(I)I
    .locals 2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_7

    const/16 v1, 0x60

    if-eq p0, v1, :cond_6

    const/16 v1, 0x61

    if-eq p0, v1, :cond_5

    const/16 v1, 0x63

    if-eq p0, v1, :cond_4

    const/16 v0, 0x64

    if-eq p0, v0, :cond_3

    const/16 v0, 0x66

    if-eq p0, v0, :cond_2

    const/16 v0, 0x67

    if-eq p0, v0, :cond_1

    const/16 v0, 0x6c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_7

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x800

    return p0

    :pswitch_1
    const/16 p0, 0x400

    return p0

    :pswitch_2
    const/16 p0, 0x200

    return p0

    :pswitch_3
    const/16 p0, 0x100

    return p0

    :cond_0
    const/16 p0, 0x10

    return p0

    :cond_1
    const/16 p0, 0x80

    return p0

    :cond_2
    const/16 p0, 0x40

    return p0

    :cond_3
    const/16 p0, 0x8

    return p0

    :cond_4
    return v0

    :cond_5
    const/4 p0, 0x2

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    const/16 p0, 0x20

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static cleanAxis(F)F
    .locals 2

    .line 166
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private getGamePad(I)Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    .locals 2

    if-ltz p1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getOrCreateGamePad(I)Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    .locals 6

    .line 178
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 179
    iget-boolean v5, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->deviceId:I

    if-ne v5, p1, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 185
    iget-boolean v4, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    .line 187
    iput p1, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->deviceId:I

    const/4 p1, 0x5

    .line 188
    iput p1, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private static isGamepadEvent(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0x401

    const/16 v1, 0x401

    if-eq v0, v1, :cond_1

    const v0, 0x1000010

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateButtonMask(ILandroid/view/KeyEvent;Z)V
    .locals 1

    if-eqz p2, :cond_4

    .line 107
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarGamepad;->isGamepadEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {p1}, Lcom/wardrumstudios/utils/WarGamepad;->buttonMaskForKey(I)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 116
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getOrCreateGamePad(I)Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    if-eqz p3, :cond_3

    .line 122
    iget p3, p2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    or-int/2addr p1, p3

    iput p1, p2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    goto :goto_0

    .line 124
    :cond_3
    iget p3, p2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    not-int p1, p1

    and-int/2addr p1, p3

    iput p1, p2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public GamepadReportSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public GetGamepadAxis(II)F
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->getGamePad(I)Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    .line 66
    iget-object v0, p1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    array-length v0, v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    aget p1, p1, p2

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public GetGamepadButtons(I)I
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->getGamePad(I)Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 61
    :cond_0
    iget p1, p1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    :goto_0
    return p1
.end method

.method public GetGamepadTrack(III)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public GetGamepadType(I)I
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->getGamePad(I)Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 56
    :cond_0
    iget p1, p1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    :goto_0
    return p1
.end method

.method public InitMogaController(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public SetGamepad(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public SetReportPS3As360(Z)V
    .locals 0

    return-void
.end method

.method public TouchpadEvent(IIIIII)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 29
    new-instance v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    invoke-direct {v2}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarGamepad;->isGamepadEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wardrumstudios/utils/WarGamepad;->getOrCreateGamePad(I)Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad;->cleanAxis(F)F

    move-result v3

    aput v3, v1, v2

    .line 83
    iget-object v1, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad;->cleanAxis(F)F

    move-result v3

    aput v3, v1, v2

    .line 84
    iget-object v1, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarGamepad;->cleanAxis(F)F

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 85
    iget-object v1, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarGamepad;->cleanAxis(F)F

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 86
    iget-object v1, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarGamepad;->cleanAxis(F)F

    move-result v2

    const/4 v3, 0x4

    aput v2, v1, v3

    .line 87
    iget-object v0, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v1}, Lcom/wardrumstudios/utils/WarGamepad;->cleanAxis(F)F

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lcom/wardrumstudios/utils/WarGamepad;->updateButtonMask(ILandroid/view/KeyEvent;Z)V

    .line 97
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarBilling;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyEvent(Lcom/bda/controller/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/wardrumstudios/utils/WarGamepad;->updateButtonMask(ILandroid/view/KeyEvent;Z)V

    .line 103
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarBilling;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onStateEvent(Lcom/bda/controller/StateEvent;)V
    .locals 0

    return-void
.end method

.method public native processTouchpadAsPointer(Landroid/view/ViewParent;Z)Z
.end method
