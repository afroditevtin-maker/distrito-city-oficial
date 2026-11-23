.class public final Lcom/xyron/game/launcher/util/LocalHostManager;
.super Ljava/lang/Object;
.source "LocalHostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/launcher/util/LocalHostManager$HostState;
    }
.end annotation


# static fields
.field private static final BIN_DIR_NAME:Ljava/lang/String; = "bin"

.field private static final COMPONENTS_DIR_NAME:Ljava/lang/String; = "components"

.field private static final EDITOR_DIR_NAME:Ljava/lang/String; = "editor"

.field private static final EDITOR_INCLUDE_DIR_NAME:Ljava/lang/String; = "include"

.field private static final EDITOR_PROJECTS_DIR_NAME:Ljava/lang/String; = "projects"

.field private static final EDITOR_README_FILE_NAME:Ljava/lang/String; = "EDITOR-README.txt"

.field private static final GAMEMODES_DIR_NAME:Ljava/lang/String; = "gamemodes"

.field public static final LOCAL_HOST:Ljava/lang/String; = "127.0.0.1"

.field public static final LOCAL_PORT:I = 0x1e61

.field private static final LOGS_DIR_NAME:Ljava/lang/String; = "logs"

.field private static final OMP_CONFIG_FILE_NAME:Ljava/lang/String; = "config.json"

.field private static final PINGGY_SCRIPT_FILE_NAME:Ljava/lang/String; = "start-pinggy-udp.sh"

.field private static final PLACEHOLDER_FILE_NAME:Ljava/lang/String; = "blank.README.txt"

.field private static final PLUGINS_DIR_NAME:Ljava/lang/String; = "plugins"

.field private static final README_FILE_NAME:Ljava/lang/String; = "README.txt"

.field private static final REMOTE_ACCESS_FILE_NAME:Ljava/lang/String; = "REMOTE-ACCESS.txt"

.field private static final ROOT_DIR_NAME:Ljava/lang/String; = "LocalHost"

.field private static final SCRIPTFILES_DIR_NAME:Ljava/lang/String; = "scriptfiles"

.field private static final SERVER_CFG_FILE_NAME:Ljava/lang/String; = "server.cfg"

.field private static final SERVER_DIR_NAME:Ljava/lang/String; = "server"

.field private static final SHARED_ROOT_DIR_NAME:Ljava/lang/String; = "XyronHost"

.field private static final START_SCRIPT_FILE_NAME:Ljava/lang/String; = "start-host.sh"

.field private static final TERMUX_README_FILE_NAME:Ljava/lang/String; = "TERMUX-SETUP.txt"

.field private static resolvedSharedRootDir:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activateGamemode(Ljava/lang/String;)Z
    .locals 3

    .line 323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 327
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 328
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".amx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 331
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 335
    :cond_2
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->updateServerCfgGamemode(Ljava/lang/String;)Z

    move-result v0

    .line 336
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->updateOmpConfigGamemode(Ljava/lang/String;)Z

    move-result p0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static addLoopbackServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;
    .locals 4

    const/16 v0, 0x1e61

    const/4 v1, 0x0

    .line 133
    const-string v2, "Servidor local"

    const-string v3, "127.0.0.1"

    invoke-static {p0, v2, v3, v0, v1}, Lcom/xyron/game/launcher/util/ServerConfigManager;->addOrUpdateServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object p0

    return-object p0
.end method

