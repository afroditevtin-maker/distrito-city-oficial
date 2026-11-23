.class public final Lcom/xyron/game/launcher/util/AngraLanguage;
.super Ljava/lang/Object;
.source "AngraLanguage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/util/AngraLanguage$LocaleBridge;,
        Lcom/xyron/game/launcher/util/AngraLanguage$Template;
    }
.end annotation


# static fields
.field public static final CODES:[Ljava/lang/String;

.field public static final LABELS:[Ljava/lang/String;

.field private static final MARKS:Ljava/util/regex/Pattern;

.field private static final PLACEHOLDER:Ljava/util/regex/Pattern;

.field private static final SPACES:Ljava/util/regex/Pattern;

.field private static final attached:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final canonical:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static dictionary:Lorg/json/JSONObject;

.field private static volatile dictionaryJson:Ljava/lang/String;

.field private static final originalHint:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/TextView;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final originalText:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/TextView;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final templates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xyron/game/launcher/util/AngraLanguage$Template;",
            ">;"
        }
    .end annotation
.end field

.field private static final translatedCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final webLanguage:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    const-string v0, "es"

    const-string v1, "ru"

    const-string v2, "pt"

    const-string v3, "en"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->CODES:[Ljava/lang/String;

    .line 17
    const-string v0, "Espa\u00f1ol"

    const-string/jumbo v1, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    const-string v2, "Portugu\u00eas"

    const-string v3, "English"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->LABELS:[Ljava/lang/String;

    .line 20
    const-string v0, "\\p{M}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->MARKS:Ljava/util/regex/Pattern;

    .line 21
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->SPACES:Ljava/util/regex/Pattern;

    .line 22
    const-string v0, "\\{(\\d+)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->PLACEHOLDER:Ljava/util/regex/Pattern;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->canonical:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->templates:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->originalText:Ljava/util/WeakHashMap;

    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->originalHint:Ljava/util/WeakHashMap;

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->attached:Ljava/util/WeakHashMap;

    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->webLanguage:Ljava/util/WeakHashMap;

    .line 39
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x600

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->translatedCache:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .line 15
    sget-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->PLACEHOLDER:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->catalogueJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 121
    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->selected(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->apply(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private static apply(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 124
    const-string v0, "angra_literal_key"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 126
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 127
    instance-of v2, p1, Landroid/widget/EditText;

    if-nez v2, :cond_1

    invoke-static {p0, v0, v1, p2}, Lcom/xyron/game/launcher/util/AngraLanguage;->text(Landroid/content/Context;Landroid/widget/TextView;ZLjava/lang/String;)V

    :cond_1
    const/4 v2, 0x1

    .line 128
    invoke-static {p0, v0, v2, p2}, Lcom/xyron/game/launcher/util/AngraLanguage;->text(Landroid/content/Context;Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 130
    :cond_2
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 131
    move-object v0, p1

    check-cast v0, Landroid/webkit/WebView;

    .line 132
    sget-object v2, Lcom/xyron/game/launcher/util/AngraLanguage;->webLanguage:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "window.AngraI18n&&window.AngraI18n.changeLanguage&&window.AngraI18n.changeLanguage("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 134
    :cond_3
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/xyron/game/launcher/util/AngraLanguage;->apply(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static attach(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->attached:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 100
    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1, p0}, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda2;-><init>(Ljava/lang/ref/WeakReference;[ZLandroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 108
    :cond_1
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->apply(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static bootstrapScript(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "window.__angraLanguage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->selected(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";window.__angraTranslations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->catalogueJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";document.addEventListener(\'DOMContentLoaded\',function(){try{window.AngraDocument&&AngraDocument.ready();}catch(e){}},{once:true});"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static catalogueJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 144
    sget-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->dictionaryJson:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 145
    const-class v1, Lcom/xyron/game/launcher/util/AngraLanguage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->dictionaryJson:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->dictionary(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xyron/game/launcher/util/AngraLanguage;->dictionaryJson:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->dictionaryJson:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized dictionary(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 10

    const-class v0, Lcom/xyron/game/launcher/util/AngraLanguage;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/xyron/game/launcher/util/AngraLanguage;->dictionary:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    .line 59
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "interfaces/shared/translations.json"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v2, 0x2000

    .line 60
    :try_start_3
    new-array v2, v2, [B

    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 61
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/xyron/game/launcher/util/AngraLanguage;->dictionary:Lorg/json/JSONObject;

    .line 62
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/xyron/game/launcher/util/AngraLanguage;->canonical:Ljava/util/Map;

    invoke-static {v3}, Lcom/xyron/game/launcher/util/AngraLanguage;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/xyron/game/launcher/util/AngraLanguage;->dictionary:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v6, 0x0

    .line 64
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xyron/game/launcher/util/AngraLanguage;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/xyron/game/launcher/util/AngraLanguage;->canonical:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {v8, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 65
    :cond_4
    sget-object v6, Lcom/xyron/game/launcher/util/AngraLanguage;->PLACEHOLDER:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/xyron/game/launcher/util/AngraLanguage;->templates:Ljava/util/List;

    new-instance v7, Lcom/xyron/game/launcher/util/AngraLanguage$Template;

    invoke-direct {v7, v3, v3}, Lcom/xyron/game/launcher/util/AngraLanguage$Template;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    sget-object v7, Lcom/xyron/game/launcher/util/AngraLanguage;->templates:Ljava/util/List;

    new-instance v8, Lcom/xyron/game/launcher/util/AngraLanguage$Template;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, v9}, Lcom/xyron/game/launcher/util/AngraLanguage$Template;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 67
    :cond_5
    sget-object v2, Lcom/xyron/game/launcher/util/AngraLanguage;->templates:Ljava/util/List;

    new-instance v3, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p0, :cond_7

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_0
    move-exception v2

    .line 59
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz p0, :cond_6

    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    :try_start_9
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 68
    :catch_0
    :try_start_a
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    sput-object p0, Lcom/xyron/game/launcher/util/AngraLanguage;->dictionary:Lorg/json/JSONObject;

    const-string p0, "AngraLanguage"

    const-string v1, "Local translation catalogue unavailable"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_7
    :goto_5
    sget-object p0, Lcom/xyron/game/launcher/util/AngraLanguage;->dictionary:Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    monitor-exit v0

    return-object p0

    :catchall_4
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static htmlBootstrap(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 137
    const-string p0, "<script src=\"file:///android_asset/interfaces/shared/language-bootstrap.js\"></script><script src=\"file:///android_asset/interfaces/shared/i18n.js\"></script>"

    return-object p0
.end method

.method public static index(Landroid/content/Context;)I
    .locals 1

    .line 54
    sget-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->CODES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->selected(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$attach$3([ZLjava/lang/ref/WeakReference;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    aput-boolean v0, p0, v0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-static {p2, p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->apply(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$attach$4(Ljava/lang/ref/WeakReference;[ZLandroid/content/Context;)V
    .locals 3

    .line 102
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 103
    aget-boolean v2, p1, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 104
    aput-boolean v2, p1, v1

    .line 105
    new-instance v1, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p0, p2}, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda4;-><init>([ZLjava/lang/ref/WeakReference;Landroid/content/Context;)V

    const-wide/16 p0, 0x50

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$dictionary$2(Lcom/xyron/game/launcher/util/AngraLanguage$Template;Lcom/xyron/game/launcher/util/AngraLanguage$Template;)I
    .locals 0

    .line 67
    iget p1, p1, Lcom/xyron/game/launcher/util/AngraLanguage$Template;->literalLength:I

    iget p0, p0, Lcom/xyron/game/launcher/util/AngraLanguage$Template;->literalLength:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$load$0(Ljava/lang/String;)V
    .locals 1

    .line 51
    const-string v0, "AngraLocale"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$load$1(Landroid/webkit/WebView;)V
    .locals 2

    .line 51
    new-instance v0, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/xyron/game/launcher/util/AngraLanguage$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "JSON.stringify({language:window.AngraI18n&&AngraI18n.language,catalogue:window.__angraTranslations?Object.keys(__angraTranslations).length:0})"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static load(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static norm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 56
    sget-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->SPACES:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/xyron/game/launcher/util/AngraLanguage;->MARKS:Ljava/util/regex/Pattern;

    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static select(Landroid/content/Context;I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 55
    sget-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->CODES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    const-string v1, "angra_language"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "language"

    aget-object p1, v0, p1

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static selected(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 53
    const-string v0, "angra_language"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "language"

    const-string v1, "pt"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/xyron/game/launcher/util/AngraLanguage;->CODES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-eqz p1, :cond_f

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->selected(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    sget-object v2, Lcom/xyron/game/launcher/util/AngraLanguage;->translatedCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    return-object v2

    .line 75
    :cond_1
    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraLanguage;->dictionary(Landroid/content/Context;)Lorg/json/JSONObject;

    sget-object v2, Lcom/xyron/game/launcher/util/AngraLanguage;->canonical:Ljava/util/Map;

    invoke-static {p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1000

    if-ge v4, v5, :cond_3

    sget-object v4, Lcom/xyron/game/launcher/util/AngraLanguage;->templates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xyron/game/launcher/util/AngraLanguage$Template;

    .line 77
    iget-object v6, v5, Lcom/xyron/game/launcher/util/AngraLanguage$Template;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 78
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v2, v5, Lcom/xyron/game/launcher/util/AngraLanguage$Template;->key:Ljava/lang/String;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v5, Lcom/xyron/game/launcher/util/AngraLanguage$Template;->slots:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, v5, Lcom/xyron/game/launcher/util/AngraLanguage$Template;->slots:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :cond_4
    const/4 v5, 0x1

    if-nez v2, :cond_a

    .line 81
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 82
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/xyron/game/launcher/util/AngraLanguage;->canonical:Ljava/util/Map;

    invoke-static {v2}, Lcom/xyron/game/launcher/util/AngraLanguage;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v2}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/xyron/game/launcher/util/AngraLanguage;->translatedCache:Landroid/util/LruCache;

    invoke-virtual {p1, v1, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 83
    :cond_5
    const-string v0, "(?<=\\n)|(?<= \u00b7 )|(?<=[.!?\u2026]) (?=[\\p{L}])"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 84
    array-length v2, v0

    if-le v2, v5, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    array-length v2, v0

    if-ge v3, v2, :cond_8

    if-lez v3, :cond_6

    add-int/lit8 v2, v3, -0x1

    aget-object v4, v0, v2

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    aget-object v2, v0, v2

    const-string v4, " \u00b7 "

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {p0, v4}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/xyron/game/launcher/util/AngraLanguage;->translatedCache:Landroid/util/LruCache;

    invoke-virtual {p1, v1, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 85
    :cond_9
    sget-object p0, Lcom/xyron/game/launcher/util/AngraLanguage;->translatedCache:Landroid/util/LruCache;

    invoke-virtual {p0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 87
    :cond_a
    sget-object v3, Lcom/xyron/game/launcher/util/AngraLanguage;->CODES:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_b

    goto :goto_3

    :cond_b
    sget-object v6, Lcom/xyron/game/launcher/util/AngraLanguage;->dictionary:Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    sub-int/2addr v3, v5

    invoke-virtual {v6, v3, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    :goto_3
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :cond_c
    if-eqz v4, :cond_e

    .line 89
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "aguardando"

    const-string v5, "em atendimento"

    const-string v6, "online"

    const-string v7, "offline"

    filled-new-array {v6, v7, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Lcom/xyron/game/launcher/util/AngraLanguage;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {p0, v3}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 90
    :cond_e
    sget-object p0, Lcom/xyron/game/launcher/util/AngraLanguage;->translatedCache:Landroid/util/LruCache;

    invoke-virtual {p0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_f
    :goto_5
    return-object p1
.end method

.method private static text(Landroid/content/Context;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 7

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 112
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 113
    sget-object v1, Lcom/xyron/game/launcher/util/AngraLanguage;->originalHint:Ljava/util/WeakHashMap;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/xyron/game/launcher/util/AngraLanguage;->originalText:Ljava/util/WeakHashMap;

    .line 114
    :goto_1
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 115
    aget-object v6, v2, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    aput-object v0, v2, v5

    const-string v6, ""

    aput-object v6, v2, v4

    .line 116
    :cond_4
    aget-object v6, v2, v4

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    aget-object v6, v2, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    return-void

    .line 117
    :cond_5
    aget-object v3, v2, v3

    invoke-static {p0, v3}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    aput-object p3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    if-eqz p2, :cond_6

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static toast(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method
