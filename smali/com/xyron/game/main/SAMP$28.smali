.class Lcom/xyron/game/main/SAMP$28;
.super Landroid/webkit/WebViewClient;
.source "SAMP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/SAMP;->initializeRuntimeTopOverlay()V
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

    .line 2866
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$28;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 2868
    iget-object p2, p0, Lcom/xyron/game/main/SAMP$28;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p2, p1}, Lcom/xyron/game/main/SAMP;->access$8900(Lcom/xyron/game/main/SAMP;Landroid/webkit/WebView;)Z

    move-result p1

    return p1
.end method
