.class Lcom/xyron/game/launcher/adapters/FaqAdapter$1;
.super Ljava/lang/Object;
.source "FaqAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/launcher/adapters/FaqAdapter;->onBindViewHolder(Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/adapters/FaqAdapter;

.field final synthetic val$holder:Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/adapters/FaqAdapter;Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter$1;->this$0:Lcom/xyron/game/launcher/adapters/FaqAdapter;

    iput-object p2, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter$1;->val$holder:Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 69
    iget-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter$1;->this$0:Lcom/xyron/game/launcher/adapters/FaqAdapter;

    invoke-static {p1}, Lcom/xyron/game/launcher/adapters/FaqAdapter;->access$100(Lcom/xyron/game/launcher/adapters/FaqAdapter;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter$1;->this$0:Lcom/xyron/game/launcher/adapters/FaqAdapter;

    invoke-static {v0}, Lcom/xyron/game/launcher/adapters/FaqAdapter;->access$000(Lcom/xyron/game/launcher/adapters/FaqAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter$1;->val$holder:Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/xyron/game/launcher/adapters/FaqAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/adapters/FaqAdapter$1$1;-><init>(Lcom/xyron/game/launcher/adapters/FaqAdapter$1;)V

    .line 71
    const-string v1, "Ok"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    iget-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter$1;->this$0:Lcom/xyron/game/launcher/adapters/FaqAdapter;

    invoke-static {p1}, Lcom/xyron/game/launcher/adapters/FaqAdapter;->access$100(Lcom/xyron/game/launcher/adapters/FaqAdapter;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter$1;->this$0:Lcom/xyron/game/launcher/adapters/FaqAdapter;

    invoke-static {v0}, Lcom/xyron/game/launcher/adapters/FaqAdapter;->access$200(Lcom/xyron/game/launcher/adapters/FaqAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter$1;->val$holder:Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/xyron/game/launcher/adapters/FaqAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
