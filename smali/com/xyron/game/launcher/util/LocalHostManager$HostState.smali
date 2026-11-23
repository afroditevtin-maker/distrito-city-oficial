.class public final Lcom/xyron/game/launcher/util/LocalHostManager$HostState;
.super Ljava/lang/Object;
.source "LocalHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/LocalHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HostState"
.end annotation


# instance fields
.field public final embeddedEngineAvailable:Z

.field public final loopbackAddress:Ljava/lang/String;

.field public final loopbackSaved:Z

.field public final loopbackSelected:Z

.field public final workspacePath:Ljava/lang/String;

.field public final workspacePrepared:Z


# direct methods
.method constructor <init>(ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1004
    iput-boolean p1, p0, Lcom/xyron/game/launcher/util/LocalHostManager$HostState;->workspacePrepared:Z

    .line 1005
    iput-boolean p2, p0, Lcom/xyron/game/launcher/util/LocalHostManager$HostState;->embeddedEngineAvailable:Z

    .line 1006
    iput-boolean p3, p0, Lcom/xyron/game/launcher/util/LocalHostManager$HostState;->loopbackSaved:Z

    .line 1007
    iput-boolean p4, p0, Lcom/xyron/game/launcher/util/LocalHostManager$HostState;->loopbackSelected:Z

    .line 1008
    const-string p1, ""

    if-nez p5, :cond_0

    move-object p5, p1

    :cond_0
    iput-object p5, p0, Lcom/xyron/game/launcher/util/LocalHostManager$HostState;->workspacePath:Ljava/lang/String;

    if-nez p6, :cond_1

    move-object p6, p1

    .line 1009
    :cond_1
    iput-object p6, p0, Lcom/xyron/game/launcher/util/LocalHostManager$HostState;->loopbackAddress:Ljava/lang/String;

    return-void
.end method
