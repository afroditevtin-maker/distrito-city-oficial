.class final Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;
.super Ljava/lang/Object;
.source "CollisionArchivePacker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/CollisionArchivePacker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field bytes:I

.field name:Ljava/lang/String;

.field offset:J


# direct methods
.method constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;->name:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;->offset:J

    iput p4, p0, Lcom/xyron/game/launcher/util/CollisionArchivePacker$Entry;->bytes:I

    return-void
.end method
