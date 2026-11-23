.class final Lcom/xyron/game/main/PanelTextCodec;
.super Ljava/lang/Object;
.source "PanelTextCodec.java"


# static fields
.field private static final LEGACY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x100

    .line 10
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-byte v3, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "windows-1252"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xyron/game/main/PanelTextCodec;->LEGACY:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    .line 12
    const-string v0, ""

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x5dc0

    if-le v1, v3, :cond_0

    goto/16 :goto_9

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    div-int/2addr v1, v3

    new-array v4, v1, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_3

    mul-int/lit8 v7, v6, 0x2

    .line 14
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-ltz v8, :cond_2

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    shl-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    .line 15
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_10

    .line 16
    aget-byte v6, v4, v0

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x80

    if-ge v6, v7, :cond_4

    int-to-char v6, v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/16 v8, 0xc2

    const/16 v9, 0xf4

    const/16 v10, 0xf0

    const/16 v11, 0xe0

    if-lt v6, v8, :cond_5

    const/16 v8, 0xdf

    if-gt v6, v8, :cond_5

    const/4 v8, 0x2

    goto :goto_4

    :cond_5
    if-lt v6, v11, :cond_6

    const/16 v8, 0xef

    if-gt v6, v8, :cond_6

    const/4 v8, 0x3

    goto :goto_4

    :cond_6
    if-lt v6, v10, :cond_7

    if-gt v6, v9, :cond_7

    const/4 v8, 0x4

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    :goto_4
    if-lez v8, :cond_8

    add-int v12, v0, v8

    if-gt v12, v1, :cond_8

    const/4 v12, 0x1

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_a

    const/4 v13, 0x1

    :goto_6
    if-ge v13, v8, :cond_a

    add-int v14, v0, v13

    .line 19
    aget-byte v14, v4, v14

    and-int/lit16 v14, v14, 0xc0

    if-eq v14, v7, :cond_9

    const/4 v12, 0x0

    goto :goto_7

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    if-eqz v12, :cond_e

    add-int/lit8 v7, v0, 0x1

    .line 20
    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v13, 0xa0

    if-ne v6, v11, :cond_b

    if-lt v7, v13, :cond_f

    :cond_b
    const/16 v11, 0xed

    if-ne v6, v11, :cond_c

    if-ge v7, v13, :cond_f

    :cond_c
    const/16 v11, 0x90

    if-ne v6, v10, :cond_d

    if-lt v7, v11, :cond_f

    :cond_d
    if-ne v6, v9, :cond_e

    if-lt v7, v11, :cond_e

    goto :goto_8

    :cond_e
    if-eqz v12, :cond_f

    .line 21
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v0, v8, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v8

    goto :goto_2

    :cond_f
    :goto_8
    sget-object v7, Lcom/xyron/game/main/PanelTextCodec;->LEGACY:[C

    aget-char v6, v7, v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 23
    :cond_10
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    :goto_9
    return-object v0
.end method
