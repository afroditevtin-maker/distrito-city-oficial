.class Lcom/xyron/game/launcher/adapters/FaqAdapter$1$1;
.super Ljava/lang/Object;
.source "FaqAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/launcher/adapters/FaqAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xyron/game/launcher/adapters/FaqAdapter$1;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/adapters/FaqAdapter$1;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xyron/game/launcher/adapters/FaqAdapter$1$1;->this$1:Lcom/xyron/game/launcher/adapters/FaqAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 73
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
