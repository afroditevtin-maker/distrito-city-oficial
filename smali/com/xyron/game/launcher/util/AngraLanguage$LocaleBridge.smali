.class public final Lcom/xyron/game/launcher/util/AngraLanguage$LocaleBridge;
.super Ljava/lang/Object;
.source "AngraLanguage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/AngraLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocaleBridge"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/launcher/util/AngraLanguage$LocaleBridge;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public catalogue()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/xyron/game/launcher/util/AngraLanguage$LocaleBridge;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->access$100(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public language()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xyron/game/launcher/util/AngraLanguage$LocaleBridge;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->selected(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
