.class public final Lcom/xyron/game/launcher/util/SAMPServerInfo;
.super Ljava/lang/Object;
.source "SAMPServerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/util/SAMPServerInfo$Status;,
        Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;,
        Lcom/xyron/game/launcher/util/SAMPServerInfo$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/xyron/game/launcher/util/SAMPServerInfo$CREATOR;


# instance fields
.field private address:Ljava/lang/String;

.field private currentPlayerCount:I

.field private favorite:Z

.field private hasPassword:Z

.field private id:I

.field private language:Ljava/lang/String;

.field private maxPlayerCount:I

.field private ping:I

.field private port:I

.field private projId:I

.field private queryed:Z

.field private serverMode:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private serverStatus:Lcom/xyron/game/launcher/util/SAMPServerInfo$Status;

.field private type:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/xyron/game/launcher/util/SAMPServerInfo$CREATOR;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/SAMPServerInfo$CREATOR;-><init>()V

    sput-object v0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->CREATOR:Lcom/xyron/game/launcher/util/SAMPServerInfo$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/4 v10, 0x0

    .line 75
    const-string v11, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "206.0.29.168"

    const/16 v5, 0x1b59

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/xyron/game/launcher/util/SAMPServerInfo;-><init>(IILjava/lang/String;Ljava/lang/String;IIIIIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;IIIIIILjava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->projId:I

    .line 53
    iput p2, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->id:I

    const/4 p2, 0x0

    .line 55
    iput-boolean p2, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->queryed:Z

    .line 56
    iput-object p4, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->address:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->serverName:Ljava/lang/String;

    .line 58
    iput p5, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->port:I

    .line 59
    iput p6, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->currentPlayerCount:I

    .line 60
    iput p7, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->maxPlayerCount:I

    const/4 p3, 0x1

    if-eqz p8, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 61
    :goto_0
    iput-boolean p4, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->hasPassword:Z

    .line 62
    const-string p4, "Android"

    iput-object p4, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->serverMode:Ljava/lang/String;

    .line 63
    iput-object p11, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->language:Ljava/lang/String;

    if-eqz p9, :cond_1

    .line 64
    sget-object p4, Lcom/xyron/game/launcher/util/SAMPServerInfo$Status;->ONLINE:Lcom/xyron/game/launcher/util/SAMPServerInfo$Status;

    goto :goto_1

    :cond_1
    sget-object p4, Lcom/xyron/game/launcher/util/SAMPServerInfo$Status;->OFFLINE:Lcom/xyron/game/launcher/util/SAMPServerInfo$Status;

    :goto_1
    iput-object p4, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->serverStatus:Lcom/xyron/game/launcher/util/SAMPServerInfo$Status;

    .line 65
    iput p3, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->ping:I

    if-eqz p10, :cond_2

    const/4 p2, 0x1

    .line 66
    :cond_2
    iput-boolean p2, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->favorite:Z

    if-nez p1, :cond_3

    .line 67
    sget-object p1, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;->OFFICIAL:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    goto :goto_2

    :cond_3
    if-ne p1, p3, :cond_4

    sget-object p1, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;->HOSTED:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;->CUSTOM:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    :goto_2
    iput-object p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->type:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 12

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/xyron/game/launcher/util/SAMPServerInfo;-><init>(IILjava/lang/String;Ljava/lang/String;IIIIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentPlayerCount()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->currentPlayerCount:I

    return v0
.end method

.method public final getFavorite()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->favorite:Z

    return v0
.end method

.method public final getHasPassword()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->hasPassword:Z

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->id:I

    return v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxPlayerCount()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->maxPlayerCount:I

    return v0
.end method

.method public final getPing()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->ping:I

    return v0
.end method

.method public final getPort()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->port:I

    return v0
.end method

.method public final getProjId()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->projId:I

    return v0
.end method

.method public final getQueried()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->queryed:Z

    return v0
.end method

.method public final getServerMode()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->serverMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerName()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerStatus()Lcom/xyron/game/launcher/util/SAMPServerInfo$Status;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->serverStatus:Lcom/xyron/game/launcher/util/SAMPServerInfo$Status;

    return-object v0
.end method

.method public final getType()Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->type:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    return-object v0
.end method

.method public final json()Ljava/lang/String;
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "address : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n port : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setAddress(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->address:Ljava/lang/String;

    return-void
.end method

.method public final setCurrentPlayerCount(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->currentPlayerCount:I

    return-void
.end method

.method public final setFavorite(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->favorite:Z

    return-void
.end method

.method public final setHasPassword(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->hasPassword:Z

    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->id:I

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->language:Ljava/lang/String;

    return-void
.end method

.method public final setMaxPlayerCount(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->maxPlayerCount:I

    return-void
.end method

.method public final setPing(I)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->ping:I

    return-void
.end method

.method public final setPort(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->port:I

    return-void
.end method

.method public final setProjId(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->projId:I

    return-void
.end method

.method public final setQueried(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->queryed:Z

    return-void
.end method

.method public final setServerMode(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->serverMode:Ljava/lang/String;

    return-void
.end method

.method public final setServerName(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->serverName:Ljava/lang/String;

    return-void
.end method

.method public final setServerStatus(Lcom/xyron/game/launcher/util/SAMPServerInfo$Status;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->serverStatus:Lcom/xyron/game/launcher/util/SAMPServerInfo$Status;

    return-void
.end method

.method public final setType(Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->type:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 199
    iget p2, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->id:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object p2, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget p2, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->port:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-boolean p2, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->hasPassword:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget p2, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->currentPlayerCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget p2, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->maxPlayerCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object p2, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->serverName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object p2, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->serverMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object p2, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->serverStatus:Lcom/xyron/game/launcher/util/SAMPServerInfo$Status;

    invoke-virtual {p2}, Lcom/xyron/game/launcher/util/SAMPServerInfo$Status;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget p2, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->ping:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object p2, p0, Lcom/xyron/game/launcher/util/SAMPServerInfo;->type:Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;

    invoke-virtual {p2}, Lcom/xyron/game/launcher/util/SAMPServerInfo$Official;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
