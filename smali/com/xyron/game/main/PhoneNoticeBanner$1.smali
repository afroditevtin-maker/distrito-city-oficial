.class Lcom/xyron/game/main/PhoneNoticeBanner$1;
.super Ljava/lang/Object;
.source "PhoneNoticeBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/PhoneNoticeBanner;->ensureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/PhoneNoticeBanner;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/PhoneNoticeBanner;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public answer()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$000(Lcom/xyron/game/main/PhoneNoticeBanner;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/PhoneNoticeBanner$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/PhoneNoticeBanner$1$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/PhoneNoticeBanner$1;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public decline()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$000(Lcom/xyron/game/main/PhoneNoticeBanner;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/PhoneNoticeBanner$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/PhoneNoticeBanner$1$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/PhoneNoticeBanner$1;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$answer$1$com-xyron-game-main-PhoneNoticeBanner$1()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$100(Lcom/xyron/game/main/PhoneNoticeBanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$200(Lcom/xyron/game/main/PhoneNoticeBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$000(Lcom/xyron/game/main/PhoneNoticeBanner;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v1}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$300(Lcom/xyron/game/main/PhoneNoticeBanner;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/xyron/game/main/SAMP;->phoneIncomingAction(ZI)V

    :cond_0
    return-void
.end method

.method synthetic lambda$decline$2$com-xyron-game-main-PhoneNoticeBanner$1()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$100(Lcom/xyron/game/main/PhoneNoticeBanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$200(Lcom/xyron/game/main/PhoneNoticeBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$000(Lcom/xyron/game/main/PhoneNoticeBanner;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v1}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$300(Lcom/xyron/game/main/PhoneNoticeBanner;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/xyron/game/main/SAMP;->phoneIncomingAction(ZI)V

    :cond_0
    return-void
.end method

.method synthetic lambda$open$0$com-xyron-game-main-PhoneNoticeBanner$1()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$400(Lcom/xyron/game/main/PhoneNoticeBanner;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$000(Lcom/xyron/game/main/PhoneNoticeBanner;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v1}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$400(Lcom/xyron/game/main/PhoneNoticeBanner;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->openPhoneNotification(Lorg/json/JSONObject;)V

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$500(Lcom/xyron/game/main/PhoneNoticeBanner;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public open()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner$1;->this$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    invoke-static {v0}, Lcom/xyron/game/main/PhoneNoticeBanner;->access$000(Lcom/xyron/game/main/PhoneNoticeBanner;)Lcom/xyron/game/main/SAMP;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/PhoneNoticeBanner$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/PhoneNoticeBanner$1$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/PhoneNoticeBanner$1;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
