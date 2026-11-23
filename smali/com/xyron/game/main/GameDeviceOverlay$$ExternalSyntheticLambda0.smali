.class public final synthetic Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/main/GameDeviceOverlay;


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/main/GameDeviceOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/GameDeviceOverlay;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/xyron/game/main/GameDeviceOverlay$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-virtual {v0, p1, p2}, Lcom/xyron/game/main/GameDeviceOverlay;->lambda$new$0$com-xyron-game-main-GameDeviceOverlay(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
