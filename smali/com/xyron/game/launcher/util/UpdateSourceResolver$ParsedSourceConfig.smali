.class final Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;
.super Ljava/lang/Object;
.source "UpdateSourceResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/UpdateSourceResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParsedSourceConfig"
.end annotation


# instance fields
.field final clientConfigUrls:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final fallbackFileBaseUrls:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field hasCustomSource:Z

.field huggingFaceFilesPathPrefix:Ljava/lang/String;

.field huggingFaceResolveBaseUrl:Ljava/lang/String;

.field huggingFaceTreeApiUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->clientConfigUrls:Ljava/util/LinkedHashSet;

    .line 291
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->fallbackFileBaseUrls:Ljava/util/LinkedHashSet;

    .line 292
    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->huggingFaceTreeApiUrl:Ljava/lang/String;

    .line 293
    iput-object v0, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->huggingFaceResolveBaseUrl:Ljava/lang/String;

    .line 294
    iput-object v0, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->huggingFaceFilesPathPrefix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;->hasCustomSource:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xyron/game/launcher/util/UpdateSourceResolver$1;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/xyron/game/launcher/util/UpdateSourceResolver$ParsedSourceConfig;-><init>()V

    return-void
.end method
