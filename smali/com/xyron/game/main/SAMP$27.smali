.class Lcom/xyron/game/main/SAMP$27;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP;->UpdateWeaponWheel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/SAMP;

.field final synthetic val$weaponsJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2810
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$27;->this$0:Lcom/xyron/game/main/SAMP;

    iput-object p2, p0, Lcom/xyron/game/main/SAMP$27;->val$weaponsJson:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2813
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$27;->this$0:Lcom/xyron/game/main/SAMP;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$8402(Lcom/xyron/game/main/SAMP;Z)Z

    .line 2814
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$27;->this$0:Lcom/xyron/game/main/SAMP;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$27;->val$weaponsJson:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$8600(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$8502(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)Ljava/lang/String;

    .line 2815
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$27;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$8700(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/InventoryAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$27;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$8700(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/InventoryAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$27;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v1}, Lcom/xyron/game/main/SAMP;->access$8500(Lcom/xyron/game/main/SAMP;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/InventoryAdapter;->updateWeapons(Ljava/lang/String;)V

    .line 2816
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$27;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$8800(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method
