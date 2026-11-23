.class public final synthetic Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>([ZLjava/lang/ref/WeakReference;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda4;->f$0:[Z

    iput-object p2, p0, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda4;->f$1:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda4;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda4;->f$0:[Z

    iget-object v1, p0, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda4;->f$1:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda4;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/xyron/game/launcher/util/AngraLanguage;->lambda$attach$3([ZLjava/lang/ref/WeakReference;Landroid/content/Context;)V

    return-void
.end method
