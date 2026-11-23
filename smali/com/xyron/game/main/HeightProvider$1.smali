.class Lcom/xyron/game/main/HeightProvider$1;
.super Ljava/lang/Object;
.source "HeightProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/HeightProvider;->init(Landroid/view/View;)Lcom/xyron/game/main/HeightProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/HeightProvider;

.field final synthetic val$finalView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/HeightProvider;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/xyron/game/main/HeightProvider$1;->this$0:Lcom/xyron/game/main/HeightProvider;

    iput-object p2, p0, Lcom/xyron/game/main/HeightProvider$1;->val$finalView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/xyron/game/main/HeightProvider$1;->this$0:Lcom/xyron/game/main/HeightProvider;

    iget-object v1, p0, Lcom/xyron/game/main/HeightProvider$1;->val$finalView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/xyron/game/main/HeightProvider;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
