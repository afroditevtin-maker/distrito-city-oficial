.class public final synthetic Lcom/xyron/game/launcher/UpdateService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Validator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final valid(Ljava/io/File;)Z
    .locals 0

    .line 0
    invoke-static {p1}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasRequiredGameData(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
