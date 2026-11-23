.class public final synthetic Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/RoleplayUI;

.field public final synthetic f$1:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/RoleplayUI;Landroid/webkit/WebView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/RoleplayUI;

    iput-object p2, p0, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda0;->f$1:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/RoleplayUI;

    iget-object v1, p0, Lcom/xyron/game/main/RoleplayUI$$ExternalSyntheticLambda0;->f$1:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/RoleplayUI;->lambda$hideHood$2$com-xyron-game-main-RoleplayUI(Landroid/webkit/WebView;)V

    return-void
.end method
