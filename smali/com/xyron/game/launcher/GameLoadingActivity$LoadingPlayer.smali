.class final Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;
.super Ljava/lang/Object;
.source "GameLoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/GameLoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadingPlayer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/GameLoadingActivity;


# direct methods
.method private constructor <init>(Lcom/xyron/game/launcher/GameLoadingActivity;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xyron/game/launcher/GameLoadingActivity;Lcom/xyron/game/launcher/GameLoadingActivity$1;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;-><init>(Lcom/xyron/game/launcher/GameLoadingActivity;)V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    new-instance v1, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/launcher/GameLoadingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$action$0$com-xyron-game-launcher-GameLoadingActivity$LoadingPlayer(Ljava/lang/String;I)V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-virtual {v0}, Lcom/xyron/game/launcher/GameLoadingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-virtual {v0}, Lcom/xyron/game/launcher/GameLoadingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {v0}, Lcom/xyron/game/launcher/GameLoadingActivity;->access$800(Lcom/xyron/game/launcher/GameLoadingActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 276
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "discord"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "restart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "retry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "seek"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 285
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "about:blank"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Lcom/xyron/game/launcher/GameLoadingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 282
    :pswitch_1
    invoke-static {v2}, Lcom/xyron/game/launcher/util/LauncherMedia;->seekMusic(I)V

    goto :goto_2

    .line 283
    :pswitch_2
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->access$200(Lcom/xyron/game/launcher/GameLoadingActivity;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {p1}, Lcom/xyron/game/launcher/GameLoadingActivity;->access$900(Lcom/xyron/game/launcher/GameLoadingActivity;)V

    goto :goto_2

    .line 279
    :pswitch_3
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {p1, v2}, Lcom/xyron/game/launcher/util/LauncherMedia;->setMusicPlaying(Landroid/content/Context;Z)V

    goto :goto_2

    .line 281
    :pswitch_4
    invoke-static {p2}, Lcom/xyron/game/launcher/util/LauncherMedia;->seekMusic(I)V

    goto :goto_2

    .line 278
    :pswitch_5
    iget-object p1, p0, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {p1, v1}, Lcom/xyron/game/launcher/util/LauncherMedia;->setMusicPlaying(Landroid/content/Context;Z)V

    goto :goto_2

    :pswitch_6
    if-eqz p2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    .line 277
    :goto_1
    invoke-static {v1}, Lcom/xyron/game/launcher/util/LauncherMedia;->setMusicMuted(Z)V

    goto :goto_2

    :pswitch_7
    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 280
    invoke-static {p1}, Lcom/xyron/game/launcher/util/LauncherMedia;->setMusicVolume(F)V

    :catch_0
    :cond_a
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x305518e6 -> :sswitch_7
        0x335219 -> :sswitch_6
        0x348b34 -> :sswitch_5
        0x35ce78 -> :sswitch_4
        0x65825f6 -> :sswitch_3
        0x67622a8 -> :sswitch_2
        0x416a9e0f -> :sswitch_1
        0x639f3d2c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public state()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 268
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->musicState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 269
    const-string v1, "stage"

    iget-object v2, p0, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {v2}, Lcom/xyron/game/launcher/GameLoadingActivity;->access$700(Lcom/xyron/game/launcher/GameLoadingActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "checked"

    iget-object v3, p0, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {v3}, Lcom/xyron/game/launcher/GameLoadingActivity;->access$600(Lcom/xyron/game/launcher/GameLoadingActivity;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "total"

    iget-object v3, p0, Lcom/xyron/game/launcher/GameLoadingActivity$LoadingPlayer;->this$0:Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-static {v3}, Lcom/xyron/game/launcher/GameLoadingActivity;->access$500(Lcom/xyron/game/launcher/GameLoadingActivity;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 270
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 271
    :catch_0
    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->musicState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
