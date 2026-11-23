.class Lcom/xyron/game/main/AnimationPanel$1;
.super Landroid/webkit/WebViewClient;
.source "AnimationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/AnimationPanel;-><init>(Lcom/xyron/game/main/SAMP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/AnimationPanel;

.field final synthetic val$game:Lcom/xyron/game/main/SAMP;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/AnimationPanel;Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xyron/game/main/AnimationPanel$1;->this$0:Lcom/xyron/game/main/AnimationPanel;

    iput-object p2, p0, Lcom/xyron/game/main/AnimationPanel$1;->val$game:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/xyron/game/main/AnimationPanel$1;->val$game:Lcom/xyron/game/main/SAMP;

    invoke-static {p1, p2}, Lcom/xyron/game/security/SealedUi;->intercept(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
