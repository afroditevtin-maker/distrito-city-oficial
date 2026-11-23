.class public final Lcom/xyron/game/launcher/util/ResourceCacheProfile;
.super Ljava/lang/Object;
.source "ResourceCacheProfile.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collect(Ljava/io/File;Ljava/io/File;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/ResourceCacheProfile;->requireContained(Ljava/io/File;Ljava/io/File;)V

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc

    if-gt p3, v0, :cond_6

    .line 128
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_6

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 132
    invoke-static {p0, v2}, Lcom/xyron/game/launcher/util/ResourceCacheProfile;->requireContained(Ljava/io/File;Ljava/io/File;)V

    .line 133
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Lcom/xyron/game/launcher/util/ResourceCacheProfile;->collect(Ljava/io/File;Ljava/io/File;Ljava/util/List;I)V

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 136
    const-string v4, ".ide"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".ipl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    .line 130
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "cannot list definitions"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "resource directory bounds"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$prepare$0(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 27
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$prepare$1(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 47
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static prepare(Ljava/io/File;)Ljava/lang/String;
    .locals 24

    if-nez p0, :cond_0

    .line 14
    const-string v0, "ARMAZENAMENTO DO JOGO INDISPONIVEL"

    return-object v0

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/io/File;

    const-string v2, "SAMP/gta.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return-object v3

    .line 19
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v4, ".angra-resource-profile"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v4, 0x100000

    .line 20
    invoke-static {v1, v4}, Lcom/xyron/game/launcher/util/ResourceCacheProfile;->readSmall(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x5c

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const-string v5, "maps/arcadia/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    .line 23
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Ljava/io/File;

    const-string v5, "data"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Lcom/xyron/game/launcher/util/ResourceCacheProfile;->collect(Ljava/io/File;Ljava/io/File;Ljava/util/List;I)V

    .line 26
    new-instance v1, Ljava/io/File;

    const-string v6, "SAMP"

    invoke-direct {v1, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1, v4, v5}, Lcom/xyron/game/launcher/util/ResourceCacheProfile;->collect(Ljava/io/File;Ljava/io/File;Ljava/util/List;I)V

    .line 27
    new-instance v1, Lcom/xyron/game/launcher/util/ResourceCacheProfile$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/xyron/game/launcher/util/ResourceCacheProfile$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 28
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/16 v6, 0x2000

    .line 30
    new-array v7, v6, [B

    .line 31
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v10, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, -0x1

    const/4 v14, 0x1

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 32
    invoke-static {v0, v12}, Lcom/xyron/game/launcher/util/ResourceCacheProfile;->requireContained(Ljava/io/File;Ljava/io/File;)V

    .line 33
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v15

    const-wide/32 v17, 0x800000

    cmp-long v19, v15, v17

    if-gtz v19, :cond_4

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v15

    add-long/2addr v10, v15

    const-wide/32 v15, 0x4000000

    cmp-long v17, v10, v15

    if-gtz v17, :cond_4

    .line 35
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v14, v16, 0x1

    invoke-virtual {v15, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 36
    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update(B)V

    .line 37
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_1
    :try_start_1
    invoke-virtual {v14, v7}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-eq v12, v13, :cond_3

    invoke-virtual {v1, v7, v5, v12}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 40
    :cond_3
    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 41
    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update(B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 37
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    .line 34
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "resource definitions too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_5
    new-instance v4, Ljava/io/File;

    const-string v10, "texdb"

    invoke-direct {v4, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const/4 v10, 0x2

    if-eqz v4, :cond_c

    .line 47
    new-instance v11, Lcom/xyron/game/launcher/util/ResourceCacheProfile$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Lcom/xyron/game/launcher/util/ResourceCacheProfile$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v4, v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 48
    array-length v11, v4

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_c

    aget-object v15, v4, v12

    .line 49
    invoke-virtual {v15}, Ljava/io/File;->isFile()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v13, ".img"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_6

    .line 50
    :cond_6
    invoke-static {v0, v15}, Lcom/xyron/game/launcher/util/ResourceCacheProfile;->requireContained(Ljava/io/File;Ljava/io/File;)V

    .line 51
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v13, "r"

    invoke-direct {v3, v15, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v13, 0x8

    .line 52
    :try_start_5
    new-array v6, v13, [B

    invoke-virtual {v3, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 53
    aget-byte v8, v6, v5

    const/16 v9, 0x56

    if-ne v8, v9, :cond_a

    aget-byte v8, v6, v14

    const/16 v9, 0x45

    if-ne v8, v9, :cond_a

    aget-byte v8, v6, v10

    const/16 v9, 0x52

    if-ne v8, v9, :cond_a

    const/4 v8, 0x3

    aget-byte v8, v6, v8

    const/16 v9, 0x32

    if-ne v8, v9, :cond_a

    const/4 v8, 0x4

    .line 55
    aget-byte v8, v6, v8

    int-to-long v8, v8

    const-wide/16 v20, 0xff

    and-long v8, v8, v20

    const/16 v22, 0x5

    aget-byte v10, v6, v22

    move-object/from16 v23, v15

    int-to-long v14, v10

    and-long v14, v14, v20

    shl-long v13, v14, v13

    or-long/2addr v8, v13

    const/4 v10, 0x6

    aget-byte v10, v6, v10

    int-to-long v13, v10

    and-long v13, v13, v20

    const/16 v10, 0x10

    shl-long/2addr v13, v10

    or-long/2addr v8, v13

    const/4 v10, 0x7

    aget-byte v10, v6, v10

    int-to-long v13, v10

    and-long v13, v13, v20

    const/16 v10, 0x18

    shl-long/2addr v13, v10

    or-long/2addr v8, v13

    const-wide/16 v13, 0x20

    mul-long v13, v13, v8

    const-wide/32 v20, 0x186a0

    cmp-long v10, v8, v20

    if-gtz v10, :cond_9

    const-wide/16 v8, 0x8

    add-long/2addr v8, v13

    .line 58
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v20

    cmp-long v10, v8, v20

    if-gtz v10, :cond_9

    .line 59
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 61
    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    :goto_4
    const-wide/16 v8, 0x0

    cmp-long v6, v13, v8

    if-lez v6, :cond_8

    const/16 v6, 0x2000

    int-to-long v8, v6

    .line 63
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v9, v8

    invoke-virtual {v3, v7, v5, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v8

    if-ltz v8, :cond_7

    .line 65
    invoke-virtual {v1, v7, v5, v8}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v8, v8

    sub-long/2addr v13, v8

    goto :goto_4

    .line 64
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "short image index"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_8
    const/16 v6, 0x2000

    .line 67
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    .line 58
    :cond_9
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "image index bounds"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported image index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 51
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1

    :cond_b
    :goto_6
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v13, -0x1

    const/4 v14, 0x1

    goto/16 :goto_3

    .line 70
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    array-length v4, v1

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v4, :cond_d

    aget-byte v8, v1, v6

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v10, "%02x"

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v8, v12, v5

    invoke-static {v9, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 72
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "angra-map-cache-v1:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lcom/xyron/game/launcher/util/ResourceCacheProfile;->readSmall(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    return-object v3

    .line 75
    :cond_e
    new-instance v3, Ljava/io/File;

    const-string v4, ".angra-cache-backups/current"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    const-string v4, "CINFO.BIN"

    const-string v6, "models/ARINFO.BIN"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x2

    :goto_8
    if-ge v6, v8, :cond_15

    aget-object v9, v4, v6

    .line 80
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    invoke-static {v0, v10}, Lcom/xyron/game/launcher/util/ResourceCacheProfile;->requireContained(Ljava/io/File;Ljava/io/File;)V

    .line 82
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_f

    const/4 v13, -0x1

    goto :goto_b

    .line 83
    :cond_f
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 84
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    invoke-static {v0, v11}, Lcom/xyron/game/launcher/util/ResourceCacheProfile;->requireContained(Ljava/io/File;Ljava/io/File;)V

    .line 86
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 87
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_11

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_9

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot preserve cache"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_11
    :goto_9
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 89
    :goto_a
    :try_start_b
    invoke-virtual {v9, v7}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_12

    invoke-virtual {v12, v7, v5, v11}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_a

    .line 90
    :cond_12
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/FileDescriptor;->sync()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 91
    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 92
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_13

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot quarantine cache"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_0

    :catchall_4
    move-exception v0

    move-object v1, v0

    .line 88
    :try_start_e
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_10
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_11
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v1

    .line 83
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cache path is not a file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_15
    invoke-static {v0, v2}, Lcom/xyron/game/launcher/util/ResourceCacheProfile;->requireContained(Ljava/io/File;Ljava/io/File;)V

    .line 97
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_0

    .line 98
    :try_start_12
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 100
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_13} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catchall_8
    move-exception v0

    move-object v1, v0

    .line 97
    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception v0

    move-object v2, v0

    :try_start_15
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_15} :catch_0

    .line 103
    :catch_0
    const-string v0, "NAO FOI POSSIVEL PREPARAR O CACHE DO NOVO MAPA. Os arquivos originais foram preservados; verifique o armazenamento."

    return-object v0
.end method

.method private static readSmall(Ljava/io/File;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p1

    const-string v4, "oversize profile"

    cmp-long v5, v0, v2

    if-gtz v5, :cond_2

    .line 114
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0x1000

    .line 115
    :try_start_1
    new-array v1, v1, [B

    .line 117
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 118
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, p1, :cond_0

    const/4 v3, 0x0

    .line 119
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 114
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    .line 113
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static requireContained(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "resource path leaves data root"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
