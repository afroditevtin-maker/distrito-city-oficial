.class public final Lcom/xyron/game/launcher/util/DataVariantPreferences;
.super Ljava/lang/Object;
.source "DataVariantPreferences.java"


# static fields
.field public static final DATA_VARIANT_FULL:Ljava/lang/String; = "full"

.field public static final DATA_VARIANT_LITE:Ljava/lang/String; = "lite"

.field private static final PREF_SELECTED_DATA_VARIANT:Ljava/lang/String; = "selected_data_variant"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSelectedVariantId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 19
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 23
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 24
    const-string v1, "selected_data_variant"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xyron/game/launcher/util/DataVariantPreferences;->normalizeVariantId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/xyron/game/launcher/util/DataVariantPreferences;->isSupportedVariantId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public static getSelectedVariantIdOrDefault(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {p0}, Lcom/xyron/game/launcher/util/DataVariantPreferences;->getSelectedVariantId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "lite"

    :cond_0
    return-object p0
.end method

.method public static isSupportedVariantId(Ljava/lang/String;)Z
    .locals 1

    .line 50
    invoke-static {p0}, Lcom/xyron/game/launcher/util/DataVariantPreferences;->normalizeVariantId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 51
    const-string v0, "lite"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "full"

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static normalizeVariantId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 56
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static saveSelectedVariantId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/xyron/game/launcher/util/DataVariantPreferences;->normalizeVariantId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/xyron/game/launcher/util/DataVariantPreferences;->isSupportedVariantId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 43
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 44
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "selected_data_variant"

    .line 45
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 46
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
