.class public final enum Lcom/downloader/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/downloader/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/downloader/Priority;

.field public static final enum HIGH:Lcom/downloader/Priority;

.field public static final enum IMMEDIATE:Lcom/downloader/Priority;

.field public static final enum LOW:Lcom/downloader/Priority;

.field public static final enum MEDIUM:Lcom/downloader/Priority;


# direct methods
.method private static synthetic $values()[Lcom/downloader/Priority;
    .locals 3

    const/4 v0, 0x4

    .line 10
    new-array v0, v0, [Lcom/downloader/Priority;

    sget-object v1, Lcom/downloader/Priority;->LOW:Lcom/downloader/Priority;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/downloader/Priority;->MEDIUM:Lcom/downloader/Priority;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/downloader/Priority;->HIGH:Lcom/downloader/Priority;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/downloader/Priority;->IMMEDIATE:Lcom/downloader/Priority;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/downloader/Priority;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/downloader/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/downloader/Priority;->LOW:Lcom/downloader/Priority;

    .line 20
    new-instance v0, Lcom/downloader/Priority;

    const-string v1, "MEDIUM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/downloader/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/downloader/Priority;->MEDIUM:Lcom/downloader/Priority;

    .line 25
    new-instance v0, Lcom/downloader/Priority;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/downloader/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/downloader/Priority;->HIGH:Lcom/downloader/Priority;

    .line 30
    new-instance v0, Lcom/downloader/Priority;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/downloader/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/downloader/Priority;->IMMEDIATE:Lcom/downloader/Priority;

    .line 10
    invoke-static {}, Lcom/downloader/Priority;->$values()[Lcom/downloader/Priority;

    move-result-object v0

    sput-object v0, Lcom/downloader/Priority;->$VALUES:[Lcom/downloader/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/downloader/Priority;
    .locals 1

    .line 10
    const-class v0, Lcom/downloader/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/downloader/Priority;

    return-object p0
.end method

.method public static values()[Lcom/downloader/Priority;
    .locals 1

    .line 10
    sget-object v0, Lcom/downloader/Priority;->$VALUES:[Lcom/downloader/Priority;

    invoke-virtual {v0}, [Lcom/downloader/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/downloader/Priority;

    return-object v0
.end method
