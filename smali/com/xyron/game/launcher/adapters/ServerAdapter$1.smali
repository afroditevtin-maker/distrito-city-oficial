.class Lcom/xyron/game/launcher/adapters/ServerAdapter$1;
.super Ljava/lang/Object;
.source "ServerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/launcher/adapters/ServerAdapter;->onBindViewHolder(Lcom/xyron/game/launcher/adapters/ServerAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/adapters/ServerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/adapters/ServerAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter$1;->this$0:Lcom/xyron/game/launcher/adapters/ServerAdapter;

    iput p2, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter$1;->this$0:Lcom/xyron/game/launcher/adapters/ServerAdapter;

    iget v0, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter$1;->val$position:I

    invoke-static {p1, v0}, Lcom/xyron/game/launcher/adapters/ServerAdapter;->access$000(Lcom/xyron/game/launcher/adapters/ServerAdapter;I)V

    .line 78
    iget-object p1, p0, Lcom/xyron/game/launcher/adapters/ServerAdapter$1;->this$0:Lcom/xyron/game/launcher/adapters/ServerAdapter;

    iget-object p1, p1, Lcom/xyron/game/launcher/adapters/ServerAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/xyron/game/launcher/MainActivity;

    invoke-virtual {p1}, Lcom/xyron/game/launcher/MainActivity;->startGta()V

    return-void
.end method
