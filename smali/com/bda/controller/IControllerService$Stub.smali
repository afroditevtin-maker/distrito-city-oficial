.class public abstract Lcom/bda/controller/IControllerService$Stub;
.super Landroid/os/Binder;
.source "IControllerService.java"

# interfaces
.implements Lcom/bda/controller/IControllerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/IControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/IControllerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.bda.controller.IControllerService"

.field static final TRANSACTION_allowNewConnections:I = 0xc

.field static final TRANSACTION_disallowNewConnections:I = 0xd

.field static final TRANSACTION_getAxisValue:I = 0x7

.field static final TRANSACTION_getInfo:I = 0x5

.field static final TRANSACTION_getKeyCode:I = 0x6

.field static final TRANSACTION_getKeyCode2:I = 0xb

.field static final TRANSACTION_getState:I = 0x8

.field static final TRANSACTION_isAllowingNewConnections:I = 0xe

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_registerListener2:I = 0xa

.field static final TRANSACTION_registerMonitor:I = 0x3

.field static final TRANSACTION_sendMessage:I = 0x9

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_unregisterMonitor:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p0, p0, v0}, Lcom/bda/controller/IControllerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    const-string v0, "com.bda.controller.IControllerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    instance-of v1, v0, Lcom/bda/controller/IControllerService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/bda/controller/IControllerService;

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/bda/controller/IControllerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/bda/controller/IControllerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    .line 39
    const-string v2, "com.bda.controller.IControllerService"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 186
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/bda/controller/IControllerService$Stub;->isAllowingNewConnections()Z

    move-result p1

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 179
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/bda/controller/IControllerService$Stub;->disallowNewConnections()V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 172
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/bda/controller/IControllerService$Stub;->allowNewConnections()V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 160
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/bda/controller/IControllerService$Stub;->getKeyCode2(II)I

    move-result p1

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 149
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/bda/controller/IControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerListener;

    move-result-object p1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/bda/controller/IControllerService$Stub;->registerListener2(Lcom/bda/controller/IControllerListener;I)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 138
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/bda/controller/IControllerService$Stub;->sendMessage(II)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 126
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/bda/controller/IControllerService$Stub;->getState(II)I

    move-result p1

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 114
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/bda/controller/IControllerService$Stub;->getAxisValue(II)F

    move-result p1

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v1

    .line 102
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/bda/controller/IControllerService$Stub;->getKeyCode(II)I

    move-result p1

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 92
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/bda/controller/IControllerService$Stub;->getInfo(I)I

    move-result p1

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 81
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/bda/controller/IControllerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerMonitor;

    move-result-object p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/bda/controller/IControllerService$Stub;->unregisterMonitor(Lcom/bda/controller/IControllerMonitor;I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 70
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/bda/controller/IControllerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerMonitor;

    move-result-object p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/bda/controller/IControllerService$Stub;->registerMonitor(Lcom/bda/controller/IControllerMonitor;I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 59
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/bda/controller/IControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerListener;

    move-result-object p1

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/bda/controller/IControllerService$Stub;->unregisterListener(Lcom/bda/controller/IControllerListener;I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 48
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/bda/controller/IControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerListener;

    move-result-object p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/bda/controller/IControllerService$Stub;->registerListener(Lcom/bda/controller/IControllerListener;I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 43
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
