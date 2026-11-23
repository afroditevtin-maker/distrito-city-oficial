.class public final synthetic Lcom/xyron/game/main/PhoneNoticeBanner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/PhoneNoticeBanner;

.field public final synthetic f$1:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/PhoneNoticeBanner;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/PhoneNoticeBanner$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    iput-object p2, p0, Lcom/xyron/game/main/PhoneNoticeBanner$$ExternalSyntheticLambda0;->f$1:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/PhoneNoticeBanner$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/PhoneNoticeBanner;

    iget-object v1, p0, Lcom/xyron/game/main/PhoneNoticeBanner$$ExternalSyntheticLambda0;->f$1:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/PhoneNoticeBanner;->lambda$show$1$com-xyron-game-main-PhoneNoticeBanner(Lorg/json/JSONObject;)V

    return-void
.end method
