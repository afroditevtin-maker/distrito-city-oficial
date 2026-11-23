.class public Lcom/wardrumstudios/utils/WarBase;
.super Lcom/nvidia/devtech/NvEventQueueActivity;
.source "WarBase.java"


# instance fields
.field public FinalRelease:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarBase;->FinalRelease:Z

    return-void
.end method


# virtual methods
.method public SetGamepad(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public USBDeviceAttached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public USBDeviceDetached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
