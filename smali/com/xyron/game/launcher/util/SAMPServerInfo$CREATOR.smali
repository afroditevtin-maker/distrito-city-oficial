.class public final Lcom/xyron/game/launcher/util/SAMPServerInfo$CREATOR;
.super Ljava/lang/Object;
.source "SAMPServerInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/SAMPServerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xyron/game/launcher/util/SAMPServerInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xyron/game/launcher/util/SAMPServerInfo;
    .locals 1

    .line 42
    new-instance v0, Lcom/xyron/game/launcher/util/SAMPServerInfo;

    invoke-direct {v0, p1}, Lcom/xyron/game/launcher/util/SAMPServerInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/SAMPServerInfo$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/xyron/game/launcher/util/SAMPServerInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xyron/game/launcher/util/SAMPServerInfo;
    .locals 0

    .line 47
    new-array p1, p1, [Lcom/xyron/game/launcher/util/SAMPServerInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/SAMPServerInfo$CREATOR;->newArray(I)[Lcom/xyron/game/launcher/util/SAMPServerInfo;

    move-result-object p1

    return-object p1
.end method
