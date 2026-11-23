.class public Lcom/xyron/game/launcher/util/SharedPreferenceCore;
.super Ljava/lang/Object;
.source "SharedPreferenceCore.java"


# static fields
.field public static final APP_PREFERENCES:Ljava/lang/String; = "configlauncher"

.field private static editor:Landroid/content/SharedPreferences$Editor;

.field private static mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main(Landroid/content/Context;)V
    .locals 2

    .line 12
    const-string v0, "configlauncher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 13
    sput-object p0, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 14
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sput-object p0, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 72
    invoke-static {p1}, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->main(Landroid/content/Context;)V

    .line 73
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 74
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public getFloat(Landroid/content/Context;Ljava/lang/String;)F
    .locals 1

    .line 88
    invoke-static {p1}, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->main(Landroid/content/Context;)V

    .line 89
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 90
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public getInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 56
    invoke-static {p1}, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->main(Landroid/content/Context;)V

    .line 57
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 58
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 64
    invoke-static {p1}, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->main(Landroid/content/Context;)V

    .line 65
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLong(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    .line 80
    invoke-static {p1}, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->main(Landroid/content/Context;)V

    .line 81
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 82
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide v0
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 48
    invoke-static {p1}, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->main(Landroid/content/Context;)V

    .line 49
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 30
    invoke-static {p1}, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->main(Landroid/content/Context;)V

    .line 31
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 32
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFloat(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->main(Landroid/content/Context;)V

    .line 43
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 44
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-static {p1}, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->main(Landroid/content/Context;)V

    .line 25
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 26
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 36
    invoke-static {p1}, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->main(Landroid/content/Context;)V

    .line 37
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 38
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-static {p1}, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->main(Landroid/content/Context;)V

    .line 19
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    sget-object p1, Lcom/xyron/game/launcher/util/SharedPreferenceCore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
