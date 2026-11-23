.class public final synthetic Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/ref/WeakReference;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;[ZLandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda2;->f$0:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda2;->f$1:[Z

    iput-object p3, p0, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda2;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda2;->f$0:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda2;->f$1:[Z

    iget-object v2, p0, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda2;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/xyron/game/launcher/util/AngraLanguage;->lambda$attach$4(Ljava/lang/ref/WeakReference;[ZLandroid/content/Context;)V

    return-void
.end method
