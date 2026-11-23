.class public final enum Lcom/downloader/Status;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/downloader/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/downloader/Status;

.field public static final enum CANCELLED:Lcom/downloader/Status;

.field public static final enum COMPLETED:Lcom/downloader/Status;

.field public static final enum FAILED:Lcom/downloader/Status;

.field public static final enum PAUSED:Lcom/downloader/Status;

.field public static final enum QUEUED:Lcom/downloader/Status;

.field public static final enum RUNNING:Lcom/downloader/Status;

.field public static final enum UNKNOWN:Lcom/downloader/Status;


# direct methods
.method private static synthetic $values()[Lcom/downloader/Status;
    .locals 3

    const/4 v0, 0x7

    .line 7
    new-array v0, v0, [Lcom/downloader/Status;

    sget-object v1, Lcom/downloader/Status;->QUEUED:Lcom/downloader/Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/downloader/Status;->RUNNING:Lcom/downloader/Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/downloader/Status;->PAUSED:Lcom/downloader/Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/downloader/Status;->COMPLETED:Lcom/downloader/Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/downloader/Status;->CANCELLED:Lcom/downloader/Status;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/downloader/Status;->FAILED:Lcom/downloader/Status;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/downloader/Status;->UNKNOWN:Lcom/downloader/Status;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/downloader/Status;

    const-string v1, "QUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/downloader/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/downloader/Status;->QUEUED:Lcom/downloader/Status;

    .line 11
    new-instance v0, Lcom/downloader/Status;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/downloader/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/downloader/Status;->RUNNING:Lcom/downloader/Status;

    .line 13
    new-instance v0, Lcom/downloader/Status;

    const-string v1, "PAUSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/downloader/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/downloader/Status;->PAUSED:Lcom/downloader/Status;

    .line 15
    new-instance v0, Lcom/downloader/Status;

    const-string v1, "COMPLETED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/downloader/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/downloader/Status;->COMPLETED:Lcom/downloader/Status;

    .line 17
    new-instance v0, Lcom/downloader/Status;

    const-string v1, "CANCELLED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/downloader/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/downloader/Status;->CANCELLED:Lcom/downloader/Status;

    .line 19
    new-instance v0, Lcom/downloader/Status;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/downloader/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/downloader/Status;->FAILED:Lcom/downloader/Status;

    .line 21
    new-instance v0, Lcom/downloader/Status;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/downloader/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/downloader/Status;->UNKNOWN:Lcom/downloader/Status;

    .line 7
    invoke-static {}, Lcom/downloader/Status;->$values()[Lcom/downloader/Status;

    move-result-object v0

    sput-object v0, Lcom/downloader/Status;->$VALUES:[Lcom/downloader/Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/downloader/Status;
    .locals 1

    .line 7
    const-class v0, Lcom/downloader/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/downloader/Status;

    return-object p0
.end method

.method public static values()[Lcom/downloader/Status;
    .locals 1

    .line 7
    sget-object v0, Lcom/downloader/Status;->$VALUES:[Lcom/downloader/Status;

    invoke-virtual {v0}, [Lcom/downloader/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/downloader/Status;

    return-object v0
.end method
