.class public Lcom/xyron/game/launcher/data/FilesData;
.super Ljava/lang/Object;
.source "FilesData.java"


# instance fields
.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xyron/game/launcher/data/FilesData;->name:Ljava/lang/String;

    .line 12
    iput-wide p2, p0, Lcom/xyron/game/launcher/data/FilesData;->size:J

    .line 13
    iput-object p4, p0, Lcom/xyron/game/launcher/data/FilesData;->path:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/xyron/game/launcher/data/FilesData;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xyron/game/launcher/data/FilesData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xyron/game/launcher/data/FilesData;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/xyron/game/launcher/data/FilesData;->size:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xyron/game/launcher/data/FilesData;->url:Ljava/lang/String;

    return-object v0
.end method
