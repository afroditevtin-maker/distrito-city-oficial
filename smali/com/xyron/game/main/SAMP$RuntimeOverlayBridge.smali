.class final Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;
.super Ljava/lang/Object;
.source "SAMP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/SAMP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RuntimeOverlayBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/SAMP;


# direct methods
.method private constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 4728
    iput-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xyron/game/main/SAMP;Lcom/xyron/game/main/SAMP$1;)V
    .locals 0

    .line 4728
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;-><init>(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method


# virtual methods
.method public animatePhoneClose()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4804
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public applyControlLayout(II)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5158
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0, p1, p2}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda30;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;II)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public applyIPhoneAudio(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_1

    .line 4921
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x800

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda29;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public closeInventory()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4763
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlay()V

    return-void
.end method

.method public closePhone()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4752
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$10900(Lcom/xyron/game/main/SAMP;Z)V

    .line 4753
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlay()V

    return-void
.end method

.method public closeSettingsPanel()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4824
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->hideSettingsOverlay()V

    return-void
.end method

.method public closeWeaponWheel()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4768
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlay()V

    return-void
.end method

.method public finishSettingsTransition()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4817
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda8;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAngraVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5014
    const-string v0, "v3.30 \u2022 Build 224"

    return-object v0
.end method

.method public getAudioMix()Ljava/lang/String;
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5043
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v2, "angra_audio_mix_v1"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5044
    :try_start_0
    const-string v2, "voip"

    const-string v4, "vehicles"

    const-string v5, "ambient"

    const-string v6, "sfx"

    const-string v7, "master"

    filled-new-array {v2, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    aget-object v4, v2, v3

    const/16 v5, 0x64

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5045
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioVolume()I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5039
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v1, "angra_audio_mix_v1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "master"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getControlLayout()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4840
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/ConfigValidator;->getTouchLayoutJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHudSettings()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5019
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5021
    :try_start_0
    const-string v1, "radar"

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$13100(Lcom/xyron/game/main/SAMP;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5022
    const-string v1, "voice"

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$13200(Lcom/xyron/game/main/SAMP;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5023
    const-string v1, "fps"

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$4100(Lcom/xyron/game/main/SAMP;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5024
    const-string v1, "distance"

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$3800(Lcom/xyron/game/main/SAMP;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5025
    const-string v1, "quality"

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$13300(Lcom/xyron/game/main/SAMP;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5026
    const-string v1, "shadows"

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$13400(Lcom/xyron/game/main/SAMP;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5027
    const-string v1, "effects"

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$13500(Lcom/xyron/game/main/SAMP;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5028
    const-string v1, "showFps"

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$13600(Lcom/xyron/game/main/SAMP;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5029
    const-string v1, "brightness"

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$13700(Lcom/xyron/game/main/SAMP;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5030
    const-string v1, "controlX"

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$13800(Lcom/xyron/game/main/SAMP;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5031
    const-string v1, "controlY"

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$13900(Lcom/xyron/game/main/SAMP;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5034
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApkVersion()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4925
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "N\u00e3o identificada"

    return-object v0
.end method

.method public getInventoryHotbar()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4851
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$11200(Lcom/xyron/game/main/SAMP;)Z

    move-result v0

    return v0
.end method

.method public getMobileOptions()Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5070
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5071
    iget-object v1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v2, "rio_mobile_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0xf

    .line 5073
    :try_start_0
    new-array v4, v2, [I

    fill-array-data v4, :array_0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v5, v4, v3

    .line 5075
    invoke-static {}, Lcom/xyron/game/main/SAMP;->access$500()Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_0

    .line 5076
    :try_start_1
    iget-object v6, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v6, v5}, Lcom/xyron/game/main/SAMP;->getHudFixMobileOption(I)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :cond_0
    const/4 v6, -0x1

    .line 5079
    :goto_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "option_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v1, v5, v6}, Lcom/xyron/game/main/SAMP;->access$14000(Landroid/content/SharedPreferences;II)I

    move-result v6

    :cond_1
    if-ltz v6, :cond_2

    .line 5080
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5083
    :catch_1
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x5
        0x6
        0x7
        0x9
        0xa
        0xb
        0xf
        0x10
        0x12
        0x17
        0x23
    .end array-data
.end method

.method public getPhoneBalances()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4938
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4939
    :try_start_0
    const-string v1, "money"

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$12600(Lcom/xyron/game/main/SAMP;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$12700(Lcom/xyron/game/main/SAMP;)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v2}, Lcom/xyron/game/main/SAMP;->access$3000(Lcom/xyron/game/main/SAMP;)I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "level"

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$12500(Lcom/xyron/game/main/SAMP;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "experience"

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    .line 4940
    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$12400(Lcom/xyron/game/main/SAMP;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "nextExperience"

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$12300(Lcom/xyron/game/main/SAMP;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "coins"

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    .line 4941
    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$12200(Lcom/xyron/game/main/SAMP;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "gems"

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$12100(Lcom/xyron/game/main/SAMP;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "powder"

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$12000(Lcom/xyron/game/main/SAMP;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "chips"

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$11900(Lcom/xyron/game/main/SAMP;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "dirtyMoney"

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$11800(Lcom/xyron/game/main/SAMP;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "bank"

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    .line 4942
    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$11700(Lcom/xyron/game/main/SAMP;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "rg"

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$11600(Lcom/xyron/game/main/SAMP;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "fines"

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$11500(Lcom/xyron/game/main/SAMP;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "taxes"

    iget-object v3, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v3}, Lcom/xyron/game/main/SAMP;->access$11400(Lcom/xyron/game/main/SAMP;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4944
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneStatus()Ljava/lang/String;
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4949
    const-string/jumbo v0, "wifi"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4951
    :try_start_0
    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/xyron/game/main/SAMP;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const/4 v5, -0x1

    goto :goto_0

    .line 4953
    :cond_0
    const-string v5, "level"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    :goto_0
    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    .line 4954
    :cond_1
    const-string v6, "scale"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4955
    :goto_1
    const-string v6, "battery"

    if-ltz v5, :cond_2

    if-lez v2, :cond_2

    int-to-float v5, v5

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v5, v5, v7

    int-to-float v2, v2

    div-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4956
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    const-string v6, "pt-BR"

    invoke-static {v6}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4957
    const-string v5, "America/Sao_Paulo"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4958
    const-string v5, "clock"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4959
    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Lcom/xyron/game/main/SAMP;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/16 v5, 0x17

    if-eqz v2, :cond_4

    .line 4960
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    goto :goto_4

    :cond_4
    :goto_3
    move-object v6, v4

    :goto_4
    if-eqz v2, :cond_5

    .line 4961
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v5, :cond_5

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v4

    :goto_5
    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_6

    .line 4962
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    .line 4964
    :goto_6
    const-string v9, "offline"

    if-eqz v6, :cond_7

    .line 4965
    invoke-virtual {v6, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v10

    if-nez v10, :cond_8

    :cond_7
    if-eqz v8, :cond_9

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-ne v10, v5, :cond_9

    .line 4967
    :cond_8
    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v2}, Lcom/xyron/game/main/SAMP;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_f

    .line 4969
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v4, -0x7f

    if-le v2, v4, :cond_11

    if-gez v2, :cond_11

    const/4 v3, 0x5

    .line 4970
    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    goto :goto_9

    :cond_9
    if-eqz v6, :cond_a

    .line 4972
    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    if-eqz v8, :cond_d

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_d

    .line 4973
    :cond_b
    const-string v0, "mobile"

    .line 4975
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0x1c

    if-lt v2, v5, :cond_11

    .line 4977
    :try_start_1
    iget-object v2, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Lcom/xyron/game/main/SAMP;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_c

    goto :goto_7

    .line 4978
    :cond_c
    invoke-static {v2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/TelephonyManager;)Landroid/telephony/SignalStrength;

    move-result-object v4

    :goto_7
    if-eqz v4, :cond_11

    .line 4979
    invoke-static {v4}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/SignalStrength;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    goto :goto_9

    :cond_d
    if-nez v6, :cond_10

    if-eqz v8, :cond_e

    goto :goto_8

    :cond_e
    move-object v0, v9

    :cond_f
    const/4 v3, 0x0

    goto :goto_9

    .line 4985
    :cond_10
    :goto_8
    :try_start_2
    const-string v0, "connected"

    .line 4988
    :catch_0
    :cond_11
    :goto_9
    const-string v2, "network"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4989
    const-string v0, "bars"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    .line 4992
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Phone status unavailable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SAMP"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4994
    :goto_a
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4933
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->lerNomeDoPlayer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimeConfig()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5009
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$13000(Lcom/xyron/game/main/SAMP;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5004
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$12900(Lcom/xyron/game/main/SAMP;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4999
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$12800(Lcom/xyron/game/main/SAMP;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemKeyboard()Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4844
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v1, "angra_ui_v18"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "systemKeyboard"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDesktopEmulator()Z
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4796
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 4797
    const-string/jumbo v5, "x86"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method synthetic lambda$animatePhoneClose$2$com-xyron-game-main-SAMP$RuntimeOverlayBridge()V
    .locals 3

    .line 4806
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$9100(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;

    move-result-object v1

    const-string/jumbo v2, "window.XyronCompleteLeave&&window.XyronCompleteLeave();"

    invoke-static {v0, v1, v2}, Lcom/xyron/game/main/SAMP;->access$14900(Lcom/xyron/game/main/SAMP;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$animatePhoneClose$3$com-xyron-game-main-SAMP$RuntimeOverlayBridge()V
    .locals 3

    .line 4805
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$7100(Lcom/xyron/game/main/SAMP;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda14;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/xyron/game/main/SAMP;->access$14800(Lcom/xyron/game/main/SAMP;ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$applyControlLayout$22$com-xyron-game-main-SAMP$RuntimeOverlayBridge(II)V
    .locals 3

    .line 5159
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const/16 v1, -0x50

    const/16 v2, 0x50

    invoke-static {v0, p1, v1, v2}, Lcom/xyron/game/main/SAMP;->access$3900(Lcom/xyron/game/main/SAMP;III)I

    move-result p1

    .line 5160
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p2, v1, v2}, Lcom/xyron/game/main/SAMP;->access$3900(Lcom/xyron/game/main/SAMP;III)I

    move-result p2

    .line 5161
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p1, p2}, Lcom/xyron/game/launcher/util/ConfigValidator;->applyTouchLayoutOffsets(Landroid/content/Context;II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5165
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$13802(Lcom/xyron/game/main/SAMP;I)I

    .line 5166
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1, p2}, Lcom/xyron/game/main/SAMP;->access$13902(Lcom/xyron/game/main/SAMP;I)I

    .line 5167
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14200(Lcom/xyron/game/main/SAMP;)V

    .line 5168
    invoke-static {}, Lcom/xyron/game/main/SAMP;->access$500()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5170
    :try_start_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->reloadHudFixTouchLayout()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5172
    const-string p2, "SAMP"

    const-string v0, "Native touch reload helper unavailable"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5175
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string p2, "Posicoes dos botoes aplicadas."

    invoke-static {p1, p2, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 5177
    :cond_1
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string p2, "Nao foi possivel aplicar os controles."

    invoke-static {p1, p2, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method synthetic lambda$applyIPhoneAudio$11$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Ljava/lang/String;)V
    .locals 2

    .line 4921
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$6800(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/PhoneApps;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/PhoneApps;->applyPhoneSettings(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method synthetic lambda$finishSettingsTransition$4$com-xyron-game-main-SAMP$RuntimeOverlayBridge()V
    .locals 1

    .line 4818
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$7400(Lcom/xyron/game/main/SAMP;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$7800(Lcom/xyron/game/main/SAMP;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$mensagem$29$com-xyron-game-main-SAMP$RuntimeOverlayBridge()V
    .locals 3

    .line 5244
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v1, "Bridge ativa no runtime."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 5248
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$openAccountPage$0$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Ljava/lang/String;)V
    .locals 3

    .line 4743
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4745
    :catch_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v0, "Nenhum aplicativo dispon\u00edvel para abrir o link."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$openCodiguin$12$com-xyron-game-main-SAMP$RuntimeOverlayBridge()V
    .locals 2

    .line 4927
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlay()V

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v1, "/codiguin"

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$6700(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$resetControlLayout$8$com-xyron-game-main-SAMP$RuntimeOverlayBridge()V
    .locals 4

    .line 4880
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/ConfigValidator;->resetTouchLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4881
    invoke-static {}, Lcom/xyron/game/main/SAMP;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4883
    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->reloadHudFixTouchLayout()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4885
    const-string v2, "SAMP"

    const-string v3, "Native touch reload helper unavailable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4888
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    if-eqz v0, :cond_1

    .line 4889
    const-string v0, "Controles restaurados."

    goto :goto_1

    :cond_1
    const-string v0, "Falha ao restaurar controles."

    :goto_1
    const/4 v2, 0x0

    .line 4888
    invoke-static {v1, v0, v2}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 4890
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$runCommand$10$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Ljava/lang/String;)V
    .locals 1

    .line 4909
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$6700(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$saveControlLayout$7$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Ljava/lang/String;)V
    .locals 3

    .line 4861
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p1}, Lcom/xyron/game/launcher/util/ConfigValidator;->applyTouchLayoutPositions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4863
    invoke-static {}, Lcom/xyron/game/main/SAMP;->access$500()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4865
    :try_start_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {p1}, Lcom/xyron/game/main/SAMP;->reloadHudFixTouchLayout()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4867
    const-string v1, "SAMP"

    const-string v2, "Native touch reload helper unavailable"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4870
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v1, "Posicoes dos botoes salvas."

    invoke-static {p1, v1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 4872
    :cond_1
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v1, "Nao foi possivel salvar os controles."

    invoke-static {p1, v1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method synthetic lambda$selectWeapon$9$com-xyron-game-main-SAMP$RuntimeOverlayBridge(I)V
    .locals 2

    .line 0
    if-ltz p1, :cond_0

    const/16 v0, 0x2e

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4899
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/xyron/game/main/SAMP;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/SAMP;->queueHudFixWeaponSelection(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4901
    const-string v0, "SAMP"

    const-string v1, "Native selectWeapon indisponivel."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4903
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$8100(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method synthetic lambda$setAudioMix$14$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Ljava/lang/String;I)V
    .locals 3

    .line 5050
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v1, "angra_audio_mix_v1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14700(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method synthetic lambda$setBrightness$21$com-xyron-game-main-SAMP$RuntimeOverlayBridge(I)V
    .locals 3

    .line 5150
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const/16 v1, 0xa

    const/16 v2, 0x64

    invoke-static {v0, p1, v1, v2}, Lcom/xyron/game/main/SAMP;->access$3900(Lcom/xyron/game/main/SAMP;III)I

    move-result p1

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$13702(Lcom/xyron/game/main/SAMP;I)I

    .line 5151
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14200(Lcom/xyron/game/main/SAMP;)V

    .line 5152
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14300(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method synthetic lambda$setChatScale$18$com-xyron-game-main-SAMP$RuntimeOverlayBridge(F)V
    .locals 2

    .line 5117
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const v1, 0x3fc66666    # 1.55f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$14402(Lcom/xyron/game/main/SAMP;F)F

    .line 5118
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14200(Lcom/xyron/game/main/SAMP;)V

    .line 5119
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14500(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method synthetic lambda$setEffectsEnabled$26$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Z)V
    .locals 1

    .line 5210
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$13502(Lcom/xyron/game/main/SAMP;Z)Z

    .line 5211
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14200(Lcom/xyron/game/main/SAMP;)V

    .line 5212
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14300(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method synthetic lambda$setFpsCounterEnabled$20$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Z)V
    .locals 2

    .line 5135
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$13602(Lcom/xyron/game/main/SAMP;Z)Z

    .line 5136
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$14200(Lcom/xyron/game/main/SAMP;)V

    .line 5137
    invoke-static {}, Lcom/xyron/game/main/SAMP;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5139
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/SAMP;->setHudFixFpsCounterEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5141
    const-string v0, "SAMP"

    const-string v1, "Native FPS counter helper unavailable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$setFpsLimit$19$com-xyron-game-main-SAMP$RuntimeOverlayBridge(I)V
    .locals 3

    .line 5126
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const/16 v1, 0x1e

    const/16 v2, 0x78

    invoke-static {v0, p1, v1, v2}, Lcom/xyron/game/main/SAMP;->access$3900(Lcom/xyron/game/main/SAMP;III)I

    move-result p1

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$4102(Lcom/xyron/game/main/SAMP;I)I

    .line 5127
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14200(Lcom/xyron/game/main/SAMP;)V

    .line 5128
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14300(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method synthetic lambda$setInventoryHotbar$6$com-xyron-game-main-SAMP$RuntimeOverlayBridge()V
    .locals 1

    .line 4855
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$6300(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method synthetic lambda$setMobileOption$15$com-xyron-game-main-SAMP$RuntimeOverlayBridge(II)V
    .locals 3

    .line 5060
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v1, "rio_mobile_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "option_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5061
    invoke-static {}, Lcom/xyron/game/main/SAMP;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5062
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, p1, p2}, Lcom/xyron/game/main/SAMP;->queueHudFixMobileOption(II)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5063
    const-string p2, "SAMP"

    const-string v0, "Mobile settings helper unavailable"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$setOverlayBlurEnabled$27$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Z)V
    .locals 1

    .line 5223
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$8200(Lcom/xyron/game/main/SAMP;Z)V

    return-void
.end method

.method synthetic lambda$setPhoneExpanded$1$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Z)V
    .locals 1

    .line 4758
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$10900(Lcom/xyron/game/main/SAMP;Z)V

    return-void
.end method

.method synthetic lambda$setQuality$24$com-xyron-game-main-SAMP$RuntimeOverlayBridge(I)V
    .locals 3

    .line 5193
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lcom/xyron/game/main/SAMP;->access$3900(Lcom/xyron/game/main/SAMP;III)I

    move-result p1

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$13302(Lcom/xyron/game/main/SAMP;I)I

    .line 5194
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14200(Lcom/xyron/game/main/SAMP;)V

    .line 5195
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14300(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method synthetic lambda$setRadarEnabled$16$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Z)V
    .locals 1

    .line 5099
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$13102(Lcom/xyron/game/main/SAMP;Z)Z

    .line 5100
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14200(Lcom/xyron/game/main/SAMP;)V

    .line 5101
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14600(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method synthetic lambda$setRenderDistance$23$com-xyron-game-main-SAMP$RuntimeOverlayBridge(I)V
    .locals 3

    .line 5185
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const/16 v1, 0x1e

    const/16 v2, 0xa0

    invoke-static {v0, p1, v1, v2}, Lcom/xyron/game/main/SAMP;->access$3900(Lcom/xyron/game/main/SAMP;III)I

    move-result p1

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$3802(Lcom/xyron/game/main/SAMP;I)I

    .line 5186
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14200(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method synthetic lambda$setShadowsEnabled$25$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Z)V
    .locals 1

    .line 5202
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$13402(Lcom/xyron/game/main/SAMP;Z)Z

    .line 5203
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14200(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method synthetic lambda$setSystemKeyboard$5$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Z)V
    .locals 1

    .line 4848
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2500(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/CustomKeyboard;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$2500(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/CustomKeyboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/ui/CustomKeyboard;->setSystemKeyboard(Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setVoiceEnabled$17$com-xyron-game-main-SAMP$RuntimeOverlayBridge(Z)V
    .locals 1

    .line 5108
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$13202(Lcom/xyron/game/main/SAMP;Z)Z

    .line 5109
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$14200(Lcom/xyron/game/main/SAMP;)V

    .line 5110
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {p1}, Lcom/xyron/game/main/SAMP;->access$6100(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method synthetic lambda$sharePhoneContact$13$com-xyron-game-main-SAMP$RuntimeOverlayBridge()V
    .locals 2

    .line 4929
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlay()V

    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v1, "/compartilharcontato"

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$6700(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$startVoiceCommand$28$com-xyron-game-main-SAMP$RuntimeOverlayBridge([ZLjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 5231
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p2}, Lcom/xyron/game/main/SAMP;->access$14100(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    aput-boolean p2, p1, v0

    .line 5232
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public mensagem()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5244
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda16;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openAccountPage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-nez p1, :cond_0

    .line 4734
    const-string p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "terms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "privacy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "complaint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-void

    .line 4741
    :pswitch_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda24;

    const-string v1, "about:blank"

    invoke-direct {v0, p0, v1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda24;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e8d8031 -> :sswitch_3
        -0x53a10355 -> :sswitch_2
        -0x12bedc78 -> :sswitch_1
        0x6924987 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public openCodiguin()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4927
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openInventory()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4778
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->showInventoryOverlay()V

    return-void
.end method

.method public openNativeHudEditor()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4829
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$11100(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method public openNativeSettings()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5093
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->showSettingsOverlay()V

    return-void
.end method

.method public openPhone()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4773
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->showPhoneOverlay()V

    return-void
.end method

.method public openSettingsPanel()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4788
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->showSettingsOverlay()V

    return-void
.end method

.method public openSettingsTransition()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4812
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP;->access$11000(Lcom/xyron/game/main/SAMP;Z)V

    return-void
.end method

.method public openWeaponWheel()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4783
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->showWeaponWheelOverlay()V

    return-void
.end method

.method public phoneTextFocus(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4923
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0, p1}, Lcom/xyron/game/main/SAMP;->access$11302(Lcom/xyron/game/main/SAMP;Z)Z

    return-void
.end method

.method public postPhoneMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4913
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$6800(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/PhoneApps;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/PhoneApps;->postMessage(Ljava/lang/String;)V

    return-void
.end method

.method public previewNotification(ILjava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5218
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v1, "DESTRITO NOBRE"

    const/16 v2, 0xc80

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/xyron/game/main/SAMP;->showAngraNotification(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public requestIPhone(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4915
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$6800(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/PhoneApps;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/PhoneApps;->requestIPhone(Ljava/lang/String;)V

    return-void
.end method

.method public resetControlLayout()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4879
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda7;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetNativeHudControls()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4835
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$11100(Lcom/xyron/game/main/SAMP;)V

    return-void
.end method

.method public runCommand(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4909
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda20;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveControlLayout(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4860
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda26;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public selectWeapon(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4896
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda10;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;I)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAudioMix(Ljava/lang/String;I)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5048
    const-string v0, "sfx"

    const-string v1, "master"

    const-string v2, "voip"

    const-string v3, "vehicles"

    const-string v4, "ambient"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x64

    .line 5049
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5050
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda9;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAudioVolume(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5088
    const-string v0, "master"

    invoke-virtual {p0, v0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->setAudioMix(Ljava/lang/String;I)V

    return-void
.end method

.method public setBrightness(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5149
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda23;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;I)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setChatScale(F)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5116
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda18;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;F)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEffectsEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5209
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda17;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Z)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFpsCounterEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5134
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Z)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFpsLimit(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5125
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda28;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;I)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInventoryHotbar(Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4854
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v1, "angra_ui_v18"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hotbar"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4855
    iget-object p1, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;)V

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMobileOption(II)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/16 v0, 0xf

    .line 5056
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v4, v1, v2

    if-ne p1, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return-void

    .line 5059
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda6;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;II)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x5
        0x6
        0x7
        0x9
        0xa
        0xb
        0xf
        0x10
        0x12
        0x17
        0x23
    .end array-data
.end method

.method public setOverlayBlurEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5223
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda15;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Z)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPhoneExpanded(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4758
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda21;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Z)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setQuality(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5192
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda12;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;I)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRadarEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5098
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda27;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Z)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRenderDistance(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5184
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda25;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;I)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setShadowsEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5201
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda22;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Z)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSystemKeyboard(Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4847
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    const-string v1, "angra_ui_v18"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "systemKeyboard"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4848
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda11;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Z)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVoiceEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5107
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda19;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Z)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sharePhoneContact()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4929
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v1, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stageIPhoneSettings(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4917
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$6800(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/PhoneApps;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/PhoneApps;->stageSettings(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public stageIPhoneSettingsPatch(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4919
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    invoke-static {v0}, Lcom/xyron/game/main/SAMP;->access$6800(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/PhoneApps;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/PhoneApps;->stageSettingsPatch(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public startVoiceCommand(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    .line 5228
    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 5229
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5230
    iget-object v0, p0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;->this$0:Lcom/xyron/game/main/SAMP;

    new-instance v4, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0, v1, p1, v3}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge$$ExternalSyntheticLambda13;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;[ZLjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v4}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5235
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5237
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 5239
    :goto_0
    aget-boolean p1, v1, v2

    return p1
.end method

.method public usesNativeOverlayMotion()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
