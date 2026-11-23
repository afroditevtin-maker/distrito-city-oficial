.class public final synthetic Lcom/xyron/game/main/AngraHudExperiment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/AngraHudExperiment;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/AngraHudExperiment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/AngraHudExperiment$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/AngraHudExperiment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudExperiment$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/AngraHudExperiment;

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraHudExperiment;->layoutGeometry()V

    return-void
.end method
