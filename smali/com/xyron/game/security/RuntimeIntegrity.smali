.class final Lcom/xyron/game/security/RuntimeIntegrity;
.super Ljava/lang/Object;
.source "RuntimeIntegrity.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static matches(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 12
    const-string v1, "[0-9a-f]{64}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 13
    :cond_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 14
    new-array v2, v2, [B

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-lez v3, :cond_1

    invoke-virtual {v1, v2, v0, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/16 v1, 0x20

    .line 17
    new-array v2, v1, [B

    :goto_1
    if-ge v0, v1, :cond_3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 18
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {p0, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0

    return p0

    :cond_4
    :goto_2
    return v0
.end method
