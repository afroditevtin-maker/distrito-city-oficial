.class public Lcom/xyron/game/launcher/util/ConfigValidator;
.super Ljava/lang/Object;
.source "ConfigValidator.java"


# static fields
.field private static final ADJUSTABLE_GAMEPLAY_CONTROLS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CORE_TEXT_ASSET_PATH:Ljava/lang/String; = "Text/american.gxt"

.field private static final CORE_TEXT_OUTPUT_PATH:Ljava/lang/String; = "SAMP/text/AMERICAN.GXT"

.field private static final KEY_TOUCH_LAYOUT_JSON:Ljava/lang/String; = "touch_layout_json"

.field private static final KEY_TOUCH_LAYOUT_VERSION:Ljava/lang/String; = "touch_layout_version"

.field private static final MIN_CORE_TEXT_BYTES:J = 0x400L

.field private static final PREFS_NAME:Ljava/lang/String; = "xyron_config_validator"

.field private static final TOUCH_LAYOUT_FILES:[Ljava/lang/String;

.field private static final TOUCH_LAYOUT_VERSION:I = 0x1352841

.field private static final TOUCH_POSITION_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 33
    const-string v4, "data/360Default1280x720.cfg"

    const-string v5, "data/360Default960x720.cfg"

    const-string v0, "data/TouchDefaultPhoneWidescreen.cfg"

    const-string v1, "data/TouchDefaultPhone3x2.cfg"

    const-string v2, "data/TouchDefaultTabletWidescreen.cfg"

    const-string v3, "data/TouchDefaultTablet4x3.cfg"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/ConfigValidator;->TOUCH_LAYOUT_FILES:[Ljava/lang/String;

    .line 41
    const-string v0, "^(\\s*PositionAndScale\\s+)(-?\\d+)\\s*,\\s*(-?\\d+)(.*;\\s*(WIDGET_POSITION_[A-Z0-9_]+).*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/ConfigValidator;->TOUCH_POSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    const-string v28, "WIDGET_POSITION_VEHICLE_FLICK"

    const-string v29, "WIDGET_POSITION_LOOK"

    const-string v1, "WIDGET_POSITION_CAM_TOGGLE"

    const-string v2, "WIDGET_POSITION_PHONE"

    const-string v3, "WIDGET_POSITION_ENTER_CAR"

    const-string v4, "WIDGET_POSITION_TARGETING_AND_ATTACK"

    const-string v5, "WIDGET_POSITION_VC_SHOOT_ALT"

    const-string v6, "WIDGET_POSITION_VC_SHOOT"

    const-string v7, "WIDGET_POSITION_BUTTON_SPRINT_AND_SWIM"

    const-string v8, "WIDGET_POSITION_ACCELERATE"

    const-string v9, "WIDGET_POSITION_BRAKE"

    const-string v10, "WIDGET_POSITION_HANDBRAKE_AND_AIR_SHOOT"

    const-string v11, "WIDGET_POSITION_HORN"

    const-string v12, "WIDGET_POSITION_SKIP_CUTSCENE"

    const-string v13, "WIDGET_POSITION_SWAP_WEAPONS"

    const-string v14, "WIDGET_POSITION_HORN_ALT"

    const-string v15, "WIDGET_POSITION_CAR_SHOOT"

    const-string v16, "WIDGET_POSITION_HYDRAULICS"

    const-string v17, "WIDGET_POSITION_SPRINT_AND_BASKETBALL_JUMP"

    const-string v18, "WIDGET_POSITION_SHOOT_LOOK"

    const-string v19, "WIDGET_POSITION_VEHICLE_STEER_LEFT"

    const-string v20, "WIDGET_POSITION_VEHICLE_STEER_RIGHT"

    const-string v21, "WIDGET_POSITION_VEHICLE_SHOOT_LEFT"

    const-string v22, "WIDGET_POSITION_VEHICLE_SHOOT_RIGHT"

    const-string v23, "WIDGET_POSITION_MISSION_START_AND_MISSION_SKIP_CUTSCENE"

    const-string v24, "WIDGET_POSITION_VEHICLE_SHOOT_LEFT_ALT"

    const-string v25, "WIDGET_POSITION_VEHICLE_SHOOT_RIGHT_ALT"

    const-string v26, "WIDGET_POSITION_PED_MOVE"

    const-string v27, "WIDGET_POSITION_VEHICLE_STEER_ANALOG"

    filled-new-array/range {v1 .. v29}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/xyron/game/launcher/util/ConfigValidator;->ADJUSTABLE_GAMEPLAY_CONTROLS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTouchLayoutOffsets(Landroid/content/Context;II)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/16 v2, 0x50

    .line 135
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v3, -0x50

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 136
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 138
    sget-object v2, Lcom/xyron/game/launcher/util/ConfigValidator;->TOUCH_LAYOUT_FILES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v5, v2, v0

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    invoke-static {v6, v5, v7, p1, p2}, Lcom/xyron/game/launcher/util/ConfigValidator;->copyAdjustedTouchAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;II)Z

    move-result v5

    and-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 146
    new-instance p0, Ljava/io/File;

    const-string p1, "gtasatelem.set"

    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xyron/game/launcher/util/ConfigValidator;->deleteIfExists(Ljava/io/File;)V

    :cond_3
    return v4
.end method

.method public static applyTouchLayoutPositions(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 192
    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/ConfigValidator;->applyTouchLayoutPositionsInternal(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static applyTouchLayoutPositionsInternal(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 202
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    sget-object p1, Lcom/xyron/game/launcher/util/ConfigValidator;->TOUCH_LAYOUT_FILES:[Ljava/lang/String;

    array-length v3, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, p1, v5

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7, v6, v8, v2}, Lcom/xyron/game/launcher/util/ConfigValidator;->copyPositionedTouchAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;Lorg/json/JSONObject;)Z

    move-result v6

    and-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 212
    new-instance p1, Ljava/io/File;

    const-string v3, "gtasatelem.set"

    invoke-direct {p1, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xyron/game/launcher/util/ConfigValidator;->deleteIfExists(Ljava/io/File;)V

    if-eqz p2, :cond_3

    .line 214
    const-string/jumbo p1, "xyron_config_validator"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "touch_layout_json"

    .line 215
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 216
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return v4

    :catch_0
    :cond_4
    :goto_1
    return v0
.end method

.method private static copyAdjustedTouchAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;II)Z
    .locals 5

    .line 269
    invoke-static {p2}, Lcom/xyron/game/launcher/util/ConfigValidator;->ensureParentDirectory(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 270
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 271
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :try_start_1
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance p1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 275
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 276
    sget-object v2, Lcom/xyron/game/launcher/util/ConfigValidator;->TOUCH_POSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/xyron/game/launcher/util/ConfigValidator;->ADJUSTABLE_GAMEPLAY_CONTROLS:Ljava/util/Set;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x2

    .line 278
    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p3

    const/16 v3, 0x280

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v3, 0x3

    .line 279
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p4

    const/16 v4, 0x1c0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 282
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return p2

    :catchall_0
    move-exception p1

    .line 270
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 288
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method static copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 332
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-static {v0}, Lcom/xyron/game/launcher/util/ConfigValidator;->ensureParentDirectory(Ljava/io/File;)V

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    .line 338
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 340
    :try_start_2
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/ConfigValidator;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 341
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p2

    .line 338
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_2

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 344
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    .line 350
    new-array v0, v0, [B

    .line 352
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 354
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static copyPositionedTouchAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;Lorg/json/JSONObject;)Z
    .locals 6

    .line 238
    invoke-static {p2}, Lcom/xyron/game/launcher/util/ConfigValidator;->ensureParentDirectory(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 239
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 240
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :try_start_1
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance p1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 244
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 245
    sget-object v2, Lcom/xyron/game/launcher/util/ConfigValidator;->TOUCH_POSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 248
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 250
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 249
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONArray;->optInt(II)I

    move-result p1

    const/16 v4, 0x280

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v4, 0x3

    .line 252
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 251
    invoke-virtual {v3, p2, v4}, Lorg/json/JSONArray;->optInt(II)I

    move-result v3

    const/16 v4, 0x1c0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 256
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 259
    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return p2

    :catchall_0
    move-exception p1

    .line 239
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 262
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1

    .line 369
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private static ensureCoreTextDatabase(Landroid/content/res/AssetManager;Ljava/io/File;)V
    .locals 5

    .line 294
    new-instance v0, Ljava/io/File;

    const-string v1, "SAMP/text/AMERICAN.GXT"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    return-void

    .line 299
    :cond_0
    const-string p1, "Text/american.gxt"

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/ConfigValidator;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static ensureParentDirectory(Ljava/io/File;)V
    .locals 1

    .line 362
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 363
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public static getTouchLayoutJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    .line 152
    const-string/jumbo p0, "{}"

    return-object p0

    .line 153
    :cond_0
    const-string/jumbo v0, "xyron_config_validator"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    const-string v1, "touch_layout_json"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 162
    :catch_0
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 163
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v3, "data/TouchDefaultPhoneWidescreen.cfg"

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 168
    sget-object v2, Lcom/xyron/game/launcher/util/ConfigValidator;->TOUCH_POSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 169
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/xyron/game/launcher/util/ConfigValidator;->ADJUSTABLE_GAMEPLAY_CONTROLS:Ljava/util/Set;

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 172
    :cond_3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x2

    .line 173
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const/4 v4, 0x3

    .line 174
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 175
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 177
    :cond_4
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 163
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static invalidateTouchLayoutCacheIfNeeded(Landroid/content/SharedPreferences;ILjava/io/File;)V
    .locals 2

    const v0, 0x1352841

    if-ne p1, v0, :cond_0

    return-void

    .line 324
    :cond_0
    new-instance p1, Ljava/io/File;

    const-string v1, "gtasatelem.set"

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xyron/game/launcher/util/ConfigValidator;->deleteIfExists(Ljava/io/File;)V

    .line 326
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "touch_layout_version"

    .line 327
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 328
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static markNativeHudLayoutSaved(Landroid/content/Context;)V
    .locals 2

    .line 184
    invoke-static {p0}, Lcom/xyron/game/launcher/util/HudLayoutStorage;->capture(Landroid/content/Context;)Z

    .line 185
    const-string/jumbo v0, "xyron_config_validator"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "native_hud_layout"

    const/4 v1, 0x1

    .line 186
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "touch_layout_version"

    const v1, 0x1352841

    .line 187
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "touch_layout_json"

    .line 188
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static resetTouchLayout(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 224
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 226
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xyron/game/launcher/util/ConfigValidator;->syncTouchLayoutAssets(Landroid/content/res/AssetManager;Ljava/io/File;)V

    .line 227
    const-string/jumbo v2, "xyron_config_validator"

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "touch_layout_json"

    .line 228
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "touch_layout_version"

    const v2, 0x1352841

    .line 229
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 230
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    new-instance p0, Ljava/io/File;

    const-string v0, "gtasatelem.set"

    invoke-direct {p0, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xyron/game/launcher/util/ConfigValidator;->deleteIfExists(Ljava/io/File;)V

    .line 232
    new-instance p0, Ljava/io/File;

    const-string v0, "files/gtasatelem.set"

    invoke-direct {p0, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xyron/game/launcher/util/ConfigValidator;->deleteIfExists(Ljava/io/File;)V

    .line 233
    invoke-static {v1}, Lcom/xyron/game/launcher/util/ConfigValidator;->touchLayoutAssetsExist(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static syncTouchLayoutAssets(Landroid/content/res/AssetManager;Ljava/io/File;)V
    .locals 5

    .line 303
    sget-object v0, Lcom/xyron/game/launcher/util/ConfigValidator;->TOUCH_LAYOUT_FILES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 304
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/xyron/game/launcher/util/ConfigValidator;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static touchLayoutAssetsExist(Ljava/io/File;)Z
    .locals 6

    .line 309
    sget-object v0, Lcom/xyron/game/launcher/util/ConfigValidator;->TOUCH_LAYOUT_FILES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 310
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static validateConfigFiles(Landroid/content/Context;)V
    .locals 7

    .line 77
    const-string v0, "ConfigValidator"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 78
    :try_start_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->preparePreferences(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 86
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/xyron/game/launcher/util/ResourceDirectoryLayout;->migrate(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 88
    const-string v3, "Resource directory migration incomplete"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/ConfigValidator;->ensureCoreTextDatabase(Landroid/content/res/AssetManager;Ljava/io/File;)V

    .line 92
    new-instance v0, Ljava/io/File;

    const-string v2, "SAMP/settings.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    invoke-static {v0}, Lcom/xyron/game/launcher/util/ConfigValidator;->ensureParentDirectory(Ljava/io/File;)V

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "settings.ini"

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/xyron/game/launcher/util/ConfigValidator;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    :cond_1
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->ensureSelectedServer(Landroid/content/Context;)Z

    .line 103
    const-string/jumbo v0, "xyron_config_validator"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    const-string v3, "touch_layout_version"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const v5, 0x1352841

    if-ne v4, v5, :cond_2

    .line 105
    invoke-static {v1}, Lcom/xyron/game/launcher/util/ConfigValidator;->touchLayoutAssetsExist(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 106
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/xyron/game/launcher/util/ConfigValidator;->syncTouchLayoutAssets(Landroid/content/res/AssetManager;Ljava/io/File;)V

    .line 108
    :cond_3
    const-string v6, "native_hud_layout"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 109
    invoke-static {p0}, Lcom/xyron/game/launcher/util/HudLayoutStorage;->restore(Landroid/content/Context;)Z

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 113
    :cond_4
    invoke-static {v0, v4, v1}, Lcom/xyron/game/launcher/util/ConfigValidator;->invalidateTouchLayoutCacheIfNeeded(Landroid/content/SharedPreferences;ILjava/io/File;)V

    .line 114
    const-string v1, "touch_layout_json"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 116
    invoke-static {p0, v0, v2}, Lcom/xyron/game/launcher/util/ConfigValidator;->applyTouchLayoutPositionsInternal(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_5
    return-void

    :catch_1
    move-exception p0

    .line 79
    const-string v1, "Player preferences migration deferred"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
