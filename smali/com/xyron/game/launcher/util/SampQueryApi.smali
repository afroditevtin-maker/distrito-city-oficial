.class public Lcom/xyron/game/launcher/util/SampQueryApi;
.super Ljava/lang/Object;
.source "SampQueryApi.java"


# static fields
.field private static final DEFAULT_PING_ATTEMPTS:I = 0x1

.field private static final MAX_PACKET_SIZE:I = 0xc00


# instance fields
.field private final f:Ljava/util/Random;

.field private isValidAddr:Z

.field private serveraddress:Ljava/lang/String;

.field private serverip:Ljava/net/InetAddress;

.field private final serverport:I

.field private socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/16 v0, 0x384

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/xyron/game/launcher/util/SampQueryApi;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->f:Ljava/util/Random;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->isValidAddr:Z

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->serveraddress:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->serverip:Ljava/net/InetAddress;

    .line 24
    iput-object v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->socket:Ljava/net/DatagramSocket;

    const/4 v0, 0x0

    .line 32
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->serverip:Ljava/net/InetAddress;

    .line 34
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->serveraddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    iput-boolean v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->isValidAddr:Z

    .line 39
    :goto_0
    :try_start_1
    new-instance p1, Ljava/net/DatagramSocket;

    invoke-direct {p1}, Ljava/net/DatagramSocket;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->socket:Ljava/net/DatagramSocket;

    const/16 v1, 0x32

    .line 41
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 43
    :catch_1
    iput-boolean v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->isValidAddr:Z

    .line 45
    :goto_1
    iput p2, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->serverport:I

    return-void
.end method