.method private static appendDirectorySummary(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    .line 788
    invoke-static {p2}, Lcom/xyron/game/launcher/util/LocalHostManager;->listVisibleFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object p2

    .line 789
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 791
    const-string p1, "- vazio\n\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 795
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x6

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    .line 796
    :goto_0
    const-string v1, "\n"

    if-ge v0, p1, :cond_2

    .line 797
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 798
    const-string v3, "- "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 800
    const-string v3, "  |  "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xyron/game/launcher/util/LocalHostManager;->formatSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 804
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 805
    const-string v0, "- +"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " arquivo(s)\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static appendSingleFileSummary(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 778
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 779
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/LocalHostManager;->formatSize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  |  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 780
    :cond_1
    :goto_0
    const-string p1, "ausente\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static buildBinaryPlaceholder()Ljava/lang/String;
    .locals 1

    .line 543
    const-string v0, "Fallback para binarios soltos do servidor.\nO layout preferido agora e um bundle completo em server/.\n\nBundle aceito:\n- server/samp-server\n- server/samp03svr\n- server/components/*.so\n\nFallbacks aceitos em bin/:\n- samp03svr-arm\n- samp-server (Linux x86, exige box86)\n- samp03svr (Linux x86, exige box86)\n"

    return-object v0
.end method

.method private static buildComponentsPlaceholder()Ljava/lang/String;
    .locals 1

    .line 539
    const-string v0, "Coloque aqui os componentes .so do runtime local, por exemplo server/components/Pawn.so.\n"

    return-object v0
.end method

.method private static buildEditorReadme(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 576
    const-string p0, "/sdcard/Download/XyronHost"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 577
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Editor Pawn dentro do launcher.\n\nPasta de projetos:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/editor/projects\n\nIncludes oficiais:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/editor/include\n\nSe voce compilar um .pwn dentro de server/gamemodes, o launcher pode ativar o .amx gerado no host.\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildGamemodePlaceholder()Ljava/lang/String;
    .locals 1

    .line 531
    const-string v0, "Coloque aqui o seu gamemode real quando a integracao do host local tiver motor nativo.\n"

    return-object v0
.end method

.method public static buildJoinInfo()Ljava/lang/String;
    .locals 3

    .line 372
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getBestLanAddress()Ljava/lang/String;

    move-result-object v0

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Servidor local: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getLoopbackAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    const-string v0, "Rede local: conecte o celular na Wi-Fi ou hotspot para gerar um IP compartilhavel.\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 378
    :cond_0
    const-string v2, "Mesma Wi-Fi/hotspot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":7777\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :goto_0
    const-string v0, "Internet sem login fixo: use Abrir tunel remoto no Host. Em ARM64 o APK abre Pinggy UDP sem Termux.\nFallback: Termux/CLI ou roteador quando o motor interno nao estiver disponivel.\nInternet padrao: abra UDP 7777 no roteador e use seu IP publico."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildOmpConfig()Ljava/lang/String;
    .locals 1

    .line 606
    const-string/jumbo v0, "{\n  \"announce\": false,\n  \"enable_query\": true,\n  \"language\": \"pt-BR\",\n  \"max_players\": 32,\n  \"name\": \"DESTRITO Nobre Local Host\",\n  \"network\": {\n    \"bind\": \"\",\n    \"port\": 7777,\n    \"use_lan_mode\": false\n  },\n  \"password\": \"\",\n  \"pawn\": {\n    \"legacy_plugins\": [],\n    \"main_scripts\": [],\n    \"side_scripts\": []\n  },\n  \"rcon\": {\n    \"enable\": false,\n    \"password\": \"changeme-local\"\n  },\n  \"website\": \"localhost\"\n}\n"

    return-object v0
.end method

.method private static buildPinggyUdpScript()Ljava/lang/String;
    .locals 1

    .line 705
    const-string v0, "#!/data/data/com.termux/files/usr/bin/bash\nset -u\nPORT=\"7777\"\nif ! command -v node >/dev/null 2>&1; then\n  echo \"Node.js nao encontrado. Rode: pkg update && pkg install nodejs-lts\"\n  exit 1\nfi\nif ! command -v npm >/dev/null 2>&1; then\n  echo \"npm nao encontrado. Rode: pkg install nodejs-lts\"\n  exit 1\nfi\nif ! command -v pinggy >/dev/null 2>&1; then\n  echo \"Pinggy CLI nao encontrado. Instalando via npm...\"\n  npm install -g pinggy || exit 1\nfi\necho \"Abrindo tunel UDP para localhost:$PORT\"\nexec pinggy --type udp -l \"$PORT\"\n"

    return-object v0
.end method

.method private static buildPluginPlaceholder()Ljava/lang/String;
    .locals 1

    .line 535
    const-string v0, "Coloque aqui os plugins/componentes do servidor quando essa fase avancar.\n"

    return-object v0
.end method

.method private static buildReadme(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 498
    const-string p0, "Android/data/.../files/LocalHost"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 499
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Host local experimental do launcher DESTRITO Nobre.\n\nO launcher prepara a base do servidor em:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nO loopback usado pelo app e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getLoopbackAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".\n\nA estrutura aceita runtime SA-MP compativel com Android em:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/server\ncom components em "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/server/components.\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildRemoteAccessGuide(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 670
    const-string p0, "/sdcard/Download/XyronHost"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 671
    :goto_0
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getBestLanAddress()Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    const-string v0, "(conecte o aparelho na Wi-Fi ou hotspot para gerar um IP local)"

    goto :goto_1

    .line 674
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":7777"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Como deixar outra pessoa entrar no host local\n\n1. Mesmo aparelho:\n   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getLoopbackAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n2. Mesma Wi-Fi ou hotspot:\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n   Quem estiver na mesma rede pode testar esse IP direto.\n\n3. Internet sem login fixo:\n   No launcher, abra Host > Abrir tunel remoto.\n   Em aparelho ARM64, o APK abre Pinggy UDP internamente sem Termux.\n   A porta publica muda a cada nova sessao na faixa gratis.\n   Fallback via Termux, se precisar:\n   pkg update\n   pkg install nodejs-lts\n   npm install -g pinggy\n   pinggy --type udp -l 7777\n   Script gerado pelo launcher:\n   "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedPinggyScriptPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n4. Internet pelo seu roteador:\n   Abra/encaminhe UDP 7777 para o IP local do aparelho e compartilhe o IP publico.\n\nPasta do host:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildServerCfg()Ljava/lang/String;
    .locals 1

    .line 512
    const-string v0, "echo Executing Server Config...\nlanmode 0\nrcon_password changeme-local\nmaxplayers 32\nport 7777\nhostname DESTRITO Nobre Local Host\ngamemode0 blank 1\nfilterscripts\nannounce 0\nquery 1\nweburl localhost\nonfoot_rate 40\nincar_rate 40\nweapon_rate 40\nstream_distance 200.0\nstream_rate 1000\n"

    return-object v0
.end method

.method public static buildServerFilesSnapshot()Ljava/lang/String;
    .locals 3

    .line 300
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedRootDir()Ljava/io/File;

    move-result-object v0

    .line 301
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedServerDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    const-string v2, "Pasta editavel:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, "server.cfg"

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedServerCfgFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xyron/game/launcher/util/LocalHostManager;->appendSingleFileSummary(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;)V

    .line 311
    const-string v1, "config.json"

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedOmpConfigFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xyron/game/launcher/util/LocalHostManager;->appendSingleFileSummary(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;)V

    .line 312
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v1, "gamemodes"

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedGamemodesDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xyron/game/launcher/util/LocalHostManager;->appendDirectorySummary(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;)V

    .line 315
    const-string v1, "scriptfiles"

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedScriptfilesDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xyron/game/launcher/util/LocalHostManager;->appendDirectorySummary(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;)V

    .line 316
    const-string v1, "plugins"

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedPluginsDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xyron/game/launcher/util/LocalHostManager;->appendDirectorySummary(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;)V

    .line 317
    const-string v1, "components extras"

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedComponentsDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xyron/game/launcher/util/LocalHostManager;->appendDirectorySummary(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;)V

    .line 318
    const-string v1, "bin"

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedBinDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xyron/game/launcher/util/LocalHostManager;->appendDirectorySummary(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;)V

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 303
    :cond_1
    :goto_0
    const-string v0, "A pasta compartilhada do host ainda nao esta disponivel."

    return-object v0
.end method

.method private static buildSharedReadme(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 558
    const-string p0, "/sdcard/Download/XyronHost"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 559
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pacote de host local para Termux.\n\nDiretorio exportado pelo launcher:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\nLoopback usado pelo launcher: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getLoopbackAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\nArquivos principais:\n- server/server.cfg\n- server/config.json\n- server/samp-server\n- server/components/\n- start-host.sh\n- bin/\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildTermuxSetup(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 589
    const-string p0, "/sdcard/Download/XyronHost"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 590
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setup via Termux\n\n1. Instale o Termux oficial.\n2. Em Termux, execute termux-setup-storage.\n3. Em ~/.termux/termux.properties, deixe allow-external-apps=true.\n4. Nas configuracoes do Android, conceda ao launcher a permissao extra\n   \"Run commands in Termux environment\".\n5. Coloque o bundle do servidor em:\n   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/server\n   com components em "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/server/components\n   ou use fallback em "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/bin\n6. O launcher pode pedir ao Termux para abrir:\n   "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedTermuxScriptPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildTermuxStartScript()Ljava/lang/String;
    .locals 2

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#!/data/data/com.termux/files/usr/bin/bash\nset -u\nHOST_ROOT=\"$HOME/storage/downloads/XyronHost\"\nSERVER_DIR=\"$HOST_ROOT/server\"\nBIN_DIR=\"$HOST_ROOT/bin\"\nLOG_DIR=\"$HOST_ROOT/logs\"\nmkdir -p \"$LOG_DIR\"\ncd \"$SERVER_DIR\" || exit 1\nchmod +x \"$SERVER_DIR\"/samp* \"$SERVER_DIR/components\"/*.so 2>/dev/null || true\nchmod +x \"$BIN_DIR\"/* 2>/dev/null || true\necho \"DESTRITO Nobre Host: iniciando ambiente local em "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getLoopbackAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\nif [ -x \"$SERVER_DIR/samp-server\" ]; then\n  exec \"$SERVER_DIR/samp-server\"\nfi\nif [ -x \"$BIN_DIR/samp-server\" ]; then\n  if command -v box86 >/dev/null 2>&1; then\n    exec box86 \"$BIN_DIR/samp-server\"\n  fi\n  echo \"Encontrado samp-server x86, mas box86 nao esta instalado no Termux.\"\n  exit 1\nfi\nif [ -x \"$BIN_DIR/samp03svr-arm\" ]; then\n  exec \"$BIN_DIR/samp03svr-arm\"\nfi\nif [ -x \"$BIN_DIR/samp03svr\" ]; then\n  if command -v box86 >/dev/null 2>&1; then\n    exec box86 \"$BIN_DIR/samp03svr\"\n  fi\n  echo \"Encontrado samp03svr x86, mas box86 nao esta instalado no Termux.\"\n  exit 1\nfi\necho \"Nenhum binario de servidor foi encontrado em $SERVER_DIR ou $BIN_DIR.\"\necho \"Coloque um binario compativel e tente de novo.\"\necho \"Aceitos: server/samp-server, bin/samp03svr-arm, bin/samp-server, bin/samp03svr\"\nexit 1\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ensureDir(Ljava/io/File;)Z
    .locals 1

    .line 465
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

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

.method private static formatSize(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v0, 0x100000

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x44800000    # 1024.0f

    cmp-long v5, p0, v0

    if-gez v5, :cond_1

    .line 846
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-float p0, p0

    div-float/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "%.1f KB"

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 848
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-float p0, p0

    div-float/2addr p0, v4

    div-float/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "%.1f MB"

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAppSharedRootDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    if-eqz p0, :cond_1

    .line 431
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "XyronHost"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBestLanAddress()Ljava/lang/String;
    .locals 5

    .line 342
    const-string v0, ""

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 347
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 348
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 354
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 356
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 360
    :cond_3
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    return-object v3

    :catch_0
    :cond_4
    return-object v0
.end method

.method public static getLoopbackAddress()Ljava/lang/String;
    .locals 1

    .line 277
    const-string v0, "127.0.0.1:7777"

    return-object v0
.end method

.method private static getPublicSharedRootDir()Ljava/io/File;
    .locals 3

    .line 423
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 427
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "XyronHost"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getRootDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    if-eqz p0, :cond_1

    .line 387
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "LocalHost"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getServerDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 394
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->getRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 395
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "server"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getSharedBinDirectory()Ljava/io/File;
    .locals 3

    .line 202
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedRootDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 203
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "bin"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getSharedComponentsDirectory()Ljava/io/File;
    .locals 3

    .line 232
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedServerDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "components"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getSharedEditorIncludeDirectory()Ljava/io/File;
    .locals 3

    .line 222
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedEditorRootDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 223
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "include"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getSharedEditorProjectsDirectory()Ljava/io/File;
    .locals 3

    .line 217
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedEditorRootDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 218
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "projects"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getSharedEditorRootDirectory()Ljava/io/File;
    .locals 3

    .line 212
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedRootDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 213
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "editor"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getSharedGamemodesDirectory()Ljava/io/File;
    .locals 3

    .line 242
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedServerDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 243
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "gamemodes"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getSharedLogsDirectory()Ljava/io/File;
    .locals 3

    .line 207
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedRootDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "logs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getSharedOmpConfigFile()Ljava/io/File;
    .locals 3

    .line 257
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedServerDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "config.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getSharedPinggyScriptPath()Ljava/lang/String;
    .locals 1

    .line 273
    const-string v0, "$HOME/storage/downloads/XyronHost/start-pinggy-udp.sh"

    return-object v0
.end method

.method public static getSharedPluginsDirectory()Ljava/io/File;
    .locals 3

    .line 247
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedServerDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 248
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "plugins"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getSharedRemoteAccessFile()Ljava/io/File;
    .locals 3

    .line 227
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedRootDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "REMOTE-ACCESS.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private static declared-synchronized getSharedRootDir()Ljava/io/File;
    .locals 2

    const-class v0, Lcom/xyron/game/launcher/util/LocalHostManager;

    monitor-enter v0

    .line 416
    :try_start_0
    sget-object v1, Lcom/xyron/game/launcher/util/LocalHostManager;->resolvedSharedRootDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 417
    monitor-exit v0

    return-object v1

    .line 419
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getPublicSharedRootDir()Ljava/io/File;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getSharedRootDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const-class v0, Lcom/xyron/game/launcher/util/LocalHostManager;

    monitor-enter v0

    .line 399
    :try_start_0
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getPublicSharedRootDir()Ljava/io/File;

    move-result-object v1

    .line 400
    invoke-static {v1}, Lcom/xyron/game/launcher/util/LocalHostManager;->isWritableSharedRoot(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    sput-object v1, Lcom/xyron/game/launcher/util/LocalHostManager;->resolvedSharedRootDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit v0

    return-object v1

    .line 405
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->getAppSharedRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 407
    sput-object p0, Lcom/xyron/game/launcher/util/LocalHostManager;->resolvedSharedRootDir:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    monitor-exit v0

    return-object p0

    .line 411
    :cond_1
    :try_start_2
    sput-object v1, Lcom/xyron/game/launcher/util/LocalHostManager;->resolvedSharedRootDir:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSharedRootDirectory()Ljava/io/File;
    .locals 1

    .line 193
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedRootDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedScriptfilesDirectory()Ljava/io/File;
    .locals 3

    .line 237
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedServerDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 238
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "scriptfiles"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getSharedServerCfgFile()Ljava/io/File;
    .locals 3

    .line 252
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedServerDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "server.cfg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getSharedServerDirectory()Ljava/io/File;
    .locals 3

    .line 197
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedRootDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "server"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getSharedTermuxScriptPath()Ljava/lang/String;
    .locals 1

    .line 268
    const-string v0, "$HOME/storage/downloads/XyronHost/start-host.sh"

    return-object v0
.end method

.method public static getSharedWorkspacePath()Ljava/lang/String;
    .locals 1

    .line 262
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedRootDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getState(Landroid/content/Context;)Lcom/xyron/game/launcher/util/LocalHostManager$HostState;
    .locals 14

    .line 58
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->getRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 59
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->getServerDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 60
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 61
    const-string v3, "server.cfg"

    const-string v4, "README.txt"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 65
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    const-string v7, "start-host.sh"

    invoke-direct {v4, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/io/File;

    const-string v8, "server"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz p0, :cond_6

    .line 75
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getAvailableServers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x1e61

    const-string v4, "127.0.0.1"

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    .line 77
    invoke-virtual {v2, v4, v3}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->matches(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 83
    :goto_3
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSelectedServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 84
    invoke-virtual {p0, v4, v3}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->matches(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    move v10, v1

    move v11, v5

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 87
    :goto_5
    new-instance p0, Lcom/xyron/game/launcher/util/LocalHostManager$HostState;

    if-nez v0, :cond_7

    .line 92
    const-string v0, ""

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v12, v0

    .line 93
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getLoopbackAddress()Ljava/lang/String;

    move-result-object v13

    const/4 v9, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/xyron/game/launcher/util/LocalHostManager$HostState;-><init>(ZZZZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static isPlaceholderFile(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 835
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 836
    const-string v1, "README.txt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "blank.README.txt"

    .line 837
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TERMUX-SETUP.txt"

    .line 838
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static isWritableSharedRoot(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 441
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 442
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 443
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 445
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 449
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v3, ".xyron-write-probe"

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    .line 454
    :cond_4
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 456
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 458
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p0, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    return v0

    :catchall_0
    move-exception v1

    .line 454
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_7
    :goto_1
    return v0
.end method

.method static synthetic lambda$listVisibleFiles$0(Ljava/io/File;Ljava/io/File;)I
    .locals 1

    .line 827
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static listVisibleFiles(Ljava/io/File;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 811
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_5

    .line 812
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 816
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 821
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    if-eqz v3, :cond_3

    .line 822
    invoke-static {v3}, Lcom/xyron/game/launcher/util/LocalHostManager;->isPlaceholderFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 825
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 827
    :cond_4
    new-instance p0, Lcom/xyron/game/launcher/util/LocalHostManager$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/xyron/game/launcher/util/LocalHostManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    :goto_2
    return-object v0
.end method

.method private static migrateGeneratedOmpConfig(Ljava/io/File;)V
    .locals 6

    .line 749
    const-string v0, "network"

    const-string v1, "name"

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->parseExistingConfig(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v2

    .line 755
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 756
    const-string v4, "Xyron Local Host"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "DESTRITO Nobre Local Host"

    if-nez v4, :cond_1

    :try_start_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 760
    :cond_1
    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 761
    const-string v1, "announce"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 762
    const-string v1, "enable_query"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 764
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    .line 766
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 767
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 770
    :cond_2
    const-string v0, "port"

    const/16 v4, 0x1e61

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 771
    const-string v0, "use_lan_mode"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeText(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private static migrateGeneratedServerCfg(Ljava/io/File;)V
    .locals 4

    if-eqz p0, :cond_3

    .line 725
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 734
    :cond_1
    const-string v1, "hostname Xyron Local Host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 735
    const-string v2, "hostname DESTRITO Nobre Local Host"

    .line 736
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lanmode 1"

    const-string v3, "lanmode 0"

    .line 737
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "announce 1"

    .line 738
    const-string v3, "announce 0"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 739
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nannounce 0\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 742
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 743
    invoke-static {p0, v1}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private static parseExistingConfig(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 1

    .line 949
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 950
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    .line 954
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 956
    :catch_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method public static prepareSharedWorkspace(Landroid/content/Context;)Z
    .locals 17

    .line 142
    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 147
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "server"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    new-instance v3, Ljava/io/File;

    const-string v4, "bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    new-instance v4, Ljava/io/File;

    const-string v5, "logs"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    new-instance v5, Ljava/io/File;

    const-string v6, "editor"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    new-instance v6, Ljava/io/File;

    const-string v7, "projects"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    new-instance v7, Ljava/io/File;

    const-string v8, "include"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    new-instance v8, Ljava/io/File;

    const-string v9, "components"

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    new-instance v9, Ljava/io/File;

    const-string v10, "scriptfiles"

    invoke-direct {v9, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    new-instance v10, Ljava/io/File;

    const-string v11, "gamemodes"

    invoke-direct {v10, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    new-instance v11, Ljava/io/File;

    const-string v12, "plugins"

    invoke-direct {v11, v2, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    invoke-static {v0}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 159
    invoke-static {v2}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 160
    invoke-static {v3}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 161
    invoke-static {v4}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 162
    invoke-static {v5}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    invoke-static {v6}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 164
    invoke-static {v7}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    invoke-static {v8}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    invoke-static {v9}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 167
    invoke-static {v10}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    invoke-static {v11}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 172
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->prepareWorkspace(Landroid/content/Context;)Z

    move-result v4

    .line 173
    new-instance v6, Ljava/io/File;

    const-string v7, "README.txt"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildSharedReadme(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    .line 174
    new-instance v7, Ljava/io/File;

    const-string v9, "TERMUX-SETUP.txt"

    invoke-direct {v7, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildTermuxSetup(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    .line 175
    new-instance v9, Ljava/io/File;

    const-string v12, "REMOTE-ACCESS.txt"

    invoke-direct {v9, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildRemoteAccessGuide(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    move-result v9

    .line 176
    new-instance v12, Ljava/io/File;

    const-string v13, "start-pinggy-udp.sh"

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildPinggyUdpScript()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    move-result v12

    .line 177
    new-instance v13, Ljava/io/File;

    const-string v14, "EDITOR-README.txt"

    invoke-direct {v13, v5, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildEditorReadme(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    .line 178
    new-instance v13, Ljava/io/File;

    const-string v14, "server.cfg"

    invoke-direct {v13, v2, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildServerCfg()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v13

    .line 179
    new-instance v15, Ljava/io/File;

    const-string v1, "config.json"

    invoke-direct {v15, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move/from16 p0, v13

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildOmpConfig()Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v13

    .line 180
    new-instance v15, Ljava/io/File;

    move/from16 v16, v13

    const-string v13, "start-host.sh"

    invoke-direct {v15, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildTermuxStartScript()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    .line 181
    new-instance v13, Ljava/io/File;

    const-string v15, "blank.README.txt"

    invoke-direct {v13, v8, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildComponentsPlaceholder()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v8

    .line 182
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v10, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildGamemodePlaceholder()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v10

    .line 183
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v11, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildPluginPlaceholder()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v11

    .line 184
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v3, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildBinaryPlaceholder()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    .line 185
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v2, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/xyron/game/launcher/util/LocalHostManager;->migrateGeneratedServerCfg(Ljava/io/File;)V

    .line 186
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/xyron/game/launcher/util/LocalHostManager;->migrateGeneratedOmpConfig(Ljava/io/File;)V

    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-eqz v9, :cond_2

    if-eqz v12, :cond_2

    if-eqz v5, :cond_2

    if-eqz p0, :cond_2

    if-eqz v16, :cond_2

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    if-eqz v10, :cond_2

    if-eqz v11, :cond_2

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static prepareWorkspace(Landroid/content/Context;)Z
    .locals 9

    .line 98
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->getRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 99
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->getServerDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 104
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "bin"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    new-instance v3, Ljava/io/File;

    const-string v4, "components"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    new-instance v4, Ljava/io/File;

    const-string v5, "scriptfiles"

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    new-instance v5, Ljava/io/File;

    const-string v6, "gamemodes"

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    new-instance v6, Ljava/io/File;

    const-string v7, "plugins"

    invoke-direct {v6, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    new-instance v7, Ljava/io/File;

    const-string v8, "logs"

    invoke-direct {v7, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-static {v0}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 112
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 113
    invoke-static {v2}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    invoke-static {v3}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    invoke-static {v4}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    invoke-static {v5}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    invoke-static {v6}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-static {v7}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v4, "README.txt"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildReadme(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    .line 123
    new-instance v2, Ljava/io/File;

    const-string v4, "server.cfg"

    invoke-direct {v2, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildServerCfg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    .line 124
    new-instance v7, Ljava/io/File;

    const-string v8, "blank.README.txt"

    invoke-direct {v7, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildComponentsPlaceholder()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    .line 125
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildGamemodePlaceholder()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    .line 126
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->buildPluginPlaceholder()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    .line 127
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/xyron/game/launcher/util/LocalHostManager;->migrateGeneratedServerCfg(Ljava/io/File;)V

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private static readLines(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 961
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 962
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 966
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 970
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 972
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 966
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 973
    :catch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    :goto_2
    return-object v0
.end method

.method private static readText(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 980
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->readLines(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    .line 981
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const/16 v2, 0xa

    .line 983
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 985
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 987
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removePlaceholderFiles(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 281
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 291
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v3, p0, v0

    if-eqz v3, :cond_2

    .line 292
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/xyron/game/launcher/util/LocalHostManager;->isPlaceholderFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method public static selectLoopbackServer(Landroid/content/Context;)Z
    .locals 2

    .line 137
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->addLoopbackServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->saveSelectedServer(Landroid/content/Context;Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static updateOmpConfigGamemode(Ljava/lang/String;)Z
    .locals 9

    .line 904
    const-string v0, "legacy_plugins"

    const-string v1, "side_scripts"

    const-string v2, "pawn"

    const-string v3, "network"

    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedOmpConfigFile()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 910
    :cond_0
    :try_start_0
    invoke-static {v4}, Lcom/xyron/game/launcher/util/LocalHostManager;->parseExistingConfig(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v6

    .line 911
    const-string v7, "announce"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 912
    const-string v7, "enable_query"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 913
    const-string v7, "max_players"

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 914
    const-string v7, "name"

    const-string v8, "DESTRITO Nobre Local Host"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 916
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_1

    .line 918
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 919
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 921
    :cond_1
    const-string v3, "bind"

    const-string v8, ""

    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 922
    const-string v3, "port"

    const/16 v8, 0x1e61

    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 923
    const-string v3, "use_lan_mode"

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 925
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    .line 927
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 928
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 931
    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 932
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 933
    const-string p0, "main_scripts"

    invoke-virtual {v3, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 935
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 936
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 938
    :cond_3
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 939
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 942
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v5
.end method

.method private static updateServerCfgGamemode(Ljava/lang/String;)Z
    .locals 15

    .line 852
    invoke-static {}, Lcom/xyron/game/launcher/util/LocalHostManager;->getSharedServerCfgFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 857
    :cond_0
    invoke-static {v0}, Lcom/xyron/game/launcher/util/LocalHostManager;->readLines(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v2

    .line 858
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 859
    const-string v3, "echo Executing Server Config..."

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 866
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-string v8, "query 1"

    const-string v9, "lanmode 0"

    const-string v10, "announce 0"

    const-string v11, ""

    const-string v12, " 1"

    const-string v13, "gamemode0 "

    if-ge v1, v7, :cond_7

    .line 867
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_2

    goto :goto_1

    .line 868
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 869
    :goto_1
    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v14, 0x1

    if-eqz v7, :cond_3

    .line 870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_2

    .line 872
    :cond_3
    const-string v7, "announce "

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 873
    invoke-virtual {v2, v1, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_2

    .line 875
    :cond_4
    const-string v7, "lanmode "

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 876
    invoke-virtual {v2, v1, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_2

    .line 878
    :cond_5
    const-string v7, "query "

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 879
    invoke-virtual {v2, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    if-nez v3, :cond_8

    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez v4, :cond_9

    .line 887
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-nez v5, :cond_a

    .line 890
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    if-nez v6, :cond_b

    .line 893
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 897
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_c

    move-object v2, v11

    .line 898
    :cond_c
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 900
    :cond_d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static writeText(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 479
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 483
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 484
    invoke-static {v1}, Lcom/xyron/game/launcher/util/LocalHostManager;->ensureDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 488
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string p0, "UTF-8"

    invoke-direct {v1, v2, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 488
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return v0
.end method

.method private static writeTextIfMissing(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 472
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 475
    :cond_1
    invoke-static {p0, p1}, Lcom/xyron/game/launcher/util/LocalHostManager;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
