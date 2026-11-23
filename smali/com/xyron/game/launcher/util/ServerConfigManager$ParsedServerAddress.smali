.class final Lcom/xyron/game/launcher/util/ServerConfigManager$ParsedServerAddress;
.super Ljava/lang/Object;
.source "ServerConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/ServerConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParsedServerAddress"
.end annotation


# instance fields
.field final host:Ljava/lang/String;

.field final port:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p1, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ParsedServerAddress;->host:Ljava/lang/String;

    .line 540
    iput p2, p0, Lcom/xyron/game/launcher/util/ServerConfigManager$ParsedServerAddress;->port:I

    return-void
.end method
