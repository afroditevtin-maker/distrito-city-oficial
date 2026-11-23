.class public final Lcom/xyron/game/launcher/util/PickupStudioManager;
.super Ljava/lang/Object;
.source "PickupStudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;,
        Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;,
        Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;,
        Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;
    }
.end annotation


# static fields
.field private static final DATA_FILE_NAME:Ljava/lang/String; = "xyron_pickups.json"

.field private static final EXPORT_FILE_NAME:Ljava/lang/String; = "xyron_pickups_export.inc"

.field private static final README_FILE_NAME:Ljava/lang/String; = "README.txt"

.field private static final STUDIO_DIR_NAME:Ljava/lang/String; = "pickup-studio"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildExportFileContent(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "// Xyron Pickup Studio\n// Gerado automaticamente pelo launcher.\n// Arquivo base: server/scriptfiles/pickup-studio/xyron_pickups.json\n\nstock Xyron_LoadStudioPickups()\n{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 258
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    .line 266
    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-static {v1}, Lcom/xyron/game/launcher/util/PickupStudioManager;->buildSnippet(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 270
    :cond_1
    const-string p0, "    return 1;\n}\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 259
    :cond_2
    :goto_1
    const-string p0, "    // Nenhum pickup salvo ainda.\n    return 1;\n}\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildExportTargetLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 208
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->getExportFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    .line 209
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static buildReadme()Ljava/lang/String;
    .locals 1

    .line 276
    const-string v0, "Xyron Pickup Studio\n\n- xyron_pickups.json guarda os pickups criados dentro do jogo.\n- xyron_pickups_export.inc e regenerado automaticamente.\n- Edite a lista pelo comando /criarpickup dentro do APK.\n"

    return-object v0
.end method

.method public static buildSnippet(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    .line 189
    const-string p0, ""

    return-object p0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->sanitized()Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    move-result-object p0

    .line 192
    iget-object v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Pickup"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    invoke-static {v0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->sanitizePawnIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CreatePickup("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->modelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->pickupType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->x:F

    .line 197
    invoke-static {v4}, Lcom/xyron/game/launcher/util/PickupStudioManager;->formatFloat(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->y:F

    .line 198
    invoke-static {v4}, Lcom/xyron/game/launcher/util/PickupStudioManager;->formatFloat(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->z:F

    .line 199
    invoke-static {v4}, Lcom/xyron/game/launcher/util/PickupStudioManager;->formatFloat(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->worldId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "); // "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | interior "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->interiorId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " | valor "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->amount:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " | id "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized deletePickup(Landroid/content/Context;Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;
    .locals 5

    const-class v0, Lcom/xyron/game/launcher/util/PickupStudioManager;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 135
    :try_start_0
    const-string p0, "Contexto indisponivel."

    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;->error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 137
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const-string p0, "Pickup invalido."

    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;->error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 141
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->loadPickups(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 143
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_4

    .line 144
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    if-eqz v4, :cond_3

    .line 145
    iget-object v4, v4, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 146
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 154
    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/PickupStudioManager;->writePickupList(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 155
    const-string p0, "Nao foi possivel remover este pickup."

    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;->error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 157
    :cond_2
    :try_start_3
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->exportAll(Landroid/content/Context;)Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    move-result-object p0

    .line 158
    new-instance p1, Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;

    const-string v1, "Pickup removido."

    invoke-direct {p1, v3, v1, p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;-><init>(ZLjava/lang/String;Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 152
    :cond_4
    :try_start_4
    const-string p0, "Pickup nao encontrado."

    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;->error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized exportAll(Landroid/content/Context;)Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;
    .locals 5

    const-class v0, Lcom/xyron/game/launcher/util/PickupStudioManager;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 163
    :try_start_0
    const-string p0, "Contexto indisponivel."

    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;->error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 165
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->prepareSharedWorkspace(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    const-string p0, "Nao foi possivel preparar o host para exportar."

    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;->error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 169
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->loadPickups(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 170
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->getExportFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    .line 172
    const-string p0, "Arquivo de exportacao indisponivel."

    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;->error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 174
    :cond_2
    :try_start_3
    invoke-static {v1}, Lcom/xyron/game/launcher/util/PickupStudioManager;->buildExportFileContent(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/xyron/game/launcher/util/PickupStudioManager;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 175
    const-string p0, "Nao foi possivel gerar o arquivo de exportacao."

    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;->error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    .line 177
    :cond_3
    :try_start_4
    new-instance v2, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    .line 179
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 180
    const-string v3, "Arquivo de exportacao atualizado sem pickups salvos."

    goto :goto_0

    .line 181
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pickup(s) exportado(s)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3, p0, v1}, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;-><init>(ZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static formatFloat(F)Ljava/lang/String;
    .locals 3

    .line 298
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%.4f"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDataFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 221
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->getStudioDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 222
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "xyron_pickups.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getExportFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 226
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedScriptfilesDirectory()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 227
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "xyron_pickups_export.inc"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getStudioDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 213
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedScriptfilesDirectory()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 217
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "pickup-studio"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized loadPickups(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xyron/game/launcher/util/PickupStudioManager;

    monitor-enter v0

    .line 57
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->getDataFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 66
    monitor-exit v0

    return-object v1

    .line 68
    :cond_1
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 69
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p0, v3, :cond_3

    .line 70
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 71
    invoke-static {v3}, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->fromJson(Lorg/json/JSONObject;)Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 73
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 77
    :catch_0
    :try_start_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :cond_3
    monitor-exit v0

    return-object v1

    .line 60
    :cond_4
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized prepareWorkspace(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Lcom/xyron/game/launcher/util/PickupStudioManager;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 32
    monitor-exit v0

    return v1

    .line 34
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->prepareSharedWorkspace(Landroid/content/Context;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 35
    monitor-exit v0

    return v1

    .line 38
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->getStudioDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 39
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->getDataFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 40
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->getExportFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-nez v4, :cond_2

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    .line 45
    monitor-exit v0

    return v1

    .line 48
    :cond_3
    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v4, "README.txt"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/xyron/game/launcher/util/PickupStudioManager;->buildReadme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xyron/game/launcher/util/PickupStudioManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 50
    const-string v1, "[]\n"

    invoke-static {v3, v1}, Lcom/xyron/game/launcher/util/PickupStudioManager;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    .line 52
    :cond_4
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->exportAll(Landroid/content/Context;)Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 42
    :cond_5
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static readText(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 p0, 0x1

    .line 308
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez p0, :cond_0

    const/16 p0, 0xa

    .line 310
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 303
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private static sanitizePawnIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 284
    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    .line 285
    :goto_0
    const-string v1, "[^\\p{ASCII}]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 286
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[^a-z0-9]+"

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 287
    const-string v1, "^_+"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "_+$"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    const-string p0, "pickup"

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pickup_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static declared-synchronized savePickup(Landroid/content/Context;Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;
    .locals 10

    const-string v0, "pickup_"

    const-class v1, Lcom/xyron/game/launcher/util/PickupStudioManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 84
    :try_start_0
    const-string p0, "Contexto indisponivel."

    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    if-nez p1, :cond_1

    .line 87
    :try_start_1
    const-string p0, "Pickup invalido."

    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p0

    .line 89
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->prepareWorkspace(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    const-string p0, "Nao foi possivel preparar a workspace do host."

    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object p0

    .line 93
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->sanitized()Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    move-result-object p1

    .line 94
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->loadPickups(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 98
    iget-object v5, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    .line 100
    iput-wide v3, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->createdAt:J

    goto :goto_0

    .line 101
    :cond_3
    iget-wide v8, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->createdAt:J

    cmp-long v0, v8, v6

    if-gtz v0, :cond_4

    .line 102
    iput-wide v3, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->createdAt:J

    .line 104
    :cond_4
    :goto_0
    iput-wide v3, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->updatedAt:J

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 106
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_7

    .line 107
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    if-eqz v4, :cond_6

    .line 108
    iget-object v8, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    iget-object v9, v4, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 109
    iget-wide v8, v4, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->createdAt:J

    cmp-long v0, v8, v6

    if-lez v0, :cond_5

    iget-wide v6, v4, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->createdAt:J

    goto :goto_2

    :cond_5
    iget-wide v6, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->createdAt:J

    :goto_2
    iput-wide v6, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->createdAt:J

    .line 110
    invoke-interface {v2, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    if-nez v0, :cond_8

    .line 117
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_8
    invoke-static {p0, v2}, Lcom/xyron/game/launcher/util/PickupStudioManager;->writePickupList(Landroid/content/Context;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 121
    const-string p0, "Nao foi possivel salvar este pickup."

    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->error(Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object p0

    .line 124
    :cond_9
    :try_start_4
    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->exportAll(Landroid/content/Context;)Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    move-result-object p0

    .line 125
    new-instance v2, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;

    if-eqz v0, :cond_a

    .line 127
    const-string v0, "Pickup atualizado."

    goto :goto_4

    :cond_a
    const-string v0, "Pickup criado."

    :goto_4
    invoke-direct {v2, v5, v0, p1, p0}, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;-><init>(ZLjava/lang/String;Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 125
    monitor-exit v1

    return-object v2

    :goto_5
    monitor-exit v1

    throw p0
.end method

.method private static writePickupList(Landroid/content/Context;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;",
            ">;)Z"
        }
    .end annotation

    .line 231
    const-string v0, "\n"

    invoke-static {p0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->getDataFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 236
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_2

    .line 238
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    if-eqz v2, :cond_1

    .line 240
    invoke-virtual {v2}, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 245
    :cond_2
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/PickupStudioManager;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 247
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/PickupStudioManager;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static writeText(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 321
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 325
    :cond_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    .line 329
    :try_start_1
    const-string p1, ""

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    .line 325
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return v0
.end method

.method private static writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 339
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/PickupStudioManager;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method
