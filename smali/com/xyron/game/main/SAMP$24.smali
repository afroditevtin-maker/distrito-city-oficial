.class Lcom/xyron/game/main/SAMP$24;
.super Ljava/lang/Object;
.source "SAMP.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP;->initializeHudSettingsPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/SAMP;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 1929
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$24;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1932
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$24;->this$0:Lcom/xyron/game/main/SAMP;

    const/16 p3, 0x1e

    add-int/2addr p2, p3

    const/16 v0, 0x78

    invoke-static {p1, p2, p3, v0}, Lcom/xyron/game/main/SAMP;->access$3900(Lcom/xyron/game/main/SAMP;III)I

    move-result p2

    invoke-static {p1, p2}, Lcom/xyron/game/main/SAMP;->access$4102(Lcom/xyron/game/main/SAMP;I)I

    .line 1937
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$24;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$4000(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
