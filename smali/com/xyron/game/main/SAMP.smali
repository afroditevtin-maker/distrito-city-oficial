.class public Lcom/xyron/game/main/SAMP;
.super Lcom/raiferoleplay/game/game/SAMP;
.source "SAMP.java"

# interfaces
.implements Lcom/xyron/game/main/ui/CustomKeyboard$InputListener;
.implements Lcom/xyron/game/main/HeightProvider$HeightListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;
    }
.end annotation


# static fields
.field private static final AUTOMATIC_PAUSE_RESUME_SUPPRESSION_RELEASE_DELAY_MS:J = 0x640L

.field public static final EXTRA_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final EXTRA_SERVER_IP:Ljava/lang/String; = "server_ip"

.field public static final EXTRA_SERVER_PORT:Ljava/lang/String; = "server_port"

.field private static final HUD_FPS_LIMIT_MAX:I = 0x78

.field private static final HUD_FPS_LIMIT_MIN:I = 0x1e

.field private static final HUD_QUALITY_BALANCED:I = 0x1

.field private static final HUD_QUALITY_FPS:I = 0x0

.field private static final HUD_QUALITY_HIGH:I = 0x2

.field private static final HUD_RENDER_DISTANCE_MAX:I = 0xa0

.field private static final HUD_RENDER_DISTANCE_MIN:I = 0x1e

.field private static final HUD_RENDER_PREFS:Ljava/lang/String; = "xyron_hud_render_settings"

.field private static final INVENTORY_OVERLAY_LOW_RAM_DELAY_MS:J = 0x1c20L

.field private static final INVENTORY_OVERLAY_URL:Ljava/lang/String; = "file:///android_asset/interfaces/inventario_angra/inventario_interativo.html"

.field private static final INVENTORY_OVERLAY_WARMUP_DELAY_MS:J = 0x11f8L

.field private static final MAP_OVERLAY_URL:Ljava/lang/String; = "file:///android_asset/interfaces/map/index.html"

.field private static final NATIVE_MENU_MAP_X_RATIO:F = 0.369f

.field private static final NATIVE_MENU_MAP_Y_RATIO:F = 0.762f

