.class public Lcom/xyron/game/main/GTASA;
.super Lcom/wardrumstudios/utils/WarMedia;
.source "GTASA.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GTASA"

.field public static gtasaSelf:Lcom/xyron/game/main/GTASA;

.field static vmVersion:Ljava/lang/String;


# instance fields
.field UseExpansionPack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    const-string v0, "vmVersion "

    .line 20
    const-string v1, "**** Loading SO\'s"

    const-string v2, "GTASA"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :try_start_0
    const-string v1, "ImmEmulatorJ"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    const-string v1, "Optional immersive helper unavailable for this ABI"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :goto_0
    :try_start_1
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xyron/game/main/GTASA;->vmVersion:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/xyron/game/main/GTASA;->vmVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v0, "SCAnd"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 38
    :goto_1
    invoke-virtual {v0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarMedia;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/xyron/game/main/GTASA;->UseExpansionPack:Z

    return-void
.end method

.method public static staticEnterSocialClub()V
    .locals 1

    .line 152
    sget-object v0, Lcom/xyron/game/main/GTASA;->gtasaSelf:Lcom/xyron/game/main/GTASA;

    invoke-virtual {v0}, Lcom/xyron/game/main/GTASA;->EnterSocialClub()V

    return-void
.end method

.method public static staticExitSocialClub()V
    .locals 1

    .line 156
    sget-object v0, Lcom/xyron/game/main/GTASA;->gtasaSelf:Lcom/xyron/game/main/GTASA;

    invoke-virtual {v0}, Lcom/xyron/game/main/GTASA;->ExitSocialClub()V

    return-void
.end method


# virtual methods
.method public CustomLoadFunction()Z
    .locals 1

    .line 148
    sget-object v0, Lcom/xyron/game/main/GTASA;->gtasaSelf:Lcom/xyron/game/main/GTASA;

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/GTASA;->CheckIfNeedsReadPermission(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public EnterSocialClub()V
    .locals 2

    .line 160
    const-string v0, "GTASA"

    const-string v1, "**** EnterSocialClub"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ExitSocialClub()V
    .locals 2

    .line 164
    const-string v0, "GTASA"

    const-string v1, "**** ExitSocialClub"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ServiceAppCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 87
    const-string v0, "SetLocale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0, p2}, Lcom/xyron/game/main/GTASA;->SetLocale(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public ServiceAppCommandValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 97
    const-string p2, "GetDownloadBytes"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 101
    :cond_0
    const-string p2, "GetDownloadState"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x4

    return p1

    .line 105
    :cond_1
    const-string p2, "GetNetworkState"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/xyron/game/main/GTASA;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public native main()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 44
    const-string v0, "**** onCreate"

    const-string v1, "GTASA"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sput-object p0, Lcom/xyron/game/main/GTASA;->gtasaSelf:Lcom/xyron/game/main/GTASA;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "main.8."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xyron/game/main/GTASA;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".obb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/GTASA;->expansionFileName:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "patch.8."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xyron/game/main/GTASA;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/GTASA;->patchFileName:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/xyron/game/main/GTASA;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/GTASA;->GetPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/GTASA;->apkFileName:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "apkFileName "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xyron/game/main/GTASA;->apkFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/xyron/game/main/GTASA;->GetGameBaseDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/GTASA;->baseDirectory:Ljava/lang/String;

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/xyron/game/main/GTASA;->AllowLongPressForExit:Z

    .line 55
    const-string v2, "models"

    const-string v3, "texdb"

    const-string v4, "anim"

    const-string v5, "audio"

    const-string v6, "data"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 57
    aget-object v5, v2, v4

    .line 58
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/xyron/game/main/GTASA;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    const-string v5, "Using lite data."

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-boolean v3, p0, Lcom/xyron/game/main/GTASA;->UseExpansionPack:Z

    goto :goto_1

    .line 65
    :cond_0
    const-string v5, "Using obb."

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-boolean v0, p0, Lcom/xyron/game/main/GTASA;->UseExpansionPack:Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_1
    iget-boolean v1, p0, Lcom/xyron/game/main/GTASA;->UseExpansionPack:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 71
    new-array v1, v1, [Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    iput-object v1, p0, Lcom/xyron/game/main/GTASA;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    .line 72
    iget-object v1, p0, Lcom/xyron/game/main/GTASA;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    new-instance v2, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    const-wide/32 v4, 0x75469c7c

    const/16 v6, 0x8

    invoke-direct {v2, v0, v6, v4, v5}, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;-><init>(ZIJ)V

    aput-object v2, v1, v3

    .line 73
    iget-object v1, p0, Lcom/xyron/game/main/GTASA;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    new-instance v2, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    const-wide/32 v4, 0x254584f6

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;-><init>(ZIJ)V

    aput-object v2, v1, v0

    .line 76
    :cond_2
    iput-boolean v0, p0, Lcom/xyron/game/main/GTASA;->wantsMultitouch:Z

    .line 77
    iput-boolean v0, p0, Lcom/xyron/game/main/GTASA;->wantsAccelerometer:Z

    .line 79
    invoke-virtual {p0}, Lcom/xyron/game/main/GTASA;->RestoreCurrentLanguage()V

    .line 81
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/xyron/game/main/GTASA;->SetReportPS3As360(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 142
    const-string v0, "GTASA"

    const-string v1, "**** onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarMedia;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 130
    const-string v0, "GTASA"

    const-string v1, "**** onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarMedia;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 118
    const-string v0, "GTASA"

    const-string v1, "**** onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarMedia;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 124
    const-string v0, "GTASA"

    const-string v1, "**** onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarMedia;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 112
    const-string v0, "GTASA"

    const-string v1, "**** onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarMedia;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 136
    const-string v0, "GTASA"

    const-string v1, "**** onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarMedia;->onStop()V

    return-void
.end method
