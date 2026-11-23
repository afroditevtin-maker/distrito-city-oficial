.class public Lcom/wardrumstudios/utils/WarMedia;
.super Lcom/wardrumstudios/utils/WarGamepad;
.source "WarMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    }
.end annotation


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "xyron_public_war_media"


# instance fields
.field protected AllowLongPressForExit:Z

.field protected apkFileName:Ljava/lang/String;

.field public baseDirectory:Ljava/lang/String;

.field public baseDirectoryRoot:Ljava/lang/String;

.field private currentLocale:I

.field protected expansionFileName:Ljava/lang/String;

.field protected patchFileName:Ljava/lang/String;

.field public xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarGamepad;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->AllowLongPressForExit:Z

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->apkFileName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectoryRoot:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->expansionFileName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->patchFileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentLocale:I

    return-void
.end method

.method private static ensureTrailingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 513
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private native initTouchSense(Landroid/content/Context;)V
.end method


# virtual methods
.method public AfterDownloadFunction()V
    .locals 0

    return-void
.end method

.method public CheckIfNeedsBluetoothPermission(Landroid/app/Activity;)Z
    .locals 3

    .line 460
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 464
    :cond_0
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 469
    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f42

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public CheckIfNeedsReadPermission(Landroid/app/Activity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ClearSystemNotification()V
    .locals 0

    return-void
.end method

.method public ConvertToBitmap([BI)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 475
    array-length v1, p1

    .line 476
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public CreateTextBox(IIIII)V
    .locals 0

    return-void
.end method

.method public CustomLoadFunction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public DeleteFile(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 185
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public FileGetArchiveName(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 211
    const-string p1, ""

    return-object p1

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/wardrumstudios/utils/WarMedia;->patchFileName:Ljava/lang/String;

    return-object p1

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/wardrumstudios/utils/WarMedia;->expansionFileName:Ljava/lang/String;

    return-object p1

    .line 205
    :cond_2
    iget-object p1, p0, Lcom/wardrumstudios/utils/WarMedia;->apkFileName:Ljava/lang/String;

    return-object p1
.end method

.method public FileRename(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    return v0

    .line 199
    :cond_1
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public GetAndroidBuildinfo(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 238
    const-string p1, ""

    return-object p1

    .line 236
    :cond_0
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object p1

    .line 234
    :cond_1
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object p1

    .line 232
    :cond_2
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object p1
.end method

.method public GetAppId()Ljava/lang/String;
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetAvailableMemory()I
    .locals 4

    .line 347
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 348
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 353
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 354
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 216
    const-string/jumbo v0, "xyron_public_war_media"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetDeviceInfo(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 247
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    return p1

    .line 245
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    return p1
.end method

.method public GetDeviceLocale()I
    .locals 1

    .line 177
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public GetDeviceType()I
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->isTV()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public GetFreeBytesOnExternalStorage()J
    .locals 2

    .line 507
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 508
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public GetGameBaseDirectory()Ljava/lang/String;
    .locals 4

    .line 86
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 88
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {}, Lcom/xyron/game/launcher/util/GameStorage;->usesInternalDataStorage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->appRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectoryRoot:Ljava/lang/String;

    .line 91
    invoke-static {v1}, Lcom/wardrumstudios/utils/WarMedia;->ensureTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    .line 95
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectoryRoot:Ljava/lang/String;

    goto :goto_1

    .line 97
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectoryRoot:Ljava/lang/String;

    .line 99
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->ensureTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetLocale()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentLocale:I

    return v0
.end method

.method public GetLowThreshhold()I
    .locals 4

    .line 362
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 363
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 368
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 369
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public GetMemoryInfo(Z)I
    .locals 0

    .line 358
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->GetAvailableMemory()I

    move-result p1

    return p1
.end method

.method public GetPackageName()Ljava/lang/String;
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 149
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object p1
.end method

.method public GetRealLocale()V
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->GetDeviceLocale()I

    move-result v0

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentLocale:I

    return-void
.end method

.method public GetScreenWidthInches()F
    .locals 2

    .line 373
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 374
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v0

    return v1
.end method

.method public GetSpecialBuildType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public GetTotalMemory()I
    .locals 4

    .line 336
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 337
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 342
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 343
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public IsAppInstalled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public IsCloudAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public IsKeyboardShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public IsMoviePlaying()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public IsPhone()Z
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->isTV()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public IsTV()Z
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->isTV()Z

    move-result v0

    return v0
.end method

.method public LoadAllGamesFromCloud()V
    .locals 0

    return-void
.end method

.method public LoadGameFromCloud(I[B)Ljava/lang/String;
    .locals 0

    .line 309
    const-string p1, ""

    return-object p1
.end method

.method public MovieClearText(Z)V
    .locals 0

    return-void
.end method

.method public MovieDisplayText(Z)V
    .locals 0

    return-void
.end method

.method public MovieKeepAspectRatio(Z)V
    .locals 0

    return-void
.end method

.method public MovieSetSkippable(Z)V
    .locals 0

    return-void
.end method

.method public MovieSetText(Ljava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method public MovieSetTextScale(I)V
    .locals 0

    return-void
.end method

.method public native NativeNotifyNetworkChange(I)V
.end method

.method protected NetworkChange()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->isNetworkAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->NativeNotifyNetworkChange(I)V

    return-void
.end method

.method public NewCloudSaveAvailable(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public OBFU_GetDeviceID()Ljava/lang/String;
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OpenLink(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 297
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public PlayMovie(Ljava/lang/String;F)V
    .locals 0

    return-void
.end method

.method public PlayMovieInFile(Ljava/lang/String;FII)V
    .locals 0

    return-void
.end method

.method public PlayMovieInWindow(Ljava/lang/String;IIIIFIIIZ)V
    .locals 0

    return-void
.end method

.method public RestoreCurrentLanguage()V
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->GetDeviceLocale()I

    move-result v0

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentLocale:I

    return-void
.end method

.method public SaveGameToCloud(I[BI)V
    .locals 0

    return-void
.end method

.method public ScreenSetWakeLock(Z)V
    .locals 1

    const/16 v0, 0x80

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method public SendStatEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public SendStatEvent(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public SendTimedStatEventEnd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ServiceAppCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ServiceAppCommandInt(Ljava/lang/String;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ServiceAppCommandValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public SetConfigSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 220
    const-string/jumbo v0, "xyron_public_war_media"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p2, :cond_0

    .line 221
    const-string p2, ""

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public SetLocale(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/wardrumstudios/utils/WarMedia;->currentLocale:I

    return-void
.end method

.method public SetLocale(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentLocale:I

    .line 162
    const-string/jumbo v0, "xyron_public_war_media"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "locale"

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 165
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method public ShowKeyboard(I)V
    .locals 2

    .line 258
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public StopMovie()V
    .locals 0

    return-void
.end method

.method public VibratePhone(I)V
    .locals 3

    .line 390
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    int-to-long v1, p1

    .line 392
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

.method public VibratePhoneEffect(I)V
    .locals 0

    const/16 p1, 0x1e

    .line 397
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->VibratePhone(I)V

    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 5

    .line 103
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 108
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_3

    .line 109
    invoke-static {v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    .line 113
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 116
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 117
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public isTV()Z
    .locals 2

    .line 136
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWiFiAvailable()Z
    .locals 5

    .line 121
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 126
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    .line 127
    invoke-static {v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 131
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected localHasGameData()V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->AfterDownloadFunction()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->GetGameBaseDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/nvidia/devtech/NvUtil;->getInstance()Lcom/nvidia/devtech/NvUtil;

    move-result-object v0

    const-string v1, "STORAGE_ROOT"

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nvidia/devtech/NvUtil;->setAppLocalValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/nvidia/devtech/NvUtil;->getInstance()Lcom/nvidia/devtech/NvUtil;

    move-result-object v0

    const-string v1, "STORAGE_ROOT_BASE"

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectoryRoot:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nvidia/devtech/NvUtil;->setAppLocalValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->localHasGameData()V

    .line 68
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->NetworkChange()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->AllowLongPressForExit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->finish()V

    const/4 p1, 0x1

    return p1

    .line 498
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarGamepad;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 449
    invoke-super {p0, p1, p2, p3}, Lcom/wardrumstudios/utils/WarGamepad;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 503
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public native setTouchSenseFilepath(Ljava/lang/String;)V
.end method
