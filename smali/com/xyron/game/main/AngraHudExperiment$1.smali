.class Lcom/xyron/game/main/AngraHudExperiment$1;
.super Landroid/telephony/PhoneStateListener;
.source "AngraHudExperiment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/AngraHudExperiment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AngraHudExperiment;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/AngraHudExperiment;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment$1;->this$0:Lcom/xyron/game/main/AngraHudExperiment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment$1;->this$0:Lcom/xyron/game/main/AngraHudExperiment;

    invoke-static {p1, v0}, Lcom/xyron/game/main/AngraHudExperiment;->access$102(Lcom/xyron/game/main/AngraHudExperiment;I)I

    goto :goto_1

    .line 75
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-lt v1, v2, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment$1;->this$0:Lcom/xyron/game/main/AngraHudExperiment;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/SignalStrength;)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/xyron/game/main/AngraHudExperiment;->access$102(Lcom/xyron/game/main/AngraHudExperiment;I)I

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    iget-object v1, p0, Lcom/xyron/game/main/AngraHudExperiment$1;->this$0:Lcom/xyron/game/main/AngraHudExperiment;

    const/16 v2, 0x63

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-gt p1, v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ge p1, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/16 v2, 0x8

    if-ge p1, v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0xc

    if-ge p1, v0, :cond_6

    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    :goto_0
    invoke-static {v1, v0}, Lcom/xyron/game/main/AngraHudExperiment;->access$102(Lcom/xyron/game/main/AngraHudExperiment;I)I

    .line 79
    :goto_1
    iget-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment$1;->this$0:Lcom/xyron/game/main/AngraHudExperiment;

    invoke-virtual {p1}, Lcom/xyron/game/main/AngraHudExperiment;->invalidate()V

    return-void
.end method
