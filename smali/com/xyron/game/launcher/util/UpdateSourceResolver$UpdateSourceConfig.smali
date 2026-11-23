.class public final Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;
.super Ljava/lang/Object;
.source "UpdateSourceResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/UpdateSourceResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateSourceConfig"
.end annotation


# instance fields
.field public final clientConfigUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final fallbackFileBaseUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final huggingFaceFilesPathPrefix:Ljava/lang/String;

.field public final huggingFaceResolveBaseUrl:Ljava/lang/String;

.field public final huggingFaceTreeApiUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;->clientConfigUrls:Ljava/util/List;

    .line 282
    iput-object p2, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;->fallbackFileBaseUrls:Ljava/util/List;

    .line 283
    iput-object p3, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;->huggingFaceTreeApiUrl:Ljava/lang/String;

    .line 284
    iput-object p4, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;->huggingFaceResolveBaseUrl:Ljava/lang/String;

    .line 285
    iput-object p5, p0, Lcom/xyron/game/launcher/util/UpdateSourceResolver$UpdateSourceConfig;->huggingFaceFilesPathPrefix:Ljava/lang/String;

    return-void
.end method
