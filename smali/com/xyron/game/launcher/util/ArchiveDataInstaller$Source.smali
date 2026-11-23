.class public final Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;
.super Ljava/lang/Object;
.source "ArchiveDataInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/ArchiveDataInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Source"
.end annotation


# instance fields
.field public final bytes:J

.field public final expandedBytes:J

.field public final parts:[Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

.field public prefix:Ljava/lang/String;

.field public final resumeKey:Ljava/lang/String;

.field public final sha256:Ljava/lang/String;

.field public final url:Ljava/lang/String;

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 29
    invoke-direct/range {v0 .. v7}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    .line 32
    new-array v9, v0, [Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;[Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;[Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->prefix:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->url:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->bytes:J

    iput-wide p4, p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->expandedBytes:J

    iput-object p6, p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->sha256:Ljava/lang/String;

    .line 36
    invoke-virtual {p8}, [Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    iput-object p1, p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->parts:[Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    .line 37
    iput-object p7, p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->version:Ljava/lang/String;

    const-wide/32 p4, 0x471dca39

    cmp-long p1, p2, p4

    if-nez p1, :cond_0

    .line 39
    const-string p1, "86f3038cf80d4db2bd4a6053e266060f8dda3647f6956243472f3b7547a61083"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p6, "d458385468a9de95d4336d45b69c56c059f33041"

    :cond_0
    iput-object p6, p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->resumeKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public withPrefix(Ljava/lang/String;)Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;
    .locals 0

    .line 27
    invoke-static {p1}, Lcom/xyron/game/launcher/util/MapProfile;->named(Ljava/lang/String;)Lcom/xyron/game/launcher/util/MapProfile;

    iput-object p1, p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;->prefix:Ljava/lang/String;

    return-object p0
.end method
