.class public final Lcom/xyron/game/launcher/util/CollisionArchivePacker;
.super Ljava/lang/Object;
.source "CollisionArchivePacker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;
    }
.end annotation


# static fields
.field private static final ANGRA_INTERIOR_PREFIX:Ljava/lang/String; = "int_la_angra_"

.field private static final MAX_COLLISION_GROUPS:I = 0x20

.field private static final SECTOR:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collisionCount(Ljava/io/File;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lcom/xyron/game/launcher/util/CollisionArchivePacker;->entries(Ljava/io/RandomAccessFile;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;

    iget-object v2, v2, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;->name:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".col"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return v1

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private static entries(Ljava/io/RandomAccessFile;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Ljava/util/List<",
            "Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const v1, 0x56455232

    if-ne v0, v1, :cond_5

    .line 32
    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/CollisionArchivePacker;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    const-wide/32 v2, 0x186a0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    const-wide/16 v2, 0x20

    mul-long v2, v2, v0

    const-wide/16 v4, 0x8

    add-long/2addr v4, v2

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_4

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    int-to-long v7, v6

    cmp-long v9, v7, v0

    if-gez v9, :cond_3

    .line 35
    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/CollisionArchivePacker;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v7

    const-wide/16 v9, 0x800

    mul-long v7, v7, v9

    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/CollisionArchivePacker;->u16(Ljava/io/RandomAccessFile;)I

    move-result v11

    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/CollisionArchivePacker;->u16(Ljava/io/RandomAccessFile;)I

    move-result v12

    const/16 v13, 0x18

    new-array v14, v13, [B

    move-object/from16 v15, p0

    invoke-virtual {v15, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v13, :cond_0

    .line 36
    aget-byte v10, v14, v9

    if-eqz v10, :cond_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 37
    :cond_0
    new-instance v10, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v10, v14, v5, v9, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    if-nez v11, :cond_1

    move v11, v12

    .line 39
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    const-wide/16 v12, 0x807

    add-long/2addr v12, v2

    const-wide/16 v16, 0x800

    div-long v12, v12, v16

    mul-long v12, v12, v16

    cmp-long v9, v7, v12

    if-ltz v9, :cond_2

    if-eqz v11, :cond_2

    int-to-long v12, v11

    mul-long v12, v12, v16

    add-long/2addr v12, v7

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v16

    cmp-long v9, v12, v16

    if-gtz v9, :cond_2

    .line 40
    new-instance v9, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;

    mul-int/lit16 v11, v11, 0x800

    invoke-direct {v9, v10, v7, v8, v11}, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;-><init>(Ljava/lang/String;JI)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 39
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "IMG entry invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v4

    .line 32
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "IMG directory invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "IMG signature invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$pack$0(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 59
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static orderDefinitions(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v2, "\\r?\\n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, p0, v3

    .line 12
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 13
    const-string v7, "IPL "

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x1

    .line 14
    :cond_0
    const-string v7, "IDE "

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0xa

    if-nez v6, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 14
    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pack(Ljava/io/File;Ljava/io/File;)I
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 50
    :try_start_1
    invoke-static {v1}, Lcom/xyron/game/launcher/util/CollisionArchivePacker;->entries(Ljava/io/RandomAccessFile;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;

    .line 54
    iget-object v11, v8, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;->name:Ljava/lang/String;

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 55
    const-string v12, ".col"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_0
    const-string v12, "int_la_angra_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 59
    new-instance v12, Lcom/xyron/game/launcher/util/CollisionArchivePacker$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Lcom/xyron/game/launcher/util/CollisionArchivePacker$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v5, v11, v12}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v11, v4

    .line 60
    :goto_1
    iget-wide v12, v8, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;->offset:J

    iget-wide v14, v8, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;->offset:J

    iget v9, v8, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;->bytes:I

    int-to-long v9, v9

    add-long/2addr v14, v9

    :goto_2
    cmp-long v9, v12, v14

    if-gez v9, :cond_8

    .line 62
    invoke-virtual {v1, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    if-nez v9, :cond_4

    .line 64
    invoke-virtual {v1, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v8, 0x800

    new-array v9, v8, [B

    :cond_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    cmp-long v12, v10, v14

    if-gez v12, :cond_8

    int-to-long v10, v8

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    sub-long v12, v14, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v11, v10

    invoke-virtual {v1, v9, v6, v11}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v11, :cond_2

    aget-byte v12, v9, v10

    if-nez v12, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Nonzero COL padding"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const v10, 0x434f4c4c

    if-eq v9, v10, :cond_6

    const v10, 0x434f4c32

    if-eq v9, v10, :cond_6

    const v10, 0x434f4c33

    if-eq v9, v10, :cond_6

    const v10, 0x434f4c34

    if-ne v9, v10, :cond_5

    goto :goto_4

    .line 66
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown COL chunk in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_6
    :goto_4
    invoke-static {v1}, Lcom/xyron/game/launcher/util/CollisionArchivePacker;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v9

    const-wide/16 v16, 0x8

    add-long v9, v9, v16

    const-wide/16 v16, 0x20

    cmp-long v18, v9, v16

    if-ltz v18, :cond_7

    const-wide/32 v16, 0x7fffffff

    cmp-long v18, v9, v16

    if-gtz v18, :cond_7

    add-long v16, v12, v9

    cmp-long v18, v16, v14

    if-gtz v18, :cond_7

    .line 69
    new-instance v6, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;->name:Ljava/lang/String;

    long-to-int v10, v9

    invoke-direct {v6, v0, v12, v13, v10}, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;-><init>(Ljava/lang/String;JI)V

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v12, v16

    move-object/from16 v0, v19

    const/4 v6, 0x0

    goto/16 :goto_2

    .line 68
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v3, "COL chunk truncated"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v19, v0

    move-object/from16 v0, v19

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_9
    if-eqz v7, :cond_15

    .line 74
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    if-ltz v0, :cond_14

    if-nez v0, :cond_a

    .line 75
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 76
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 77
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v5

    const/16 v9, 0x30

    if-gt v8, v9, :cond_13

    const-wide/16 v9, 0x0

    .line 80
    invoke-virtual {v2, v9, v10}, Ljava/io/RandomAccessFile;->setLength(J)V

    const v9, 0x56455232

    invoke-virtual {v2, v9}, Ljava/io/RandomAccessFile;->writeInt(I)V

    int-to-long v9, v8

    invoke-static {v2, v9, v10}, Lcom/xyron/game/launcher/util/CollisionArchivePacker;->w32(Ljava/io/RandomAccessFile;J)V

    mul-int/lit8 v9, v8, 0x20

    int-to-long v9, v9

    const-wide/16 v11, 0x807

    add-long/2addr v9, v11

    const-wide/16 v11, 0x800

    .line 81
    div-long/2addr v9, v11

    mul-long v9, v9, v11

    .line 82
    invoke-virtual {v2, v9, v10}, Ljava/io/RandomAccessFile;->setLength(J)V

    const/high16 v13, 0x10000

    new-array v14, v13, [B

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v8, :cond_12

    if-ge v15, v0, :cond_c

    .line 86
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v12, v15

    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_b

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v12, v0

    goto :goto_6

    :cond_b
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v13, "angra_col_%02d.col"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v21, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v20, v4, v18

    invoke-static {v12, v13, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_c
    move-object/from16 v21, v4

    if-ge v15, v5, :cond_d

    sub-int v4, v15, v0

    .line 87
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object/from16 v26, v11

    move-object v11, v4

    move-object/from16 v4, v26

    goto :goto_7

    :cond_d
    sub-int v4, v15, v5

    .line 88
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iget-object v4, v4, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;->name:Ljava/lang/String;

    .line 90
    :goto_7
    invoke-virtual {v2, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 91
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;

    move/from16 v20, v5

    move-object v13, v6

    iget-wide v5, v12, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;->offset:J

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    iget v5, v12, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;->bytes:I

    :goto_9
    if-lez v5, :cond_e

    const/high16 v6, 0x10000

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6, v12}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-virtual {v2, v14, v6, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    sub-int/2addr v5, v12

    goto :goto_9

    :cond_e
    move-object v6, v13

    move/from16 v5, v20

    goto :goto_8

    :cond_f
    move/from16 v20, v5

    move-object v13, v6

    .line 92
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    const-wide/16 v11, 0x7ff

    add-long/2addr v5, v11

    const-wide/16 v11, 0x800

    div-long/2addr v5, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v5, v6}, Ljava/lang/Long;->signum(J)I

    mul-long v5, v5, v11

    sub-long v16, v5, v9

    move-object/from16 v23, v13

    move-object/from16 v22, v14

    .line 93
    :try_start_2
    div-long v13, v16, v11

    long-to-int v11, v13

    const v12, 0xffff

    if-gt v11, v12, :cond_11

    .line 94
    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    mul-int/lit8 v12, v15, 0x20

    int-to-long v12, v12

    const-wide/16 v24, 0x8

    add-long v12, v12, v24

    invoke-virtual {v2, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v12, 0x800

    div-long/2addr v9, v12

    invoke-static {v2, v9, v10}, Lcom/xyron/game/launcher/util/CollisionArchivePacker;->w32(Ljava/io/RandomAccessFile;J)V

    invoke-static {v2, v11}, Lcom/xyron/game/launcher/util/CollisionArchivePacker;->w16(Ljava/io/RandomAccessFile;I)V

    const/4 v9, 0x0

    invoke-static {v2, v9}, Lcom/xyron/game/launcher/util/CollisionArchivePacker;->w16(Ljava/io/RandomAccessFile;I)V

    .line 95
    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v10, v4

    const/16 v11, 0x17

    if-gt v10, v11, :cond_10

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->write([B)V

    array-length v4, v4

    rsub-int/lit8 v4, v4, 0x18

    new-array v4, v4, [B

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/lit8 v15, v15, 0x1

    move-wide v9, v5

    move-wide v11, v12

    move/from16 v5, v20

    move-object/from16 v4, v21

    move-object/from16 v14, v22

    move-object/from16 v6, v23

    const/high16 v13, 0x10000

    goto/16 :goto_5

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v3, "IMG name too long"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v3, "COL container too large"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_12
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return v7

    .line 79
    :cond_13
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Too many non-collision resources in collision archive"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Too many interior collision groups"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Empty collision archive"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 49
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v2
.end method

.method private static u16(Ljava/io/RandomAccessFile;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static u32(Ljava/io/RandomAccessFile;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static w16(Ljava/io/RandomAccessFile;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-short p1, p1

    .line 29
    invoke-static {p1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    return-void
.end method

.method private static w32(Ljava/io/RandomAccessFile;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int p2, p1

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    return-void
.end method
