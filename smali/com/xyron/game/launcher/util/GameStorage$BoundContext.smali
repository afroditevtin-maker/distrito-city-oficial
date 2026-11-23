.class final Lcom/xyron/game/launcher/util/GameStorage$BoundContext;
.super Landroid/content/ContextWrapper;
.source "GameStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/GameStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BoundContext"
.end annotation


# instance fields
.field final profile:Lcom/xyron/game/launcher/util/MapProfile;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/xyron/game/launcher/util/MapProfile;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xyron/game/launcher/util/GameStorage$BoundContext;->profile:Lcom/xyron/game/launcher/util/MapProfile;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method