.method private convert(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-ltz p2, :cond_0

    .line 207
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 211
    new-array p2, p2, [B

    .line 212
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 213
    new-instance p1, Ljava/lang/String;

    const-string/jumbo v0, "windows-1251"

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1

    .line 208
    :cond_0
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    const-string p2, "Invalid SA:MP string size"

    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initPacket(Ljava/lang/String;)Ljava/net/DatagramPacket;
    .locals 4

    const-string v0, "SAMPzalupa"

    .line 50
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "windows-1251"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 51
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->serveraddress:Ljava/lang/String;

    const-string v2, "."

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, p1, v2

    .line 53
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, p1, v2

    .line 54
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, p1, v2

    .line 55
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, 0x7

    aput-byte v0, p1, v1

    .line 56
    iget v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->serverport:I

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    const/16 v2, 0x8

    .line 57
    aput-byte v1, p1, v2

    shr-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v1, 0x9

    .line 58
    aput-byte v0, p1, v1

    .line 59
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p1

    iget-object v2, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->serverip:Ljava/net/InetAddress;

    iget v3, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->serverport:I

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isValidHeader([BC)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 195
    array-length v1, p1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    aget-byte v1, p1, v0

    const/16 v2, 0x53

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    const/16 v3, 0x41

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_1

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_1

    const/16 v2, 0xa

    aget-byte p1, p1, v2

    int-to-byte p2, p2

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private isValidPingResponse([B[B)Z
    .locals 4

    const/16 v0, 0x70

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/xyron/game/launcher/util/SampQueryApi;->isValidHeader([BC)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, p1

    const/16 v2, 0xf

    if-lt v0, v2, :cond_0

    const/16 v0, 0xb

    aget-byte v0, p1, v0

    aget-byte v2, p2, v1

    if-ne v0, v2, :cond_0

    const/16 v0, 0xc

    aget-byte v0, p1, v0

    const/4 v2, 0x1

    aget-byte v3, p2, v2

    if-ne v0, v3, :cond_0

    const/16 v0, 0xd

    aget-byte v0, p1, v0

    const/4 v3, 0x2

    aget-byte v3, p2, v3

    if-ne v0, v3, :cond_0

    const/16 v0, 0xe

    aget-byte p1, p1, v0

    const/4 v0, 0x3

    aget-byte p2, p2, v0

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private measureSinglePingMs()J
    .locals 8

    const-string v0, "p"

    const-wide/16 v1, -0x1

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/util/SampQueryApi;->f()[B

    move-result-object v3

    .line 219
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 220
    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "windows-1251"

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/util/SampQueryApi;->initPacket(Ljava/lang/String;)Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/util/SampQueryApi;->sendPacket(Ljava/net/DatagramPacket;)V

    .line 221
    invoke-direct {p0}, Lcom/xyron/game/launcher/util/SampQueryApi;->receiveData()[B

    move-result-object v0

    .line 222
    invoke-direct {p0, v0, v3}, Lcom/xyron/game/launcher/util/SampQueryApi;->isValidPingResponse([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    return-wide v1

    .line 225
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    long-to-double v3, v6

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v5

    .line 226
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-wide v1
.end method

.method private receiveData()[B
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->socket:Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 70
    :cond_0
    new-instance v0, Ljava/net/DatagramPacket;

    const/16 v2, 0xc00

    new-array v3, v2, [B

    invoke-direct {v0, v3, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 73
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    new-array v2, v2, [B

    .line 74
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v1
.end method

.method private sendPacket(Ljava/net/DatagramPacket;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    return-void
.end method

.method public e()J
    .locals 2

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/util/SampQueryApi;->measurePingMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method f()[B
    .locals 3

    const/4 v0, 0x4

    .line 176
    new-array v0, v0, [B

    .line 177
    iget-object v1, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->f:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/4 v1, 0x0

    .line 178
    aget-byte v2, v0, v1

    rem-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x6e

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 179
    aget-byte v2, v0, v1

    rem-int/lit8 v2, v2, -0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 180
    aget-byte v2, v0, v1

    rem-int/lit8 v2, v2, -0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 181
    aget-byte v2, v0, v1

    rem-int/lit8 v2, v2, 0x32

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getInfo()[Ljava/lang/String;
    .locals 9

    .line 120
    iget-boolean v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->isValidAddr:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    :try_start_0
    const-string v0, "i"

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/util/SampQueryApi;->initPacket(Ljava/lang/String;)Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/util/SampQueryApi;->sendPacket(Ljava/net/DatagramPacket;)V

    .line 126
    invoke-direct {p0}, Lcom/xyron/game/launcher/util/SampQueryApi;->receiveData()[B

    move-result-object v0

    const/16 v2, 0x69

    .line 127
    invoke-direct {p0, v0, v2}, Lcom/xyron/game/launcher/util/SampQueryApi;->isValidHeader([BC)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 132
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 133
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v2, 0xb

    .line 134
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0"

    goto :goto_0

    :cond_2
    const-string v2, "1"

    :goto_0
    move-object v3, v2

    .line 136
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/xyron/game/launcher/util/SampQueryApi;->convert(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/xyron/game/launcher/util/SampQueryApi;->convert(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/xyron/game/launcher/util/SampQueryApi;->convert(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_3
    :goto_1
    return-object v1
.end method

.method public isOnline()Z
    .locals 5

    const-string v0, "p"

    .line 103
    iget-boolean v1, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->isValidAddr:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->socket:Ljava/net/DatagramSocket;

    if-nez v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/util/SampQueryApi;->f()[B

    move-result-object v1

    .line 109
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "windows-1251"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/util/SampQueryApi;->initPacket(Ljava/lang/String;)Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/util/SampQueryApi;->sendPacket(Ljava/net/DatagramPacket;)V

    .line 111
    invoke-direct {p0}, Lcom/xyron/game/launcher/util/SampQueryApi;->receiveData()[B

    move-result-object v0

    .line 112
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/launcher/util/SampQueryApi;->isValidPingResponse([B[B)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    :goto_0
    return v2
.end method

.method public measurePingMs(I)J
    .locals 11

    .line 152
    iget-boolean v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->isValidAddr:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xyron/game/launcher/util/SampQueryApi;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 156
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    move-wide v6, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 161
    invoke-direct {p0}, Lcom/xyron/game/launcher/util/SampQueryApi;->measureSinglePingMs()J

    move-result-wide v8

    cmp-long v10, v8, v3

    if-ltz v10, :cond_1

    add-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    return-wide v1

    :cond_3
    long-to-double v0, v6

    int-to-double v2, v5

    div-double/2addr v0, v2

    .line 172
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0

    :cond_4
    :goto_1
    return-wide v1
.end method
