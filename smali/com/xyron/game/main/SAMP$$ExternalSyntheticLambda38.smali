.class public final synthetic Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/SAMP;

.field public final synthetic f$1:Landroid/webkit/WebView;

.field public final synthetic f$2:Lcom/xyron/game/main/PhoneEventInbox$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/SAMP;Landroid/webkit/WebView;Lcom/xyron/game/main/PhoneEventInbox$Entry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda38;->f$0:Lcom/xyron/game/main/SAMP;

    iput-object p2, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda38;->f$1:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda38;->f$2:Lcom/xyron/game/main/PhoneEventInbox$Entry;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda38;->f$0:Lcom/xyron/game/main/SAMP;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda38;->f$1:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda38;->f$2:Lcom/xyron/game/main/PhoneEventInbox$Entry;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/xyron/game/main/SAMP;->lambda$flushPhoneEvents$5$com-xyron-game-main-SAMP(Landroid/webkit/WebView;Lcom/xyron/game/main/PhoneEventInbox$Entry;Ljava/lang/String;)V

    return-void
.end method