.field private static final NATIVE_MENU_RESUME_AFTER_BACKGROUND_DELAYS_MS:[J

.field private static final NATIVE_MENU_RESUME_AFTER_SYSTEM_UI_DELAY_MS:J = 0x1c2L

.field private static final NATIVE_MENU_RESUME_X_RATIO:F = 0.5f

.field private static final NATIVE_MENU_RESUME_Y_RATIO:F = 0.893f

.field private static final NATIVE_MENU_SETTINGS_X_RATIO:F = 0.631f

.field private static final NATIVE_MENU_SETTINGS_Y_RATIO:F = 0.762f

.field private static final NATIVE_OVERLAY_INVENTORY:I = 0x2

.field private static final NATIVE_OVERLAY_NONE:I = 0x0

.field private static final NATIVE_OVERLAY_PHONE:I = 0x1

.field private static final NATIVE_SETTINGS_FIRST_TAP_DELAY_MS:J = 0x17cL

.field private static final NATIVE_SETTINGS_SECOND_TAP_DELAY_MS:J = 0x2d0L

.field private static final PHONE_IMAGE_REQUEST:I = 0xa625

.field private static final PHONE_OVERLAY_URL:Ljava/lang/String; = "file:///android_asset/interfaces/iphone/index.html"

.field private static final PHONE_OVERLAY_WARMUP_DELAY_MS:J = 0xa28L

.field private static final PHONE_OVERLAY_WARMUP_LOW_RAM_DELAY_MS:J = 0x1450L

.field private static final SETTINGS_OVERLAY_URL:Ljava/lang/String; = "file:///android_asset/interfaces/settings/index.html"

.field private static final TAG:Ljava/lang/String; = "SAMP"

.field private static final USE_NATIVE_IMGUI_OVERLAYS:Z = false

.field private static final VERBOSE_OVERLAY_LOGS:Z = false

.field private static final VOICE_COMMAND_REQUEST:I = 0x1132

.field private static final WEAPON_WHEEL_OVERLAY_URL:Ljava/lang/String; = "file:///android_asset/interfaces/weapon_wheel_classic/index.html"

.field private static hudFixNativeLoaded:Z

.field private static instance:Lcom/xyron/game/main/SAMP;

.field static vmVersion:Ljava/lang/String;


# instance fields
.field DialogId:I

.field private LoginScreenView:Landroid/view/View;

.field private RegisterScreenView:Landroid/view/View;

.field private TeclasAbertas:Z

.field private WebViewScreenView:Landroid/view/View;

.field private accessoryEditorVisible:Z

.field private ammoText:Landroid/widget/TextView;

.field private angraAdminLevel:I

.field private angraBanReturning:Z

.field private angraBankRequestSequence:I

.field private angraDoorId:I

.field private angraDoorKind:I

.field private angraDoorVisible:Z

.field private angraEnergy:I

.field private angraHudExperiment:Lcom/xyron/game/main/AngraHudExperiment;

.field private angraHunger:I

.field private angraInSafeZone:Z

.field private angraInVehicle:Z

.field private angraJailed:Z

.field private angraLevelProgress:Ljava/lang/String;

.field private angraMarried:Z

.field private final angraNoticeAnchorListener:Landroid/view/View$OnLayoutChangeListener;

.field private angraNoticeEntrance:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private angraNoticeGeneration:J

.field private angraNoticeHost:Landroid/widget/FrameLayout;

.field private angraNoticeRadarAnchor:Landroid/view/View;

.field private angraNoticeRadarFrame:Landroid/view/View;

.field private angraNoticeRoot:Landroid/view/ViewGroup;

.field private angraNotifyOverlay:Lcom/xyron/game/main/AngraNotifyOverlay;

.field private angraPause:Lcom/xyron/game/main/ui/AngraPause;

.field private angraPausePing:I

.field private angraPauseTemperature:I

.field private angraSafeWeaponExempt:Z

.field private angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

.field private angraServerNeeds:Z

.field private angraSpouse:Ljava/lang/String;

.field private angraSystems:Lcom/xyron/game/main/AngraSystems;

.field private angraWeaponsBlocked:Z

.field private animationPanel:Lcom/xyron/game/main/AnimationPanel;

.field private animationPanelVisible:Z

.field private apiCheckerRunnable:Ljava/lang/Runnable;

.field private final applyPendingHudUpdateRunnable:Ljava/lang/Runnable;

.field private armourBar:Landroid/widget/ProgressBar;

.field private armourText:Landroid/widget/TextView;

.field private backgroundMenuDismissStep:I

.field private backgroundReturnDismissArmed:Z

.field buttonLockCD:J

.field private cityFooterClock:Ljava/lang/String;

.field private final clearAutomaticPauseResumeSuppressionRunnable:Ljava/lang/Runnable;

.field private connectScreenView:Landroid/view/View;

.field private final dismissMenuAfterBackgroundRunnable:Ljava/lang/Runnable;

.field private final dismissMenuAfterSystemUiRunnable:Ljava/lang/Runnable;

.field private eatBar:Landroid/widget/ProgressBar;

.field private enter_passengerB:Landroid/widget/ImageView;

.field private final footerHudPollRunnable:Ljava/lang/Runnable;

.field private footerHudPolling:Z

.field private framewebInventory:Landroid/widget/FrameLayout;

.field private framewebMiniMap:Landroid/widget/FrameLayout;

.field private framewebSettings:Landroid/widget/FrameLayout;

.field private framewebWeaponWheel:Landroid/widget/FrameLayout;

.field private framewebcell:Landroid/widget/FrameLayout;

.field private gameDevices:Lcom/xyron/game/main/GameDeviceOverlay;

.field private gameLoadingServer:Landroid/widget/TextView;

.field private gameLoadingStatus:Landroid/widget/TextView;

.field private gameLoadingVideo:Landroid/widget/VideoView;

.field private gameVoiceEffects:Lcom/xyron/game/main/GameVoiceEffects;

.field private gunImg:Landroid/widget/ImageView;

.field private handler:Landroid/os/Handler;

.field private hideRioNotification:Ljava/lang/Runnable;

.field private hpBar:Landroid/widget/ProgressBar;

.field private hpText:Landroid/widget/TextView;

.field public hud1:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private hudBrightness:I

.field private hudButtonEditor:Lcom/xyron/game/main/HudButtonEditor;

.field private hudChatScale:F

.field private hudChatSizeToggle:Landroid/widget/TextView;

.field private hudControlOffsetX:I

.field private hudControlOffsetY:I

.field private hudEffectsEnabled:Z

.field private hudEffectsToggle:Landroid/widget/TextView;

.field private hudFpsCounterEnabled:Z

.field private hudFpsLimit:I

.field private hudFpsLimitSeek:Landroid/widget/SeekBar;

.field private hudFpsLimitValue:Landroid/widget/TextView;

.field private hudMobileOptionsRestored:Z

.field private hudNativeMapVisible:Z

.field private hudQuality:I

.field private hudQualityBalancedButton:Landroid/widget/TextView;

.field private hudQualityHighButton:Landroid/widget/TextView;

.field private hudQualityLowButton:Landroid/widget/TextView;

.field private hudRadarEnabled:Z

.field private hudRadarToggle:Landroid/widget/TextView;

.field private hudRenderDistance:I

.field private hudRenderDistanceSeek:Landroid/widget/SeekBar;

.field private hudRenderDistanceValue:Landroid/widget/TextView;

.field private hudSettingsPanel:Landroid/view/View;

.field private hudSettingsSummary:Landroid/widget/TextView;

.field private hudShadowsEnabled:Z

.field private hudShadowsToggle:Landroid/widget/TextView;

.field private final hudUpdatePosted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private hudVoiceEnabled:Z

.field private hudVoiceMuted:Z

.field private hudVoiceToggle:Landroid/widget/TextView;

.field public hud_alt_v:Landroid/widget/TextView;

.field public hud_f_v:Landroid/widget/TextView;

.field hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public hud_y_v:Landroid/widget/TextView;

.field private iShowHud:I

.field private iShowLogo:Z

.field private inventoryAdapter:Lcom/xyron/game/main/InventoryAdapter;

.field private inventoryOverlayConfigured:Z

.field private inventoryOverlayWarmupRunnable:Ljava/lang/Runnable;

.field private lastWeaponWheelJson:Ljava/lang/String;

.field loadingscreen:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private lock_vehicle:Landroid/widget/ImageView;

.field public logo:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mAttachEdit:Lcom/xyron/game/main/ui/AttachEdit;

.field private mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

.field private mDialog:Lcom/xyron/game/main/ui/dialog/DialogManager;

.field private mHeightProvider:Lcom/xyron/game/main/HeightProvider;

.field private mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

.field private mKeyboard:Lcom/xyron/game/main/ui/CustomKeyboard;

.field private mPickupCreatorOverlay:Lcom/xyron/game/main/ui/PickupCreatorOverlay;

.field private mRadialMenu:Lcom/xyron/game/main/ui/RadialMenu;

.field private mRadialVehicles:Lcom/xyron/game/main/ui/RadialVehicles;

.field private mRadinho:Lcom/xyron/game/main/ui/Radinho;

.field private mapOverlayConfigured:Z

.field private final maskedGameplayViews:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private moneyText:Landroid/widget/TextView;

.field private nativeGameplayHudSuppressed:Z

.field private final nativeHudEditorPoll:Ljava/lang/Runnable;

.field private nativeHudEditorVisible:Z

.field private nativeSurfaceHasResumed:Z

.field private nearbyPlayerMenu:Lcom/xyron/game/main/NearbyPlayerMenu;

.field private noticeLifetime:Landroid/animation/ValueAnimator;

.field private overlayBlurScrim:Landroid/view/View;

.field private ownsPhone:Z

.field private pendingBackgroundMenuDismiss:Z

.field private volatile pendingHudAmmo:I

.field private volatile pendingHudArmour:I

.field private volatile pendingHudEat:I

.field private volatile pendingHudGunId:I

.field private volatile pendingHudHp:I

.field private volatile pendingHudMoney:I

.field private pendingPhoneDestination:Lorg/json/JSONObject;

.field private pendingSystemUiMenuDismiss:Z

.field private pendingVoiceTarget:Landroid/webkit/WebView;

.field private phoneApps:Lcom/xyron/game/main/PhoneApps;

.field private volatile phoneBank:I

.field private volatile phoneChips:I

.field private volatile phoneCoins:I

.field private volatile phoneDirtyMoney:I

.field private phoneDocumentReady:Z

.field private final phoneEventInbox:Lcom/xyron/game/main/PhoneEventInbox;

.field private phoneEventSerial:J

.field private volatile phoneExperience:I

.field private volatile phoneFines:I

.field private volatile phoneGems:I

.field private phoneImageCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private volatile phoneLevel:I

.field private volatile phoneMoney:I

.field private volatile phoneNextExperience:I

.field private phoneOpenRequestedAt:J

.field private phoneOverlayConfigured:Z

.field private phoneOverlayWarmupRunnable:Ljava/lang/Runnable;

.field private phoneOverlayWarmupScheduled:Z

.field private volatile phonePowder:I

.field private volatile phoneRG:I

.field private volatile phoneTaxes:I

.field private volatile phoneTextFocused:Z

.field private phoneTransitionViewport:Z

.field private pvpCountdown:Landroid/widget/TextView;

.field private pvpScoreboard:Landroid/widget/TextView;

.field private receivedNativeWeaponWheelSnapshot:Z

.field private referencePanels:Lcom/xyron/game/main/ReferencePanels;

.field private final rioFooterDateFormat:Ljava/text/SimpleDateFormat;

.field private rioMapHeader:Landroid/view/View;

.field private rioNotification:Landroid/view/View;

.field private rioNotificationIcon:Landroid/widget/ImageView;

.field private rioNotificationMessage:Landroid/widget/TextView;

.field private rioNotificationTitle:Landroid/widget/TextView;

.field private rioPlayerDateTime:Landroid/widget/TextView;

.field private rioPlayerIdentity:Landroid/widget/TextView;

.field private rioRadarFrame:Landroid/view/View;

.field private rioSafeZoneShield:Landroid/widget/ImageView;

.field private rioSpeedValue:Landroid/widget/TextView;

.field private rioSpeedometer:Landroid/view/View;

.field private rioVehicleFuelLevel:Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

.field private rioVehicleHealth:Landroid/widget/TextView;

.field private rioVehicleHealthLevel:Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

.field private rioWeaponAmmo:Landroid/widget/TextView;

.field private rioWeaponCurrentIcon:Landroid/widget/ImageView;

.field private roleplayUI:Lcom/xyron/game/main/RoleplayUI;

.field private runtimeLowRamMode:Z

.field private runtimeMotionEpoch:I

.field private runtimeOverlayAnimator:Landroid/animation/ValueAnimator;

.field private runtimeOverlayBridge:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

.field private final runtimeOverlayStates:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/webkit/WebView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private runtimeTopOverlay:Landroid/widget/FrameLayout;

.field private safeZonePacket:I

.field private safeZonePage:I

.field private final safeZonePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private sampledEngine:I

.field private sampledLights:I

.field private sampledWeaponClip:I

.field private sampledWeaponReserve:I

.field private sampledWeaponType:I

.field private settingsDocumentReady:Z

.field private settingsMotionFromPhone:Z

.field private settingsOverlayConfigured:Z

.field private final settlePhoneOverlay:Ljava/lang/Runnable;

.field private final shopRequestSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field private skipNextAutomaticLifecycleResumeEvent:Z

.field private sonoBar:Landroid/widget/ProgressBar;

.field private suppressAutomaticNativePauseResume:Z

.field private systemPanelVisible:Z

.field private final uiHandler:Landroid/os/Handler;

.field private final vehicleHudPollRunnable:Ljava/lang/Runnable;

.field private vehicleHudPolling:Z

.field private weaponWheelOverlayConfigured:Z
.field private weaponToggleArmed:Z
.field private lastWeaponToggleType:I

.field private webInventory:Landroid/webkit/WebView;

.field private webMiniMap:Landroid/webkit/WebView;

.field private webSettings:Landroid/webkit/WebView;

.field private webWeaponWheel:Landroid/webkit/WebView;

.field private webcell:Landroid/webkit/WebView;

.field private webcellcarregada:Z


# direct methods
.method public static synthetic $r8$lambda$QuSoL8ceWE3-lwxOnueXsApyMGo(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyRioReferenceGeometry()V

    return-void
.end method

.method public static synthetic $r8$lambda$UojSXFYdGcE-op_P3yauqtxAuAE(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method public static synthetic $r8$lambda$VqRhl9mEsCn-HbgHFIxVeHoTi7A(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->readPausePing()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Xb8jMINFr5-IanUGSO8r3xn_w7U(Lcom/xyron/game/main/SAMP;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->accessoryEditorVisibility(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$_QtZBUvqiv0693fbVKmt3PfOHOE(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlayInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$cPgOeC--8V5sHyQKfu67VeWLxHo(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlayInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$el06XqlSSj5yHiRyTfPPprigTRA(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlayInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$kw9QZFti_Pemjz6B4tpINItPIes(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->closeAngraPause()V

    return-void
.end method

.method public static synthetic $r8$lambda$m_n6YBSHKRAtvAp0xV_-oJdSMVA(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideSettingsOverlayInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$pk-0kDtN9J-hJY5s3CS6nKG97K8(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->openPickupCreatorOverlay()V

    return-void
.end method

.method public static synthetic $r8$lambda$zMWVdcE__sT8_WWvQY6TMLLEqLU(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->resetPhoneMotionTransform()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 330
    const-string v0, "ShadowHook init result "

    const-string v1, "vmVersion "

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    sput-object v2, Lcom/xyron/game/main/SAMP;->NATIVE_MENU_RESUME_AFTER_BACKGROUND_DELAYS_MS:[J

    const/4 v2, 0x0

    .line 761
    sput-object v2, Lcom/xyron/game/main/SAMP;->vmVersion:Ljava/lang/String;

    .line 762
    const-string v2, "**** Loading SO\'s"

    const-string v3, "SAMP"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :try_start_0
    const-string v2, "java.vm.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xyron/game/main/SAMP;->vmVersion:Ljava/lang/String;

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xyron/game/main/SAMP;->vmVersion:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v1, "bass"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 769
    new-instance v1, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;

    invoke-direct {v1}, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/shadowhook/ShadowHook$Mode;->UNIQUE:Lcom/bytedance/shadowhook/ShadowHook$Mode;

    .line 771
    invoke-virtual {v1, v2}, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->setMode(Lcom/bytedance/shadowhook/ShadowHook$Mode;)Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 772
    invoke-virtual {v1, v2}, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->setDebuggable(Z)Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;

    move-result-object v1

    .line 773
    invoke-virtual {v1, v2}, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->setRecordable(Z)Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;

    move-result-object v1

    .line 774
    invoke-virtual {v1}, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->build()Lcom/bytedance/shadowhook/ShadowHook$Config;

    move-result-object v1

    .line 769
    invoke-static {v1}, Lcom/bytedance/shadowhook/ShadowHook;->init(Lcom/bytedance/shadowhook/ShadowHook$Config;)I

    move-result v1

    .line 776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v0, "samp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 780
    sput-boolean v2, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    .line 781
    const-string v0, "Angra dual-ABI native adapters loaded"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 784
    :goto_0
    invoke-virtual {v0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    nop

    :array_0
    .array-data 8
        0xdc
        0x2f8
        0x58c
        0x898
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .line 107
    invoke-direct {p0}, Lcom/raiferoleplay/game/game/SAMP;-><init>()V

    const/high16 v0, -0x80000000

    .line 146
    iput v0, p0, Lcom/xyron/game/main/SAMP;->angraPauseTemperature:I

    const/4 v0, -0x1

    .line 147
    iput v0, p0, Lcom/xyron/game/main/SAMP;->angraPausePing:I

    .line 150
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->shopRequestSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    new-instance v1, Lcom/xyron/game/main/PhoneEventInbox;

    invoke-direct {v1}, Lcom/xyron/game/main/PhoneEventInbox;-><init>()V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->phoneEventInbox:Lcom/xyron/game/main/PhoneEventInbox;

    .line 169
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->runtimeOverlayStates:Ljava/util/WeakHashMap;

    .line 170
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda23;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->settlePhoneOverlay:Ljava/lang/Runnable;

    const/16 v1, 0x64

    .line 205
    iput v1, p0, Lcom/xyron/game/main/SAMP;->angraHunger:I

    iput v1, p0, Lcom/xyron/game/main/SAMP;->angraEnergy:I

    .line 285
    const-string v2, ""

    iput-object v2, p0, Lcom/xyron/game/main/SAMP;->angraSpouse:Ljava/lang/String;

    .line 286
    const-string v3, "Nivel 1 - 0/6 XP"

    iput-object v3, p0, Lcom/xyron/game/main/SAMP;->angraLevelProgress:Ljava/lang/String;

    .line 493
    const-string v3, "[{\"id\":0,\"ammo\":0,\"current\":true}]"

    iput-object v3, p0, Lcom/xyron/game/main/SAMP;->lastWeaponWheelJson:Ljava/lang/String;

    const/16 v3, 0x46

    .line 508
    iput v3, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistance:I

    const/16 v3, 0x3c

    .line 509
    iput v3, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimit:I

    const/4 v3, 0x1

    .line 510
    iput v3, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    .line 511
    iput-boolean v3, p0, Lcom/xyron/game/main/SAMP;->hudShadowsEnabled:Z

    .line 512
    iput-boolean v3, p0, Lcom/xyron/game/main/SAMP;->hudEffectsEnabled:Z

    .line 513
    iput-boolean v3, p0, Lcom/xyron/game/main/SAMP;->hudRadarEnabled:Z

    .line 514
    iput-boolean v3, p0, Lcom/xyron/game/main/SAMP;->hudVoiceEnabled:Z

    const/4 v4, 0x0

    .line 515
    iput-boolean v4, p0, Lcom/xyron/game/main/SAMP;->hudFpsCounterEnabled:Z

    .line 516
    iput v1, p0, Lcom/xyron/game/main/SAMP;->hudBrightness:I

    .line 517
    iput v4, p0, Lcom/xyron/game/main/SAMP;->hudControlOffsetX:I

    .line 518
    iput v4, p0, Lcom/xyron/game/main/SAMP;->hudControlOffsetY:I

    .line 519
    iput-boolean v3, p0, Lcom/xyron/game/main/SAMP;->hudVoiceMuted:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 520
    iput v1, p0, Lcom/xyron/game/main/SAMP;->hudChatScale:F

    .line 534
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda24;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->angraNoticeAnchorListener:Landroid/view/View$OnLayoutChangeListener;

    .line 546
    iput v0, p0, Lcom/xyron/game/main/SAMP;->sampledWeaponType:I

    const/4 v1, -0x2

    .line 547
    iput v1, p0, Lcom/xyron/game/main/SAMP;->sampledEngine:I

    iput v1, p0, Lcom/xyron/game/main/SAMP;->sampledLights:I

    .line 554
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    .line 558
    new-instance v1, Lcom/xyron/game/main/SAMP$1;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$1;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->nativeHudEditorPoll:Ljava/lang/Runnable;

    .line 582
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->maskedGameplayViews:Ljava/util/IdentityHashMap;

    .line 585
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Locale;

    const-string v6, "pt"

    const-string v7, "BR"

    invoke-direct {v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "dd.MM.yyyy, HH:mm"

    invoke-direct {v1, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->rioFooterDateFormat:Ljava/text/SimpleDateFormat;

    .line 587
    iput-object v2, p0, Lcom/xyron/game/main/SAMP;->cityFooterClock:Ljava/lang/String;

    .line 588
    new-instance v1, Lcom/xyron/game/main/SAMP$2;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$2;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->footerHudPollRunnable:Ljava/lang/Runnable;

    .line 612
    new-instance v1, Lcom/xyron/game/main/SAMP$3;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$3;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->vehicleHudPollRunnable:Ljava/lang/Runnable;

    .line 654
    new-instance v1, Lcom/xyron/game/main/SAMP$4;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$4;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->clearAutomaticPauseResumeSuppressionRunnable:Ljava/lang/Runnable;

    .line 660
    new-instance v1, Lcom/xyron/game/main/SAMP$5;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$5;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->dismissMenuAfterSystemUiRunnable:Ljava/lang/Runnable;

    .line 670
    new-instance v1, Lcom/xyron/game/main/SAMP$6;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$6;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->dismissMenuAfterBackgroundRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 744
    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->mJavaManager:Lcom/akazuki/sampmobilecef/CefJavaManager;

    .line 745
    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->mClientManager:Lcom/akazuki/sampmobilecef/CefClientManager;

    .line 971
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->safeZonePoints:Ljava/util/ArrayList;

    .line 1693
    iput v3, p0, Lcom/xyron/game/main/SAMP;->phoneLevel:I

    iput v0, p0, Lcom/xyron/game/main/SAMP;->phoneExperience:I

    iput v0, p0, Lcom/xyron/game/main/SAMP;->phoneNextExperience:I

    .line 1698
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudUpdatePosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1699
    new-instance v0, Lcom/xyron/game/main/SAMP$16;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$16;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->applyPendingHudUpdateRunnable:Ljava/lang/Runnable;

    .line 2709
    iput v4, p0, Lcom/xyron/game/main/SAMP;->DialogId:I

    .line 2844
    iput-boolean v4, p0, Lcom/xyron/game/main/SAMP;->webcellcarregada:Z

    return-void
.end method

.method private HideWebView(Landroid/webkit/WebView;)V
    .locals 2

    .line 2849
    invoke-virtual {p1}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    const-string v1, "WebView"

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 2850
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2851
    const-string p1, "WebView ocultada com sucesso."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2853
    :cond_0
    const-string p1, "WebView j\u00c3\u00a1 estava oculta."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/xyron/game/main/SAMP;->nativeHudEditorVisible:Z

    return p0
.end method

.method static synthetic access$002(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->nativeHudEditorVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xyron/game/main/SAMP;)Landroid/os/Handler;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/xyron/game/main/SAMP;->vehicleHudPolling:Z

    return p0
.end method

.method static synthetic access$10002(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->phoneDocumentReady:Z

    return p1
.end method

.method static synthetic access$1002(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->vehicleHudPolling:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/PhoneEventInbox;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->phoneEventInbox:Lcom/xyron/game/main/PhoneEventInbox;

    return-object p0
.end method

.method static synthetic access$10200(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->flushPhoneEvents()V

    return-void
.end method

.method static synthetic access$10300(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    return-void
.end method

.method static synthetic access$10402(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->settingsDocumentReady:Z

    return p1
.end method

.method static synthetic access$10500(Lcom/xyron/game/main/SAMP;Landroid/webkit/WebView;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->prepareNativeOverlayMotion(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->flushPhoneDestination()V

    return-void
.end method

.method static synthetic access$10700(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->runtimeMotionEpoch:I

    return p0
.end method

.method static synthetic access$10800(Lcom/xyron/game/main/SAMP;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->runtimeOverlayAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$10802(Lcom/xyron/game/main/SAMP;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->runtimeOverlayAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$10900(Lcom/xyron/game/main/SAMP;Z)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->setPhoneExpandedInternal(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xyron/game/main/SAMP;[I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->applyNativeHudDetails([I)V

    return-void
.end method

.method static synthetic access$11000(Lcom/xyron/game/main/SAMP;Z)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->showSettingsOverlay(Z)V

    return-void
.end method

.method static synthetic access$11100(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->openNativeHudEditor()V

    return-void
.end method

.method static synthetic access$11200(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->angraHotbarEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$11302(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->phoneTextFocused:Z

    return p1
.end method

.method static synthetic access$11400(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->phoneTaxes:I

    return p0
.end method

.method static synthetic access$11500(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->phoneFines:I

    return p0
.end method

.method static synthetic access$11600(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->phoneRG:I

    return p0
.end method

.method static synthetic access$11700(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->phoneBank:I

    return p0
.end method

.method static synthetic access$11800(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->phoneDirtyMoney:I

    return p0
.end method

.method static synthetic access$11900(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->phoneChips:I

    return p0
.end method

.method static synthetic access$12000(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->phonePowder:I

    return p0
.end method

.method static synthetic access$1202(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->suppressAutomaticNativePauseResume:Z

    return p1
.end method

.method static synthetic access$12100(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->phoneGems:I

    return p0
.end method

.method static synthetic access$12200(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->phoneCoins:I

    return p0
.end method

.method static synthetic access$12300(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->phoneNextExperience:I

    return p0
.end method

.method static synthetic access$12400(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->phoneExperience:I

    return p0
.end method

.method static synthetic access$12500(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->phoneLevel:I

    return p0
.end method

.method static synthetic access$12600(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/xyron/game/main/SAMP;->angraServerNeeds:Z

    return p0
.end method

.method static synthetic access$12700(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->phoneMoney:I

    return p0
.end method

.method static synthetic access$12800(Lcom/xyron/game/main/SAMP;)Ljava/lang/String;
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->getSelectedServerName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$12900(Lcom/xyron/game/main/SAMP;)Ljava/lang/String;
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->getSelectedServerAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$13000(Lcom/xyron/game/main/SAMP;)Ljava/lang/String;
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->buildRuntimeConfigJson()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1302(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->pendingSystemUiMenuDismiss:Z

    return p1
.end method

.method static synthetic access$13100(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/xyron/game/main/SAMP;->hudRadarEnabled:Z

    return p0
.end method

.method static synthetic access$13102(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudRadarEnabled:Z

    return p1
.end method

.method static synthetic access$13200(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/xyron/game/main/SAMP;->hudVoiceEnabled:Z

    return p0
.end method

.method static synthetic access$13202(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudVoiceEnabled:Z

    return p1
.end method

.method static synthetic access$13300(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    return p0
.end method

.method static synthetic access$13302(Lcom/xyron/game/main/SAMP;I)I
    .locals 0

    .line 107
    iput p1, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    return p1
.end method

.method static synthetic access$13400(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/xyron/game/main/SAMP;->hudShadowsEnabled:Z

    return p0
.end method

.method static synthetic access$13402(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudShadowsEnabled:Z

    return p1
.end method

.method static synthetic access$13500(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/xyron/game/main/SAMP;->hudEffectsEnabled:Z

    return p0
.end method

.method static synthetic access$13502(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudEffectsEnabled:Z

    return p1
.end method

.method static synthetic access$13600(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/xyron/game/main/SAMP;->hudFpsCounterEnabled:Z

    return p0
.end method

.method static synthetic access$13602(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudFpsCounterEnabled:Z

    return p1
.end method

.method static synthetic access$13700(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->hudBrightness:I

    return p0
.end method

.method static synthetic access$13702(Lcom/xyron/game/main/SAMP;I)I
    .locals 0

    .line 107
    iput p1, p0, Lcom/xyron/game/main/SAMP;->hudBrightness:I

    return p1
.end method

.method static synthetic access$13800(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->hudControlOffsetX:I

    return p0
.end method

.method static synthetic access$13802(Lcom/xyron/game/main/SAMP;I)I
    .locals 0

    .line 107
    iput p1, p0, Lcom/xyron/game/main/SAMP;->hudControlOffsetX:I

    return p1
.end method

.method static synthetic access$13900(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->hudControlOffsetY:I

    return p0
.end method

.method static synthetic access$13902(Lcom/xyron/game/main/SAMP;I)I
    .locals 0

    .line 107
    iput p1, p0, Lcom/xyron/game/main/SAMP;->hudControlOffsetY:I

    return p1
.end method

.method static synthetic access$1400(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->shouldHandleSystemUiMapMenu()Z

    move-result p0

    return p0
.end method

.method static synthetic access$14000(Landroid/content/SharedPreferences;II)I
    .locals 0

    .line 107
    invoke-static {p0, p1, p2}, Lcom/xyron/game/main/SAMP;->savedMobileOption(Landroid/content/SharedPreferences;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$14100(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)Z
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->launchVoiceCommand(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$14200(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->saveHudRenderSettings()V

    return-void
.end method

.method static synthetic access$14300(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudRenderSettingsRuntime()V

    return-void
.end method

.method static synthetic access$14402(Lcom/xyron/game/main/SAMP;F)F
    .locals 0

    .line 107
    iput p1, p0, Lcom/xyron/game/main/SAMP;->hudChatScale:F

    return p1
.end method

.method static synthetic access$14500(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudChatScale()V

    return-void
.end method

.method static synthetic access$14600(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudRadarVisibility()V

    return-void
.end method

.method static synthetic access$14700(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->restoreAngraAudioMix()V

    return-void
.end method

.method static synthetic access$14800(Lcom/xyron/game/main/SAMP;ILjava/lang/Runnable;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/xyron/game/main/SAMP;->runNativeOverlayMotion(ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$14900(Lcom/xyron/game/main/SAMP;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/xyron/game/main/SAMP;->evaluateOverlayJavascript(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xyron/game/main/SAMP;FF)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/xyron/game/main/SAMP;->performNativeMenuTap(FF)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->backgroundMenuDismissStep:I

    return p0
.end method

.method static synthetic access$1602(Lcom/xyron/game/main/SAMP;I)I
    .locals 0

    .line 107
    iput p1, p0, Lcom/xyron/game/main/SAMP;->backgroundMenuDismissStep:I

    return p1
.end method

.method static synthetic access$1612(Lcom/xyron/game/main/SAMP;I)I
    .locals 1

    .line 107
    iget v0, p0, Lcom/xyron/game/main/SAMP;->backgroundMenuDismissStep:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xyron/game/main/SAMP;->backgroundMenuDismissStep:I

    return v0
.end method

.method static synthetic access$1700(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/xyron/game/main/SAMP;->pendingBackgroundMenuDismiss:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->pendingBackgroundMenuDismiss:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->shouldAutoDismissNativeMenu()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->requestNativeGameplayResume()V

    return-void
.end method

.method static synthetic access$200(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/HudButtonEditor;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->hudButtonEditor:Lcom/xyron/game/main/HudButtonEditor;

    return-object p0
.end method

.method static synthetic access$2000()[J
    .locals 1

    .line 107
    sget-object v0, Lcom/xyron/game/main/SAMP;->NATIVE_MENU_RESUME_AFTER_BACKGROUND_DELAYS_MS:[J

    return-object v0
.end method

.method static synthetic access$2100(Lcom/xyron/game/main/SAMP;)Ljava/lang/Runnable;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->dismissMenuAfterBackgroundRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/xyron/game/main/SAMP;)Landroid/widget/VideoView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->gameLoadingVideo:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/dialog/DialogManager;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->mDialog:Lcom/xyron/game/main/ui/dialog/DialogManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/AttachEdit;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->mAttachEdit:Lcom/xyron/game/main/ui/AttachEdit;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/CustomKeyboard;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->mKeyboard:Lcom/xyron/game/main/ui/CustomKeyboard;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/xyron/game/main/SAMP;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->hudUpdatePosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->pendingHudHp:I

    return p0
.end method

.method static synthetic access$2800(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->pendingHudArmour:I

    return p0
.end method

.method static synthetic access$2900(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->pendingHudEat:I

    return p0
.end method

.method static synthetic access$300(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    return p0
.end method

.method static synthetic access$3000(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->pendingHudMoney:I

    return p0
.end method

.method static synthetic access$302(Lcom/xyron/game/main/SAMP;I)I
    .locals 0

    .line 107
    iput p1, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    return p1
.end method

.method static synthetic access$3100(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->pendingHudGunId:I

    return p0
.end method

.method static synthetic access$3200(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->pendingHudAmmo:I

    return p0
.end method

.method static synthetic access$3300(Lcom/xyron/game/main/SAMP;IIIIII)V
    .locals 0

    .line 107
    invoke-direct/range {p0 .. p6}, Lcom/xyron/game/main/SAMP;->applyHudUpdate(IIIIII)V

    return-void
.end method

.method static synthetic access$3400(Lcom/xyron/game/main/SAMP;)Landroid/widget/ImageView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->enter_passengerB:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/xyron/game/main/SAMP;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->enter_passengerB:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/xyron/game/main/SAMP;)Landroid/widget/ImageView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->lock_vehicle:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/xyron/game/main/SAMP;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->lock_vehicle:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/xyron/game/main/SAMP;Z)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->setAltKeyPressedSafely(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/xyron/game/main/SAMP;->TeclasAbertas:Z

    return p0
.end method

.method static synthetic access$3702(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->TeclasAbertas:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistance:I

    return p0
.end method

.method static synthetic access$3802(Lcom/xyron/game/main/SAMP;I)I
    .locals 0

    .line 107
    iput p1, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistance:I

    return p1
.end method

.method static synthetic access$3900(Lcom/xyron/game/main/SAMP;III)I
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/xyron/game/main/SAMP;->clampInt(III)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/xyron/game/main/SAMP;->footerHudPolling:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncHudRenderSettingsText()V

    return-void
.end method

.method static synthetic access$402(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->footerHudPolling:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimit:I

    return p0
.end method

.method static synthetic access$4102(Lcom/xyron/game/main/SAMP;I)I
    .locals 0

    .line 107
    iput p1, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimit:I

    return p1
.end method

.method static synthetic access$4200(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/AngraServerBridge;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->schedulePhoneOverlayWarmup()V

    return-void
.end method

.method static synthetic access$4400(Lcom/xyron/game/main/SAMP;)Ljava/lang/Runnable;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->footerHudPollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudLeftPanelLayout()V

    return-void
.end method

.method static synthetic access$4600(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/AngraHudExperiment;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->angraHudExperiment:Lcom/xyron/game/main/AngraHudExperiment;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->initializeHudSettingsPanel()V

    return-void
.end method

.method static synthetic access$4800(Lcom/xyron/game/main/SAMP;)Landroid/view/View;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->rioRadarFrame:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/xyron/game/main/SAMP;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioRadarFrame:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/xyron/game/main/SAMP;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioSafeZoneShield:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 107
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/xyron/game/main/SAMP;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioSpeedometer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/xyron/game/main/SAMP;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioSpeedValue:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/xyron/game/main/SAMP;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioVehicleHealth:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/RioVehicleIconDrawable;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->rioVehicleHealthLevel:Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    return-object p0
.end method

.method static synthetic access$5302(Lcom/xyron/game/main/SAMP;Lcom/xyron/game/main/ui/RioVehicleIconDrawable;)Lcom/xyron/game/main/ui/RioVehicleIconDrawable;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioVehicleHealthLevel:Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/ui/RioVehicleIconDrawable;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->rioVehicleFuelLevel:Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    return-object p0
.end method

.method static synthetic access$5402(Lcom/xyron/game/main/SAMP;Lcom/xyron/game/main/ui/RioVehicleIconDrawable;)Lcom/xyron/game/main/ui/RioVehicleIconDrawable;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioVehicleFuelLevel:Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/xyron/game/main/SAMP;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioWeaponCurrentIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/xyron/game/main/SAMP;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioWeaponAmmo:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/xyron/game/main/SAMP;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioNotification:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/xyron/game/main/SAMP;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioNotificationIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/xyron/game/main/SAMP;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioNotificationTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xyron/game/main/SAMP;)Landroid/widget/TextView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->rioPlayerIdentity:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$6002(Lcom/xyron/game/main/SAMP;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioNotificationMessage:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$602(Lcom/xyron/game/main/SAMP;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioPlayerIdentity:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudVoiceState()V

    return-void
.end method

.method static synthetic access$6200(Lcom/xyron/game/main/SAMP;)Ljava/lang/Runnable;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->vehicleHudPollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method static synthetic access$6400(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->showAngraAnimations()V

    return-void
.end method

.method static synthetic access$6500(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->openSafeHudSettings()V

    return-void
.end method

.method static synthetic access$6600(Lcom/xyron/game/main/SAMP;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/xyron/game/main/SAMP;->angraAdminLevel:I

    return p0
.end method

.method static synthetic access$6700(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->dispatchRuntimeCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/PhoneApps;
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->phoneApps()Lcom/xyron/game/main/PhoneApps;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6900(Lcom/xyron/game/main/SAMP;Landroid/widget/ImageButton;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->alignAdminHudIcon(Landroid/widget/ImageButton;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xyron/game/main/SAMP;)Landroid/widget/TextView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->rioPlayerDateTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/xyron/game/main/SAMP;->hudNativeMapVisible:Z

    return p0
.end method

.method static synthetic access$702(Lcom/xyron/game/main/SAMP;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->rioPlayerDateTime:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7200(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isInventoryOverlayVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7300(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isWeaponWheelOverlayVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7400(Lcom/xyron/game/main/SAMP;)Z
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isSettingsOverlayVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7500(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->openNativeMapFromRadar()V

    return-void
.end method

.method static synthetic access$7600(Lcom/xyron/game/main/SAMP;Z)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->setNativeRadarVisibleSafely(Z)V

    return-void
.end method

.method static synthetic access$7700(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->cancelOverlayWarmups()V

    return-void
.end method

.method static synthetic access$7800(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlayInternal()V

    return-void
.end method

.method static synthetic access$7900(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlayInternal()V

    return-void
.end method

.method static synthetic access$800(Lcom/xyron/game/main/SAMP;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->cityFooterClock:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideMapOverlayInternal()V

    return-void
.end method

.method static synthetic access$8100(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlayInternal()V

    return-void
.end method

.method static synthetic access$8200(Lcom/xyron/game/main/SAMP;Z)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->setOverlayBlurEnabledInternal(Z)V

    return-void
.end method

.method static synthetic access$8300(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideHudSettingsPanel()V

    return-void
.end method

.method static synthetic access$8402(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->receivedNativeWeaponWheelSnapshot:Z

    return p1
.end method

.method static synthetic access$8500(Lcom/xyron/game/main/SAMP;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->lastWeaponWheelJson:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8502(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->lastWeaponWheelJson:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->sanitizeWeaponWheelJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8700(Lcom/xyron/game/main/SAMP;)Lcom/xyron/game/main/InventoryAdapter;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->inventoryAdapter:Lcom/xyron/game/main/InventoryAdapter;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/xyron/game/main/SAMP;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncWeaponWheelPayload()V

    return-void
.end method

.method static synthetic access$8900(Lcom/xyron/game/main/SAMP;Landroid/webkit/WebView;)Z
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->recoverRuntimeOverlay(Landroid/webkit/WebView;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/xyron/game/main/SAMP;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->rioFooterDateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$9200(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->webSettings:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/xyron/game/main/SAMP;Landroid/webkit/WebView;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->runtimeDocumentReady(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/xyron/game/main/SAMP;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->phoneImageCallback:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$9402(Lcom/xyron/game/main/SAMP;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->phoneImageCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$9500(Lcom/xyron/game/main/SAMP;)Ljava/util/WeakHashMap;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->runtimeOverlayStates:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/xyron/game/main/SAMP;Landroid/webkit/WebView;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->syncRuntimeOverlay(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->webWeaponWheel:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$9800(Lcom/xyron/game/main/SAMP;)Landroid/webkit/WebView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xyron/game/main/SAMP;->webInventory:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$9902(Lcom/xyron/game/main/SAMP;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->webcellcarregada:Z

    return p1
.end method

.method private accessoryEditorVisibility(Z)V
    .locals 2

    .line 705
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->accessoryEditorVisible:Z

    .line 706
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->setNativeAccessoryEditing(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SAMP"

    const-string v1, "Accessory editor visibility unavailable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 707
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method private alignAdminHudIcon(Landroid/widget/ImageButton;)V
    .locals 14

    .line 3218
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraHudExperiment:Lcom/xyron/game/main/AngraHudExperiment;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void

    .line 3219
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0096

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    .line 3220
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 3221
    :cond_1
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a004c

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    .line 3222
    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v2, v2, [I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLocationInWindow([I)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    .line 3223
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v6, 0x1

    .line 3224
    aget v7, v3, v6

    aget v4, v4, v6

    sub-int/2addr v7, v4

    .line 3225
    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v8

    const/4 v9, -0x1

    if-ne v4, v8, :cond_6

    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v8

    if-ne v4, v8, :cond_6

    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    if-ne v4, v7, :cond_6

    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq v4, v9, :cond_2

    goto/16 :goto_1

    .line 3228
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3229
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getWidth()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getHeight()I

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    .line 3230
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 3231
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getHeight()I

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getPaddingTop()I

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getPaddingBottom()I

    .line 3232
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v7, 0x0

    cmpg-float v8, v5, v7

    if-lez v8, :cond_5

    cmpg-float v7, v1, v7

    if-gtz v7, :cond_4

    goto/16 :goto_0

    .line 3234
    :cond_4
    new-instance v7, Landroid/graphics/RectF;

    const/high16 v8, 0x41900000    # 18.0f

    mul-float v8, v8, v5

    const/high16 v9, 0x43000000    # 128.0f

    div-float/2addr v8, v9

    const/high16 v10, 0x41000000    # 8.0f

    mul-float v10, v10, v1

    div-float/2addr v10, v9

    const/high16 v11, 0x42ec0000    # 118.0f

    mul-float v5, v5, v11

    div-float/2addr v5, v9

    const/high16 v11, 0x42ee0000    # 119.0f

    mul-float v1, v1, v11

    div-float/2addr v1, v9

    invoke-direct {v7, v8, v10, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3235
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3236
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40800000    # 4.0f

    mul-float v8, v8, v10

    const/high16 v10, 0x42f40000    # 122.0f

    div-float/2addr v8, v10

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40a00000    # 5.0f

    mul-float v11, v11, v12

    div-float/2addr v11, v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x42e80000    # 116.0f

    mul-float v12, v12, v13

    div-float/2addr v12, v10

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v10, 0x42f80000    # 124.0f

    mul-float v1, v1, v10

    div-float/2addr v1, v9

    invoke-direct {v5, v8, v11, v12, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3237
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 3238
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3f70a3d7    # 0.94f

    mul-float v0, v0, v1

    .line 3239
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3240
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float v8, v8, v0

    sub-float/2addr v4, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    iget v8, v7, Landroid/graphics/RectF;->left:F

    mul-float v8, v8, v0

    sub-float/2addr v4, v8

    aget v3, v3, v6

    aget v2, v2, v6

    sub-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v5, 0x3d75c28f    # 0.06f

    mul-float v3, v3, v5

    add-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3241
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    :goto_0
    return-void

    .line 3226
    :cond_6
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I

    move-result p1

    iput p1, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHeight()I

    move-result p1

    iput p1, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    const/4 p1, 0x0

    iput p1, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v9, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private angraHotbarEnabled()Z
    .locals 3

    .line 457
    const-string v0, "angra_ui_v18"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hotbar"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private applyDirectConnectExtras(Landroid/content/Intent;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1298
    :cond_0
    const-string v0, "server_ip"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->sanitizeDirectConnectHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1299
    const-string v1, "server_port"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1300
    const-string v2, "nickname"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->sanitizeDirectConnectNickname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1302
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    if-lez v1, :cond_5

    const v2, 0xffff

    if-gt v1, v2, :cond_5

    .line 1303
    const-string v2, "Direct Connect"

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v1, v3}, Lcom/xyron/game/launcher/util/ServerConfigManager;->addOrUpdateServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1311
    invoke-virtual {v4}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->isValid()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1312
    :cond_1
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getAvailableServers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 1313
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1314
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    invoke-static {p0, v4}, Lcom/xyron/game/launcher/util/ServerConfigManager;->removeServer(Landroid/content/Context;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)Z

    .line 1315
    invoke-static {p0, v2, v0, v1, v3}, Lcom/xyron/game/launcher/util/ServerConfigManager;->addOrUpdateServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_3

    .line 1325
    invoke-virtual {v4}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->isValid()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1326
    :cond_3
    new-instance v4, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    invoke-direct {v4, v2, v0, v1, v3}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1329
    :cond_4
    invoke-static {p0, v4}, Lcom/xyron/game/launcher/util/ServerConfigManager;->saveSelectedServer(Landroid/content/Context;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)Z

    move-result v2

    .line 1330
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Direct connect target received: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " saved="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAMP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 1334
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->saveDirectConnectNickname(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private applyGameplayHudMask()V
    .locals 8

    .line 3902
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    return-void

    .line 3903
    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->refreshGameDeviceHud()V

    .line 3904
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isNearbyPanelVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->accessoryEditorVisible:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->systemPanelVisible:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->animationPanelVisible:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraPause:Lcom/xyron/game/main/ui/AngraPause;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/AngraPause;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isInventoryOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isWeaponWheelOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x4

    if-eqz v0, :cond_9

    const/4 v3, 0x0

    .line 3906
    :goto_2
    iget-object v4, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 3907
    iget-object v4, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3908
    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->nearbyPlayerMenu:Lcom/xyron/game/main/NearbyPlayerMenu;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v4}, Lcom/xyron/game/main/NearbyPlayerMenu;->isPanel(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_4
    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    if-eq v4, v5, :cond_8

    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->framewebInventory:Landroid/widget/FrameLayout;

    if-eq v4, v5, :cond_8

    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    if-eq v4, v5, :cond_8

    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->framewebWeaponWheel:Landroid/widget/FrameLayout;

    if-eq v4, v5, :cond_8

    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->overlayBlurScrim:Landroid/view/View;

    if-eq v4, v5, :cond_8

    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->hudSettingsPanel:Landroid/view/View;

    if-ne v4, v5, :cond_5

    goto :goto_3

    .line 3911
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    .line 3912
    iget-object v6, p0, Lcom/xyron/game/main/SAMP;->maskedGameplayViews:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v4}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eq v5, v2, :cond_7

    .line 3913
    :cond_6
    iget-object v6, p0, Lcom/xyron/game/main/SAMP;->maskedGameplayViews:Ljava/util/IdentityHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-nez v5, :cond_8

    .line 3914
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3916
    :cond_9
    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->maskedGameplayViews:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 3917
    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->maskedGameplayViews:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3918
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v2, :cond_a

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 3919
    :cond_b
    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->maskedGameplayViews:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->clear()V

    .line 3921
    :cond_c
    sget-boolean v2, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP;->nativeGameplayHudSuppressed:Z

    if-eq v0, v2, :cond_d

    .line 3923
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setHudFixGameplaySuppressed(Z)V

    .line 3924
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->nativeGameplayHudSuppressed:Z

    if-eqz v0, :cond_d

    .line 3925
    invoke-direct {p0, v1}, Lcom/xyron/game/main/SAMP;->setAltKeyPressedSafely(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 3926
    const-string v1, "SAMP"

    const-string v2, "Gameplay HUD suppression unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_5
    return-void
.end method

.method private applyHudChatScale()V
    .locals 3

    .line 2193
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 2194
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/xyron/game/main/SAMP;->hudChatScale:F

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setHudFixChatScale(F)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2195
    const-string v1, "SAMP"

    const-string v2, "Native chat scale helper unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private applyHudLeftPanelLayout()V
    .locals 0

    return-void
.end method

.method private applyHudRadarVisibility()V
    .locals 2

    .line 2116
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudRadarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/xyron/game/main/SAMP;->setNativeRadarVisibleSafely(Z)V

    .line 2117
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method private applyHudRenderSettingsRuntime()V
    .locals 10

    .line 2064
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->detectLowRamMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudEffectsEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->runtimeLowRamMode:Z

    .line 2067
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2068
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2069
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iget v4, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimit:I

    int-to-float v4, v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 2071
    :goto_3
    iget v4, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimit:I

    int-to-float v4, v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 2074
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    if-eqz v3, :cond_4

    .line 2075
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2077
    :cond_4
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_a

    .line 2079
    :try_start_0
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudFpsCounterEnabled:Z

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setHudFixFpsCounterEnabled(Z)V

    .line 2080
    iget v0, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimit:I

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->queueHudFixFpsLimit(I)V

    .line 2084
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudMobileOptionsRestored:Z

    if-nez v0, :cond_a

    .line 2085
    const-string v0, "rio_mobile_settings"

    invoke-virtual {p0, v0, v2}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v3, 0xf

    .line 2086
    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_9

    aget v6, v4, v5

    const/16 v7, 0x64

    const/16 v8, 0xb

    if-ne v6, v8, :cond_5

    .line 2087
    invoke-virtual {p0, v8, v7}, Lcom/xyron/game/main/SAMP;->queueHudFixMobileOption(II)V

    goto :goto_6

    .line 2088
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "option_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    const/16 v9, 0x10

    if-nez v8, :cond_6

    if-ne v6, v9, :cond_8

    :cond_6
    if-ne v6, v9, :cond_7

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    .line 2089
    :goto_5
    invoke-static {v0, v6, v7}, Lcom/xyron/game/main/SAMP;->savedMobileOption(Landroid/content/SharedPreferences;II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/xyron/game/main/SAMP;->queueHudFixMobileOption(II)V

    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2091
    :cond_9
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->hudMobileOptionsRestored:Z

    .line 2092
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->restoreAngraAudioMix()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 2095
    const-string v1, "SAMP"

    const-string v2, "Native FPS counter helper unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2098
    :cond_a
    :goto_7
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    .line 2099
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudRadarVisibility()V

    .line 2100
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudChatScale()V

    .line 2101
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudVoiceState()V

    .line 2102
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    return-void

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

.method private applyHudUpdate(IIIIII)V
    .locals 6

    .line 2759
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    return-void

    .line 2761
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hpBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_1

    const v1, 0x7f0a02b2

    .line 2762
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hpBar:Landroid/widget/ProgressBar;

    .line 2763
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a02b0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->armourBar:Landroid/widget/ProgressBar;

    .line 2764
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a02b1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->eatBar:Landroid/widget/ProgressBar;

    .line 2765
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a02b3

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->sonoBar:Landroid/widget/ProgressBar;

    .line 2766
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0241

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->moneyText:Landroid/widget/TextView;

    .line 2767
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01cc

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hpText:Landroid/widget/TextView;

    .line 2768
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->armourText:Landroid/widget/TextView;

    .line 2769
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0195

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->gunImg:Landroid/widget/ImageView;

    .line 2770
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0053

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->ammoText:Landroid/widget/TextView;

    .line 2771
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0313

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->rioWeaponCurrentIcon:Landroid/widget/ImageView;

    .line 2772
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0312

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->rioWeaponAmmo:Landroid/widget/TextView;

    .line 2775
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hpBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, p1}, Lcom/xyron/game/main/SAMP;->setCircularStatusProgress(Landroid/widget/ProgressBar;I)V

    .line 2776
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->armourBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, p2}, Lcom/xyron/game/main/SAMP;->setCircularStatusProgress(Landroid/widget/ProgressBar;I)V

    .line 2777
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->eatBar:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraServerNeeds:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/xyron/game/main/SAMP;->angraHunger:I

    goto :goto_0

    :cond_2
    move v1, p3

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->setCircularStatusProgress(Landroid/widget/ProgressBar;I)V

    .line 2778
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->sonoBar:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraServerNeeds:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/xyron/game/main/SAMP;->angraEnergy:I

    goto :goto_1

    :cond_3
    const/16 v1, 0x58

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->setCircularStatusProgress(Landroid/widget/ProgressBar;I)V

    .line 2780
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->moneyText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "%,d"

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2781
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hpText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2782
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->armourText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2783
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraHudExperiment:Lcom/xyron/game/main/AngraHudExperiment;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraServerNeeds:Z

    if-eqz v1, :cond_4

    iget p3, p0, Lcom/xyron/game/main/SAMP;->angraHunger:I

    :cond_4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xyron/game/main/AngraHudExperiment;->update(IIII)V

    .line 2785
    :cond_5
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p2, 0x7f0a0010

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2786
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p2, 0x7f0a0006

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    if-nez p5, :cond_6

    const/4 p3, 0x0

    goto :goto_2

    :cond_6
    const/16 p3, 0x8

    :goto_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 2788
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "weapon_"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "drawable"

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, p4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_7

    .line 2790
    iget-object p3, p0, Lcom/xyron/game/main/SAMP;->gunImg:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2791
    iget-object p3, p0, Lcom/xyron/game/main/SAMP;->rioWeaponCurrentIcon:Landroid/widget/ImageView;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2793
    :cond_7
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->ammoText:Landroid/widget/TextView;

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2794
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->rioWeaponAmmo:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    .line 2795
    const-string p3, ""

    if-nez p5, :cond_8

    goto :goto_3

    :cond_8
    iget p4, p0, Lcom/xyron/game/main/SAMP;->sampledWeaponType:I

    if-ne p4, p5, :cond_9

    .line 2796
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget p4, p0, Lcom/xyron/game/main/SAMP;->sampledWeaponClip:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/xyron/game/main/SAMP;->sampledWeaponReserve:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2795
    :cond_9
    :goto_3
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2798
    :cond_a
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p3, 0x7f0a0314

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 2800
    iget-object p3, p0, Lcom/xyron/game/main/SAMP;->angraHudExperiment:Lcom/xyron/game/main/AngraHudExperiment;

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lcom/xyron/game/main/AngraHudExperiment;->usesRetroHud()Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    :goto_4
    if-nez p5, :cond_c

    if-nez v3, :cond_c

    goto :goto_5

    :cond_c
    const/16 v5, 0x8

    .line 2801
    :goto_5
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2803
    :cond_d
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->receivedNativeWeaponWheelSnapshot:Z

    if-nez p1, :cond_e

    .line 2804
    invoke-direct {p0, p5, p6}, Lcom/xyron/game/main/SAMP;->updateWeaponWheelFallback(II)V

    :cond_e
    return-void
.end method

.method private applyHudVoiceState()V
    .locals 3

    .line 2199
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_1

    .line 2200
    :try_start_0
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudVoiceEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/xyron/game/main/SAMP;->setHudFixVoiceState(ZZ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2201
    const-string v1, "SAMP"

    const-string v2, "Native voice helper unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private applyNativeHudDetails([I)V
    .locals 6

    .line 4669
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    .line 4670
    aget v0, p1, v0

    iput v0, p0, Lcom/xyron/game/main/SAMP;->sampledWeaponType:I

    const/4 v1, 0x6

    aget v1, p1, v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->sampledWeaponClip:I

    const/4 v1, 0x7

    aget v1, p1, v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->sampledWeaponReserve:I

    .line 4671
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->rioWeaponAmmo:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    if-lez v0, :cond_1

    .line 4672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/xyron/game/main/SAMP;->sampledWeaponClip:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xyron/game/main/SAMP;->sampledWeaponReserve:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 4671
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v0, 0x0

    .line 4673
    aget v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    return-void

    .line 4674
    :cond_3
    iget v1, p0, Lcom/xyron/game/main/SAMP;->sampledEngine:I

    const/4 v3, 0x3

    aget v3, p1, v3

    if-eq v1, v3, :cond_5

    .line 4675
    iput v3, p0, Lcom/xyron/game/main/SAMP;->sampledEngine:I

    .line 4676
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a02f6

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    .line 4677
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/xyron/game/main/SAMP;->sampledEngine:I

    if-ne v5, v2, :cond_4

    const v5, 0x7f080218

    goto :goto_1

    :cond_4
    const v5, 0x7f080217

    .line 4678
    :goto_1
    invoke-direct {v3, v4, v5, v0}, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;-><init>(Landroid/content/res/Resources;IZ)V

    .line 4676
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4680
    :cond_5
    iget v1, p0, Lcom/xyron/game/main/SAMP;->sampledLights:I

    const/4 v3, 0x4

    aget p1, p1, v3

    if-eq v1, p1, :cond_7

    .line 4681
    iput p1, p0, Lcom/xyron/game/main/SAMP;->sampledLights:I

    .line 4682
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a02f7

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v1, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    .line 4683
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/xyron/game/main/SAMP;->sampledLights:I

    if-ne v4, v2, :cond_6

    const v2, 0x7f08021b

    goto :goto_2

    :cond_6
    const v2, 0x7f08021a

    .line 4684
    :goto_2
    invoke-direct {v1, v3, v2, v0}, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;-><init>(Landroid/content/res/Resources;IZ)V

    .line 4682
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method private applyPhoneMotionPose([D)V
    .locals 5

    .line 3440
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x45200000    # 2560.0f

    div-float/2addr v0, v1

    .line 3441
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 3442
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    const/high16 v2, 0x44340000    # 720.0f

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 3443
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3444
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    aget-wide v3, p1, v2

    double-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    aget-wide v2, p1, v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 3445
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    aget-wide v2, p1, v2

    double-to-float v2, v2

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3446
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    const/4 v2, 0x3

    aget-wide v2, p1, v2

    double-to-float v2, v2

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3447
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    aget-wide v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    return-void
.end method

.method private applyRioReferenceGeometry()V
    .locals 11

    .line 3127
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 3128
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x45200000    # 2560.0f

    div-float/2addr v0, v1

    .line 3129
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v1

    .line 3130
    sget-boolean v2, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/xyron/game/main/SAMP;->setHudFixMapViewport(FF)V

    .line 3131
    :cond_1
    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    .line 3132
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3133
    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v3

    invoke-static {v3, v1}, Lcom/xyron/game/main/DevicePanelGeometry;->phone(II)Landroid/graphics/Rect;

    move-result-object v3

    .line 3134
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 3135
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 3136
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 3137
    iget-object v4, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    .line 3140
    iget-boolean v3, p0, Lcom/xyron/game/main/SAMP;->phoneTransitionViewport:Z

    if-eqz v3, :cond_2

    .line 3141
    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 3142
    iput v9, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    .line 3144
    :cond_2
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3146
    :cond_3
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0304

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3147
    invoke-static {p0}, Lcom/xyron/game/main/ClassicHudLayout;->enabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3148
    sget-boolean v1, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v1, :cond_6

    const v1, 0x44058000    # 534.0f

    mul-float v1, v1, v0

    const/high16 v2, 0x434d0000    # 205.0f

    mul-float v2, v2, v0

    const/high16 v3, 0x430c0000    # 140.0f

    mul-float v3, v3, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/xyron/game/main/SAMP;->setHudFixRadarGeometry(FFF)V

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_6

    .line 3151
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/high16 v3, 0x43b00000    # 352.0f

    mul-float v3, v3, v0

    .line 3152
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    const/high16 v3, 0x43980000    # 304.0f

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    const/high16 v3, 0x43100000    # 144.0f

    mul-float v3, v3, v0

    .line 3153
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    const/high16 v3, 0x42400000    # 48.0f

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 3154
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, 0x43980000    # 304.0f

    const/high16 v7, 0x43980000    # 304.0f

    const v3, 0x7f0a0305

    const/high16 v4, 0x42400000    # 48.0f

    const/4 v5, 0x0

    move-object v2, p0

    move v8, v0

    .line 3155
    invoke-direct/range {v2 .. v8}, Lcom/xyron/game/main/SAMP;->setRioFrameGeometry(IFFFFF)V

    .line 3156
    sget-boolean v1, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v1, :cond_5

    sget v1, Lcom/xyron/game/main/AngraHudGeometry;->RADAR_X:F

    mul-float v1, v1, v0

    sget v2, Lcom/xyron/game/main/AngraHudGeometry;->RADAR_Y:F

    mul-float v2, v2, v0

    const v3, 0x4315c28f    # 149.76f

    mul-float v3, v3, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/xyron/game/main/SAMP;->setHudFixRadarGeometry(FFF)V

    :cond_5
    const/high16 v6, 0x43980000    # 304.0f

    const/high16 v7, 0x43980000    # 304.0f

    const v3, 0x7f0a0303

    const/high16 v4, 0x42400000    # 48.0f

    const/4 v5, 0x0

    move-object v2, p0

    move v8, v0

    .line 3157
    invoke-direct/range {v2 .. v8}, Lcom/xyron/game/main/SAMP;->setRioFrameGeometry(IFFFFF)V

    const/high16 v6, 0x42c00000    # 96.0f

    const/high16 v7, 0x42c00000    # 96.0f

    const v3, 0x7f0a0306

    const/4 v4, 0x0

    const/high16 v5, 0x43500000    # 208.0f

    .line 3158
    invoke-direct/range {v2 .. v8}, Lcom/xyron/game/main/SAMP;->setRioFrameGeometry(IFFFFF)V

    .line 3162
    :cond_6
    :goto_0
    invoke-static {p0}, Lcom/xyron/game/main/ClassicHudLayout;->enabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v2, 0x44480000    # 800.0f

    goto :goto_1

    :cond_7
    const/high16 v2, 0x44220000    # 648.0f

    :goto_1
    mul-float v2, v2, v0

    const/high16 v3, 0x41e00000    # 28.0f

    mul-float v3, v3, v0

    const/high16 v4, 0x44840000    # 1056.0f

    mul-float v4, v4, v0

    .line 3164
    sget-boolean v5, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getHudFixChatVisibleHeight()F

    move-result v5

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    :goto_2
    cmpl-float v6, v5, v6

    if-lez v6, :cond_9

    goto :goto_3

    :cond_9
    const/high16 v5, 0x43900000    # 288.0f

    mul-float v5, v5, v0

    .line 3166
    :goto_3
    iget-object v6, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v7, 0x7f0a02f4

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 3168
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3169
    iput v9, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v8, -0x1

    .line 3170
    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 3171
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 3172
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 3173
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3175
    :cond_a
    iget-object v6, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v7, 0x7f0a0197

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/high16 v10, 0x42680000    # 58.0f

    if-eqz v6, :cond_d

    .line 3177
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_b

    const/high16 v8, 0x44f50000    # 1960.0f

    goto :goto_4

    :cond_b
    const v8, 0x440c8000    # 562.0f

    :goto_4
    mul-float v8, v8, v0

    .line 3178
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_c

    const/high16 v8, 0x42680000    # 58.0f

    goto :goto_5

    :cond_c
    const/high16 v8, 0x42900000    # 72.0f

    :goto_5
    mul-float v8, v8, v0

    .line 3179
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 3180
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_d

    const v1, 0x7f0801f4

    .line 3181
    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3183
    :cond_d
    sget-boolean v1, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/xyron/game/main/SAMP;->setHudFixChatGeometry(FFFF)V

    .line 3184
    :cond_e
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a030c

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3185
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_f

    .line 3186
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/high16 v3, 0x44500000    # 832.0f

    mul-float v3, v3, v0

    .line 3187
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    const/high16 v3, 0x431c0000    # 156.0f

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v3, v3, v0

    .line 3188
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 3189
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, 0x44460000    # 792.0f

    const/high16 v7, 0x42e00000    # 112.0f

    const v3, 0x7f0a030d

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v5, 0x42300000    # 44.0f

    move-object v2, p0

    move v8, v0

    .line 3192
    invoke-direct/range {v2 .. v8}, Lcom/xyron/game/main/SAMP;->setRioFrameGeometry(IFFFFF)V

    const/high16 v6, 0x43520000    # 210.0f

    const/high16 v7, 0x40e00000    # 7.0f

    const v3, 0x7f0a0309

    const v4, 0x439b8000    # 311.0f

    const/high16 v5, 0x42280000    # 42.0f

    .line 3193
    invoke-direct/range {v2 .. v8}, Lcom/xyron/game/main/SAMP;->setRioFrameGeometry(IFFFFF)V

    const/high16 v6, 0x42000000    # 32.0f

    const/high16 v7, 0x42000000    # 32.0f

    const v3, 0x7f0a0308

    const/high16 v4, 0x43c80000    # 400.0f

    const/4 v5, 0x0

    .line 3194
    invoke-direct/range {v2 .. v8}, Lcom/xyron/game/main/SAMP;->setRioFrameGeometry(IFFFFF)V

    const/high16 v6, 0x42c00000    # 96.0f

    const/high16 v7, 0x42c00000    # 96.0f

    const v3, 0x7f0a02f7

    const/high16 v4, 0x43050000    # 133.0f

    const/high16 v5, 0x42500000    # 52.0f

    .line 3195
    invoke-direct/range {v2 .. v8}, Lcom/xyron/game/main/SAMP;->setRioFrameGeometry(IFFFFF)V

    const/high16 v6, 0x42800000    # 64.0f

    const/high16 v7, 0x42800000    # 64.0f

    const v3, 0x7f0a030f

    const v4, 0x43828000    # 261.0f

    const/high16 v5, 0x42880000    # 68.0f

    .line 3196
    invoke-direct/range {v2 .. v8}, Lcom/xyron/game/main/SAMP;->setRioFrameGeometry(IFFFFF)V

    const/high16 v6, 0x43040000    # 132.0f

    const/high16 v7, 0x42680000    # 58.0f

    const v3, 0x7f0a030b

    const/high16 v4, 0x43af0000    # 350.0f

    const/high16 v5, 0x42600000    # 56.0f

    .line 3197
    invoke-direct/range {v2 .. v8}, Lcom/xyron/game/main/SAMP;->setRioFrameGeometry(IFFFFF)V

    const/high16 v6, 0x42ac0000    # 86.0f

    const/high16 v7, 0x41f00000    # 30.0f

    const v3, 0x7f0a030a

    const v4, 0x43ba8000    # 373.0f

    const/high16 v5, 0x42e40000    # 114.0f

    .line 3198
    invoke-direct/range {v2 .. v8}, Lcom/xyron/game/main/SAMP;->setRioFrameGeometry(IFFFFF)V

    const/high16 v6, 0x42800000    # 64.0f

    const/high16 v7, 0x42800000    # 64.0f

    const v3, 0x7f0a0311

    const v4, 0x43fd8000    # 507.0f

    const/high16 v5, 0x42880000    # 68.0f

    .line 3199
    invoke-direct/range {v2 .. v8}, Lcom/xyron/game/main/SAMP;->setRioFrameGeometry(IFFFFF)V

    const/high16 v6, 0x42c00000    # 96.0f

    const/high16 v7, 0x42c00000    # 96.0f

    const v3, 0x7f0a02f6

    const v4, 0x4416c000    # 603.0f

    const/high16 v5, 0x42500000    # 52.0f

    .line 3200
    invoke-direct/range {v2 .. v8}, Lcom/xyron/game/main/SAMP;->setRioFrameGeometry(IFFFFF)V

    .line 3201
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a030b

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3202
    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a030a

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    mul-float v10, v10, v0

    .line 3203
    invoke-virtual {v1, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x1

    .line 3204
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v4, 0x11

    .line 3205
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v4, v4, v0

    .line 3207
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3206
    invoke-static {v1, v5, v6, v3, v9}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float v0, v0, v1

    .line 3208
    invoke-virtual {v2, v9, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3209
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a02f7

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 3210
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a02f6

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 3212
    :cond_f
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudButtonEditor:Lcom/xyron/game/main/HudButtonEditor;

    if-nez v0, :cond_10

    new-instance v0, Lcom/xyron/game/main/HudButtonEditor;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1}, Lcom/xyron/game/main/HudButtonEditor;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudButtonEditor:Lcom/xyron/game/main/HudButtonEditor;

    .line 3213
    :cond_10
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudButtonEditor:Lcom/xyron/game/main/HudButtonEditor;

    invoke-virtual {v0}, Lcom/xyron/game/main/HudButtonEditor;->apply()V

    .line 3214
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraHudExperiment:Lcom/xyron/game/main/AngraHudExperiment;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraHudExperiment;->layoutGeometry()V

    :cond_11
    :goto_6
    return-void
.end method

.method private buildRuntimeConfigJson()Ljava/lang/String;
    .locals 7

    .line 4253
    const-string v0, "enabled"

    .line 0
    const-string/jumbo v1, "ws://"

    .line 4253
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4255
    :try_start_0
    const-string v3, "playerName"

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->lerNomeDoPlayer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4256
    const-string v3, "serverName"

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->getSelectedServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4257
    const-string v3, "serverAddress"

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->getSelectedServerAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4259
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    .line 4260
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4261
    const-string v4, "port"

    const/16 v5, 0x223e

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4262
    const-string v4, "path"

    const-string v5, "/live"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4263
    const-string v4, "reconnectMs"

    const/16 v5, 0x708

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4264
    const-string v4, "previewUrl"

    const-string/jumbo v5, "ws://127.0.0.1:8766/live"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4266
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->getSelectedServerAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/xyron/game/main/SAMP;->extractHostFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4267
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4268
    const-string v5, "runtimeUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":8766/live"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4271
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x1

    .line 4272
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4273
    const-string v0, "baseUrl"

    const-string v4, "https://raw.githubusercontent.com/qbcore-framework/qb-inventory/main/html"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4275
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4276
    const-string v4, "lowRam"

    iget-boolean v5, p0, Lcom/xyron/game/main/SAMP;->runtimeLowRamMode:Z

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4278
    const-string v4, "liveReload"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4279
    const-string v3, "cdn"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4280
    const-string v1, "performance"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4282
    const-string v1, "SAMP"

    const-string v3, "Runtime config JSON failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4284
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cancelAngraNoticeEntrance()V
    .locals 0

    return-void
.end method

.method private cancelOverlayWarmups()V
    .locals 2

    const/4 v0, 0x0

    .line 4388
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayWarmupScheduled:Z

    .line 4389
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 4392
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayWarmupRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 4393
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4395
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->inventoryOverlayWarmupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 4396
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private cancelRuntimeOverlayMotion()V
    .locals 2

    .line 3426
    iget v0, p0, Lcom/xyron/game/main/SAMP;->runtimeMotionEpoch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xyron/game/main/SAMP;->runtimeMotionEpoch:I

    .line 3427
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->runtimeOverlayAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    .line 3428
    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->runtimeOverlayAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3429
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private clampHudStatus(I)I
    .locals 1

    const/16 v0, 0x64

    .line 2418
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private clampInt(III)I
    .locals 0

    .line 1823
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private clearTab()V
    .locals 0

    return-void
.end method

.method private closeAngraPause()V
    .locals 1

    .line 3965
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraPause:Lcom/xyron/game/main/ui/AngraPause;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/AngraPause;->hide()V

    .line 3966
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->closeNativeMapFromHeader()V

    .line 3967
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method private closeNativeMapFromHeader()V
    .locals 3

    .line 2262
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudNativeMapVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2263
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->setNativeMapUiVisible(Z)V

    .line 2264
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_1

    .line 2266
    :try_start_0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->openHudFixNativeMap()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2269
    const-string v1, "SAMP"

    const-string v2, "Nao foi possivel fechar o mapa nativo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2272
    :cond_1
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->onEventBackPressed()V

    return-void
.end method

.method private configureRuntimeOverlay(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 2934
    :cond_0
    const-string v0, "file:///android_asset/interfaces/iphone/index.html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "file:///android_asset/interfaces/inventario_angra/inventario_interativo.html"

    const-string v3, "file:///android_asset/interfaces/settings/index.html"

    if-eqz v1, :cond_1

    .line 2935
    const-string v1, "phone"

    goto :goto_0

    .line 2936
    :cond_1
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2937
    const-string v1, "settings"

    goto :goto_0

    .line 2938
    :cond_2
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2939
    const-string v1, "inventory"

    goto :goto_0

    .line 2940
    :cond_3
    const-string v1, "file:///android_asset/interfaces/map/index.html"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2941
    const-string v1, "map"

    goto :goto_0

    .line 2942
    :cond_4
    const-string v1, "file:///android_asset/interfaces/weapon_wheel_classic/index.html"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "weaponWheel"

    goto :goto_0

    :cond_5
    move-object v1, p2

    .line 2943
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 2944
    new-instance v11, Lcom/xyron/game/main/SAMP$30;

    move-object v4, v11

    move-object v5, p0

    move-object v6, p2

    move-object v7, p1

    move-object v8, v1

    invoke-direct/range {v4 .. v10}, Lcom/xyron/game/main/SAMP$30;-><init>(Lcom/xyron/game/main/SAMP;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;J)V

    const-string v4, "AngraDocument"

    invoke-virtual {p1, v11, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2953
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    .line 2954
    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2955
    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v6, -0x1

    .line 2956
    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v6, 0x0

    .line 2957
    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 2958
    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 2959
    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 2960
    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 2961
    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 2962
    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 2963
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 2964
    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 2965
    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 2966
    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 2968
    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 2970
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v5, v7, :cond_6

    .line 2971
    invoke-static {v4, v6}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebSettings;Z)V

    .line 2974
    :cond_6
    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2975
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v5, v7, :cond_7

    .line 2976
    invoke-static {p1, v6}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebView;Z)V

    .line 2977
    invoke-static {v4, v6}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebSettings;I)V

    .line 2980
    :cond_7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2981
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    const/16 v0, 0x64

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v0, 0x0

    .line 2980
    :goto_2
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 2982
    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 2983
    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    const/4 v0, 0x2

    .line 2984
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 2985
    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 2986
    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->setHapticFeedbackEnabled(Z)V

    .line 2987
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda35;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2988
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->runtimeOverlayBridge:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    const-string v3, "Android"

    invoke-virtual {p1, v0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2989
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->inventoryAdapter:Lcom/xyron/game/main/InventoryAdapter;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/InventoryAdapter;->attach(Landroid/webkit/WebView;)V

    .line 2990
    :cond_a
    new-instance v0, Lcom/xyron/game/main/SAMP$31;

    invoke-direct {v0, p0, p2, v1}, Lcom/xyron/game/main/SAMP$31;-><init>(Lcom/xyron/game/main/SAMP;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 3022
    new-instance v0, Lcom/xyron/game/main/SAMP$32;

    invoke-direct {v0, p0, p2, v1}, Lcom/xyron/game/main/SAMP$32;-><init>(Lcom/xyron/game/main/SAMP;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3065
    invoke-static {p1, p2}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 3066
    invoke-virtual {p1, v6, p2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private destroyRuntimeOverlays()V
    .locals 1

    .line 3717
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->phoneApps:Lcom/xyron/game/main/PhoneApps;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/PhoneApps;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->phoneApps:Lcom/xyron/game/main/PhoneApps;

    .line 3722
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->destroyWebView(Landroid/webkit/WebView;)V

    .line 3723
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webInventory:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->destroyWebView(Landroid/webkit/WebView;)V

    .line 3724
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webMiniMap:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->destroyWebView(Landroid/webkit/WebView;)V

    .line 3725
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webWeaponWheel:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->destroyWebView(Landroid/webkit/WebView;)V

    .line 3726
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webSettings:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->destroyWebView(Landroid/webkit/WebView;)V

    return-void
.end method

.method private destroyWebView(Landroid/webkit/WebView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3733
    :cond_0
    const-string v0, "Android"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 3734
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3735
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 3736
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private detectLowRamMode()Z
    .locals 4

    .line 4288
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4292
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 4295
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/16 v2, 0xc0

    if-gt v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private dispatchRuntimeCallback(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 4569
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    .line 4572
    :cond_1
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 4573
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " && "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4576
    invoke-static {p3}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4574
    invoke-direct {p0, p1, p2}, Lcom/xyron/game/main/SAMP;->evaluateOverlayJavascript(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private dispatchRuntimeCommand(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3777
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3778
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3781
    :cond_1
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->handleLocalRuntimeCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 3784
    :cond_2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->sendCommandV([B)V

    return-void
.end method

.method private dpToPx(F)I
    .locals 2

    .line 1815
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private ensureRuntimeOverlayConfigured(Ljava/lang/String;)Landroid/webkit/WebView;
    .locals 2

    .line 4401
    const-string v0, "settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4402
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->settingsOverlayConfigured:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webSettings:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 4403
    const-string v0, "file:///android_asset/interfaces/settings/index.html"

    invoke-direct {p0, p1, v0}, Lcom/xyron/game/main/SAMP;->configureRuntimeOverlay(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4404
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->settingsOverlayConfigured:Z

    .line 4406
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webSettings:Landroid/webkit/WebView;

    return-object p1

    .line 4408
    :cond_1
    const-string v0, "phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4409
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayConfigured:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    if-eqz p1, :cond_2

    .line 4410
    const-string v0, "file:///android_asset/interfaces/iphone/index.html"

    invoke-direct {p0, p1, v0}, Lcom/xyron/game/main/SAMP;->configureRuntimeOverlay(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4411
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayConfigured:Z

    .line 4413
    :cond_2
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    return-object p1

    .line 4416
    :cond_3
    const-string v0, "inventory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4417
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->inventoryOverlayConfigured:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webInventory:Landroid/webkit/WebView;

    if-eqz p1, :cond_4

    .line 4418
    const-string v0, "file:///android_asset/interfaces/inventario_angra/inventario_interativo.html"

    invoke-direct {p0, p1, v0}, Lcom/xyron/game/main/SAMP;->configureRuntimeOverlay(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4419
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->inventoryOverlayConfigured:Z

    .line 4421
    :cond_4
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webInventory:Landroid/webkit/WebView;

    return-object p1

    .line 4424
    :cond_5
    const-string v0, "map"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    # O mapa deve usar o menu nativo do SAMP/GTA SA aberto pelo radar.
    # Não devolver o WebView CEF do mapa.
    const/4 p1, 0x0

    return-object p1

    .line 4425
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->mapOverlayConfigured:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webMiniMap:Landroid/webkit/WebView;

    if-eqz p1, :cond_6

    .line 4426
    const-string v0, "file:///android_asset/interfaces/map/index.html"

    invoke-direct {p0, p1, v0}, Lcom/xyron/game/main/SAMP;->configureRuntimeOverlay(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4427
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->mapOverlayConfigured:Z

    .line 4429
    :cond_6
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webMiniMap:Landroid/webkit/WebView;

    return-object p1

    .line 4432
    :cond_7
    const-string v0, "weaponWheel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 4433
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->weaponWheelOverlayConfigured:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webWeaponWheel:Landroid/webkit/WebView;

    if-eqz p1, :cond_8

    .line 4434
    const-string v0, "file:///android_asset/interfaces/weapon_wheel_classic/index.html"

    invoke-direct {p0, p1, v0}, Lcom/xyron/game/main/SAMP;->configureRuntimeOverlay(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4435
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->weaponWheelOverlayConfigured:Z

    .line 4437
    :cond_8
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webWeaponWheel:Landroid/webkit/WebView;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method private evaluateOverlayJavascript(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 4562
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4565
    :cond_0
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda68;

    invoke-direct {v0, p1, p2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda68;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private extractHostFromAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4231
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 4234
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4235
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 4238
    :cond_1
    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4240
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0

    :cond_2
    const/16 v0, 0x3a

    .line 4245
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x0

    .line 4247
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private flushPhoneDestination()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->pendingPhoneDestination:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->phoneDocumentReady:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.AngraPhoneSync&&window.AngraPhoneSync.openNotice("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->pendingPhoneDestination:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->evaluateOverlayJavascript(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->pendingPhoneDestination:Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-void
.end method

.method private flushPhoneEvents()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->phoneDocumentReady:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->phoneEventInbox:Lcom/xyron/game/main/PhoneEventInbox;

    invoke-virtual {v1}, Lcom/xyron/game/main/PhoneEventInbox;->pending()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->runtimeOverlayStates:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->phoneEventInbox:Lcom/xyron/game/main/PhoneEventInbox;

    invoke-virtual {v1}, Lcom/xyron/game/main/PhoneEventInbox;->claim()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xyron/game/main/PhoneEventInbox$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(function(){if(typeof window.XyronPhoneEvent!==\'function\')return false;window.XyronPhoneEvent("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/xyron/game/main/PhoneEventInbox$Entry;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ");return true;})()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda38;

    invoke-direct {v4, p0, v0, v2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda38;-><init>(Lcom/xyron/game/main/SAMP;Landroid/webkit/WebView;Lcom/xyron/game/main/PhoneEventInbox$Entry;)V

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private gameDevices()Lcom/xyron/game/main/GameDeviceOverlay;
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->gameDevices:Lcom/xyron/game/main/GameDeviceOverlay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/GameDeviceOverlay;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->gameDevices:Lcom/xyron/game/main/GameDeviceOverlay;

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->gameDevices:Lcom/xyron/game/main/GameDeviceOverlay;

    return-object v0
.end method

.method private gameSettingsFile()Ljava/io/File;
    .locals 3

    .line 2156
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2157
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "SAMP/settings.ini"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private native getAngraAudioMixCalls()J
.end method

.method public static getInstance()Lcom/xyron/game/main/SAMP;
    .locals 1

    .line 793
    sget-object v0, Lcom/xyron/game/main/SAMP;->instance:Lcom/xyron/game/main/SAMP;

    return-object v0
.end method

.method private native getPausePing()I
.end method

.method private getSelectedServerAddress()Ljava/lang/String;
    .locals 1

    .line 3831
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSelectedServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v0

    .line 3832
    invoke-virtual {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedServerName()Ljava/lang/String;
    .locals 1

    .line 3826
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSelectedServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v0

    .line 3827
    iget-object v0, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method private handleLocalRuntimeCommand(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3791
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3792
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 3796
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 3797
    const-string v1, "/testespawn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 3798
    new-instance p1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda70;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda70;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return v2

    .line 3804
    :cond_2
    const-string v1, "/criarpickup"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/criarpickup "

    .line 3805
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/pickupstudio"

    .line 3806
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    .line 3807
    :cond_4
    :goto_0
    new-instance p1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda71;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda71;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return v2
.end method

.method private handleRuntimeBack()Z
    .locals 2

    .line 3665
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->nearbyPlayerMenu:Lcom/xyron/game/main/NearbyPlayerMenu;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/NearbyPlayerMenu;->back()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3666
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraSystems:Lcom/xyron/game/main/AngraSystems;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraSystems;->back()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3667
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->roleplayUI:Lcom/xyron/game/main/RoleplayUI;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xyron/game/main/RoleplayUI;->back()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 3668
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraPause:Lcom/xyron/game/main/ui/AngraPause;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/AngraPause;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3669
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->closeAngraPause()V

    return v1

    .line 3672
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/xyron/game/main/ReferencePanels;->isSpawnVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 3673
    :cond_4
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/xyron/game/main/ReferencePanels;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3674
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    invoke-virtual {v0}, Lcom/xyron/game/main/ReferencePanels;->hide()V

    return v1

    .line 3677
    :cond_5
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudNativeMapVisible:Z

    if-eqz v0, :cond_6

    .line 3678
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->closeNativeMapFromHeader()V

    return v1

    .line 3681
    :cond_6
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isHudSettingsVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3682
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideHudSettingsPanel()V

    return v1

    .line 3685
    :cond_7
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isSettingsOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3686
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSettingsOverlay()V

    return v1

    .line 3689
    :cond_8
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPickupCreatorVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3690
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->mPickupCreatorOverlay:Lcom/xyron/game/main/ui/PickupCreatorOverlay;

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->hide()V

    return v1

    .line 3693
    :cond_9
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3694
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlay()V

    return v1

    .line 3697
    :cond_a
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isInventoryOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3698
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlay()V

    return v1

    .line 3701
    :cond_b
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isWeaponWheelOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3702
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlay()V

    return v1

    .line 3705
    :cond_c
    sget-boolean v0, Lcom/xyron/game/main/ui/RadialMenu;->menuVisible:Z

    if-eqz v0, :cond_d

    .line 3706
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->mRadialMenu:Lcom/xyron/game/main/ui/RadialMenu;

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    return v1

    .line 3709
    :cond_d
    sget-boolean v0, Lcom/xyron/game/main/ui/Radinho;->radinhoVisible:Z

    if-eqz v0, :cond_e

    .line 3710
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->mRadinho:Lcom/xyron/game/main/ui/Radinho;

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/Radinho;->hide()V

    return v1

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private hideEditObject()V
    .locals 1

    .line 1067
    new-instance v0, Lcom/xyron/game/main/SAMP$12;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$12;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hideHudSettingsPanel()V
    .locals 2

    .line 2410
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudSettingsPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2411
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2413
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    .line 2414
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    return-void
.end method

.method private hideInventoryOverlayInternal()V
    .locals 1

    .line 3623
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->inventoryOverlayConfigured:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->setInventoryOverlayHiddenState(I)V

    .line 3624
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    .line 3625
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method private hideKeyboard()V
    .locals 1

    .line 1105
    new-instance v0, Lcom/xyron/game/main/SAMP$14;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$14;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hideLoadingScreen()V
    .locals 0

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->finishLoadingForLogin()V

    return-void
.end method

.method private hideMapOverlayInternal()V
    .locals 2

    .line 3848
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebMiniMap:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3849
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3851
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webMiniMap:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 3852
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    .line 3854
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->setNativeRadarVisibleSafely(Z)V

    .line 3855
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    return-void
.end method

.method private hidePhoneOverlayInternal()V
    .locals 3

    const/4 v0, 0x0

    .line 3607
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->phoneTextFocused:Z

    .line 3608
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->cancelRuntimeOverlayMotion()V

    .line 3609
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3610
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    const-string/jumbo v2, "window.XyronHidden&&window.XyronHidden();"

    invoke-direct {p0, v1, v2}, Lcom/xyron/game/main/SAMP;->evaluateOverlayJavascript(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3611
    :cond_0
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->setPhoneExpandedInternal(Z)V

    .line 3612
    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayConfigured:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-direct {p0, v1}, Lcom/xyron/game/main/SAMP;->setPhoneOverlayHiddenState(I)V

    .line 3613
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->resetPhoneMotionTransform()V

    .line 3614
    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->phoneTransitionViewport:Z

    if-eqz v1, :cond_2

    .line 3615
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->phoneTransitionViewport:Z

    .line 3616
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyRioReferenceGeometry()V

    .line 3618
    :cond_2
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    .line 3619
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method private hideSettingsOverlayInternal()V
    .locals 2

    .line 3353
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->settingsMotionFromPhone:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlayInternal()V

    :cond_0
    const/4 v0, 0x0

    .line 3354
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->settingsMotionFromPhone:Z

    .line 3355
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->cancelRuntimeOverlayMotion()V

    .line 3356
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isSettingsOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3357
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webSettings:Landroid/webkit/WebView;

    const-string/jumbo v1, "window.XyronHidden&&window.XyronHidden();"

    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->evaluateOverlayJavascript(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3358
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 3359
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3360
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3362
    :cond_2
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->settingsOverlayConfigured:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    :goto_0
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->setSettingsOverlayHiddenState(I)V

    .line 3363
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    .line 3364
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    .line 3365
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    return-void
.end method

.method private hideTab()V
    .locals 0

    return-void
.end method

.method private hideWeaponWheelOverlayInternal()V
    .locals 1

    .line 3629
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->weaponWheelOverlayConfigured:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->setWeaponWheelOverlayHiddenState(I)V

    .line 3630
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    .line 3631
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method private hudQualityLabel()Ljava/lang/String;
    .locals 2

    .line 2315
    iget v0, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    if-nez v0, :cond_0

    .line 2316
    const-string v0, "fps"

    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2319
    const-string v0, "high"

    return-object v0

    .line 2321
    :cond_1
    const-string v0, "balanced"

    return-object v0
.end method

.method private initializeHudSettingsPanel()V
    .locals 5

    .line 1827
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a01de

    .line 1831
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudSettingsPanel:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 1836
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01df

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudSettingsSummary:Landroid/widget/TextView;

    .line 1837
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01db

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistanceValue:Landroid/widget/TextView;

    .line 1838
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01d3

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimitValue:Landroid/widget/TextView;

    .line 1839
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01d8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudQualityLowButton:Landroid/widget/TextView;

    .line 1840
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01d6

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudQualityBalancedButton:Landroid/widget/TextView;

    .line 1841
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01d7

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudQualityHighButton:Landroid/widget/TextView;

    .line 1842
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01e0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudShadowsToggle:Landroid/widget/TextView;

    .line 1843
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01d0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudEffectsToggle:Landroid/widget/TextView;

    .line 1844
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01d9

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudRadarToggle:Landroid/widget/TextView;

    .line 1845
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01e1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudVoiceToggle:Landroid/widget/TextView;

    .line 1846
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01cf

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudChatSizeToggle:Landroid/widget/TextView;

    .line 1847
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01da

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistanceSeek:Landroid/widget/SeekBar;

    .line 1848
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01d2

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimitSeek:Landroid/widget/SeekBar;

    .line 1850
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->loadHudRenderSettings()V

    .line 1852
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudQualityLowButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1853
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda13;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1858
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudQualityBalancedButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1859
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda14;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1864
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudQualityHighButton:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1865
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda15;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1870
    :cond_4
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudShadowsToggle:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 1871
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda16;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1876
    :cond_5
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudEffectsToggle:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1877
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda17;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1882
    :cond_6
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudRadarToggle:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1883
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda18;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1889
    :cond_7
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudVoiceToggle:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 1890
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda19;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1897
    :cond_8
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudChatSizeToggle:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 1898
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda20;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1907
    :cond_9
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistanceSeek:Landroid/widget/SeekBar;

    if-eqz v0, :cond_a

    .line 1908
    new-instance v1, Lcom/xyron/game/main/SAMP$23;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$23;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1928
    :cond_a
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimitSeek:Landroid/widget/SeekBar;

    if-eqz v0, :cond_b

    .line 1929
    new-instance v1, Lcom/xyron/game/main/SAMP$24;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$24;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1950
    :cond_b
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01dd

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1952
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda21;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1954
    :cond_c
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1956
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda22;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1964
    :cond_d
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncHudRenderSettingsUi()V

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncHudFpsCounterButton()V

    const-string v0, "hud_chat_scale_seek"

    const-string v1, "hud_chat_scale_value"

    const-string v2, "chat_scale"

    const-string v3, "Escala do chat"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xyron/game/main/SAMP;->bindSettingsSeekBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings_audio_master_seek"

    const-string v1, "settings_audio_master_value"

    const-string v2, "master"

    const-string v3, "Volume geral"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xyron/game/main/SAMP;->bindSettingsSeekBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings_audio_sfx_seek"

    const-string v1, "settings_audio_sfx_value"

    const-string v2, "sfx"

    const-string v3, "Efeitos"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xyron/game/main/SAMP;->bindSettingsSeekBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings_audio_ambient_seek"

    const-string v1, "settings_audio_ambient_value"

    const-string v2, "ambient"

    const-string v3, "Ambiente"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xyron/game/main/SAMP;->bindSettingsSeekBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings_audio_vehicles_seek"

    const-string v1, "settings_audio_vehicles_value"

    const-string v2, "vehicles"

    const-string v3, "Veículos"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xyron/game/main/SAMP;->bindSettingsSeekBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings_audio_voip_seek"

    const-string v1, "settings_audio_voip_value"

    const-string v2, "voip"

    const-string v3, "VoIP"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xyron/game/main/SAMP;->bindSettingsSeekBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudRenderSettingsRuntime()V

    return-void
.end method

.method private initializeRuntimeOverlays()V
    .locals 8

    .line 2884
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a017a

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    .line 2885
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a03c2

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    .line 2886
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0179

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebInventory:Landroid/widget/FrameLayout;

    .line 2887
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a03c1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->webInventory:Landroid/webkit/WebView;

    .line 2888
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a017b

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebMiniMap:Landroid/widget/FrameLayout;

    .line 2889
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a03c3

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->webMiniMap:Landroid/webkit/WebView;

    .line 2890
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a017d

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebWeaponWheel:Landroid/widget/FrameLayout;

    .line 2891
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a03c6

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->webWeaponWheel:Landroid/webkit/WebView;

    .line 2892
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a027f

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->overlayBlurScrim:Landroid/view/View;

    .line 2893
    new-instance v0, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;-><init>(Lcom/xyron/game/main/SAMP;Lcom/xyron/game/main/SAMP$1;)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->runtimeOverlayBridge:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    .line 2895
    new-instance v0, Lcom/xyron/game/main/SAMP$29;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$29;-><init>(Lcom/xyron/game/main/SAMP;)V

    .line 2900
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->webInventory:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->webMiniMap:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/xyron/game/main/SAMP;->webWeaponWheel:Landroid/webkit/WebView;

    const/4 v5, 0x4

    new-array v6, v5, [Landroid/webkit/WebView;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v2, v6, v1

    if-eqz v2, :cond_0

    .line 2901
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2913
    :cond_1
    iput-boolean v7, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayConfigured:Z

    .line 2914
    iput-boolean v7, p0, Lcom/xyron/game/main/SAMP;->inventoryOverlayConfigured:Z

    .line 2915
    iput-boolean v7, p0, Lcom/xyron/game/main/SAMP;->mapOverlayConfigured:Z

    .line 2916
    iput-boolean v7, p0, Lcom/xyron/game/main/SAMP;->weaponWheelOverlayConfigured:Z

    .line 2917
    iput-boolean v7, p0, Lcom/xyron/game/main/SAMP;->settingsOverlayConfigured:Z

    .line 2918
    iput-boolean v7, p0, Lcom/xyron/game/main/SAMP;->settingsDocumentReady:Z

    iput-boolean v7, p0, Lcom/xyron/game/main/SAMP;->phoneDocumentReady:Z

    .line 2919
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlayInternal()V

    .line 2920
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlayInternal()V

    .line 2921
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideMapOverlayInternal()V

    .line 2922
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlayInternal()V

    .line 2923
    invoke-direct {p0, v7}, Lcom/xyron/game/main/SAMP;->setOverlayBlurEnabledInternal(Z)V

    return-void
.end method

.method private initializeRuntimeTopOverlay()V
    .locals 3

    .line 2857
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d008a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->runtimeTopOverlay:Landroid/widget/FrameLayout;

    .line 2860
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2864
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->runtimeTopOverlay:Landroid/widget/FrameLayout;

    const v1, 0x7f0a017c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    .line 2865
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->runtimeTopOverlay:Landroid/widget/FrameLayout;

    const v1, 0x7f0a03c4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->webSettings:Landroid/webkit/WebView;

    .line 2866
    new-instance v1, Lcom/xyron/game/main/SAMP$28;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$28;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2871
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->runtimeTopOverlay:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02f9

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->rioMapHeader:Landroid/view/View;

    .line 2872
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->runtimeTopOverlay:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02f8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2874
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda45;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/16 v0, 0x8

    .line 2876
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->setSettingsOverlayHiddenState(I)V

    .line 2877
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->rioMapHeader:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2878
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private injectTouchWithInputManager(FF)Z
    .locals 17

    const/4 v1, 0x0

    .line 4099
    :try_start_0
    const-string v0, "input"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p0

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/xyron/game/main/SAMP;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    if-nez v0, :cond_0

    return v1

    .line 4104
    :cond_0
    const-class v3, Landroid/hardware/input/InputManager;

    const-string v4, "injectInputEvent"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/view/InputEvent;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4109
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-wide v9, v6

    move-wide v11, v6

    move/from16 v14, p1

    move/from16 v15, p2

    .line 4112
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    const-wide/16 v9, 0x18

    add-long v11, v6, v9

    const/4 v13, 0x1

    const/16 v16, 0x0

    move-wide v9, v6

    move/from16 v14, p1

    move/from16 v15, p2

    .line 4120
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    const/16 v7, 0x1002

    .line 4128
    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setSource(I)V

    .line 4129
    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->setSource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4134
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v4, v9, v1

    aput-object v7, v9, v8

    invoke-virtual {v3, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 4135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v1

    aput-object v9, v5, v8

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4137
    :try_start_3
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 4138
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catchall_0
    move-exception v0

    .line 4137
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 4138
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 4139
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_1
    move-object/from16 v2, p0

    :catchall_2
    return v1
.end method

.method private installSystemUiWatcher()V
    .locals 2

    .line 1434
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 1439
    :cond_1
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0, v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda30;-><init>(Lcom/xyron/game/main/SAMP;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method private isHudSettingsVisible()Z
    .locals 1

    .line 2384
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudSettingsPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInventoryOverlayVisible()Z
    .locals 1

    .line 3645
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebInventory:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNearbyPanelVisible()Z
    .locals 1

    .line 3898
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->nearbyPlayerMenu:Lcom/xyron/game/main/NearbyPlayerMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/NearbyPlayerMenu;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPhoneOverlayVisible()Z
    .locals 1

    .line 3638
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPickupCreatorVisible()Z
    .locals 1

    .line 3661
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->mPickupCreatorOverlay:Lcom/xyron/game/main/ui/PickupCreatorOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSettingsOverlayVisible()Z
    .locals 1

    .line 3655
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 3657
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWeaponWheelOverlayVisible()Z
    .locals 1

    .line 3649
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebWeaponWheel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 3651
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$configureRuntimeOverlay$35(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$evaluateOverlayJavascript$64(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4565
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private synthetic lambda$hideInventoryOverlay$48()V
    .locals 2

    .line 3548
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getNativeOverlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3549
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setNativeOverlayState(I)V

    .line 3551
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method private synthetic lambda$hidePhoneOverlay$45()V
    .locals 2

    .line 3502
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getNativeOverlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3503
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setNativeOverlayState(I)V

    .line 3505
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method static synthetic lambda$performNativeMenuTap$61(FF)V
    .locals 11

    .line 4063
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v0, v8

    move-wide v2, v8

    move v5, p0

    move v6, p1

    .line 4064
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    const-wide/16 v0, 0x18

    add-long v2, v8, v0

    const/4 v4, 0x1

    move-wide v0, v8

    .line 4072
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    const/16 p1, 0x1002

    .line 4080
    invoke-virtual {v10, p1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 4081
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 4084
    :try_start_0
    new-instance p1, Landroid/app/Instrumentation;

    invoke-direct {p1}, Landroid/app/Instrumentation;-><init>()V

    .line 4085
    invoke-virtual {p1, v10}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 4086
    invoke-virtual {p1, p0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4090
    :goto_0
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 4091
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4088
    :try_start_1
    const-string v0, "SAMP"

    const-string v1, "Falha ao injetar toque nativo."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 4090
    :goto_2
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 4091
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    .line 4092
    throw p1
.end method

.method private synthetic lambda$showInventoryOverlay$46()V
    .locals 1

    .line 3517
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideHudSettingsPanel()V

    .line 3518
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlayInternal()V

    .line 3519
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideMapOverlayInternal()V

    .line 3520
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlayInternal()V

    const/4 v0, 0x2

    .line 3521
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setNativeOverlayState(I)V

    .line 3522
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method private synthetic lambda$showPhoneOverlayAuthorized$39()V
    .locals 1

    .line 3384
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideHudSettingsPanel()V

    .line 3385
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlayInternal()V

    .line 3386
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideMapOverlayInternal()V

    .line 3387
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlayInternal()V

    const/4 v0, 0x1

    .line 3388
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setNativeOverlayState(I)V

    .line 3389
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method static synthetic lambda$syncRuntimeOverlay$36(Landroid/webkit/WebView;)V
    .locals 2

    .line 3119
    const-string/jumbo v0, "window.XyronHydrate && window.XyronHydrate();"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private launchVoiceCommand(Ljava/lang/String;)Z
    .locals 7

    .line 4581
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->resolveOverlayWebView(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object p1

    .line 4582
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->pendingVoiceTarget:Landroid/webkit/WebView;

    .line 4584
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const-string/jumbo v2, "window.XyronRuntimeReceiveVoice"

    const-string v3, "status"

    const-string v4, "error"

    const/4 v5, 0x0

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 4585
    invoke-static {p0, v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4586
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4588
    :try_start_0
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4589
    const-string v1, "permission"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4592
    :catch_0
    invoke-direct {p0, p1, v2, v0}, Lcom/xyron/game/main/SAMP;->dispatchRuntimeCallback(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 4593
    const-string p1, "Permissao de microfone nao concedida."

    invoke-static {p0, p1, v5}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v5

    .line 4597
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4598
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v6, "free_form"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4599
    const-string v1, "android.speech.extra.LANGUAGE"

    const-string v6, "pt-BR"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4600
    const-string v1, "android.speech.extra.PREFER_OFFLINE"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4601
    const-string v1, "android.speech.extra.PROMPT"

    const-string v6, "Diga o comando que deseja usar"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4603
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4604
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4606
    :try_start_1
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4607
    const-string v1, "recognizer_unavailable"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4610
    :catch_1
    invoke-direct {p0, p1, v2, v0}, Lcom/xyron/game/main/SAMP;->dispatchRuntimeCallback(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 4611
    const-string p1, "Reconhecimento de voz indisponivel."

    invoke-static {p0, p1, v5}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v5

    :cond_1
    const/16 v1, 0x1132

    .line 4616
    :try_start_2
    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 p1, 0x1

    return p1

    :catch_2
    move-exception v0

    .line 4619
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4621
    :try_start_3
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4622
    const-string v3, "launch_failed"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4625
    :catch_3
    invoke-direct {p0, p1, v2, v1}, Lcom/xyron/game/main/SAMP;->dispatchRuntimeCallback(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 4626
    const-string p1, "SAMP"

    const-string v1, "Voice command launch failed"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method private loadHudRenderSettings()V
    .locals 6

    .line 1969
    const-string/jumbo v0, "xyron_hud_render_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1970
    const-string v2, "render_distance"

    iget v3, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistance:I

    .line 1971
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xa0

    const/16 v4, 0x1e

    .line 1970
    invoke-direct {p0, v2, v4, v3}, Lcom/xyron/game/main/SAMP;->clampInt(III)I

    move-result v2

    iput v2, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistance:I

    .line 1975
    const-string v2, "fps_limit"

    iget v3, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimit:I

    .line 1976
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x78

    .line 1975
    invoke-direct {p0, v2, v4, v3}, Lcom/xyron/game/main/SAMP;->clampInt(III)I

    move-result v2

    iput v2, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimit:I

    .line 1980
    const-string v2, "quality"

    iget v3, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    .line 1981
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    .line 1980
    invoke-direct {p0, v2, v1, v3}, Lcom/xyron/game/main/SAMP;->clampInt(III)I

    move-result v2

    iput v2, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    .line 1985
    const-string v2, "shadows"

    iget-boolean v3, p0, Lcom/xyron/game/main/SAMP;->hudShadowsEnabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->hudShadowsEnabled:Z

    .line 1986
    const-string v2, "effects"

    iget-boolean v3, p0, Lcom/xyron/game/main/SAMP;->hudEffectsEnabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->hudEffectsEnabled:Z

    .line 1987
    const-string v2, "fps_counter"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->hudFpsCounterEnabled:Z

    .line 1988
    const-string v2, "brightness"

    const/16 v3, 0x64

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0xa

    invoke-direct {p0, v2, v4, v3}, Lcom/xyron/game/main/SAMP;->clampInt(III)I

    move-result v2

    iput v2, p0, Lcom/xyron/game/main/SAMP;->hudBrightness:I

    .line 1989
    const-string v2, "control_offset_x"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, -0x50

    const/16 v4, 0x50

    invoke-direct {p0, v2, v3, v4}, Lcom/xyron/game/main/SAMP;->clampInt(III)I

    move-result v2

    iput v2, p0, Lcom/xyron/game/main/SAMP;->hudControlOffsetX:I

    .line 1990
    const-string v2, "control_offset_y"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2, v3, v4}, Lcom/xyron/game/main/SAMP;->clampInt(III)I

    move-result v2

    iput v2, p0, Lcom/xyron/game/main/SAMP;->hudControlOffsetY:I

    .line 1994
    const-string v2, "radar_fix_v13_applied"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1995
    const-string v3, "radar"

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 1996
    iget-boolean v5, p0, Lcom/xyron/game/main/SAMP;->hudRadarEnabled:Z

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 1997
    :goto_0
    iput-boolean v5, p0, Lcom/xyron/game/main/SAMP;->hudRadarEnabled:Z

    if-nez v1, :cond_1

    .line 1999
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2000
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2001
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2002
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2004
    :cond_1
    const-string v1, "voice_enabled"

    .line 2006
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2004
    const-string v1, "VoiceChatEnable"

    invoke-direct {p0, v1, v0}, Lcom/xyron/game/main/SAMP;->readGuiBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudVoiceEnabled:Z

    .line 2010
    const-string/jumbo v0, "xyron_hud_render_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "chat_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const v1, 0x3f400000    # 0.75f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3fc66666    # 1.55f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/SAMP;->hudChatScale:F

    return-void
.end method

.method private openNativeGameSettings()V
    .locals 4

    .line 4019
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->openNativePauseMenu()V

    .line 4020
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda42;-><init>(Lcom/xyron/game/main/SAMP;)V

    const-wide/16 v2, 0x17c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4027
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda43;-><init>(Lcom/xyron/game/main/SAMP;)V

    const-wide/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openNativeHudEditor()V
    .locals 1

    .line 3256
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda65;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda65;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private openNativeMapForPause()V
    .locals 3

    .line 3971
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Minimapa pressionado: abrindo mapa nativo (helper="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAMP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-nez v0, :cond_0

    .line 3974
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->openNativeMapViaPauseMenu()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3978
    :try_start_0
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->setNativeMapUiVisible(Z)V

    .line 3979
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->openHudFixNativeMap()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    .line 3981
    invoke-direct {p0, v2}, Lcom/xyron/game/main/SAMP;->setNativeMapUiVisible(Z)V

    .line 3982
    const-string v2, "Nao foi possivel abrir o mapa nativo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3983
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->openNativeMapViaPauseMenu()V

    :goto_0
    return-void
.end method

.method private showSafePause()V
    .locals 9

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraPause:Lcom/xyron/game/main/ui/AngraPause;
    if-eqz v0, :cond_create
    const-string v1, "NOBRE RP"
    invoke-virtual {v0, v1}, Lcom/xyron/game/main/ui/AngraPause;->show(Ljava/lang/String;)V
    return-void

    :cond_create
    new-instance v0, Lcom/xyron/game/main/ui/AngraPause;
    move-object v1, p0

    new-instance v2, Lcom/xyron/game/main/PauseAction;
    const/4 v4, 0x1
    invoke-direct {v2, p0, v4}, Lcom/xyron/game/main/PauseAction;-><init>(Lcom/xyron/game/main/SAMP;I)V

    new-instance v3, Lcom/xyron/game/main/PauseAction;
    const/4 v4, 0x0
    invoke-direct {v3, p0, v4}, Lcom/xyron/game/main/PauseAction;-><init>(Lcom/xyron/game/main/SAMP;I)V

    const/4 v4, 0x0
    move-object v5, v4
    move-object v6, v4
    move-object v7, v4
    move-object v8, v4
    invoke-direct/range {v0 .. v8}, Lcom/xyron/game/main/ui/AngraPause;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/IntSupplier;)V
    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->angraPause:Lcom/xyron/game/main/ui/AngraPause;

    iget-object v4, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;
    invoke-virtual {v0}, Lcom/xyron/game/main/ui/AngraPause;->view()Landroid/view/View;
    move-result-object v5
    const/4 v6, -0x1
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v7, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraPause:Lcom/xyron/game/main/ui/AngraPause;
    const-string v1, "NOBRE RP"
    invoke-virtual {v0, v1}, Lcom/xyron/game/main/ui/AngraPause;->show(Ljava/lang/String;)V
    return-void
.end method

.method private openNativeMapFromRadar()V
    .locals 0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->openNativeMapForPause()V
    return-void
.end method
.method private openNativeMapViaPauseMenu()V
    .locals 4

    .line 3988
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->openNativePauseMenu()V

    .line 3989
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda75;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda75;-><init>(Lcom/xyron/game/main/SAMP;)V

    const-wide/16 v2, 0x17c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3993
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda76;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda76;-><init>(Lcom/xyron/game/main/SAMP;)V

    const-wide/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openNativePauseMenu()V
    .locals 3

    const/4 v0, 0x1

    .line 3932
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setAllowNextNativePauseMenu(Z)V

    .line 3933
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->pauseEvent()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3935
    const-string v1, "SAMP"

    const-string v2, "Nao foi possivel abrir o menu nativo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private openPauseSupportDraft(Ljava/lang/String;)V
    .locals 1

    .line 3960
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->closeAngraPause()V

    .line 3961
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->mKeyboard:Lcom/xyron/game/main/ui/CustomKeyboard;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/ui/CustomKeyboard;->openCommandDraft(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private openPickupCreatorOverlay()V
    .locals 1

    .line 3814
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideKeyboard()V

    .line 3815
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlay()V

    .line 3816
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlay()V

    .line 3817
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlay()V

    .line 3818
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideMapOverlayInternal()V

    .line 3819
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    .line 3820
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->mPickupCreatorOverlay:Lcom/xyron/game/main/ui/PickupCreatorOverlay;

    if-eqz v0, :cond_0

    .line 3821
    invoke-virtual {v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->show()V

    :cond_0
    return-void
.end method

.method private openReferencePanel(Ljava/lang/String;)V
    .locals 2

    .line 4689
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideKeyboard()V

    .line 4691
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlay()V

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlay()V

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlay()V

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    .line 4692
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xyron/game/main/ReferencePanels;

    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda79;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda79;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-direct {v0, p0, v1}, Lcom/xyron/game/main/ReferencePanels;-><init>(Landroid/app/Activity;Lcom/xyron/game/main/ReferencePanels$Sender;)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    .line 4701
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda80;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda80;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/ReferencePanels;->setSoundAction(Lcom/xyron/game/main/ReferencePanels$SoundAction;)V

    .line 4702
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/ReferencePanels;->show(Ljava/lang/String;)V

    return-void
.end method

.method private openSafeHudSettings()V
    .locals 1

    .line 4011
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isSettingsOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4012
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSettingsOverlay()V

    return-void

    .line 4015
    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->showSettingsOverlay()V

    return-void
.end method

.method private performNativeMenuTap(FF)V
    .locals 6

    .line 4037
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4038
    :goto_0
    const-string v1, "SAMP"

    if-nez v0, :cond_1

    .line 4039
    const-string p1, "performNativeMenuTap ignored: decorView null"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4043
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 4044
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 4045
    const-string/jumbo v3, "x"

    if-lez v2, :cond_4

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v4, v2

    mul-float v4, v4, p1

    int-to-float p1, v0

    mul-float p1, p1, p2

    .line 4052
    invoke-direct {p0, v4, p1}, Lcom/xyron/game/main/SAMP;->injectTouchWithInputManager(FF)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 4056
    :cond_3
    :try_start_0
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0, p2, v5}, Lcom/xyron/game/main/SAMP;->sendSyntheticNativeTouch(II)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 4059
    const-string v5, "Falha ao enviar toque nativo sintetico."

    invoke-static {v1, v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4061
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "performNativeMenuTap x="

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " y="

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " size="

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4062
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda10;

    invoke-direct {v0, v4, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda10;-><init>(FF)V

    const-string/jumbo p1, "xyron-native-menu-tap"

    invoke-direct {p2, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 4094
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    .line 4046
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "performNativeMenuTap ignored: invalid bounds "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private phoneApps()Lcom/xyron/game/main/PhoneApps;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->phoneApps:Lcom/xyron/game/main/PhoneApps;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xyron/game/main/PhoneApps;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/PhoneApps;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->phoneApps:Lcom/xyron/game/main/PhoneApps;

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->phoneApps:Lcom/xyron/game/main/PhoneApps;

    return-object v0
.end method

.method private positionAngraNotice()V
    .locals 0

    return-void
.end method

.method private prepareAngraEmojiFont()V
    .locals 7

    .line 450
    const-string v0, "SAMP"

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "angra-emoji-v18.ttf"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "Fonts/AngraEmoji.ttf"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v4, 0x2000

    .line 452
    :try_start_2
    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 453
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 454
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xyron/game/main/SAMP;->setAngraEmojiFontPath(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Emoji bridge unavailable"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 451
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v1

    .line 453
    const-string v2, "Emoji font unavailable"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private prepareNativeOverlayMotion(Landroid/webkit/WebView;)V
    .locals 3

    .line 3477
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3478
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isSettingsOverlayVisible()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    return-void

    .line 3479
    :cond_2
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->cancelRuntimeOverlayMotion()V

    .line 3480
    iget v1, p0, Lcom/xyron/game/main/SAMP;->runtimeMotionEpoch:I

    .line 3481
    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    .line 3482
    new-instance v2, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda57;

    invoke-direct {v2, p0, v1, v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda57;-><init>(Lcom/xyron/game/main/SAMP;IZ)V

    const-string/jumbo v0, "window.XyronOpen&&window.XyronOpen();"

    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private native queueAngraDialogResponse(III[B)Z
.end method

.method private readGuiBoolean(Ljava/lang/String;Z)Z
    .locals 3

    .line 2161
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->gameSettingsFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2162
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 2164
    :cond_0
    :try_start_0
    new-instance v1, Lorg/ini4j/Wini;

    invoke-direct {v1, v0}, Lorg/ini4j/Wini;-><init>(Ljava/io/File;)V

    const-string v0, "gui"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v0, p1, v2}, Lorg/ini4j/Wini;->get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    return p2

    .line 2166
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "yes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :catch_0
    :cond_4
    :goto_2
    return p2
.end method

.method private readGuiFloat(Ljava/lang/String;F)F
    .locals 3

    .line 2171
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->gameSettingsFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2174
    :cond_0
    :try_start_0
    new-instance v1, Lorg/ini4j/Wini;

    invoke-direct {v1, v0}, Lorg/ini4j/Wini;-><init>(Ljava/io/File;)V

    const-string v0, "gui"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v0, p1, v2}, Lorg/ini4j/Wini;->get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    .line 2175
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return p2
.end method

.method private readPausePing()I
    .locals 1

    .line 3955
    :try_start_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->getPausePing()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method private recoverRuntimeOverlay(Landroid/webkit/WebView;)Z
    .locals 6

    .line 3084
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3085
    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 3086
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    :goto_0
    if-eqz v0, :cond_1

    .line 3087
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3088
    :cond_1
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 3089
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setId(I)V

    const/4 v5, 0x4

    .line 3090
    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 3091
    new-instance v5, Lcom/xyron/game/main/SAMP$33;

    invoke-direct {v5, p0}, Lcom/xyron/game/main/SAMP$33;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3096
    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    if-ne p1, v5, :cond_2

    iput-object v4, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayConfigured:Z

    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->phoneDocumentReady:Z

    goto :goto_1

    .line 3097
    :cond_2
    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->webSettings:Landroid/webkit/WebView;

    if-ne p1, v5, :cond_3

    iput-object v4, p0, Lcom/xyron/game/main/SAMP;->webSettings:Landroid/webkit/WebView;

    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->settingsOverlayConfigured:Z

    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->settingsDocumentReady:Z

    goto :goto_1

    .line 3098
    :cond_3
    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->webInventory:Landroid/webkit/WebView;

    if-ne p1, v5, :cond_4

    iput-object v4, p0, Lcom/xyron/game/main/SAMP;->webInventory:Landroid/webkit/WebView;

    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->inventoryOverlayConfigured:Z

    .line 3099
    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->inventoryAdapter:Lcom/xyron/game/main/InventoryAdapter;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v4}, Lcom/xyron/game/main/InventoryAdapter;->attach(Landroid/webkit/WebView;)V

    goto :goto_1

    .line 3100
    :cond_4
    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->webMiniMap:Landroid/webkit/WebView;

    if-ne p1, v5, :cond_5

    iput-object v4, p0, Lcom/xyron/game/main/SAMP;->webMiniMap:Landroid/webkit/WebView;

    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->mapOverlayConfigured:Z

    goto :goto_1

    .line 3101
    :cond_5
    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->webWeaponWheel:Landroid/webkit/WebView;

    if-ne p1, v5, :cond_6

    iput-object v4, p0, Lcom/xyron/game/main/SAMP;->webWeaponWheel:Landroid/webkit/WebView;

    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->weaponWheelOverlayConfigured:Z

    .line 3102
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    if-eqz v0, :cond_7

    .line 3103
    invoke-virtual {v0, v4, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3106
    :cond_7
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->cancelRuntimeOverlayMotion()V

    const/16 p1, 0x8

    .line 3107
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->setWeaponWheelOverlayHiddenState(I)V

    .line 3108
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->setInventoryOverlayHiddenState(I)V

    .line 3109
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->setSettingsOverlayHiddenState(I)V

    .line 3110
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->setPhoneOverlayHiddenState(I)V

    if-eqz v0, :cond_8

    .line 3111
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_8

    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda44;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    :cond_8
    const/4 p1, 0x1

    return p1
.end method

.method private refreshRuntimeChrome()V
    .locals 9

    .line 3859
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3860
    :try_start_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->systemPanelVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->animationPanelVisible:Z

    if-nez v0, :cond_1

    .line 3861
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isInventoryOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isSettingsOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudNativeMapVisible:Z

    if-nez v0, :cond_1

    .line 3862
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isWeaponWheelOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPickupCreatorVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isHudSettingsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraPause:Lcom/xyron/game/main/ui/AngraPause;

    if-eqz v0, :cond_0

    .line 3863
    invoke-virtual {v0}, Lcom/xyron/game/main/ui/AngraPause;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3860
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setPhoneMovementAllowed(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3864
    const-string v3, "SAMP"

    const-string v4, "Phone movement runtime unavailable"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3866
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraPause:Lcom/xyron/game/main/ui/AngraPause;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/AngraPause;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 3867
    :goto_2
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isNearbyPanelVisible()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/xyron/game/main/SAMP;->systemPanelVisible:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/xyron/game/main/SAMP;->animationPanelVisible:Z

    if-nez v3, :cond_5

    if-nez v0, :cond_5

    .line 3868
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isInventoryOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3869
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isWeaponWheelOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3870
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isSettingsOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3871
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPickupCreatorVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3872
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isHudSettingsVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_6

    .line 3873
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isNearbyPanelVisible()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/xyron/game/main/SAMP;->systemPanelVisible:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/xyron/game/main/SAMP;->animationPanelVisible:Z

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-direct {p0, v3}, Lcom/xyron/game/main/SAMP;->setOverlayBlurEnabledInternal(Z)V

    .line 3874
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyGameplayHudMask()V

    .line 3875
    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_e

    const v4, 0x7f0a02f5

    .line 3876
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3877
    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v5, 0x7f0a0094

    invoke-virtual {v3, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3878
    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v5, 0x7f0a0054

    invoke-virtual {v3, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 3880
    move-object v5, v3

    check-cast v5, Landroid/widget/ImageButton;

    iget v6, p0, Lcom/xyron/game/main/SAMP;->angraDoorKind:I

    const/16 v7, 0xf

    if-ne v6, v7, :cond_7

    const v6, 0x7f08007c

    goto :goto_7

    :cond_7
    if-eq v6, v2, :cond_9

    const/4 v8, 0x3

    if-eq v6, v8, :cond_9

    const/4 v8, 0x4

    if-eq v6, v8, :cond_9

    const/16 v8, 0xb

    if-ne v6, v8, :cond_8

    goto :goto_6

    :cond_8
    const v6, 0x7f08007a

    goto :goto_7

    :cond_9
    :goto_6
    const v6, 0x7f08007b

    :goto_7
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3881
    iget-boolean v5, p0, Lcom/xyron/game/main/SAMP;->angraDoorVisible:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/xyron/game/main/SAMP;->accessoryEditorVisible:Z

    if-nez v5, :cond_b

    if-nez v0, :cond_b

    iget-boolean v5, p0, Lcom/xyron/game/main/SAMP;->angraInVehicle:Z

    if-eqz v5, :cond_a

    iget v5, p0, Lcom/xyron/game/main/SAMP;->angraDoorKind:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_a

    if-eq v5, v4, :cond_a

    const/16 v6, 0xd

    if-eq v5, v6, :cond_a

    const/16 v6, 0xe

    if-ne v5, v6, :cond_b

    :cond_a
    iget-boolean v5, p0, Lcom/xyron/game/main/SAMP;->hudNativeMapVisible:Z

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/xyron/game/main/SAMP;->nativeHudEditorVisible:Z

    if-nez v5, :cond_b

    iget v5, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    if-ne v5, v2, :cond_b

    const/4 v5, 0x0

    goto :goto_8

    :cond_b
    const/16 v5, 0x8

    :goto_8
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3882
    new-instance v5, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda73;

    invoke-direct {v5, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda73;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3883
    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v6, 0x7f0a0055

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 3884
    iget v6, p0, Lcom/xyron/game/main/SAMP;->angraDoorKind:I

    if-ne v6, v7, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    goto :goto_9

    :cond_c
    const/16 v6, 0x8

    :goto_9
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v6, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda74;

    invoke-direct {v6, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda74;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3885
    :cond_d
    iget v5, p0, Lcom/xyron/game/main/SAMP;->angraDoorKind:I

    if-ne v5, v7, :cond_e

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3888
    :cond_e
    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->inventoryAdapter:Lcom/xyron/game/main/InventoryAdapter;

    if-eqz v3, :cond_10

    iget-boolean v4, p0, Lcom/xyron/game/main/SAMP;->accessoryEditorVisible:Z

    if-nez v4, :cond_f

    if-nez v0, :cond_f

    iget-boolean v4, p0, Lcom/xyron/game/main/SAMP;->hudNativeMapVisible:Z

    if-nez v4, :cond_f

    iget-boolean v4, p0, Lcom/xyron/game/main/SAMP;->nativeHudEditorVisible:Z

    if-nez v4, :cond_f

    iget v4, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    if-ne v4, v2, :cond_f

    iget-boolean v4, p0, Lcom/xyron/game/main/SAMP;->angraInVehicle:Z

    if-nez v4, :cond_f

    .line 3889
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->angraHotbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v1, 0x1

    .line 3888
    :cond_f
    invoke-virtual {v3, v1}, Lcom/xyron/game/main/InventoryAdapter;->setVisible(Z)V

    :cond_10
    if-eqz v0, :cond_11

    .line 3891
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideMapOverlayInternal()V

    goto :goto_a

    .line 3893
    :cond_11
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->showMapOverlayInternal()V

    :goto_a
    return-void
.end method

.method private requestNativeGameplayResume()V
    .locals 3

    const/4 v0, 0x0

    .line 4001
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setAllowNextNativePauseMenu(Z)V

    .line 4002
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->forceEndNativeUserPause()V

    .line 4003
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->resumeEvent()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4005
    const-string v1, "SAMP"

    const-string v2, "Nao foi possivel retomar o gameplay nativo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4007
    :goto_0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    return-void
.end method

.method private resetPhoneMotionTransform()V
    .locals 2

    .line 3433
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3434
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 3435
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3436
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    return-void
.end method

.method private resolveOverlayWebView(Ljava/lang/String;)Landroid/webkit/WebView;
    .locals 2

    .line 4531
    const-string v0, "settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4532
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->ensureRuntimeOverlayConfigured(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object p1

    return-object p1

    .line 4534
    :cond_0
    const-string v0, "inventory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4535
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->ensureRuntimeOverlayConfigured(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object p1

    return-object p1

    .line 4537
    :cond_1
    const-string v0, "weaponWheel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4538
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->ensureRuntimeOverlayConfigured(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object p1

    return-object p1

    .line 4540
    :cond_2
    const-string v0, "map"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 4543
    :cond_3
    const-string v0, "phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4544
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->ensureRuntimeOverlayConfigured(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object p1

    return-object p1

    .line 4546
    :cond_4
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4547
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    return-object p1

    .line 4549
    :cond_5
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isInventoryOverlayVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4550
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webInventory:Landroid/webkit/WebView;

    return-object p1

    .line 4552
    :cond_6
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isWeaponWheelOverlayVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4553
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webWeaponWheel:Landroid/webkit/WebView;

    return-object p1

    .line 4555
    :cond_7
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isSettingsOverlayVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 4556
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webSettings:Landroid/webkit/WebView;

    return-object p1

    .line 4558
    :cond_8
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    return-object p1
.end method

.method private restoreAngraAudioMix()V
    .locals 9

    .line 159
    const-string v0, "angra_audio_mix_v1"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->phoneApps:Lcom/xyron/game/main/PhoneApps;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xyron/game/main/PhoneApps;->refreshAudioMix()V

    .line 161
    :cond_0
    :try_start_0
    const-string v1, "voip"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "vehicles"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "ambient"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "sfx"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v1, "master"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/xyron/game/main/SAMP;->setAngraAudioMix(IIIII)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 162
    const-string v1, "SAMP"

    const-string v2, "Audio mixer unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private roleplay()Lcom/xyron/game/main/RoleplayUI;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->roleplayUI:Lcom/xyron/game/main/RoleplayUI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xyron/game/main/RoleplayUI;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/RoleplayUI;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->roleplayUI:Lcom/xyron/game/main/RoleplayUI;

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->roleplayUI:Lcom/xyron/game/main/RoleplayUI;

    return-object v0
.end method

.method private runNativeOverlayMotion(ILjava/lang/Runnable;)V
    .locals 5

    .line 3451
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->cancelRuntimeOverlayMotion()V

    .line 3452
    iget v0, p0, Lcom/xyron/game/main/SAMP;->runtimeMotionEpoch:I

    const/4 v1, 0x2

    .line 3453
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 3454
    iput-object v2, p0, Lcom/xyron/game/main/SAMP;->runtimeOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 3455
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-nez p1, :cond_0

    const-wide/16 v3, 0x1a2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const-wide/16 v3, 0x1c5

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    const-wide/16 v3, 0x320

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x18c

    .line 3456
    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3457
    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0, v0, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda59;-><init>(Lcom/xyron/game/main/SAMP;II)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3466
    new-instance p1, Lcom/xyron/game/main/SAMP$34;

    invoke-direct {p1, p0, v0, p2}, Lcom/xyron/game/main/SAMP$34;-><init>(Lcom/xyron/game/main/SAMP;ILjava/lang/Runnable;)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3473
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private runtimeDocumentReady(Landroid/webkit/WebView;)V
    .locals 4

    .line 3070
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->webSettings:Landroid/webkit/WebView;

    if-ne p1, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    .line 3071
    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->phoneDocumentReady:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->settingsDocumentReady:Z

    if-eqz v1, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    if-eqz v0, :cond_6

    .line 3072
    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->webcellcarregada:Z

    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->phoneDocumentReady:Z

    goto :goto_2

    :cond_6
    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->settingsDocumentReady:Z

    .line 3073
    :goto_2
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->runtimeOverlayStates:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3074
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->syncRuntimeOverlay(Landroid/webkit/WebView;)V

    if-eqz v0, :cond_7

    .line 3075
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->phoneApps()Lcom/xyron/game/main/PhoneApps;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xyron/game/main/PhoneApps;->onDocumentReady()V

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->phoneEventInbox:Lcom/xyron/game/main/PhoneEventInbox;

    invoke-virtual {v1}, Lcom/xyron/game/main/PhoneEventInbox;->resume()V

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->flushPhoneEvents()V

    .line 3076
    :cond_7
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    if-eqz v0, :cond_8

    .line 3077
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isSettingsOverlayVisible()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3078
    :goto_3
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->prepareNativeOverlayMotion(Landroid/webkit/WebView;)V

    if-eqz v0, :cond_9

    .line 3079
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->flushPhoneDestination()V

    :cond_9
    return-void
.end method

.method private sanitizeDirectConnectHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 1354
    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private sanitizeDirectConnectNickname(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    .line 1359
    const-string p1, ""

    return-object p1

    .line 1362
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1363
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 1364
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x18

    if-ge v2, v3, :cond_6

    .line 1365
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_4

    :cond_1
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2

    const/16 v3, 0x7a

    if-le v2, v3, :cond_4

    :cond_2
    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    const/16 v3, 0x39

    if-le v2, v3, :cond_4

    :cond_3
    const/16 v3, 0x5f

    if-eq v2, v3, :cond_4

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_4

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_4

    const/16 v3, 0x28

    if-eq v2, v3, :cond_4

    const/16 v3, 0x29

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_4

    const/16 v3, 0x24

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_4

    const/16 v3, 0x40

    if-ne v2, v3, :cond_5

    .line 1379
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1382
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_7
    const-string p1, "Developer_Player"

    :goto_1
    return-object p1
.end method

.method private sanitizeWeaponWheelJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3275
    const-string v0, "[{\"id\":0,\"ammo\":0,\"current\":true}]"

    if-nez p1, :cond_0

    return-object v0

    .line 3278
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3279
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private saveDirectConnectNickname(Ljava/lang/String;)V
    .locals 5

    const-string v0, "Direct connect nickname applied: "

    .line 1386
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "SAMP/settings.ini"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 1388
    const-string v3, "SAMP"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1389
    const-string p1, "Could not create SAMP settings directory for direct nickname."

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1394
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1395
    const-string p1, "Could not create settings.ini for direct nickname."

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1399
    :cond_1
    new-instance v2, Lorg/ini4j/Wini;

    invoke-direct {v2, v1}, Lorg/ini4j/Wini;-><init>(Ljava/io/File;)V

    .line 1400
    const-string v1, "client"

    const-string v4, "name"

    invoke-virtual {v2, v1, v4, p1}, Lorg/ini4j/Wini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1401
    invoke-virtual {v2}, Lorg/ini4j/Wini;->store()V

    .line 1402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1404
    const-string v0, "Failed to persist direct connect nickname."

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private saveHudRenderSettings()V
    .locals 4

    .line 2014
    const-string/jumbo v0, "xyron_hud_render_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2015
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "render_distance"

    iget v2, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistance:I

    .line 2016
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fps_limit"

    iget v2, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimit:I

    .line 2017
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "quality"

    iget v2, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    .line 2018
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shadows"

    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP;->hudShadowsEnabled:Z

    .line 2019
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "effects"

    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP;->hudEffectsEnabled:Z

    .line 2020
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fps_counter"

    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP;->hudFpsCounterEnabled:Z

    .line 2021
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "brightness"

    iget v2, p0, Lcom/xyron/game/main/SAMP;->hudBrightness:I

    .line 2022
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "control_offset_x"

    iget v2, p0, Lcom/xyron/game/main/SAMP;->hudControlOffsetX:I

    .line 2023
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "control_offset_y"

    iget v2, p0, Lcom/xyron/game/main/SAMP;->hudControlOffsetY:I

    .line 2024
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "radar"

    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP;->hudRadarEnabled:Z

    .line 2025
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "voice_enabled"

    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP;->hudVoiceEnabled:Z

    .line 2026
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "chat_scale"

    iget v2, p0, Lcom/xyron/game/main/SAMP;->hudChatScale:F

    .line 2027
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2028
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2029
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudVoiceEnabled:Z

    const-string v1, "true"

    const-string v2, "false"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v3, "VoiceChatEnable"

    invoke-direct {p0, v3, v0}, Lcom/xyron/game/main/SAMP;->writeGuiValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudFpsCounterEnabled:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v0, "fps"

    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->writeGuiValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    iget v0, p0, Lcom/xyron/game/main/SAMP;->hudChatScale:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChatScale"

    invoke-direct {p0, v1, v0}, Lcom/xyron/game/main/SAMP;->writeGuiValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->writeHudRenderSettingsFile()V

    return-void
.end method

.method private static savedMobileOption(Landroid/content/SharedPreferences;II)I
    .locals 2

    .line 2106
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "option_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2107
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 2108
    :cond_0
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 2109
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return p2
.end method

.method private scheduleAutomaticPauseResumeSuppressionRelease()V
    .locals 4

    .line 4181
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->clearAutomaticPauseResumeSuppressionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4182
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->clearAutomaticPauseResumeSuppressionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleBackgroundMenuDismissSequence()V
    .locals 6

    .line 4189
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->pendingBackgroundMenuDismiss:Z

    const-string v1, "SAMP"

    if-nez v0, :cond_0

    .line 4190
    const-string v0, "scheduleBackgroundMenuDismissSequence skipped: pending=false"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4193
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->dismissMenuAfterBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4194
    iput v0, p0, Lcom/xyron/game/main/SAMP;->backgroundMenuDismissStep:I

    .line 4195
    const-string v2, "scheduleBackgroundMenuDismissSequence start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->dismissMenuAfterBackgroundRunnable:Ljava/lang/Runnable;

    sget-object v3, Lcom/xyron/game/main/SAMP;->NATIVE_MENU_RESUME_AFTER_BACKGROUND_DELAYS_MS:[J

    aget-wide v4, v3, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleInventoryOverlayWarmup()V
    .locals 4

    .line 4361
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->runtimeLowRamMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->inventoryOverlayConfigured:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4365
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->inventoryOverlayWarmupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 4366
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda33;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->inventoryOverlayWarmupRunnable:Ljava/lang/Runnable;

    .line 4380
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->inventoryOverlayWarmupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4381
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->inventoryOverlayWarmupRunnable:Ljava/lang/Runnable;

    .line 4383
    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP;->runtimeLowRamMode:Z

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1c20

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x11f8

    .line 4381
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private schedulePhoneOverlayWarmup()V
    .locals 4

    .line 4331
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->ownsPhone:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayConfigured:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayWarmupScheduled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4335
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayWarmupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 4336
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda66;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda66;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayWarmupRunnable:Ljava/lang/Runnable;

    .line 4352
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayWarmupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 4353
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayWarmupScheduled:Z

    .line 4354
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayWarmupRunnable:Ljava/lang/Runnable;

    .line 4356
    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP;->runtimeLowRamMode:Z

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1450

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0xa28

    .line 4354
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private setAltKeyPressedSafely(Z)V
    .locals 4

    .line 2138
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2140
    invoke-virtual {p0, v1}, Lcom/xyron/game/main/SAMP;->onClickButton(I)V

    :cond_0
    return-void

    .line 2145
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->setHudFixAltPressed(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    .line 2147
    sput-boolean v2, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    .line 2148
    const-string v2, "SAMP"

    const-string v3, "Native ALT helper became unavailable"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_2

    .line 2150
    invoke-virtual {p0, v1}, Lcom/xyron/game/main/SAMP;->onClickButton(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private native setAngraAudioMix(IIIII)V
.end method

.method private native setAngraEmojiFontPath(Ljava/lang/String;)V
.end method

.method private setCircularStatusProgress(Landroid/widget/ProgressBar;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2425
    :cond_0
    invoke-direct {p0, p2}, Lcom/xyron/game/main/SAMP;->clampHudStatus(I)I

    move-result p2

    const/16 v0, 0x64

    .line 2426
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2427
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2428
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2429
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    mul-int/lit8 p2, p2, 0x64

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    return-void
.end method

.method private setHudQualityButtonState(Landroid/widget/TextView;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const v0, 0x7f080102

    goto :goto_0

    :cond_1
    const v0, 0x7f08019e

    .line 2366
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    if-eqz p2, :cond_2

    .line 2369
    const-string p2, "#FFffffff"

    goto :goto_1

    :cond_2
    const-string p2, "#d4dee4"

    :goto_1
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setHudToggleState(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2376
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p2, "ON"

    goto :goto_0

    :cond_1
    const-string p2, "OFF"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_2

    const p2, 0x7f080102

    goto :goto_1

    :cond_2
    const p2, 0x7f08019e

    .line 2377
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    if-eqz p3, :cond_3

    .line 2380
    const-string p2, "#FFffffff"

    goto :goto_2

    :cond_3
    const-string p2, "#d4dee4"

    :goto_2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setInventoryOverlayHiddenState(I)V
    .locals 1

    .line 4313
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebInventory:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 4314
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4316
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webInventory:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 4317
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private native setNativeAccessoryEditing(Z)V
.end method

.method private setNativeMapUiVisible(Z)V
    .locals 6

    .line 2235
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudNativeMapVisible:Z

    .line 2236
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->rioMapHeader:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 2237
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 2239
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->runtimeTopOverlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 2240
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->rioMapHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 2243
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_1

    .line 2246
    :cond_4
    iget v3, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    const/4 v1, 0x0

    :cond_5
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    if-eqz p1, :cond_6

    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x6

    .line 2248
    new-array v3, v1, [I

    fill-array-data v3, :array_0

    :goto_3
    if-ge v2, v1, :cond_8

    .line 2252
    aget v4, v3, v2

    .line 2253
    iget-object v5, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2254
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    if-nez p1, :cond_9

    .line 2257
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudRadarVisibility()V

    :cond_9
    return-void

    :array_0
    .array-data 4
        0x7f0a0304
        0x7f0a0197
        0x7f0a030e
        0x7f0a0091
        0x7f0a009b
        0x7f0a02f4
    .end array-data
.end method

.method private setNativeRadarVisibleSafely(Z)V
    .locals 3

    .line 2121
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    const-string v1, "SAMP"

    if-eqz v0, :cond_0

    .line 2123
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->setHudFixRadarEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    .line 2126
    sput-boolean v2, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    .line 2127
    const-string v2, "Native radar helper became unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2131
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->setRadarEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2133
    const-string v0, "Nao foi possivel aplicar a opcao do minimapa."

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setOverlayBlurEnabledInternal(Z)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 4203
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->systemPanelVisible:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->animationPanelVisible:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4204
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isInventoryOverlayVisible()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isWeaponWheelOverlayVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->angraPause:Lcom/xyron/game/main/ui/AngraPause;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xyron/game/main/ui/AngraPause;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4205
    :goto_0
    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->overlayBlurScrim:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    if-eqz p1, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    .line 4206
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4207
    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->overlayBlurScrim:Landroid/view/View;

    if-eqz p1, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    const v2, 0x1020002

    .line 4210
    invoke-virtual {p0, v2}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_5

    return-void

    :cond_5
    const/4 v4, 0x0

    .line 4215
    :goto_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 4216
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 4217
    iget-object v6, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eq v5, v6, :cond_b

    iget-object v6, p0, Lcom/xyron/game/main/SAMP;->runtimeTopOverlay:Landroid/widget/FrameLayout;

    if-ne v5, v6, :cond_6

    goto :goto_7

    :cond_6
    if-eqz p1, :cond_8

    .line 4220
    iget-object v6, p0, Lcom/xyron/game/main/SAMP;->angraPause:Lcom/xyron/game/main/ui/AngraPause;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/xyron/game/main/ui/AngraPause;->view()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_8

    :cond_7
    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_9

    const v7, 0x3f6147ae    # 0.88f

    goto :goto_5

    :cond_9
    const/high16 v7, 0x3f800000    # 1.0f

    .line 4221
    :goto_5
    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 4222
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1f

    if-lt v7, v8, :cond_b

    if-eqz v6, :cond_a

    .line 4223
    iget-boolean v6, p0, Lcom/xyron/game/main/SAMP;->runtimeLowRamMode:Z

    if-nez v6, :cond_a

    .line 4224
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7, v7, v6}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v6

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    .line 4223
    :goto_6
    invoke-static {v5, v6}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/graphics/RenderEffect;)V

    :cond_b
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    return-void
.end method

.method private setPauseState(Z)V
    .locals 1

    .line 857
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda37;-><init>(Lcom/xyron/game/main/SAMP;Z)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setPhoneExpandedInternal(Z)V
    .locals 0

    return-void
.end method

.method private setPhoneOverlayHiddenState(I)V
    .locals 1

    .line 4299
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 4300
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4302
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 4303
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setRioFrameGeometry(IFFFFF)V
    .locals 2

    .line 3245
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3247
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800033

    .line 3248
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    mul-float p4, p4, p6

    .line 3249
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-float p5, p5, p6

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p4

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-float p2, p2, p6

    .line 3250
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    mul-float p3, p3, p6

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 p2, 0x0

    .line 3251
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 3252
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setRuntimeOverlayActive(Landroid/webkit/WebView;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 4448
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->shouldKeepOverlayHot(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 4450
    :goto_1
    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->runtimeOverlayStates:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 4451
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_4

    return-void

    .line 4452
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "(function(d){if(!d||!d.documentElement){return;}d.documentElement.dataset.xyronVisible="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 4455
    const-string v3, "\'1\'"

    goto :goto_2

    :cond_5
    const-string v3, "\'0\'"

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";window.XyronOverlayVisibilityChanged&&window.XyronOverlayVisibilityChanged("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6

    .line 4457
    const-string v3, "true"

    goto :goto_3

    :cond_6
    const-string v3, "false"

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ");})(document);"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4452
    invoke-direct {p0, p1, v0}, Lcom/xyron/game/main/SAMP;->evaluateOverlayJavascript(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_8

    if-eqz v2, :cond_7

    goto :goto_4

    .line 4468
    :cond_7
    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    .line 4469
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFocus()V

    .line 4470
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_5

    .line 4462
    :cond_8
    :goto_4
    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    .line 4466
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_5
    return-void
.end method

.method private setSettingsOverlayHiddenState(I)V
    .locals 1

    .line 4308
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4309
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webSettings:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setTab(ILjava/lang/String;II)V
    .locals 0

    return-void
.end method

.method private setWeaponWheelOverlayHiddenState(I)V
    .locals 1

    .line 4322
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebWeaponWheel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 4323
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4325
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webWeaponWheel:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 4326
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private shouldAutoDismissNativeMenu()Z
    .locals 1

    .line 4172
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldHandleSystemUiMapMenu()Z
    .locals 1

    .line 4158
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4159
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4160
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPickupCreatorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4161
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4162
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isInventoryOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xyron/game/main/ui/RadialMenu;->menuVisible:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xyron/game/main/ui/Radinho;->radinhoVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldIgnoreTransientFocusLoss()Z
    .locals 1

    .line 4148
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4149
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4150
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPickupCreatorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4151
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4152
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isInventoryOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xyron/game/main/ui/RadialMenu;->menuVisible:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xyron/game/main/ui/Radinho;->radinhoVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldKeepOverlayHot(Landroid/webkit/WebView;)Z
    .locals 1

    .line 4475
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayConfigured:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->phoneEventInbox:Lcom/xyron/game/main/PhoneEventInbox;

    .line 4476
    invoke-virtual {p1}, Lcom/xyron/game/main/PhoneEventInbox;->pending()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->phoneApps:Lcom/xyron/game/main/PhoneApps;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xyron/game/main/PhoneApps;->hasPending()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private shouldSuppressAutomaticPauseMenu()Z
    .locals 1

    .line 4168
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->shouldHandleSystemUiMapMenu()Z

    move-result v0

    return v0
.end method

.method private showAngraAnimations()V
    .locals 2

    .line 410
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->animationPanelVisible:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->animationPanelVisible:Z

    .line 412
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    .line 413
    new-instance v0, Lcom/xyron/game/main/AnimationPanel;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/AnimationPanel;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->animationPanel:Lcom/xyron/game/main/AnimationPanel;

    .line 414
    invoke-virtual {v0}, Lcom/xyron/game/main/AnimationPanel;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private showEditObject()V
    .locals 1

    .line 1057
    new-instance v0, Lcom/xyron/game/main/SAMP$11;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$11;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showHudSettingsPanel()V
    .locals 2

    .line 2388
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->initializeHudSettingsPanel()V

    .line 2389
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudSettingsPanel:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2390
    const-string v0, "Painel de configuracao indisponivel."

    invoke-static {p0, v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 2393
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlayInternal()V

    .line 2394
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlayInternal()V

    .line 2395
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideMapOverlayInternal()V

    .line 2396
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlayInternal()V

    .line 2397
    sget-boolean v0, Lcom/xyron/game/main/ui/RadialMenu;->menuVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->mRadialMenu:Lcom/xyron/game/main/ui/RadialMenu;

    if-eqz v0, :cond_1

    .line 2398
    invoke-virtual {v0}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 2400
    :cond_1
    sget-boolean v0, Lcom/xyron/game/main/ui/Radinho;->radinhoVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->mRadinho:Lcom/xyron/game/main/ui/Radinho;

    if-eqz v0, :cond_2

    .line 2401
    invoke-virtual {v0}, Lcom/xyron/game/main/ui/Radinho;->hide()V

    .line 2403
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudSettingsPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 2404
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudSettingsPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2405
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    .line 2406
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    return-void
.end method

.method private showKeyboard()V
    .locals 1

    .line 1094
    new-instance v0, Lcom/xyron/game/main/SAMP$13;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$13;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showLoadingScreen()V
    .locals 1

    .line 818
    new-instance v0, Lcom/xyron/game/main/SAMP$7;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$7;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showMapOverlayInternal()V
    .locals 2

    .line 3838
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebMiniMap:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3839
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3841
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webMiniMap:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 3842
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 3844
    :cond_1
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudRadarEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/xyron/game/main/SAMP;->setNativeRadarVisibleSafely(Z)V

    return-void
.end method

.method private showSettingsOverlay(Z)V
    .locals 1

    .line 3318
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda46;-><init>(Lcom/xyron/game/main/SAMP;Z)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showTab()V
    .locals 0

    return-void
.end method

.method private syncHudRenderSettingsText()V
    .locals 4

    .line 2346
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistanceValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2349
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimitValue:Landroid/widget/TextView;

    const-string v1, " FPS"

    if-eqz v0, :cond_1

    .line 2350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2352
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudSettingsSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 2353
    iget v2, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    if-nez v2, :cond_2

    .line 2354
    const-string v2, "Perfil FPS"

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 2355
    const-string v2, "Perfil alto"

    goto :goto_0

    :cond_3
    const-string v2, "Perfil medio"

    .line 2356
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistance:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "m | "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimit:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private syncHudRenderSettingsUi()V
    .locals 5

    .line 2325
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistanceSeek:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 2326
    iget v1, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistance:I

    add-int/lit8 v1, v1, -0x1e

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2328
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimitSeek:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 2329
    iget v1, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimit:I

    add-int/lit8 v1, v1, -0x1e

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2331
    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncHudRenderSettingsText()V

    .line 2332
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudQualityLowButton:Landroid/widget/TextView;

    iget v1, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->setHudQualityButtonState(Landroid/widget/TextView;Z)V

    .line 2333
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudQualityBalancedButton:Landroid/widget/TextView;

    iget v1, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->setHudQualityButtonState(Landroid/widget/TextView;Z)V

    .line 2334
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudQualityHighButton:Landroid/widget/TextView;

    iget v1, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/xyron/game/main/SAMP;->setHudQualityButtonState(Landroid/widget/TextView;Z)V

    .line 2335
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudShadowsToggle:Landroid/widget/TextView;

    const-string v1, "Sombras"

    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP;->hudShadowsEnabled:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/xyron/game/main/SAMP;->setHudToggleState(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 2336
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudEffectsToggle:Landroid/widget/TextView;

    const-string v1, "Efeitos"

    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP;->hudEffectsEnabled:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/xyron/game/main/SAMP;->setHudToggleState(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 2337
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudRadarToggle:Landroid/widget/TextView;

    const-string v1, "Minimapa"

    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP;->hudRadarEnabled:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/xyron/game/main/SAMP;->setHudToggleState(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 2338
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudVoiceToggle:Landroid/widget/TextView;

    const-string v1, "VoIP"

    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP;->hudVoiceEnabled:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/xyron/game/main/SAMP;->setHudToggleState(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 2339
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudChatSizeToggle:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 2340
    iget v1, p0, Lcom/xyron/game/main/SAMP;->hudChatScale:F

    const v2, 0x3f733333    # 0.95f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_5

    const-string v1, "P"

    goto :goto_2

    :cond_5
    const v2, 0x3f8ccccd    # 1.1f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    const-string v1, "M"

    goto :goto_2

    :cond_6
    const v2, 0x3fa66666    # 1.3f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    const-string v1, "G"

    goto :goto_2

    :cond_7
    const-string v1, "GG"

    .line 2341
    :goto_2
    const-string v2, "Chat: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method private syncHudVoiceButton()V
    .locals 0

    return-void
.end method

.method private syncRuntimeOverlay(Landroid/webkit/WebView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3119
    :cond_0
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda54;

    invoke-direct {v0, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda54;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private syncWeaponWheelPayload()V
    .locals 4

    .line 3300
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->weaponWheelOverlayConfigured:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webWeaponWheel:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isWeaponWheelOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3303
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->lastWeaponWheelJson:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->sanitizeWeaponWheelJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3304
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->webWeaponWheel:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "window.NewsRpWeaponWheelSetInventory&&window.NewsRpWeaponWheelSetInventory("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3307
    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3304
    invoke-direct {p0, v1, v0}, Lcom/xyron/game/main/SAMP;->evaluateOverlayJavascript(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLoadingServerLabel()V
    .locals 4

    .line 1339
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSelectedServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v0

    .line 1340
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->gameLoadingStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1341
    const-string v2, "Carregando cidade..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->gameLoadingServer:Landroid/widget/TextView;

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 1346
    invoke-virtual {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1347
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->gameLoadingServer:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  \u2022  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1349
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->gameLoadingServer:Landroid/widget/TextView;

    const-string v1, "Entrando em Angra"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateRuntimeOverlayExecutionState()V
    .locals 4

    .line 4480
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->settingsOverlayConfigured:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4481
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webSettings:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 4484
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->webSettings:Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 4486
    invoke-virtual {v3}, Landroid/webkit/WebView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4481
    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/xyron/game/main/SAMP;->setRuntimeOverlayActive(Landroid/webkit/WebView;Z)V

    .line 4489
    :cond_1
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayConfigured:Z

    if-eqz v0, :cond_3

    .line 4490
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    .line 4493
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    if-eqz v3, :cond_2

    .line 4495
    invoke-virtual {v3}, Landroid/webkit/WebView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 4490
    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/xyron/game/main/SAMP;->setRuntimeOverlayActive(Landroid/webkit/WebView;Z)V

    .line 4499
    :cond_3
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->inventoryOverlayConfigured:Z

    if-eqz v0, :cond_5

    .line 4500
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webInventory:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->framewebInventory:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_4

    .line 4503
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->webInventory:Landroid/webkit/WebView;

    if-eqz v3, :cond_4

    .line 4505
    invoke-virtual {v3}, Landroid/webkit/WebView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 4500
    :goto_2
    invoke-direct {p0, v0, v3}, Lcom/xyron/game/main/SAMP;->setRuntimeOverlayActive(Landroid/webkit/WebView;Z)V

    .line 4509
    :cond_5
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->mapOverlayConfigured:Z

    if-eqz v0, :cond_7

    .line 4510
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webMiniMap:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->framewebMiniMap:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_6

    .line 4513
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->webMiniMap:Landroid/webkit/WebView;

    if-eqz v3, :cond_6

    .line 4515
    invoke-virtual {v3}, Landroid/webkit/WebView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    .line 4510
    :goto_3
    invoke-direct {p0, v0, v3}, Lcom/xyron/game/main/SAMP;->setRuntimeOverlayActive(Landroid/webkit/WebView;Z)V

    .line 4519
    :cond_7
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->weaponWheelOverlayConfigured:Z

    if-eqz v0, :cond_9

    .line 4520
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webWeaponWheel:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->framewebWeaponWheel:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_8

    .line 4523
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/xyron/game/main/SAMP;->webWeaponWheel:Landroid/webkit/WebView;

    if-eqz v3, :cond_8

    .line 4525
    invoke-virtual {v3}, Landroid/webkit/WebView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 4520
    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->setRuntimeOverlayActive(Landroid/webkit/WebView;Z)V

    :cond_9
    return-void
.end method

.method private updateWeaponWheelFallback(II)V
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/16 v1, 0x2e

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3287
    :goto_0
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-nez p1, :cond_1

    .line 3289
    const-string p1, "[{\"id\":0,\"ammo\":0,\"current\":true}]"

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->lastWeaponWheelJson:Ljava/lang/String;

    goto :goto_1

    .line 3291
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"id\":0,\"ammo\":0,\"current\":false},{\"id\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\"ammo\":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\"current\":true}]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->lastWeaponWheelJson:Ljava/lang/String;

    .line 3296
    :goto_1
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncWeaponWheelPayload()V

    return-void
.end method

.method private writeGuiValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2180
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->gameSettingsFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2183
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2184
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2185
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 2186
    :cond_2
    new-instance v1, Lorg/ini4j/Wini;

    invoke-direct {v1, v0}, Lorg/ini4j/Wini;-><init>(Ljava/io/File;)V

    .line 2187
    const-string v0, "gui"

    invoke-virtual {v1, v0, p1, p2}, Lorg/ini4j/Wini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2188
    invoke-virtual {v1}, Lorg/ini4j/Wini;->store()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not store "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SAMP"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private writeHudRenderSettingsFile()V
    .locals 5

    .line 2036
    const-string v0, "render"

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2041
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "SAMP/render_settings.ini"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2042
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 2043
    const-string v3, "SAMP"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2044
    const-string v0, "Could not create render settings directory."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2049
    :cond_1
    :try_start_0
    new-instance v1, Lorg/ini4j/Wini;

    invoke-direct {v1, v2}, Lorg/ini4j/Wini;-><init>(Ljava/io/File;)V

    .line 2050
    const-string v2, "profile"

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hudQualityLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v4}, Lorg/ini4j/Wini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2051
    const-string v2, "distance"

    iget v4, p0, Lcom/xyron/game/main/SAMP;->hudRenderDistance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v4}, Lorg/ini4j/Wini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2052
    const-string v2, "fps_limit"

    iget v4, p0, Lcom/xyron/game/main/SAMP;->hudFpsLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v4}, Lorg/ini4j/Wini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2053
    const-string v2, "shadows"

    iget-boolean v4, p0, Lcom/xyron/game/main/SAMP;->hudShadowsEnabled:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v4}, Lorg/ini4j/Wini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2054
    const-string v2, "effects"

    iget-boolean v4, p0, Lcom/xyron/game/main/SAMP;->hudEffectsEnabled:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v4}, Lorg/ini4j/Wini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2055
    const-string v2, "radar"

    iget-boolean v4, p0, Lcom/xyron/game/main/SAMP;->hudRadarEnabled:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v4}, Lorg/ini4j/Wini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2056
    const-string v2, "chat_scale"

    iget v4, p0, Lcom/xyron/game/main/SAMP;->hudChatScale:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v4}, Lorg/ini4j/Wini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2057
    invoke-virtual {v1}, Lorg/ini4j/Wini;->store()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2059
    const-string v1, "Could not store render settings."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public native ClickEnterPassengerButton()V
.end method

.method native ClickLockVehicleButton()V
.end method

.method EsconderTeclas()V
    .locals 1

    .line 1789
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->TeclasAbertas:Z

    if-eqz v0, :cond_0

    .line 1791
    new-instance v0, Lcom/xyron/game/main/SAMP$22;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$22;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method native MostrarChat()Z
.end method

.method MostrarTeclas()V
    .locals 1

    .line 1780
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda61;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda61;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnInputEnd(Ljava/lang/String;)V
    .locals 1

    .line 1078
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->handleLocalRuntimeCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1082
    :cond_0
    invoke-static {p1}, Lcom/xyron/game/main/ChatWireText;->encode(Ljava/lang/String;)[B

    move-result-object p1

    .line 1085
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->onInputEnd([B)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1088
    const-string v0, "SAMP"

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public ShowCell()V
    .locals 0

    .line 2846
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->showPhoneOverlay()V

    return-void
.end method

.method public ShowInventoryTrade(Ljava/lang/String;)V
    .locals 1

    .line 4713
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda64;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda64;-><init>(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ShowLogo(Z)V
    .locals 0

    .line 1716
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->iShowLogo:Z

    .line 1717
    new-instance p1, Lcom/xyron/game/main/SAMP$17;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/SAMP$17;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public UpdateHud(IIIIII)V
    .locals 0

    .line 2746
    iput p1, p0, Lcom/xyron/game/main/SAMP;->pendingHudHp:I

    .line 2747
    iput p2, p0, Lcom/xyron/game/main/SAMP;->pendingHudArmour:I

    .line 2748
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->angraServerNeeds:Z

    if-eqz p1, :cond_0

    iget p3, p0, Lcom/xyron/game/main/SAMP;->angraHunger:I

    :cond_0
    iput p3, p0, Lcom/xyron/game/main/SAMP;->pendingHudEat:I

    .line 2749
    iput p4, p0, Lcom/xyron/game/main/SAMP;->pendingHudMoney:I

    .line 2750
    iput p5, p0, Lcom/xyron/game/main/SAMP;->pendingHudGunId:I

    .line 2751
    iput p6, p0, Lcom/xyron/game/main/SAMP;->pendingHudAmmo:I

    .line 2752
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->hudUpdatePosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2753
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xyron/game/main/SAMP;->applyPendingHudUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public UpdateInventory(Ljava/lang/String;)V
    .locals 1

    .line 4707
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda25;-><init>(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public UpdateInventoryTrade(Ljava/lang/String;)V
    .locals 1

    .line 4710
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda81;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda81;-><init>(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public UpdateWeaponWheel(Ljava/lang/String;)V
    .locals 1

    .line 2810
    new-instance v0, Lcom/xyron/game/main/SAMP$27;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/SAMP$27;-><init>(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method animationPanelClosed()V
    .locals 1

    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->animationPanelVisible:Z

    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->animationPanel:Lcom/xyron/game/main/AnimationPanel;

    .line 407
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method applyAngraRestrictions(Lorg/json/JSONObject;)V
    .locals 2

    .line 974
    const-string v0, "jailed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->angraJailed:Z

    .line 975
    const-string v0, "weapons"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->angraJailed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->angraWeaponsBlocked:Z

    .line 976
    const-string v1, "voice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/xyron/game/main/SAMP;->setAngraRestrictions(ZZ)V

    .line 977
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->angraWeaponsBlocked:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlay()V

    .line 978
    :cond_2
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->angraJailed:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlay()V

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlay()V

    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->angraSystems:Lcom/xyron/game/main/AngraSystems;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/xyron/game/main/AngraSystems;->prisonLock()V

    :cond_3
    return-void
.end method

.method applyAngraServerState(Lorg/json/JSONObject;)V
    .locals 5

    .line 291
    const-string v0, "levelProgress"

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->angraLevelProgress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->angraLevelProgress:Ljava/lang/String;

    .line 292
    const-string v0, "married"

    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraMarried:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->angraMarried:Z

    .line 293
    const-string v0, "spouse"

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->angraSpouse:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->angraSpouse:Ljava/lang/String;

    .line 294
    const-string v0, "ownsPhone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->ownsPhone:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlay()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->ownsPhone:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayConfigured:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->schedulePhoneOverlayWarmup()V

    .line 295
    :cond_1
    :goto_0
    const-string v0, "adminLevel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 296
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/SAMP;->angraAdminLevel:I

    .line 297
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_3

    const v1, 0x7f0a004c

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/xyron/game/main/SAMP;->angraAdminLevel:I

    if-lez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraHudExperiment:Lcom/xyron/game/main/AngraHudExperiment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraHudExperiment;->layoutGeometry()V

    .line 300
    :cond_4
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_7

    const v1, 0x7f0a01f7

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "inventoryUnread"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a004d

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/xyron/game/main/SAMP;->angraAdminLevel:I

    if-lez v1, :cond_6

    const-string v1, "adminUnread"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x0

    :cond_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :cond_7
    const-string v0, "money"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/xyron/game/main/SAMP;->pendingHudMoney:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->pendingHudMoney:I

    iget v1, p0, Lcom/xyron/game/main/SAMP;->pendingHudMoney:I

    iput v1, p0, Lcom/xyron/game/main/SAMP;->phoneMoney:I

    .line 302
    :cond_8
    const-string v1, "level"

    iget v3, p0, Lcom/xyron/game/main/SAMP;->phoneLevel:I

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->phoneLevel:I

    .line 303
    const-string v1, "experience"

    iget v3, p0, Lcom/xyron/game/main/SAMP;->phoneExperience:I

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->phoneExperience:I

    .line 304
    const-string v1, "nextExperience"

    iget v3, p0, Lcom/xyron/game/main/SAMP;->phoneNextExperience:I

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->phoneNextExperience:I

    .line 305
    const-string v1, "coins"

    iget v3, p0, Lcom/xyron/game/main/SAMP;->phoneCoins:I

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->phoneCoins:I

    const-string v1, "gems"

    iget v3, p0, Lcom/xyron/game/main/SAMP;->phoneGems:I

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->phoneGems:I

    .line 306
    const-string v1, "dirtyMoney"

    iget v3, p0, Lcom/xyron/game/main/SAMP;->phoneDirtyMoney:I

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->phoneDirtyMoney:I

    .line 307
    const-string v1, "bank"

    iget v3, p0, Lcom/xyron/game/main/SAMP;->phoneBank:I

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->phoneBank:I

    const-string v1, "rg"

    iget v3, p0, Lcom/xyron/game/main/SAMP;->phoneRG:I

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->phoneRG:I

    .line 308
    const-string v1, "fines"

    iget v3, p0, Lcom/xyron/game/main/SAMP;->phoneFines:I

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->phoneFines:I

    const-string v1, "houseTax"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "businessTax"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/xyron/game/main/SAMP;->phoneTaxes:I

    .line 309
    const-string v1, "powder"

    iget v3, p0, Lcom/xyron/game/main/SAMP;->phonePowder:I

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->phonePowder:I

    const-string v1, "chips"

    iget v3, p0, Lcom/xyron/game/main/SAMP;->phoneChips:I

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->phoneChips:I

    .line 310
    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->angraServerNeeds:Z

    .line 311
    const-string v1, "hunger"

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1, v4, v2}, Lcom/xyron/game/main/SAMP;->clampInt(III)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->angraHunger:I

    .line 312
    const-string v1, "energy"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1, v4, v2}, Lcom/xyron/game/main/SAMP;->clampInt(III)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->angraEnergy:I

    .line 313
    const-string v1, "safeWeaponExempt"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraSafeWeaponExempt:Z

    .line 314
    const-string v1, "safe"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xyron/game/main/SAMP;->setAngraSafeZone(Z)V

    .line 315
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->rioVehicleFuelLevel:Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    if-eqz v1, :cond_9

    const-string v3, "fuel"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3, v4, v2}, Lcom/xyron/game/main/SAMP;->clampInt(III)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->setPercent(F)V

    .line 316
    :cond_9
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->eatBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/xyron/game/main/SAMP;->angraHunger:I

    invoke-direct {p0, v1, v2}, Lcom/xyron/game/main/SAMP;->setCircularStatusProgress(Landroid/widget/ProgressBar;I)V

    .line 317
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->sonoBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/xyron/game/main/SAMP;->angraEnergy:I

    invoke-direct {p0, v1, v2}, Lcom/xyron/game/main/SAMP;->setCircularStatusProgress(Landroid/widget/ProgressBar;I)V

    .line 318
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->angraHudExperiment:Lcom/xyron/game/main/AngraHudExperiment;

    if-eqz v1, :cond_b

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/xyron/game/main/SAMP;->phoneMoney:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    :goto_3
    iget v0, p0, Lcom/xyron/game/main/SAMP;->phoneLevel:I

    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->angraLevelProgress:Ljava/lang/String;

    iget v3, p0, Lcom/xyron/game/main/SAMP;->angraHunger:I

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/xyron/game/main/AngraHudExperiment;->server(Ljava/lang/Integer;ILjava/lang/String;I)V

    :cond_b
    return-void
.end method

.method applyAngraSystemEvent(Lorg/json/JSONObject;)V
    .locals 10

    .line 912
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 913
    const-string v2, "appSecurityAdmin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 914
    const-string v0, "request"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 915
    :cond_0
    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[a-f0-9]{32}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 916
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda67;

    invoke-direct {v2, p0, p1, v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda67;-><init>(Lcom/xyron/game/main/SAMP;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "angra-app-ban"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 921
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 923
    :cond_2
    const-string v2, "radio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "spectate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->gameDevices()Lcom/xyron/game/main/GameDeviceOverlay;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xyron/game/main/GameDeviceOverlay;->receive(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 924
    :cond_4
    const-string v1, "safeZones"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    .line 925
    const-string v0, "packet"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "page"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v4, "total"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 926
    const-string v5, "points"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 927
    const-string v6, "defaultCircle"

    if-nez v1, :cond_5

    iget-object v7, p0, Lcom/xyron/game/main/SAMP;->safeZonePoints:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Lcom/xyron/game/main/SAMP;->safeZonePacket:I

    iput v3, p0, Lcom/xyron/game/main/SAMP;->safeZonePage:I

    new-array v7, v3, [F

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/xyron/game/main/SAMP;->setAngraSafePolygons([FZ)V

    .line 928
    :cond_5
    iget v7, p0, Lcom/xyron/game/main/SAMP;->safeZonePacket:I

    if-ne v0, v7, :cond_b

    iget v0, p0, Lcom/xyron/game/main/SAMP;->safeZonePage:I

    if-ne v1, v0, :cond_b

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->safeZonePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0xa0000

    if-le v0, v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 929
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_9

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v5, v0, v7, v8}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v7

    double-to-float v1, v7

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/xyron/game/main/SAMP;->safeZonePoints:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    :goto_1
    return-void

    .line 930
    :cond_9
    iget v0, p0, Lcom/xyron/game/main/SAMP;->safeZonePage:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/xyron/game/main/SAMP;->safeZonePage:I

    .line 931
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->safeZonePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_b

    new-array v0, v4, [F

    :goto_2
    if-ge v3, v4, :cond_a

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->safeZonePoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/xyron/game/main/SAMP;->setAngraSafePolygons([FZ)V

    :cond_b
    :goto_3
    return-void

    .line 934
    :cond_c
    const-string v1, "door"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 935
    const-string v0, "visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->angraDoorVisible:Z

    const-string v0, "kind"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/SAMP;->angraDoorKind:I

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xyron/game/main/SAMP;->angraDoorId:I

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void

    .line 937
    :cond_d
    const-string v1, "accountRenamed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 938
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 939
    const-string v4, "[A-Za-z0-9_]{3,20}"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 940
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "angra_character_server"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 941
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "angra_server_nicknames"

    invoke-virtual {p0, v5, v3}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 942
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 943
    :cond_e
    invoke-direct {p0, v1}, Lcom/xyron/game/main/SAMP;->saveDirectConnectNickname(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "nickname"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    :cond_f
    const-string v1, "phoneEnvironment"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 948
    const-string v1, "temperature"

    const/high16 v4, -0x80000000

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->angraPauseTemperature:I

    .line 949
    const-string v1, "ping"

    const/4 v4, -0x1

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xyron/game/main/SAMP;->angraPausePing:I

    .line 950
    iget-object v4, p0, Lcom/xyron/game/main/SAMP;->angraPause:Lcom/xyron/game/main/ui/AngraPause;

    if-eqz v4, :cond_10

    iget v5, p0, Lcom/xyron/game/main/SAMP;->angraPauseTemperature:I

    invoke-virtual {v4, v5, v1}, Lcom/xyron/game/main/ui/AngraPause;->setEnvironment(II)V

    .line 951
    :cond_10
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "pt-BR"

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    const-string v5, "dd.MM.yyyy"

    invoke-direct {v1, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v4, "America/Sao_Paulo"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 952
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    const-string v6, "timestamp"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "hour"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "minute"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    aput-object v6, v7, v2

    const-string v2, ", %02d:%02d"

    invoke-static {v1, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->cityFooterClock:Ljava/lang/String;

    .line 954
    :cond_11
    const-string v1, "phoneState"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "accountId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_12

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xyron/game/main/SAMP;->phoneRG:I

    .line 955
    :cond_12
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->phoneApps()Lcom/xyron/game/main/PhoneApps;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/PhoneApps;->receive(Lorg/json/JSONObject;)V

    .line 956
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraSystems:Lcom/xyron/game/main/AngraSystems;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/AngraSystems;->receive(Lorg/json/JSONObject;)V

    :cond_13
    return-void
.end method

.method applyAngraVisibility(Lorg/json/JSONObject;)V
    .locals 4

    .line 981
    const-string v0, "hidden"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 982
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    new-array v2, v1, [I

    :goto_1
    if-ge v0, v1, :cond_1

    const/4 v3, -0x1

    .line 983
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONArray;->optInt(II)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 984
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xyron/game/main/SAMP;->setAngraHiddenPlayers([I)V

    return-void
.end method

.method attachAngraInventoryHandler(Lcom/xyron/game/main/InventoryAdapter$RequestHandler;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->inventoryAdapter:Lcom/xyron/game/main/InventoryAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/InventoryAdapter;->setRequestHandler(Lcom/xyron/game/main/InventoryAdapter$RequestHandler;)V

    :cond_0
    return-void
.end method

.method canShowNearbyPlayer()Z
    .locals 2

    .line 723
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->systemPanelVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->animationPanelVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->accessoryEditorVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->nativeHudEditorVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudNativeMapVisible:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xyron/game/main/ui/RadialMenu;->menuVisible:Z

    if-nez v0, :cond_0

    .line 726
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isInventoryOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isWeaponWheelOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isSettingsOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPickupCreatorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isHudSettingsVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraPause:Lcom/xyron/game/main/ui/AngraPause;

    if-eqz v0, :cond_1

    .line 729
    invoke-virtual {v0}, Lcom/xyron/game/main/ui/AngraPause;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method cancelAngraQueued(Ljava/lang/String;)Z
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/AngraServerBridge;->cancelQueued(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public native changeGun()V
.end method

.method civilStatus()Ljava/lang/String;
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->angraMarried:Z

    if-eqz v0, :cond_0

    const-string v0, "Casado(a)"

    goto :goto_0

    :cond_0
    const-string v0, "Solteiro(a)"

    :goto_0
    return-object v0
.end method

.method closeAngraServerSpawn()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/ReferencePanels;->isSpawnActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    invoke-virtual {v0}, Lcom/xyron/game/main/ReferencePanels;->hide()V

    :cond_0
    return-void
.end method

.method closeSystemsForSpectating()V
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraSystems:Lcom/xyron/game/main/AngraSystems;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraSystems;->closeForSpectating()V

    :cond_0
    return-void
.end method

.method native configureHudFixOfficialServer(ILjava/lang/String;I)Z
.end method

.method customAnimationStatus()I
    .locals 1

    .line 403
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getHudFixAnimationStatus()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    if-eqz p1, :cond_6

    .line 1523
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1524
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->phoneTextFocused:Z

    if-nez v1, :cond_2

    const/16 v1, 0x33

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    .line 1529
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/xyron/game/main/SAMP;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1530
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/xyron/game/main/SAMP;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_6

    .line 1533
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 1534
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->handleRuntimeBack()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1535
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->onEventBackPressed()V

    .line 1536
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    goto :goto_0

    .line 1538
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 1539
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    :cond_5
    :goto_0
    return v2

    .line 1544
    :cond_6
    invoke-super {p0, p1}, Lcom/raiferoleplay/game/game/SAMP;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->nearbyPlayerMenu:Lcom/xyron/game/main/NearbyPlayerMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/NearbyPlayerMenu;->routeTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 429
    :cond_0
    invoke-super {p0, p1}, Lcom/raiferoleplay/game/game/SAMP;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method native editHudFixVoiceTouch(IFFFFI)Z
.end method

.method public exitGame()V
    .locals 2

    .line 878
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->getApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 879
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    .line 881
    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->finishAndRemoveTask()V

    .line 882
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method finishLoadingForLogin()V
    .locals 1

    .line 842
    const-string v0, "login-or-gameplay"

    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/StartupDiagnostics;->stage(Landroid/content/Context;Ljava/lang/String;)V

    .line 843
    new-instance v0, Lcom/xyron/game/main/SAMP$8;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$8;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method native forceEndNativeUserPause()V
.end method

.method public native getAngraNativeConnectionState()I
.end method

.method native getHudFixAnimationStatus()I
.end method

.method native getHudFixChatVisibleHeight()F
.end method

.method native getHudFixMobileOption(I)I
.end method

.method native getHudFixNativeEditorState()I
.end method

.method native getHudFixPlayerId()I
.end method

.method native getHudFixVehicleState()[I
.end method

.method native getHudFixVoicePosition()[F
.end method

.method native getNativeOverlayState()I
.end method

.method native getNearbyPlayer()[F
.end method

.method native getNearbyPlayerName(II)Ljava/lang/String;
.end method

.method native getPlayerPlacementSnapshot()[F
.end method

.method public handleClassicRadialAction(Ljava/lang/String;)V
    .locals 2

    .line 3748
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "inventario"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "animacoes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "missoes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "ajuda"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "pass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "loja"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "reportar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "organizacao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "jogador"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 3750
    :pswitch_0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->showInventoryOverlay()V

    goto :goto_1

    .line 3768
    :pswitch_1
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->showAngraAnimations()V

    goto :goto_1

    .line 3751
    :pswitch_2
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->openClassicMissions()V

    goto :goto_1

    .line 3767
    :pswitch_3
    const-string p1, "/ajuda"

    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->dispatchRuntimeCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 3752
    :pswitch_4
    const-string p1, "/pass"

    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->dispatchRuntimeCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 3753
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "shop|"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->nextAngraShopRequest()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|0|0|1|0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    goto :goto_1

    .line 3764
    :pswitch_6
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->mKeyboard:Lcom/xyron/game/main/ui/CustomKeyboard;

    if-eqz p1, :cond_9

    const-string v0, "/report "

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/ui/CustomKeyboard;->openCommandDraft(Ljava/lang/String;)V

    .line 3765
    :cond_9
    const-string p1, "/report [ID] [motivo]"

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    goto :goto_1

    .line 3749
    :pswitch_7
    const-string p1, "/fraction"

    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->dispatchRuntimeCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 3755
    :pswitch_8
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->angraHudExperiment:Lcom/xyron/game/main/AngraHudExperiment;

    if-eqz p1, :cond_a

    .line 3756
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Jogador"

    .line 3757
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraHudExperiment:Lcom/xyron/game/main/AngraHudExperiment;

    .line 3758
    invoke-virtual {v0}, Lcom/xyron/game/main/AngraHudExperiment;->playerSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Fechar"

    const/4 v1, 0x0

    .line 3759
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3760
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_a
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x556877f8 -> :sswitch_8
        -0x2f485a2e -> :sswitch_7
        -0x19741b9b -> :sswitch_6
        0x32c5fa -> :sswitch_5
        0x346411 -> :sswitch_4
        0x588dae9 -> :sswitch_3
        0x3fbe96e1 -> :sswitch_2
        0x42a3768a -> :sswitch_1
        0x6a6cb371 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

.method public handleConnectionFailure(Ljava/lang/String;II)V
    .locals 0

    .line 1006
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "native retry notification; attempts="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AngraConnection"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance p1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda41;

    invoke-direct {p1, p0, p3}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda41;-><init>(Lcom/xyron/game/main/SAMP;I)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method hasAngraServerHandshake()Z
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraServerBridge;->hasServerHandshake()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideInventoryOverlay()V
    .locals 1

    .line 3555
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda11;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hidePhoneOverlay()V
    .locals 1

    .line 3509
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda77;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda77;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method hidePvpScoreboard()V
    .locals 1

    .line 143
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda40;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideSettingsOverlay()V
    .locals 1

    .line 3349
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda55;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda55;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideSystemUI()V
    .locals 3

    .line 1409
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1410
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1412
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    .line 1413
    invoke-static {v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsetsController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1415
    invoke-static {}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m$2()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;I)V

    const/4 v2, 0x2

    .line 1416
    invoke-static {v1, v2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/WindowInsetsController;I)V

    :cond_1
    const/16 v1, 0x1706

    .line 1420
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public hideWeaponWheelOverlay()V
    .locals 1

    .line 3603
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda29;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideWithoutReset()V
    .locals 1

    .line 1030
    new-instance v0, Lcom/xyron/game/main/SAMP$9;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$9;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hidehud()V
    .locals 1

    .line 2713
    new-instance v0, Lcom/xyron/game/main/SAMP$26;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$26;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method inventoryOperation(Lorg/json/JSONObject;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->inventoryAdapter:Lcom/xyron/game/main/InventoryAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/InventoryAdapter;->operation(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method isAngraJailed()Z
    .locals 1

    .line 963
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->angraJailed:Z

    return v0
.end method

.method native isHudChatVisible()Z
.end method

.method synthetic lambda$MostrarTeclas$20$com-xyron-game-main-SAMP()V
    .locals 3

    .line 1781
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a02f5

    .line 1782
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1783
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0094

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1784
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->TeclasAbertas:Z

    return-void
.end method

.method synthetic lambda$ShowInventoryTrade$69$com-xyron-game-main-SAMP(Ljava/lang/String;)V
    .locals 2

    .line 4714
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->showInventoryOverlay()V

    .line 4715
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webInventory:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///android_asset/interfaces/inventario_angra/troca_itens.html"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4716
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webInventory:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4717
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->inventoryAdapter:Lcom/xyron/game/main/InventoryAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/InventoryAdapter;->updateTrade(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$UpdateInventory$67$com-xyron-game-main-SAMP(Ljava/lang/String;)V
    .locals 1

    .line 4707
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->inventoryAdapter:Lcom/xyron/game/main/InventoryAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/InventoryAdapter;->updateInventory(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$UpdateInventoryTrade$68$com-xyron-game-main-SAMP(Ljava/lang/String;)V
    .locals 1

    .line 4710
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->inventoryAdapter:Lcom/xyron/game/main/InventoryAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/InventoryAdapter;->updateTrade(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$applyAngraSystemEvent$10$com-xyron-game-main-SAMP(Ljava/lang/String;)V
    .locals 0

    .line 920
    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    return-void
.end method

.method synthetic lambda$applyAngraSystemEvent$11$com-xyron-game-main-SAMP(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 918
    :try_start_0
    invoke-static {p0, p1}, Lcom/xyron/game/security/DeviceAccess;->relay(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 919
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "appbanfail|"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 920
    :goto_0
    new-instance p2, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda78;

    invoke-direct {p2, p0, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda78;-><init>(Lcom/xyron/game/main/SAMP;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$flushPhoneEvents$5$com-xyron-game-main-SAMP(Landroid/webkit/WebView;Lcom/xyron/game/main/PhoneEventInbox$Entry;Ljava/lang/String;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    if-ne v0, p1, :cond_0

    const-string p1, "true"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->phoneEventInbox:Lcom/xyron/game/main/PhoneEventInbox;

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/PhoneEventInbox;->acknowledge(Lcom/xyron/game/main/PhoneEventInbox$Entry;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->phoneEventInbox:Lcom/xyron/game/main/PhoneEventInbox;

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/PhoneEventInbox;->retry(Lcom/xyron/game/main/PhoneEventInbox$Entry;)V

    .line 188
    :goto_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xyron/game/main/SAMP;->settlePhoneOverlay:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xyron/game/main/SAMP;->settlePhoneOverlay:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic lambda$handleConnectionFailure$12$com-xyron-game-main-SAMP(I)V
    .locals 3

    .line 0
    const v0, 0x7f0a0184

    .line 1008
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Servidor sem resposta. Reconectando... ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$handleLocalRuntimeCommand$50$com-xyron-game-main-SAMP()V
    .locals 1

    .line 3799
    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->onSpawnSelectionReached()V

    .line 3800
    const-string v0, "spawn"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->openReferencePanel(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$hideLoadingScreen$8$com-xyron-game-main-SAMP()V
    .locals 2

    .line 0
    const v0, 0x7f0a0184

    .line 836
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 837
    const-string v1, "Conectando ao servidor..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$hidePvpScoreboard$2$com-xyron-game-main-SAMP()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->pvpScoreboard:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->pvpCountdown:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method synthetic lambda$initializeHudSettingsPanel$21$com-xyron-game-main-SAMP(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 1854
    iput p1, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    .line 1855
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncHudRenderSettingsUi()V

    return-void
.end method

.method synthetic lambda$initializeHudSettingsPanel$22$com-xyron-game-main-SAMP(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    .line 1860
    iput p1, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    .line 1861
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncHudRenderSettingsUi()V

    return-void
.end method

.method synthetic lambda$initializeHudSettingsPanel$23$com-xyron-game-main-SAMP(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x2

    .line 1866
    iput p1, p0, Lcom/xyron/game/main/SAMP;->hudQuality:I

    .line 1867
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncHudRenderSettingsUi()V

    return-void
.end method

.method synthetic lambda$initializeHudSettingsPanel$24$com-xyron-game-main-SAMP(Landroid/view/View;)V
    .locals 0

    .line 1872
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudShadowsEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudShadowsEnabled:Z

    .line 1873
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncHudRenderSettingsUi()V

    return-void
.end method

.method synthetic lambda$initializeHudSettingsPanel$25$com-xyron-game-main-SAMP(Landroid/view/View;)V
    .locals 0

    .line 1878
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudEffectsEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudEffectsEnabled:Z

    .line 1879
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncHudRenderSettingsUi()V

    return-void
.end method

.method synthetic lambda$initializeHudSettingsPanel$26$com-xyron-game-main-SAMP(Landroid/view/View;)V
    .locals 0

    .line 1884
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudRadarEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudRadarEnabled:Z

    .line 1885
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncHudRenderSettingsUi()V

    .line 1886
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudRadarVisibility()V

    return-void
.end method

.method synthetic lambda$initializeHudSettingsPanel$27$com-xyron-game-main-SAMP(Landroid/view/View;)V
    .locals 1

    .line 1891
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudVoiceEnabled:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudVoiceEnabled:Z

    .line 1892
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudVoiceMuted:Z

    .line 1893
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncHudRenderSettingsUi()V

    .line 1894
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudVoiceState()V

    return-void
.end method

.method synthetic lambda$initializeHudSettingsPanel$28$com-xyron-game-main-SAMP(Landroid/view/View;)V
    .locals 1

    .line 1899
    iget p1, p0, Lcom/xyron/game/main/SAMP;->hudChatScale:F

    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/xyron/game/main/SAMP;->hudChatScale:F

    goto :goto_0

    :cond_0
    const v0, 0x3f8ccccd    # 1.1f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const p1, 0x3f99999a    # 1.2f

    .line 1900
    iput p1, p0, Lcom/xyron/game/main/SAMP;->hudChatScale:F

    goto :goto_0

    :cond_1
    const v0, 0x3fa66666    # 1.3f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    const p1, 0x3fb33333    # 1.4f

    .line 1901
    iput p1, p0, Lcom/xyron/game/main/SAMP;->hudChatScale:F

    goto :goto_0

    :cond_2
    const p1, 0x3f59999a    # 0.85f

    .line 1902
    iput p1, p0, Lcom/xyron/game/main/SAMP;->hudChatScale:F

    .line 1903
    :goto_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncHudRenderSettingsUi()V

    .line 1904
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudChatScale()V

    return-void
.end method

.method synthetic lambda$initializeHudSettingsPanel$29$com-xyron-game-main-SAMP(Landroid/view/View;)V
    .locals 0

    .line 1952
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideHudSettingsPanel()V

    return-void
.end method

.method synthetic lambda$initializeHudSettingsPanel$30$com-xyron-game-main-SAMP(Landroid/view/View;)V
    .locals 1

    .line 1957
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->saveHudRenderSettings()V

    .line 1958
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudRenderSettingsRuntime()V

    .line 1959
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideHudSettingsPanel()V

    .line 1960
    const-string p1, "Renderizacao aplicada."

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$initializeRuntimeTopOverlay$34$com-xyron-game-main-SAMP(Landroid/view/View;)V
    .locals 0

    .line 2874
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->closeNativeMapFromHeader()V

    return-void
.end method

.method synthetic lambda$installSystemUiWatcher$17$com-xyron-game-main-SAMP(Landroid/view/View;I)V
    .locals 2

    .line 0
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    .line 1446
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    .line 1447
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->pendingSystemUiMenuDismiss:Z

    if-nez p1, :cond_0

    return-void

    .line 1450
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xyron/game/main/SAMP;->dismissMenuAfterSystemUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1451
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xyron/game/main/SAMP;->dismissMenuAfterSystemUiRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1442
    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->shouldHandleSystemUiMapMenu()Z

    move-result p2

    iput-boolean p2, p0, Lcom/xyron/game/main/SAMP;->pendingSystemUiMenuDismiss:Z

    .line 1443
    new-instance p2, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda34;

    invoke-direct {p2, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda34;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$new$3$com-xyron-game-main-SAMP()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    return-void
.end method

.method synthetic lambda$new$7$com-xyron-game-main-SAMP(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 535
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->positionAngraNotice()V

    return-void
.end method

.method synthetic lambda$onCreate$14$com-xyron-game-main-SAMP()Z
    .locals 1

    .line 1166
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyGameplayHudMask()V

    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onCreate$15$com-xyron-game-main-SAMP(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 0
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1

    .line 1185
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyRioReferenceGeometry()V

    :cond_1
    return-void
.end method

.method synthetic lambda$onCreate$16$com-xyron-game-main-SAMP()V
    .locals 1

    .line 1204
    const-string v0, "binder"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->openReferencePanel(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onNativeSurfaceResumed$19$com-xyron-game-main-SAMP()V
    .locals 1

    .line 1605
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraServerBridge;->resume()V

    return-void
.end method

.method synthetic lambda$onResume$18$com-xyron-game-main-SAMP()V
    .locals 2

    .line 1511
    iget v0, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1512
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudRadarVisibility()V

    :cond_0
    return-void
.end method

.method synthetic lambda$openNativeGameSettings$59$com-xyron-game-main-SAMP()V
    .locals 2

    .line 0
    const v0, 0x3f218937    # 0.631f

    const v1, 0x3f43126f    # 0.762f

    .line 4021
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->performNativeMenuTap(FF)V

    return-void
.end method

.method synthetic lambda$openNativeGameSettings$60$com-xyron-game-main-SAMP()V
    .locals 2

    .line 0
    const v0, 0x3f218937    # 0.631f

    const v1, 0x3f43126f    # 0.762f

    .line 4028
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->performNativeMenuTap(FF)V

    return-void
.end method

.method synthetic lambda$openNativeHudEditor$37$com-xyron-game-main-SAMP()V
    .locals 4

    .line 3257
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->nativeHudEditorVisible:Z

    if-eqz v0, :cond_0

    return-void

    .line 3258
    :cond_0
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->openHudFixNativeEditor()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3262
    :cond_1
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->nativeHudEditorVisible:Z

    .line 3263
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->gameDevices()Lcom/xyron/game/main/GameDeviceOverlay;

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->refreshGameDeviceHud()V

    .line 3264
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideSettingsOverlayInternal()V

    .line 3265
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlayInternal()V

    .line 3266
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudButtonEditor:Lcom/xyron/game/main/HudButtonEditor;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/xyron/game/main/HudButtonEditor;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1}, Lcom/xyron/game/main/HudButtonEditor;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->hudButtonEditor:Lcom/xyron/game/main/HudButtonEditor;

    .line 3267
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hudButtonEditor:Lcom/xyron/game/main/HudButtonEditor;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xyron/game/main/HudButtonEditor;->show()V

    .line 3268
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 3269
    :cond_4
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->nativeHudEditorPoll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3270
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->nativeHudEditorPoll:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 3259
    :cond_5
    :goto_0
    const-string v0, "Editor nativo indispon\u00edvel. Entre no jogo e tente novamente."

    invoke-static {p0, v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$openNativeMapFromRadar$53$com-xyron-game-main-SAMP()V
    .locals 1

    .line 3942
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraPause:Lcom/xyron/game/main/ui/AngraPause;

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/AngraPause;->hide()V

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->openNativeMapForPause()V

    return-void
.end method

.method synthetic lambda$openNativeMapFromRadar$54$com-xyron-game-main-SAMP()V
    .locals 0

    .line 3943
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->closeAngraPause()V

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->showSettingsOverlay()V

    return-void
.end method

.method synthetic lambda$openNativeMapFromRadar$55$com-xyron-game-main-SAMP()V
    .locals 1

    .line 3945
    const-string v0, "/help "

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->openPauseSupportDraft(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$openNativeMapFromRadar$56$com-xyron-game-main-SAMP()V
    .locals 1

    .line 3946
    const-string v0, "/report "

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->openPauseSupportDraft(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$openNativeMapViaPauseMenu$57$com-xyron-game-main-SAMP()V
    .locals 2

    .line 0
    const v0, 0x3ebced91    # 0.369f

    const v1, 0x3f43126f    # 0.762f

    .line 3990
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->performNativeMenuTap(FF)V

    return-void
.end method

.method synthetic lambda$openNativeMapViaPauseMenu$58$com-xyron-game-main-SAMP()V
    .locals 2

    .line 0
    const v0, 0x3ebced91    # 0.369f

    const v1, 0x3f43126f    # 0.762f

    .line 3994
    invoke-direct {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->performNativeMenuTap(FF)V

    return-void
.end method

.method synthetic lambda$openReferencePanel$65$com-xyron-game-main-SAMP(Ljava/lang/String;)V
    .locals 2

    .line 4693
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->handleLocalRuntimeCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4695
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/xyron/game/main/ChatWireText;->encode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->sendHudFixTemplate([B)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4696
    :cond_1
    const-string p1, "N\u00e3o foi poss\u00edvel enviar a mensagem."

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4698
    const-string v0, "SAMP"

    const-string v1, "Template native chat send unavailable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$openReferencePanel$66$com-xyron-game-main-SAMP(I)V
    .locals 1

    .line 4701
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->queueHudFixPanelSound(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$prepareNativeOverlayMotion$42$com-xyron-game-main-SAMP()V
    .locals 2

    .line 3491
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x0

    .line 3492
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->settingsMotionFromPhone:Z

    .line 3493
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlayInternal()V

    return-void
.end method

.method synthetic lambda$prepareNativeOverlayMotion$43$com-xyron-game-main-SAMP()V
    .locals 2

    .line 3495
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method synthetic lambda$prepareNativeOverlayMotion$44$com-xyron-game-main-SAMP(IZLjava/lang/String;)V
    .locals 4

    .line 3483
    iget p3, p0, Lcom/xyron/game/main/SAMP;->runtimeMotionEpoch:I

    if-ne p1, p3, :cond_4

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isSettingsOverlayVisible()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3484
    :cond_1
    const-string p1, "SAMP"

    if-eqz p2, :cond_2

    .line 3485
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "phone motion start after "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xyron/game/main/SAMP;->phoneOpenRequestedAt:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    new-instance p1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda26;-><init>(Lcom/xyron/game/main/SAMP;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/xyron/game/main/SAMP;->runNativeOverlayMotion(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 3487
    :cond_2
    iget-boolean p2, p0, Lcom/xyron/game/main/SAMP;->settingsMotionFromPhone:Z

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3488
    iget-object p2, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    const-string/jumbo p3, "window.XyronExternalContent&&window.XyronExternalContent();"

    invoke-direct {p0, p2, p3}, Lcom/xyron/game/main/SAMP;->evaluateOverlayJavascript(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3489
    const-string p2, "settings external motion start 800ms"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    new-instance p1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda27;-><init>(Lcom/xyron/game/main/SAMP;)V

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lcom/xyron/game/main/SAMP;->runNativeOverlayMotion(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 3495
    :cond_3
    new-instance p1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda28;-><init>(Lcom/xyron/game/main/SAMP;)V

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lcom/xyron/game/main/SAMP;->runNativeOverlayMotion(ILjava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method synthetic lambda$publishPhoneApp$4$com-xyron-game-main-SAMP(Lorg/json/JSONObject;)V
    .locals 5

    .line 173
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "phoneReset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->phoneEventInbox:Lcom/xyron/game/main/PhoneEventInbox;

    invoke-virtual {v1}, Lcom/xyron/game/main/PhoneEventInbox;->clear()V

    .line 174
    :cond_0
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "response"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "r:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "document"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "phoneState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "phoneSettings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/xyron/game/main/SAMP;->phoneEventSerial:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/xyron/game/main/SAMP;->phoneEventSerial:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_1
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->phoneEventInbox:Lcom/xyron/game/main/PhoneEventInbox;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/xyron/game/main/PhoneEventInbox;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->flushPhoneEvents()V

    return-void
.end method

.method synthetic lambda$refreshRuntimeChrome$51$com-xyron-game-main-SAMP(Landroid/view/View;)V
    .locals 1

    .line 3882
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->angraDoorVisible:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/xyron/game/main/SAMP;->angraDoorKind:I

    if-lez p1, :cond_0

    iget p1, p0, Lcom/xyron/game/main/SAMP;->angraDoorId:I

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "interact|"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/xyron/game/main/SAMP;->angraDoorKind:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xyron/game/main/SAMP;->angraDoorId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$refreshRuntimeChrome$52$com-xyron-game-main-SAMP(Landroid/view/View;)V
    .locals 1

    .line 3884
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->angraDoorVisible:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/xyron/game/main/SAMP;->angraDoorKind:I

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/xyron/game/main/SAMP;->angraDoorId:I

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "interact|15|"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/xyron/game/main/SAMP;->angraDoorId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$runNativeOverlayMotion$41$com-xyron-game-main-SAMP(IILandroid/animation/ValueAnimator;)V
    .locals 10

    .line 3458
    iget v0, p0, Lcom/xyron/game/main/SAMP;->runtimeMotionEpoch:I

    if-eq p1, v0, :cond_0

    return-void

    .line 3459
    :cond_0
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const/4 p1, 0x1

    if-gt p2, p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3460
    :goto_0
    invoke-static {p1, v0, v1}, Lcom/xyron/game/main/ui/RioMotionSpec;->phone(ZD)[D

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->applyPhoneMotionPose([D)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    .line 3462
    invoke-static {v0, v1}, Lcom/xyron/game/main/ui/RioMotionSpec;->external(D)[D

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->applyPhoneMotionPose([D)V

    .line 3463
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/xyron/game/main/ui/RioMotionSpec;->panel(D)D

    move-result-wide p2

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1

    .line 3464
    :cond_3
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    const-wide v6, 0x3fe28f5c28f5c28fL    # 0.58

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v9}, Lcom/xyron/game/main/ui/RioMotionSpec;->cubic(DDDDD)D

    move-result-wide p2

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method synthetic lambda$scheduleInventoryOverlayWarmup$63$com-xyron-game-main-SAMP()V
    .locals 2

    .line 4367
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->inventoryOverlayConfigured:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4370
    :cond_0
    const-string v0, "inventory"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->ensureRuntimeOverlayConfigured(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4374
    :cond_1
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->syncRuntimeOverlay(Landroid/webkit/WebView;)V

    const/4 v0, 0x4

    .line 4375
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->setInventoryOverlayHiddenState(I)V

    .line 4376
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$schedulePhoneOverlayWarmup$62$com-xyron-game-main-SAMP()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    .line 4337
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayWarmupScheduled:Z

    .line 4338
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayConfigured:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->ownsPhone:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->systemPanelVisible:Z

    if-nez v0, :cond_2

    .line 4339
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isInventoryOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isSettingsOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4342
    :cond_0
    const-string v0, "phone"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->ensureRuntimeOverlayConfigured(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4346
    :cond_1
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->syncRuntimeOverlay(Landroid/webkit/WebView;)V

    const/4 v0, 0x4

    .line 4347
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->setPhoneOverlayHiddenState(I)V

    .line 4348
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$setAngraSafeZone$31$com-xyron-game-main-SAMP(Z)V
    .locals 3

    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2214
    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraSafeWeaponExempt:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraInSafeZone:Z

    .line 2215
    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->setAngraSafeAttack(Z)V

    .line 2216
    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraInSafeZone:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlayInternal()V

    .line 2217
    :cond_1
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->rioRadarFrame:Landroid/view/View;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_2

    const v2, 0x7f0a0304

    .line 2218
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->rioRadarFrame:Landroid/view/View;

    .line 2219
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0307

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->rioSafeZoneShield:Landroid/widget/ImageView;

    .line 2221
    :cond_2
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->rioRadarFrame:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 2222
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0305

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2223
    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->angraHudExperiment:Lcom/xyron/game/main/AngraHudExperiment;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lcom/xyron/game/main/AngraHudExperiment;->safe(Z)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const v2, 0x7f08020c

    goto :goto_1

    :cond_4
    const v2, 0x7f08020b

    .line 2224
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2228
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->rioSafeZoneShield:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/16 v0, 0x8

    .line 2229
    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method synthetic lambda$setInventoryRequestHandler$70$com-xyron-game-main-SAMP(Lcom/xyron/game/main/InventoryAdapter$RequestHandler;)V
    .locals 1

    .line 4721
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->inventoryAdapter:Lcom/xyron/game/main/InventoryAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/InventoryAdapter;->setRequestHandler(Lcom/xyron/game/main/InventoryAdapter$RequestHandler;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setPauseState$9$com-xyron-game-main-SAMP(Z)V
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    .line 860
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    goto :goto_0

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->showSystemUI()V

    :goto_0
    return-void
.end method

.method synthetic lambda$showAngraNotification$32$com-xyron-game-main-SAMP(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 2280
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f0a02fa

    .line 2281
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2282
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraNotifyOverlay:Lcom/xyron/game/main/AngraNotifyOverlay;

    if-nez v0, :cond_2

    new-instance v0, Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/AngraNotifyOverlay;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->angraNotifyOverlay:Lcom/xyron/game/main/AngraNotifyOverlay;

    .line 2283
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraNotifyOverlay:Lcom/xyron/game/main/AngraNotifyOverlay;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->gameDevices:Lcom/xyron/game/main/GameDeviceOverlay;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/xyron/game/main/GameDeviceOverlay;->spectating()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xyron/game/main/AngraNotifyOverlay;->suppress(Z)V

    .line 2284
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraNotifyOverlay:Lcom/xyron/game/main/AngraNotifyOverlay;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xyron/game/main/AngraNotifyOverlay;->show(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method synthetic lambda$showAngraServerSpawn$6$com-xyron-game-main-SAMP(I)Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/AngraServerBridge;->confirmSpawn(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method synthetic lambda$showDialog$13$com-xyron-game-main-SAMP(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1023
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudNativeMapVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->closeNativeMapFromHeader()V

    .line 1024
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->mDialog:Lcom/xyron/game/main/ui/dialog/DialogManager;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/xyron/game/main/ui/dialog/DialogManager;->show(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$showInventoryOverlay$47$com-xyron-game-main-SAMP()V
    .locals 3

    .line 3527
    const-string v0, "inventory"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->ensureRuntimeOverlayConfigured(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    .line 3528
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebInventory:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 3531
    :cond_0
    const-string v1, "file:///android_asset/interfaces/inventario_angra/troca_itens.html"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "file:///android_asset/interfaces/inventario_angra/inventario_interativo.html"

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->load(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3532
    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideSettingsOverlayInternal()V

    .line 3533
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideHudSettingsPanel()V

    .line 3534
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlayInternal()V

    .line 3535
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideMapOverlayInternal()V

    .line 3536
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlayInternal()V

    .line 3537
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebInventory:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 3538
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebInventory:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3539
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 3540
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    .line 3541
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$showPhoneOverlayAuthorized$40$com-xyron-game-main-SAMP()V
    .locals 3

    .line 3394
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3395
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraServerBridge;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    .line 3396
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xyron/game/main/SAMP;->phoneOpenRequestedAt:J

    .line 3397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "phone open requested ready="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->phoneDocumentReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAMP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    const-string v0, "phone"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->ensureRuntimeOverlayConfigured(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    .line 3399
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_0

    .line 3402
    :cond_2
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideSettingsOverlayInternal()V

    .line 3403
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideHudSettingsPanel()V

    .line 3404
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlayInternal()V

    .line 3405
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideMapOverlayInternal()V

    .line 3406
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlayInternal()V

    .line 3407
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 3408
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3409
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebcell:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3410
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 3411
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyRioReferenceGeometry()V

    .line 3412
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->syncRuntimeOverlay(Landroid/webkit/WebView;)V

    .line 3413
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    .line 3414
    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->phoneDocumentReady:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->prepareNativeOverlayMotion(Landroid/webkit/WebView;)V

    .line 3415
    :cond_3
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->flushPhoneDestination()V

    .line 3416
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    :cond_4
    :goto_0
    return-void
.end method

.method synthetic lambda$showPvpCountdown$0$com-xyron-game-main-SAMP(Lorg/json/JSONObject;)V
    .locals 6

    .line 121
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->pvpScoreboard:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->pvpCountdown:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->pvpCountdown:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->pvpCountdown:Landroid/widget/TextView;

    const/high16 v1, 0x42180000    # 38.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 124
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->pvpCountdown:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->pvpCountdown:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x1000000

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 125
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const v1, 0x1020002

    .line 126
    invoke-virtual {p0, v1}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->pvpCountdown:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->pvpCountdown:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RODADA "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "round"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "seconds"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->pvpCountdown:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->pvpCountdown:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->bringToFront()V

    return-void
.end method

.method synthetic lambda$showPvpScoreboard$1$com-xyron-game-main-SAMP(Lorg/json/JSONObject;)V
    .locals 18

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 132
    iget-object v2, v0, Lcom/xyron/game/main/SAMP;->pvpCountdown:Landroid/widget/TextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :cond_0
    iget-object v2, v0, Lcom/xyron/game/main/SAMP;->pvpScoreboard:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 134
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/xyron/game/main/SAMP;->pvpScoreboard:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/xyron/game/main/SAMP;->pvpScoreboard:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, v0, Lcom/xyron/game/main/SAMP;->pvpScoreboard:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lcom/xyron/game/main/SAMP;->pvpScoreboard:Landroid/widget/TextView;

    const v5, -0x26e7e7e2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v2, v0, Lcom/xyron/game/main/SAMP;->pvpScoreboard:Landroid/widget/TextView;

    const/16 v5, 0x12

    invoke-virtual {v2, v5, v3, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x31

    const/4 v6, -0x2

    invoke-direct {v2, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual/range {p0 .. p0}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v4, 0x1020002

    .line 136
    invoke-virtual {v0, v4}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, v0, Lcom/xyron/game/main/SAMP;->pvpScoreboard:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    :cond_1
    const-string v2, "players"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v6, v5, v6

    const/4 v7, 0x1

    aput v6, v5, v7

    new-array v8, v4, [I

    aput v6, v8, v6

    aput v6, v8, v7

    const/4 v9, 0x0

    :goto_0
    if-eqz v2, :cond_6

    .line 139
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_6

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    const-string v11, "team"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_5

    if-le v11, v7, :cond_3

    goto :goto_1

    :cond_3
    const-string v12, "alive"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    aget v12, v5, v11

    add-int/2addr v12, v7

    aput v12, v5, v11

    :cond_4
    aget v12, v8, v11

    const-string v13, "kills"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v12, v10

    aput v12, v8, v11

    :cond_5
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 140
    :cond_6
    const-string v2, "seconds"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 141
    iget-object v9, v0, Lcom/xyron/game/main/SAMP;->pvpScoreboard:Landroid/widget/TextView;

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v11, "round"

    invoke-virtual {v1, v11, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "scoreA"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "scoreB"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "totalRounds"

    const/4 v15, 0x3

    invoke-virtual {v1, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    div-int/lit8 v14, v2, 0x3c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget v16, v5, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aget v17, v8, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v11, v3, v6

    aput-object v12, v3, v7

    aput-object v13, v3, v4

    aput-object v1, v3, v15

    const/4 v1, 0x4

    aput-object v14, v3, v1

    const/4 v1, 0x5

    aput-object v2, v3, v1

    const/4 v1, 0x6

    aput-object v16, v3, v1

    const/4 v1, 0x7

    aput-object v17, v3, v1

    const/16 v1, 0x8

    aput-object v5, v3, v1

    const/16 v1, 0x9

    aput-object v8, v3, v1

    const-string v1, "RODADA %d \u00b7 A %d \u00d7 %d B \u00b7 TOTAL %d\n%02d:%02d \u00b7 A: %d vivos \u00b7 %d kills   B: %d vivos \u00b7 %d kills"

    invoke-static {v10, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/xyron/game/main/SAMP;->pvpScoreboard:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/xyron/game/main/SAMP;->pvpScoreboard:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->bringToFront()V

    return-void
.end method

.method synthetic lambda$showSettingsOverlay$38$com-xyron-game-main-SAMP(Z)V
    .locals 3

    .line 3319
    const-string v0, "settings"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->ensureRuntimeOverlayConfigured(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    .line 3320
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->runtimeTopOverlay:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_6

    if-nez v0, :cond_0

    goto :goto_0

    .line 3324
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideHudSettingsPanel()V

    if-nez p1, :cond_1

    .line 3325
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlayInternal()V

    .line 3327
    :cond_1
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->settingsMotionFromPhone:Z

    .line 3328
    iput-boolean v2, p0, Lcom/xyron/game/main/SAMP;->phoneTransitionViewport:Z

    .line 3329
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlayInternal()V

    .line 3330
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideWeaponWheelOverlayInternal()V

    .line 3331
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->hudNativeMapVisible:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->closeNativeMapFromHeader()V

    .line 3332
    :cond_2
    sget-boolean p1, Lcom/xyron/game/main/ui/RadialMenu;->menuVisible:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->mRadialMenu:Lcom/xyron/game/main/ui/RadialMenu;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 3333
    :cond_3
    sget-boolean p1, Lcom/xyron/game/main/ui/Radinho;->radinhoVisible:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->mRadinho:Lcom/xyron/game/main/ui/Radinho;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/xyron/game/main/ui/Radinho;->hide()V

    .line 3334
    :cond_4
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->runtimeTopOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 3335
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3336
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyRioReferenceGeometry()V

    .line 3337
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3338
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->framewebSettings:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3339
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 3340
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->syncRuntimeOverlay(Landroid/webkit/WebView;)V

    .line 3341
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    .line 3342
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->settingsDocumentReady:Z

    if-eqz p1, :cond_5

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->prepareNativeOverlayMotion(Landroid/webkit/WebView;)V

    .line 3343
    :cond_5
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    .line 3344
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    return-void

    .line 3321
    :cond_6
    :goto_0
    const-string p1, "Painel de configuracao indisponivel."

    invoke-static {p0, p1, v2}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$showWeaponWheelOverlay$49$com-xyron-game-main-SAMP()V
    .locals 3

    .line 3573
    const-string v0, "weaponWheel"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->ensureRuntimeOverlayConfigured(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    .line 3574
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebWeaponWheel:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 3578
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideSettingsOverlayInternal()V

    .line 3579
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideHudSettingsPanel()V

    .line 3580
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlayInternal()V

    .line 3581
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideInventoryOverlayInternal()V

    .line 3582
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideMapOverlayInternal()V

    .line 3583
    sget-boolean v1, Lcom/xyron/game/main/ui/RadialMenu;->menuVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->mRadialMenu:Lcom/xyron/game/main/ui/RadialMenu;

    if-eqz v1, :cond_1

    .line 3584
    invoke-virtual {v1}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 3586
    :cond_1
    sget-boolean v1, Lcom/xyron/game/main/ui/Radinho;->radinhoVisible:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->mRadinho:Lcom/xyron/game/main/ui/Radinho;

    if-eqz v1, :cond_2

    .line 3587
    invoke-virtual {v1}, Lcom/xyron/game/main/ui/Radinho;->hide()V

    .line 3589
    :cond_2
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebWeaponWheel:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 3590
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->framewebWeaponWheel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3591
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 3592
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncWeaponWheelPayload()V

    .line 3593
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    .line 3594
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    .line 3595
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    return-void

    .line 3575
    :cond_3
    :goto_0
    const-string v0, "Roleta de armas indisponivel."

    invoke-static {p0, v0, v2}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$updateAngraVehicleHud$33$com-xyron-game-main-SAMP(ZII)V
    .locals 4

    .line 2291
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->angraInVehicle:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->angraInVehicle:Z

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    .line 2292
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_1

    return-void

    .line 2293
    :cond_1
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->rioSpeedometer:Landroid/view/View;

    if-nez v1, :cond_2

    const v1, 0x7f0a030c

    .line 2294
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->rioSpeedometer:Landroid/view/View;

    .line 2295
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a030b

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->rioSpeedValue:Landroid/widget/TextView;

    .line 2296
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0310

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->rioVehicleHealth:Landroid/widget/TextView;

    .line 2297
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0313

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->rioWeaponCurrentIcon:Landroid/widget/ImageView;

    .line 2298
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0312

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->rioWeaponAmmo:Landroid/widget/TextView;

    .line 2300
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->rioSpeedometer:Landroid/view/View;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 2302
    iget v2, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP;->hudNativeMapVisible:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/xyron/game/main/SAMP;->nativeHudEditorVisible:Z

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isSettingsOverlayVisible()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/16 v2, 0x8

    .line 2301
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_7

    .line 2305
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->rioSpeedValue:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2306
    :cond_5
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->rioVehicleHealth:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    const/16 p2, 0x64

    .line 2307
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2309
    :cond_6
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->rioVehicleHealthLevel:Lcom/xyron/game/main/ui/RioVehicleIconDrawable;

    if-eqz p1, :cond_7

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/ui/RioVehicleIconDrawable;->setPercent(F)V

    :cond_7
    return-void
.end method

.method lerNomeDoPlayer()Ljava/lang/String;
    .locals 4

    .line 2823
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/SAMP/settings.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2824
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2825
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2827
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2828
    const-string v2, "="

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2829
    array-length v2, v0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 2830
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2831
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2835
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 2825
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 2838
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2840
    :cond_2
    :goto_1
    const-string v0, "--"

    return-object v0
.end method

.method levelProgress()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraLevelProgress:Ljava/lang/String;

    return-object v0
.end method

.method localAudioGain(Ljava/lang/String;)F
    .locals 5

    .line 165
    const-string v0, "angra_audio_mix_v1"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    const-string v2, "master"

    const/16 v3, 0x64

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    .line 167
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    mul-float v2, v2, p1

    div-float/2addr v2, v4

    return v2
.end method

.method native lockHudFixOfficialServer()Z
.end method

.method nearbyHudChanged(Z)V
    .locals 1

    .line 718
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->setNearbyPanelOpen(Z)V

    .line 719
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method nextAngraBankRequest()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/xyron/game/main/SAMP;->angraBankRequestSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xyron/game/main/SAMP;->angraBankRequestSequence:I

    return v0
.end method

.method nextAngraShopRequest()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->shopRequestSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 4633
    const-string v0, "error"

    const v1, 0xa625

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne p1, v1, :cond_2

    .line 4634
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->phoneImageCallback:Landroid/webkit/ValueCallback;

    iput-object v4, p0, Lcom/xyron/game/main/SAMP;->phoneImageCallback:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_1

    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 4635
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array v4, p2, [Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    aput-object p2, v4, v2

    :cond_0
    invoke-interface {p1, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x1132

    if-ne p1, v1, :cond_8

    .line 4639
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->pendingVoiceTarget:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "phone"

    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->resolveOverlayWebView(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object p1

    .line 4640
    :goto_0
    iput-object v4, p0, Lcom/xyron/game/main/SAMP;->pendingVoiceTarget:Landroid/webkit/WebView;

    .line 4641
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4643
    const-string v5, "status"

    if-eq p2, v3, :cond_4

    .line 4644
    :try_start_0
    const-string p2, "cancelled"

    invoke-virtual {v1, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_4
    if-eqz p3, :cond_5

    .line 4647
    const-string p2, "android.speech.extra.RESULTS"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    .line 4649
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string p2, ""

    .line 4650
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 4651
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4652
    const-string p2, "empty"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 4654
    :cond_7
    const-string p3, "ok"

    invoke-virtual {v1, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4655
    const-string p3, "transcript"

    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 4659
    :goto_3
    const-string p3, "SAMP"

    const-string v0, "Voice result JSON failed"

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4662
    :goto_4
    const-string/jumbo p2, "window.XyronRuntimeReceiveVoice"

    invoke-direct {p0, p1, p2, v1}, Lcom/xyron/game/main/SAMP;->dispatchRuntimeCallback(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 4665
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/raiferoleplay/game/game/SAMP;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method onAngraRequestSent(Ljava/lang/String;)V
    .locals 1

    .line 959
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->phoneApps()Lcom/xyron/game/main/PhoneApps;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/PhoneApps;->onWireSent(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1549
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->gameDevices:Lcom/xyron/game/main/GameDeviceOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/GameDeviceOverlay;->back()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1550
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->handleRuntimeBack()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1553
    :cond_1
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->onEventBackPressed()V

    .line 1554
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    return-void
.end method

.method native onClickButton(I)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1115
    const-string v0, "**** onCreate"

    const-string v1, "SAMP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1117
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->profile(Landroid/content/Context;)Lcom/xyron/game/launcher/util/MapProfile;

    move-result-object v2

    iget v2, v2, Lcom/xyron/game/launcher/util/MapProfile;->index:I

    .line 1116
    const-string v3, "angra_server_index"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1118
    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/GameStorage;->select(Landroid/content/Context;I)V

    .line 1119
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSelectedServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v2

    .line 1120
    iget-boolean v3, v2, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->online:Z

    if-eqz v3, :cond_7

    .line 1121
    iget-object v3, v2, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    iget v4, v2, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    invoke-static {v0, v3, v4}, Lcom/xyron/game/security/NativeSession;->selectEndpoint(ILjava/lang/String;I)V

    .line 1122
    sget-boolean v3, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    iget v2, v2, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    invoke-virtual {p0, v0, v3, v2}, Lcom/xyron/game/main/SAMP;->configureHudFixOfficialServer(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1123
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/xyron/game/launcher/util/CollisionArchiveCache;->ready(Ljava/io/File;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setHudFixPackedCollisions(Z)V

    .line 1124
    const-string v0, "native-city-loading"

    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/StartupDiagnostics;->stage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1127
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ConfigValidator;->validateConfigFiles(Landroid/content/Context;)V

    .line 1132
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->ensureSelectedServer(Landroid/content/Context;)Z

    .line 1133
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->applyDirectConnectExtras(Landroid/content/Intent;)V

    .line 1136
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->lockHudFixOfficialServer()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1140
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1141
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, ".angra-universal-v1"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    .line 1141
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setHudFixUniversalTextures(Z)V

    .line 1145
    :cond_0
    invoke-super {p0, p1}, Lcom/raiferoleplay/game/game/SAMP;->onCreate(Landroid/os/Bundle;)V

    .line 1146
    new-instance p1, Lcom/xyron/game/main/AngraSystems;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/AngraSystems;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->angraSystems:Lcom/xyron/game/main/AngraSystems;

    .line 1149
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->handler:Landroid/os/Handler;

    .line 1150
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->detectLowRamMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->runtimeLowRamMode:Z

    .line 1151
    new-instance p1, Lcom/xyron/game/main/HeightProvider;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/HeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->mHeightProvider:Lcom/xyron/game/main/HeightProvider;

    .line 1153
    new-instance p1, Lcom/xyron/game/main/ui/dialog/DialogManager;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/ui/dialog/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->mDialog:Lcom/xyron/game/main/ui/dialog/DialogManager;

    .line 1155
    new-instance p1, Lcom/xyron/game/main/ui/AttachEdit;

    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-direct {p1, p0, v0}, Lcom/xyron/game/main/ui/AttachEdit;-><init>(Landroid/app/Activity;Lcom/xyron/game/main/ui/AttachEdit$VisibilityListener;)V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->mAttachEdit:Lcom/xyron/game/main/ui/AttachEdit;

    .line 1157
    new-instance p1, Lcom/xyron/game/main/ui/RadialMenu;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/ui/RadialMenu;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->mRadialMenu:Lcom/xyron/game/main/ui/RadialMenu;

    .line 1159
    new-instance p1, Lcom/xyron/game/main/ui/Radinho;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/ui/Radinho;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->mRadinho:Lcom/xyron/game/main/ui/Radinho;

    .line 1161
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d004b

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1162
    new-instance p1, Lcom/xyron/game/main/AngraHudExperiment;

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p1, v0}, Lcom/xyron/game/main/AngraHudExperiment;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->angraHudExperiment:Lcom/xyron/game/main/AngraHudExperiment;

    .line 1163
    new-instance p1, Lcom/xyron/game/main/NearbyPlayerMenu;

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p1, p0, v0}, Lcom/xyron/game/main/NearbyPlayerMenu;-><init>(Lcom/xyron/game/main/SAMP;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->nearbyPlayerMenu:Lcom/xyron/game/main/NearbyPlayerMenu;

    .line 1164
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/xyron/game/main/SAMP;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1165
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda6;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1169
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1170
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->initializeRuntimeOverlays()V

    .line 1171
    new-instance p1, Lcom/xyron/game/main/InventoryAdapter;

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p1, p0, v0}, Lcom/xyron/game/main/InventoryAdapter;-><init>(Lcom/xyron/game/main/SAMP;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->inventoryAdapter:Lcom/xyron/game/main/InventoryAdapter;

    .line 1172
    sget-boolean p1, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1173
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v4, "anim/angra.ifp"

    invoke-direct {p1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->prepareHudFixAnimations(Ljava/lang/String;)V

    .line 1174
    :cond_1
    sget-boolean p1, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1175
    const-string/jumbo p1, "xyron_hud_render_settings"

    invoke-virtual {p0, p1, v0}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1177
    const-string v4, "voiceGeometryVersion"

    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "voiceHeight"

    const-string v7, "voiceWidth"

    const/4 v8, 0x2

    if-ge v5, v8, :cond_2

    .line 1178
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1179
    invoke-interface {v5, v4, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1181
    :cond_2
    const-string v4, "voiceX"

    const/high16 v5, -0x40800000    # -1.0f

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const-string v8, "voiceY"

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-virtual {p0, v4, v8}, Lcom/xyron/game/main/SAMP;->setHudFixVoicePosition(FF)V

    .line 1182
    invoke-interface {p1, v7, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-interface {p1, v6, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, v4, p1}, Lcom/xyron/game/main/SAMP;->setHudFixVoiceSize(FF)V

    .line 1184
    :cond_3
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v4, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda7;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1187
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v4, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda8;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    .line 1189
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v4, 0x7f0d0023

    invoke-virtual {p1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->loadingscreen:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/high16 v4, -0x1000000

    .line 1190
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 1191
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->loadingscreen:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v4}, Lcom/xyron/game/main/SAMP;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->initializeRuntimeTopOverlay()V

    .line 1193
    iput-object v2, p0, Lcom/xyron/game/main/SAMP;->gameLoadingVideo:Landroid/widget/VideoView;

    .line 1194
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->loadingscreen:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0184

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->gameLoadingStatus:Landroid/widget/TextView;

    .line 1195
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->loadingscreen:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0182

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->gameLoadingServer:Landroid/widget/TextView;

    .line 1196
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->loadingscreen:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1197
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->gameLoadingVideo:Landroid/widget/VideoView;

    if-eqz p1, :cond_4

    .line 1198
    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 1201
    :cond_4
    new-instance p1, Lcom/xyron/game/main/ui/CustomKeyboard;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/ui/CustomKeyboard;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->mKeyboard:Lcom/xyron/game/main/ui/CustomKeyboard;

    .line 1202
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->prepareAngraEmojiFont()V

    .line 1203
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->mKeyboard:Lcom/xyron/game/main/ui/CustomKeyboard;

    const-string v2, "angra_ui_v18"

    invoke-virtual {p0, v2, v0}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "systemKeyboard"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/xyron/game/main/ui/CustomKeyboard;->setSystemKeyboard(Z)V

    .line 1204
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->mKeyboard:Lcom/xyron/game/main/ui/CustomKeyboard;

    new-instance v2, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda9;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p1, v2}, Lcom/xyron/game/main/ui/CustomKeyboard;->setBinderAction(Ljava/lang/Runnable;)V

    .line 1205
    new-instance p1, Lcom/xyron/game/main/ui/PickupCreatorOverlay;

    new-instance v2, Lcom/xyron/game/main/SAMP$15;

    invoke-direct {v2, p0}, Lcom/xyron/game/main/SAMP$15;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-direct {p1, p0, v2}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;-><init>(Landroid/app/Activity;Lcom/xyron/game/main/ui/PickupCreatorOverlay$Listener;)V

    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->mPickupCreatorOverlay:Lcom/xyron/game/main/ui/PickupCreatorOverlay;

    .line 1242
    sput-object p0, Lcom/xyron/game/main/SAMP;->instance:Lcom/xyron/game/main/SAMP;

    .line 1280
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateLoadingServerLabel()V

    .line 1283
    :try_start_0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->initializeSAMP()V

    .line 1284
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setAllowNextNativePauseMenu(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1286
    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :goto_0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    .line 1289
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->installSystemUiWatcher()V

    return-void

    .line 1137
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Official server connection could not be secured"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1122
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Servidor oficial inv\u00e1lido"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1120
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Servidor temporariamente indispon\u00edvel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 4

    .line 1622
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->nearbyPlayerMenu:Lcom/xyron/game/main/NearbyPlayerMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/NearbyPlayerMenu;->stop()V

    .line 1623
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->mRadialMenu:Lcom/xyron/game/main/ui/RadialMenu;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/RadialMenu;->hide()V

    .line 1624
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->gameVoiceEffects:Lcom/xyron/game/main/GameVoiceEffects;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xyron/game/main/GameVoiceEffects;->pause()V

    .line 1625
    :cond_2
    const-string v0, "SAMP"

    const-string v1, "**** onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->gameLoadingVideo:Landroid/widget/VideoView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 1627
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->phoneImageCallback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xyron/game/main/SAMP;->phoneImageCallback:Landroid/webkit/ValueCallback;

    .line 1628
    :cond_4
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraPause:Lcom/xyron/game/main/ui/AngraPause;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/AngraPause;->destroy()V

    .line 1629
    :cond_5
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraSystems:Lcom/xyron/game/main/AngraSystems;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraSystems;->destroy()V

    .line 1630
    :cond_6
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraNotifyOverlay:Lcom/xyron/game/main/AngraNotifyOverlay;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraNotifyOverlay;->destroy()V

    .line 1631
    :cond_7
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->gameDevices:Lcom/xyron/game/main/GameDeviceOverlay;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/xyron/game/main/GameDeviceOverlay;->destroy()V

    .line 1632
    :cond_8
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->rioNotification:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1633
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hideRioNotification:Ljava/lang/Runnable;

    if-eqz v1, :cond_9

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1634
    :cond_9
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->rioNotification:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1636
    :cond_a
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->cancelAngraNoticeEntrance()V

    .line 1637
    iget-wide v0, p0, Lcom/xyron/game/main/SAMP;->angraNoticeGeneration:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xyron/game/main/SAMP;->angraNoticeGeneration:J

    .line 1638
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->noticeLifetime:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1639
    :cond_b
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraNoticeRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->angraNoticeAnchorListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1640
    :cond_c
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraNoticeRadarAnchor:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->angraNoticeAnchorListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1641
    :cond_d
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraNoticeRadarFrame:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->angraNoticeAnchorListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_e
    const/4 v0, 0x0

    .line 1642
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->setAltKeyPressedSafely(Z)V

    .line 1643
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->setNativeRadarVisibleSafely(Z)V

    const/4 v1, 0x1

    .line 1644
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->hudVoiceMuted:Z

    .line 1645
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudVoiceState()V

    .line 1646
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->resetRoleplay()V

    .line 1647
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->cancelOverlayWarmups()V

    .line 1648
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->clearAutomaticPauseResumeSuppressionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1649
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->dismissMenuAfterBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1650
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->dismissMenuAfterSystemUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1651
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->vehicleHudPolling:Z

    .line 1652
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->vehicleHudPollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1653
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->nativeHudEditorPoll:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1654
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xyron/game/main/SAMP;->settlePhoneOverlay:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1655
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->runtimeOverlayStates:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 1656
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hudButtonEditor:Lcom/xyron/game/main/HudButtonEditor;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v0}, Lcom/xyron/game/main/HudButtonEditor;->finish(Z)V

    .line 1657
    :cond_f
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->destroyRuntimeOverlays()V

    .line 1658
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/xyron/game/main/ReferencePanels;->destroy()V

    .line 1659
    :cond_10
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->inventoryAdapter:Lcom/xyron/game/main/InventoryAdapter;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/xyron/game/main/InventoryAdapter;->destroy()V

    .line 1660
    :cond_11
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraServerBridge;->destroy()V

    .line 1661
    :cond_12
    invoke-super {p0}, Lcom/raiferoleplay/game/game/SAMP;->onDestroy()V

    return-void
.end method

.method public onHeightChanged(II)V
    .locals 0

    .line 1666
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->mKeyboard:Lcom/xyron/game/main/ui/CustomKeyboard;

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/ui/CustomKeyboard;->onHeightChanged(I)V

    .line 1667
    iget-object p1, p0, Lcom/xyron/game/main/SAMP;->mDialog:Lcom/xyron/game/main/ui/dialog/DialogManager;

    invoke-virtual {p1, p2}, Lcom/xyron/game/main/ui/dialog/DialogManager;->onHeightChanged(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1561
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->handleRuntimeBack()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    .line 1564
    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->onEventBackPressed()V

    .line 1565
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    return p2

    .line 1568
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/raiferoleplay/game/game/SAMP;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1574
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    const/4 p1, 0x1

    return p1

    .line 1577
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/raiferoleplay/game/game/SAMP;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNativeSurfaceResumed()V
    .locals 1

    .line 1605
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda36;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 1608
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setAllowNextNativePauseMenu(Z)V

    .line 1609
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->nativeSurfaceHasResumed:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->resumeHudFixGameplay()V

    :cond_1
    const/4 v0, 0x1

    .line 1610
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->nativeSurfaceHasResumed:Z

    .line 1611
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1480
    invoke-super {p0, p1}, Lcom/raiferoleplay/game/game/SAMP;->onNewIntent(Landroid/content/Intent;)V

    .line 1481
    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->setIntent(Landroid/content/Intent;)V

    .line 1482
    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->applyDirectConnectExtras(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1582
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->nearbyPlayerMenu:Lcom/xyron/game/main/NearbyPlayerMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/NearbyPlayerMenu;->stop()V

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->gameVoiceEffects:Lcom/xyron/game/main/GameVoiceEffects;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xyron/game/main/GameVoiceEffects;->pause()V

    .line 1584
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->gameDevices:Lcom/xyron/game/main/GameDeviceOverlay;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xyron/game/main/GameDeviceOverlay;->pause()V

    .line 1585
    :cond_2
    const-string v0, "SAMP"

    const-string v1, "**** onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    const-string v0, "activity|1"

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    .line 1587
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraServerBridge;->pause()V

    :cond_3
    const/4 v0, 0x0

    .line 1588
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->setAltKeyPressedSafely(Z)V

    .line 1589
    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->setNativeRadarVisibleSafely(Z)V

    const/4 v1, 0x1

    .line 1590
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->hudVoiceMuted:Z

    .line 1591
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudVoiceState()V

    .line 1592
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->suppressAutomaticNativePauseResume:Z

    .line 1593
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->skipNextAutomaticLifecycleResumeEvent:Z

    .line 1594
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->pendingBackgroundMenuDismiss:Z

    .line 1595
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->backgroundReturnDismissArmed:Z

    .line 1596
    iput v0, p0, Lcom/xyron/game/main/SAMP;->backgroundMenuDismissStep:I

    .line 1597
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->clearAutomaticPauseResumeSuppressionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1598
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->dismissMenuAfterBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1600
    invoke-super {p0}, Lcom/raiferoleplay/game/game/SAMP;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 1494
    const-string v0, "SAMP"

    const-string v1, "**** onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    invoke-super {p0}, Lcom/raiferoleplay/game/game/SAMP;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1500
    const-string v0, "SAMP"

    const-string v1, "**** onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    invoke-super {p0}, Lcom/raiferoleplay/game/game/SAMP;->onResume()V

    .line 1502
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->nearbyPlayerMenu:Lcom/xyron/game/main/NearbyPlayerMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/NearbyPlayerMenu;->start()V

    .line 1503
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->gameVoiceEffects:Lcom/xyron/game/main/GameVoiceEffects;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xyron/game/main/GameVoiceEffects;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/GameVoiceEffects;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->gameVoiceEffects:Lcom/xyron/game/main/GameVoiceEffects;

    :cond_1
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->gameVoiceEffects:Lcom/xyron/game/main/GameVoiceEffects;

    invoke-virtual {v0}, Lcom/xyron/game/main/GameVoiceEffects;->resume()V

    .line 1504
    :cond_2
    const-string v0, "activity|0"

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    .line 1505
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->mHeightProvider:Lcom/xyron/game/main/HeightProvider;

    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->view:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/HeightProvider;->init(Landroid/view/View;)Lcom/xyron/game/main/HeightProvider;

    .line 1506
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->suppressAutomaticNativePauseResume:Z

    if-eqz v0, :cond_3

    .line 1507
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->scheduleAutomaticPauseResumeSuppressionRelease()V

    .line 1509
    :cond_3
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->updateRuntimeOverlayExecutionState()V

    .line 1510
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda63;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda63;-><init>(Lcom/xyron/game/main/SAMP;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1488
    const-string v0, "SAMP"

    const-string v1, "**** onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    invoke-super {p0}, Lcom/raiferoleplay/game/game/SAMP;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1616
    const-string v0, "SAMP"

    const-string v1, "**** onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-super {p0}, Lcom/raiferoleplay/game/game/SAMP;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 435
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->systemPanelVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->animationPanelVisible:Z

    if-nez v0, :cond_4

    .line 436
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isInventoryOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isWeaponWheelOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 437
    :cond_0
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->nativeHudEditorVisible:Z

    if-eqz v0, :cond_3

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    const/4 v0, 0x0

    if-le v8, v1, :cond_1

    .line 440
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move v6, v2

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-le v8, v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    move v7, v0

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    move-object v2, p0

    .line 439
    invoke-virtual/range {v2 .. v8}, Lcom/xyron/game/main/SAMP;->editHudFixVoiceTouch(IFFFFI)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 444
    :cond_3
    invoke-super {p0, p1}, Lcom/raiferoleplay/game/game/SAMP;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1460
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->shouldIgnoreTransientFocusLoss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1462
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    return-void

    .line 1465
    :cond_0
    invoke-super {p0, p1}, Lcom/raiferoleplay/game/game/SAMP;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_2

    .line 1467
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    .line 1468
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->suppressAutomaticNativePauseResume:Z

    if-eqz p1, :cond_1

    .line 1469
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->scheduleAutomaticPauseResumeSuppressionRelease()V

    .line 1471
    :cond_1
    iget-boolean p1, p0, Lcom/xyron/game/main/SAMP;->pendingBackgroundMenuDismiss:Z

    if-eqz p1, :cond_2

    .line 1472
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->scheduleBackgroundMenuDismissSequence()V

    :cond_2
    return-void
.end method

.method openAngraCashShop()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraSystems:Lcom/xyron/game/main/AngraSystems;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraSystems;->openCashShop()V

    :cond_0
    return-void
.end method

.method openAngraCommunity()V
    .locals 3

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "about:blank"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method openClassicMenu()V
    .locals 1

    .line 3740
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->mRadialMenu:Lcom/xyron/game/main/ui/RadialMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/RadialMenu;->show()V

    :cond_0
    return-void
.end method

.method openClassicMissions()V
    .locals 1

    .line 3744
    const-string v0, "/missoes"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->dispatchRuntimeCommand(Ljava/lang/String;)V

    return-void
.end method

.method native openHudFixChatInput()V
.end method

.method native openHudFixNativeEditor()Z
.end method

.method native openHudFixNativeMap()V
.end method

.method openPhoneNotification(Lorg/json/JSONObject;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xyron/game/main/SAMP;->pendingPhoneDestination:Lorg/json/JSONObject;

    .line 197
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->flushPhoneDestination()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->showPhoneOverlay()V

    :goto_0
    return-void
.end method

.method ownsCellphone()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->ownsPhone:Z

    return v0
.end method

.method phoneAccountId()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/xyron/game/main/SAMP;->phoneRG:I

    return v0
.end method

.method phoneIncomingAction(ZI)V
    .locals 1

    .line 192
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->phoneApps()Lcom/xyron/game/main/PhoneApps;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xyron/game/main/PhoneApps;->incomingAction(ZI)V

    return-void
.end method

.method phoneOverlayIsVisible()Z
    .locals 1

    .line 193
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->isPhoneOverlayVisible()Z

    move-result v0

    return v0
.end method

.method playAngraAnimation(I)V
    .locals 2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/angraanim "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/SAMP;->dispatchRuntimeCommand(Ljava/lang/String;)V

    return-void
.end method

.method native prepareHudFixAnimations(Ljava/lang/String;)V
.end method

.method preparePhoneDocument()V
    .locals 1

    .line 3375
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->phoneOverlayConfigured:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->webcell:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3376
    const-string v0, "phone"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->ensureRuntimeOverlayConfigured(Ljava/lang/String;)Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method publishPhoneApp(Lorg/json/JSONObject;)V
    .locals 1

    .line 172
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda58;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda58;-><init>(Lcom/xyron/game/main/SAMP;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method native pulseHudFixSecondaryKey()V
.end method

.method native queueHudFixFpsLimit(I)V
.end method

.method native queueHudFixMobileOption(II)V
.end method

.method native queueHudFixPanelSound(I)V
.end method

.method native queueHudFixWeaponSelection(I)V
.end method

.method radioDefaultAnchor()[F
    .locals 2

    const/4 v0, 0x0

    .line 890
    :try_start_0
    sget-boolean v1, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getHudFixVoicePosition()[F

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method radioPanelViewport()Landroid/graphics/Rect;
    .locals 5

    const v0, 0x1020002

    .line 892
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 893
    iget-object v1, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 895
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/xyron/game/main/DevicePanelGeometry;->phone(II)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x2

    .line 896
    new-array v4, v3, [I

    new-array v3, v3, [I

    .line 897
    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 898
    aget v1, v4, v0

    aget v0, v3, v0

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    aget v4, v4, v0

    aget v0, v3, v0

    sub-int/2addr v4, v0

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    return-object v2

    .line 894
    :cond_2
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method refreshGameDeviceHud()V
    .locals 3

    .line 889
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->gameDevices:Lcom/xyron/game/main/GameDeviceOverlay;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->systemPanelVisible:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->accessoryEditorVisible:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->hudNativeMapVisible:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->nativeHudEditorVisible:Z

    invoke-virtual {v0, v2, v1}, Lcom/xyron/game/main/GameDeviceOverlay;->hud(ZZ)V

    :cond_1
    return-void
.end method

.method native reloadHudFixTouchLayout()V
.end method

.method resetAngraServerSession()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraSystems:Lcom/xyron/game/main/AngraSystems;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraSystems;->resetPayday()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraHudExperiment:Lcom/xyron/game/main/AngraHudExperiment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraHudExperiment;->reset()V

    .line 211
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->cityFooterClock:Ljava/lang/String;

    const/4 v1, 0x0

    .line 212
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraMarried:Z

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->angraSpouse:Ljava/lang/String;

    const-string v0, "Nivel 1 - 0/6 XP"

    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->angraLevelProgress:Ljava/lang/String;

    .line 213
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->ownsPhone:Z

    .line 214
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hidePvpScoreboard()V

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/xyron/game/main/SAMP;->pendingPhoneDestination:Lorg/json/JSONObject;

    .line 216
    iput v1, p0, Lcom/xyron/game/main/SAMP;->angraAdminLevel:I

    .line 217
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    const v2, 0x7f0a004c

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->hud_main:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a01f7

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraHudExperiment:Lcom/xyron/game/main/AngraHudExperiment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraHudExperiment;->layoutGeometry()V

    .line 219
    :cond_3
    iput v1, p0, Lcom/xyron/game/main/SAMP;->angraBankRequestSequence:I

    .line 220
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->phoneApps:Lcom/xyron/game/main/PhoneApps;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/xyron/game/main/PhoneApps;->reset()V

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraSystems:Lcom/xyron/game/main/AngraSystems;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/xyron/game/main/AngraSystems;->resetAudio()V

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->gameDevices:Lcom/xyron/game/main/GameDeviceOverlay;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/xyron/game/main/GameDeviceOverlay;->reset()V

    .line 223
    :cond_6
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraWeaponsBlocked:Z

    .line 224
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraSafeWeaponExempt:Z

    .line 225
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraInSafeZone:Z

    .line 226
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraJailed:Z

    .line 227
    invoke-virtual {p0, v1, v1}, Lcom/xyron/game/main/SAMP;->setAngraRestrictions(ZZ)V

    .line 228
    new-array v0, v1, [I

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->setAngraHiddenPlayers([I)V

    invoke-virtual {p0, v1}, Lcom/xyron/game/main/SAMP;->setAngraGhostMode(Z)V

    .line 229
    new-array v0, v1, [F

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->setAngraSafePolygons([FZ)V

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->safeZonePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/xyron/game/main/SAMP;->safeZonePacket:I

    iput v1, p0, Lcom/xyron/game/main/SAMP;->safeZonePage:I

    .line 230
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraServerNeeds:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/xyron/game/main/SAMP;->angraEnergy:I

    iput v0, p0, Lcom/xyron/game/main/SAMP;->angraHunger:I

    .line 231
    iput-boolean v1, p0, Lcom/xyron/game/main/SAMP;->angraDoorVisible:Z

    iput v1, p0, Lcom/xyron/game/main/SAMP;->angraDoorId:I

    iput v1, p0, Lcom/xyron/game/main/SAMP;->angraDoorKind:I

    .line 232
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->inventoryAdapter:Lcom/xyron/game/main/InventoryAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/xyron/game/main/InventoryAdapter;->resetServerSession()V

    :cond_7
    return-void
.end method

.method resetRoleplay()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->roleplayUI:Lcom/xyron/game/main/RoleplayUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/RoleplayUI;->reset()V

    :cond_0
    return-void
.end method

.method native resumeHudFixGameplay()V
.end method

.method roleplayEvent(Lorg/json/JSONObject;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->roleplay()Lcom/xyron/game/main/RoleplayUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/RoleplayUI;->receive(Lorg/json/JSONObject;)V

    return-void
.end method

.method native scrollHudFixChat(F)V
.end method

.method selectInventoryWeapon(I)V
    .locals 1

    .line 4724
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->queueHudFixWeaponSelection(I)V

    goto :goto_0

    .line 4725
    :cond_0
    const-string p1, "Sele\u00e7\u00e3o nativa indispon\u00edvel."

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method native selectWeapon(I)V
.end method

.method sendAngraServerResponse(Ljava/lang/String;)Z
    .locals 5

    .line 235
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->mDialog:Lcom/xyron/game/main/ui/dialog/DialogManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->getAngraNativeConnectionState()I

    move-result v0

    const/4 v2, 0x5

    .line 237
    const-string v3, "AngraBridge"

    if-eq v0, v2, :cond_1

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "native response deferred; state="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 241
    :cond_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 242
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0x7918

    const/4 v4, -0x1

    .line 241
    invoke-direct {p0, v1, v2, v4, p1}, Lcom/xyron/game/main/SAMP;->queueAngraDialogResponse(III[B)Z

    move-result p1

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "native response queued="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method sendAngraSpawnCommand(I)Z
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 274
    sget-boolean v0, Lcom/xyron/game/main/SAMP;->hudFixNativeLoaded:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/angraspawn "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->sendHudFixTemplate([B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method sendAngraSystemRequest(Ljava/lang/String;)Z
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/AngraServerBridge;->send(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method native sendCommandV([B)V
.end method

.method public native sendDialogResponse(III[B)V
.end method

.method native sendHudFixTemplate([B)Z
.end method

.method sendLegacyAngraLoginResponse(II[B)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->mDialog:Lcom/xyron/game/main/ui/dialog/DialogManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/xyron/game/main/ui/dialog/DialogManager;->sendDialogResponse(III[B)V

    :cond_0
    return-void
.end method

.method native sendSyntheticNativeTouch(II)V
.end method

.method native setAllowNextNativePauseMenu(Z)V
.end method

.method setAngraAuthOverlay(Z)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->hideKeyboard()V

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hidePhoneOverlay()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 257
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->setNativeOverlayState(I)V

    return-void
.end method

.method native setAngraGhostMode(Z)V
.end method

.method native setAngraHiddenPlayers([I)V
.end method

.method setAngraInventoryData(Ljava/lang/String;)V
    .locals 0

    .line 253
    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->UpdateInventory(Ljava/lang/String;)V

    return-void
.end method

.method native setAngraPlayerAfk(IZ)V
.end method

.method native setAngraRestrictions(ZZ)V
.end method

.method native setAngraSafeAttack(Z)V
.end method

.method native setAngraSafePolygons([FZ)V
.end method

.method public setAngraSafeZone(Z)V
    .locals 1

    .line 2211
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda31;-><init>(Lcom/xyron/game/main/SAMP;Z)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setAngraServerSpawnPending(Z)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/ReferencePanels;->setSpawnPending(Z)V

    :cond_0
    return-void
.end method

.method setAngraSpawnChoices(Lorg/json/JSONArray;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->showAngraServerSpawn()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/ReferencePanels;->setSpawnChoices(Lorg/json/JSONArray;)V

    :cond_1
    return-void
.end method

.method setAngraSystemPanelVisible(Z)V
    .locals 9

    if-eqz p1, :cond_0

    .line 903
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->systemPanelVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->nativeSurfaceHasResumed:Z

    if-eqz v0, :cond_0

    .line 904
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 906
    invoke-super {p0, v0}, Lcom/raiferoleplay/game/game/SAMP;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 908
    :cond_0
    iput-boolean p1, p0, Lcom/xyron/game/main/SAMP;->systemPanelVisible:Z

    .line 909
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->refreshRuntimeChrome()V

    return-void
.end method

.method setDeviceSpectateHud(Z)V
    .locals 1

    .line 900
    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->setAngraSystemPanelVisible(Z)V

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraNotifyOverlay:Lcom/xyron/game/main/AngraNotifyOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/AngraNotifyOverlay;->suppress(Z)V

    :cond_0
    return-void
.end method

.method native setHudFixAltPressed(Z)V
.end method

.method native setHudFixChatGeometry(FFFF)V
.end method

.method native setHudFixChatScale(F)V
.end method

.method native setHudFixFpsCounterEnabled(Z)V
.end method

.method native setHudFixGameplaySuppressed(Z)V
.end method

.method native setHudFixMapViewport(FF)V
.end method

.method native setHudFixPackedCollisions(Z)V
.end method

.method native setHudFixRadarEnabled(Z)V
.end method

.method native setHudFixRadarGeometry(FFF)V
.end method

.method native setHudFixUniversalTextures(Z)V
.end method

.method native setHudFixVoicePosition(FF)V
.end method

.method native setHudFixVoiceSize(FF)V
.end method

.method native setHudFixVoiceState(ZZ)V
.end method

.method public setInventoryRequestHandler(Lcom/xyron/game/main/InventoryAdapter$RequestHandler;)V
    .locals 1

    .line 4721
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda60;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda60;-><init>(Lcom/xyron/game/main/SAMP;Lcom/xyron/game/main/InventoryAdapter$RequestHandler;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method native setNativeHeavyLoad(Z)V
.end method

.method native setNativeLoaderJog(Z)V
.end method

.method native setNativeOverlayState(I)V
.end method

.method native setNearbyPanelOpen(Z)V
.end method

.method native setNearbyPlayerMuted(IIZ)Z
.end method

.method native setPhoneMovementAllowed(Z)V
.end method

.method native setRadarEnabled(Z)V
.end method

.method protected shouldDispatchAutomaticPauseResume()Z
    .locals 1

    .line 4177
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->suppressAutomaticNativePauseResume:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method showAngraBan(Lorg/json/JSONObject;)V
    .locals 2

    .line 992
    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->angraBanReturning:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 993
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->angraBanReturning:Z

    .line 994
    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->stopMusicForGame()V

    .line 995
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->destroyRuntimeOverlays()V

    .line 996
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xyron/game/launcher/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 997
    const-string v1, "angra_ban"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    .line 998
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 999
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->startActivity(Landroid/content/Intent;)V

    .line 1000
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showAngraNotification(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 2279
    new-instance v6, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda12;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda12;-><init>(Lcom/xyron/game/main/SAMP;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method showAngraServerNotice(Ljava/lang/String;)V
    .locals 3

    const/4 v0, -0x1

    .line 280
    invoke-static {v0, p1}, Lcom/xyron/game/launcher/util/AngraNoticeKind;->resolve(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xfa0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/xyron/game/main/SAMP;->showAngraNotification(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method showAngraServerSpawn()V
    .locals 2

    .line 260
    invoke-static {}, Lcom/xyron/game/launcher/util/LauncherMedia;->onSpawnSelectionReached()V

    .line 261
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xyron/game/main/ReferencePanels;->isSpawnVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 262
    :cond_0
    const-string v0, "spawn"

    invoke-direct {p0, v0}, Lcom/xyron/game/main/SAMP;->openReferencePanel(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->referencePanels:Lcom/xyron/game/main/ReferencePanels;

    new-instance v1, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda56;

    invoke-direct {v1, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda56;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/ReferencePanels;->setSpawnAction(Lcom/xyron/game/main/ReferencePanels$SpawnAction;)V

    return-void
.end method

.method public showDialog(II[B[B[B[B)V
    .locals 8

    .line 1014
    new-instance v4, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p3, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1015
    new-instance v5, Ljava/lang/String;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p4, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1016
    iget-object p3, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    if-nez p3, :cond_0

    new-instance p3, Lcom/xyron/game/main/AngraServerBridge;

    invoke-direct {p3, p0}, Lcom/xyron/game/main/AngraServerBridge;-><init>(Lcom/xyron/game/main/SAMP;)V

    iput-object p3, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    .line 1017
    :cond_0
    iget-object p3, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    invoke-virtual {p3, p1, v4, v5}, Lcom/xyron/game/main/AngraServerBridge;->receive(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 1018
    :cond_1
    iget-object p3, p0, Lcom/xyron/game/main/SAMP;->angraServerBridge:Lcom/xyron/game/main/AngraServerBridge;

    invoke-virtual {p3, p1, p2, v4, v5}, Lcom/xyron/game/main/AngraServerBridge;->receiveLegacyLogin(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 1019
    :cond_2
    new-instance v6, Ljava/lang/String;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, p5, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1020
    new-instance v7, Ljava/lang/String;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, p6, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1021
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->finishLoadingForLogin()V

    .line 1022
    new-instance p3, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda39;

    move-object v0, p3

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda39;-><init>(Lcom/xyron/game/main/SAMP;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showInventoryOverlay()V
    .locals 1
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda62;
    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda62;-><init>(Lcom/xyron/game/main/SAMP;)V
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V
    return-void
.end method

.method native showLocalPickupPreview(IIFFF)Z
.end method

.method public showPhoneOverlay()V
    .locals 0

    return-void
.end method

.method showPhoneOverlayAuthorized()V
    .locals 0

    return-void
.end method

.method showPvpCountdown(Lorg/json/JSONObject;)V
    .locals 1

    .line 120
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda72;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda72;-><init>(Lcom/xyron/game/main/SAMP;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method showPvpScoreboard(Lorg/json/JSONObject;)V
    .locals 1

    .line 131
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/main/SAMP;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showSettingsOverlay()V
    .locals 0
    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->showHudSettingsPanel()V
    return-void
.end method

.method public showSystemUI()V
    .locals 0

    .line 1430
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->hideSystemUI()V

    return-void
.end method

.method public showWeaponWheelOverlay()V
    .locals 0

    # O seletor do HUD usa apenas o clique arma/punho; nenhuma WebView abre.
    return-void
.end method

.method public showWithoutReset()V
    .locals 1

    .line 1042
    new-instance v0, Lcom/xyron/game/main/SAMP$10;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$10;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showhud()V
    .locals 1

    .line 2435
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->finishLoadingForLogin()V

    const/4 v0, 0x1

    .line 2436
    iput v0, p0, Lcom/xyron/game/main/SAMP;->iShowHud:I

    .line 2437
    new-instance v0, Lcom/xyron/game/main/SAMP$25;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/SAMP$25;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method spouseName()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->angraSpouse:Ljava/lang/String;

    return-object v0
.end method

.method toggleLockButton(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1755
    new-instance p1, Lcom/xyron/game/main/SAMP$20;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/SAMP$20;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1767
    :cond_0
    new-instance p1, Lcom/xyron/game/main/SAMP$21;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/SAMP$21;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public togglePassengerButton(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1728
    new-instance p1, Lcom/xyron/game/main/SAMP$18;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/SAMP$18;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1740
    :cond_0
    new-instance p1, Lcom/xyron/game/main/SAMP$19;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/SAMP$19;-><init>(Lcom/xyron/game/main/SAMP;)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public native togglePlayer(I)V
.end method

.method public toggleWeaponWheelOverlay()V
    .locals 2

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->weaponToggleArmed:Z
    if-eqz v0, :equip_current_weapon

    # Primeiro estado: guardar a arma.
    const/4 v0, 0x0
    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->selectInventoryWeapon(I)V
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->weaponToggleArmed:Z
    return-void

    :equip_current_weapon
    iget v1, p0, Lcom/xyron/game/main/SAMP;->sampledWeaponType:I
    if-lez v1, :use_saved_weapon
    iput v1, p0, Lcom/xyron/game/main/SAMP;->lastWeaponToggleType:I
    goto :equip_saved_weapon

    :use_saved_weapon
    iget v1, p0, Lcom/xyron/game/main/SAMP;->lastWeaponToggleType:I
    if-lez v1, :return_without_weapon

    :equip_saved_weapon
    invoke-virtual {p0, v1}, Lcom/xyron/game/main/SAMP;->selectInventoryWeapon(I)V
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->weaponToggleArmed:Z

    :return_without_weapon
    return-void
.end method

.method public updateAngraVehicleHud(ZII)V
    .locals 1

    .line 2290
    new-instance v0, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda69;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticLambda69;-><init>(Lcom/xyron/game/main/SAMP;ZII)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private bindSettingsSeekBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :return

    invoke-virtual {p0, v3}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    if-eqz v0, :return

    move-object v6, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :return

    invoke-virtual {p0, v3}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :return

    move-object v7, v0

    const-string v0, "chat_scale"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :audio_value

    iget v4, p0, Lcom/xyron/game/main/SAMP;->hudChatScale:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x42960000    # 75.0f

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-direct {p0, v4, v1, v2}, Lcom/xyron/game/main/SAMP;->clampInt(III)I

    move-result v4

    add-int/lit8 v8, v4, 0x4b

    goto :set_values

    :audio_value
    const-string v0, "angra_audio_mix_v1"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/main/SAMP;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {p0, v4, v1, v2}, Lcom/xyron/game/main/SAMP;->clampInt(III)I

    move-result v4

    move v8, v4

    :set_values
    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xyron/game/main/SAMP;->runtimeOverlayBridge:Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;

    if-eqz v0, :return

    new-instance v1, Lcom/xyron/game/main/SAMP$SettingsSeekBarListener;

    invoke-direct {v1, v0, p3, v7, p4}, Lcom/xyron/game/main/SAMP$SettingsSeekBarListener;-><init>(Lcom/xyron/game/main/SAMP$RuntimeOverlayBridge;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :return
    return-void
.end method

.method private syncHudFpsCounterButton()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hud_fps_counter_toggle"

    const-string v2, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :return

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/SAMP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :return

    iget-boolean v1, p0, Lcom/xyron/game/main/SAMP;->hudFpsCounterEnabled:Z

    if-eqz v1, :off

    const-string v1, "Contador FPS: ON"

    goto :set_text

    :off
    const-string v1, "Contador FPS: OFF"

    :set_text
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :return
    return-void
.end method

.method public toggleHudFpsCounter(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudFpsCounterEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/xyron/game/main/SAMP;->hudFpsCounterEnabled:Z

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->applyHudRenderSettingsRuntime()V

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->syncHudFpsCounterButton()V

    return-void
.end method

.method public openNobreHudEditor(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/SAMP;->openNativeHudEditor()V

    return-void
.end method

.method public openNobreSettings(Landroid/view/View;)V
    .locals 0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->showSettingsOverlay()V
    return-void
.end method

.method public openNobreInventory(Landroid/view/View;)V
    .locals 0
    invoke-virtual {p0}, Lcom/xyron/game/main/SAMP;->showInventoryOverlay()V
    return-void
.end method
