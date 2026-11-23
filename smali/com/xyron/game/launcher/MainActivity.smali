.class public Lcom/xyron/game/launcher/MainActivity;
.super Lcom/xyron/game/launcher/SampActivity;
.source "MainActivity.java"


# static fields
.field private static final REQUEST_SERVER:I = 0x9c5

.field private static final SUPPORT_URL:Ljava/lang/String; = "about:blank"

.field public static final TAB_CREDITS:I = 0x8

.field public static final TAB_EDITOR:I = 0x4

.field public static final TAB_HOME:I = 0x0

.field public static final TAB_HOST:I = 0x2

.field public static final TAB_HOST_FILES:I = 0x3

.field public static final TAB_SERVERS:I = 0x1

.field public static final TAB_SETTINGS:I = 0x7

.field public static final TAB_STORE:I = 0x6

.field public static final TAB_WORKBENCH:I = 0x5


# instance fields
.field private appAccessApproved:Z

.field private appAccessBusy:Z

.field private final checkedMaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private checkingMap:Z

.field private nicknameDialog:Landroidx/appcompat/app/AlertDialog;

.field private nicknameDialogClosedAt:J

.field private online:I

.field private serverNameView:Landroid/widget/TextView;

.field private userNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/xyron/game/launcher/SampActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/launcher/MainActivity;->checkedMaps:Ljava/util/Set;

    return-void
.end method

.method private bind(ILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 389
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 396
    invoke-virtual {p0}, Lcom/xyron/game/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private isValidNickname(Ljava/lang/String;)Z
    .locals 5

    .line 360
    const-string v0, "Nick_Name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_5

    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_5

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x5f

    .line 364
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_5

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 368
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 369
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v0, :cond_3

    .line 370
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v4

    :cond_5
    :goto_1
    return v1
.end method

.method private openSocialLink(Ljava/lang/String;)V
    .locals 2

    .line 382
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 384
    :catchall_0
    const-string p1, "Nao foi possivel abrir o link."

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private openSupportLink()V
    .locals 1

    .line 378
    const-string v0, "about:blank"

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/MainActivity;->openSocialLink(Ljava/lang/String;)V

    return-void
.end method

.method private readNickname()Ljava/lang/String;
    .locals 7

    .line 336
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSelectedServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v0

    iget-object v0, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->id:Ljava/lang/String;

    .line 337
    const-string v1, "angra_server_nicknames"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/xyron/game/launcher/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 338
    const-string v3, "legacy_imported"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, ""

    if-nez v2, :cond_2

    .line 341
    :try_start_0
    invoke-direct {p0}, Lcom/xyron/game/launcher/MainActivity;->settingsFile()Ljava/io/File;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lorg/ini4j/Wini;

    invoke-direct {v5, v2}, Lorg/ini4j/Wini;-><init>(Ljava/io/File;)V

    const-string v2, "client"

    const-string v6, "name"

    invoke-virtual {v5, v2, v6}, Lorg/ini4j/Wini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    move-object v2, v4

    .line 344
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 345
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v2}, Lcom/xyron/game/launcher/MainActivity;->isValidNickname(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 346
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    :cond_2
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private refreshLabels()V
    .locals 3

    const v0, 0x7f0a0088

    .line 249
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 250
    iget-boolean v1, p0, Lcom/xyron/game/launcher/MainActivity;->checkingMap:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ee66666    # 0.45f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/xyron/game/launcher/MainActivity;->userNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 252
    invoke-direct {p0}, Lcom/xyron/game/launcher/MainActivity;->readNickname()Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/xyron/game/launcher/MainActivity;->userNameView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/MainActivity;->isValidNickname(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/xyron/game/launcher/MainActivity;->serverNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 257
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSelectedServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 258
    invoke-virtual {v0}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->name:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v0, "SERVIDOR"

    .line 259
    :goto_2
    iget-object v1, p0, Lcom/xyron/game/launcher/MainActivity;->serverNameView:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private saveNickname(Ljava/lang/String;)Z
    .locals 3

    .line 330
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSelectedServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v0

    iget-object v0, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->id:Ljava/lang/String;

    .line 331
    const-string v1, "angra_server_nicknames"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/xyron/game/launcher/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 332
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method private settingsFile()Ljava/io/File;
    .locals 3

    .line 352
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameStorage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/xyron/game/launcher/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 356
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "SAMP/settings.ini"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private showBanFromIntent(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    const-string v0, "angra_ban"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x1000

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/xyron/game/launcher/util/AngraBanNotice;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    new-instance v0, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    invoke-direct {v0, p0}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string v1, "Acesso bloqueado"

    invoke-virtual {v0, v1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    const-string v0, "Entendi"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    const-string p1, "Acesso bloqueado por banimento."

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showNickDialog()V
    .locals 6

    .line 265
    iget-object v0, p0, Lcom/xyron/game/launcher/MainActivity;->nicknameDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xyron/game/launcher/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xyron/game/launcher/MainActivity;->nicknameDialogClosedAt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto/16 :goto_0

    .line 267
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x16

    .line 269
    invoke-direct {p0, v2}, Lcom/xyron/game/launcher/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/xyron/game/launcher/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/xyron/game/launcher/MainActivity;->dp(I)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 271
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 272
    const-string v3, "Use o formato Nome_Sobrenome"

    invoke-static {p0, v3}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 273
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 274
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 280
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 281
    const-string v1, ""

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 282
    invoke-direct {p0}, Lcom/xyron/game/launcher/MainActivity;->readNickname()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 284
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 287
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x36

    .line 288
    invoke-direct {p0, v3}, Lcom/xyron/game/launcher/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    .line 289
    invoke-direct {p0, v3}, Lcom/xyron/game/launcher/MainActivity;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 290
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    new-instance v1, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    invoke-direct {v1, p0}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string v3, "NOME DO PERSONAGEM"

    .line 293
    invoke-virtual {v1, v3}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;

    move-result-object v1

    .line 294
    invoke-virtual {v1, v0}, Lcom/xyron/game/launcher/util/LocalizedDialogBuilder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "CANCELAR"

    const/4 v3, 0x0

    .line 295
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SALVAR"

    .line 296
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 298
    iput-object v0, p0, Lcom/xyron/game/launcher/MainActivity;->nicknameDialog:Landroidx/appcompat/app/AlertDialog;

    .line 299
    new-instance v1, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, v2}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/launcher/MainActivity;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 317
    new-instance v1, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v2}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/launcher/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 325
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 326
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getOnline()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/xyron/game/launcher/MainActivity;->online:I

    return v0
.end method

.method public isTabAllowed(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method synthetic lambda$onCreate$0$com-xyron-game-launcher-MainActivity(Landroid/view/View;)V
    .locals 1

    .line 67
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xyron/game/launcher/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-xyron-game-launcher-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/xyron/game/launcher/MainActivity;->startGta()V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-xyron-game-launcher-MainActivity(Landroid/view/View;)V
    .locals 1

    .line 70
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xyron/game/launcher/ServerSelectActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x9c5

    invoke-virtual {p0, p1, v0}, Lcom/xyron/game/launcher/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$onCreate$3$com-xyron-game-launcher-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/xyron/game/launcher/MainActivity;->showNickDialog()V

    return-void
.end method

.method synthetic lambda$onCreate$4$com-xyron-game-launcher-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 73
    const-string p1, "about:blank"

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/MainActivity;->openSocialLink(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$5$com-xyron-game-launcher-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 74
    const-string p1, "about:blank"

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/MainActivity;->openSocialLink(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$6$com-xyron-game-launcher-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 75
    const-string p1, "about:blank"

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/MainActivity;->openSocialLink(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$7$com-xyron-game-launcher-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 76
    const-string p1, "about:blank"

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/MainActivity;->openSocialLink(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$showNickDialog$12$com-xyron-game-launcher-MainActivity(Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 2

    .line 301
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 302
    invoke-direct {p0, p3}, Lcom/xyron/game/launcher/MainActivity;->isValidNickname(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    const-string p2, "Use Nome_Sobrenome, sem espacos"

    invoke-static {p0, p2}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 306
    :cond_0
    invoke-direct {p0, p3}, Lcom/xyron/game/launcher/MainActivity;->saveNickname(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 307
    invoke-direct {p0}, Lcom/xyron/game/launcher/MainActivity;->refreshLabels()V

    .line 308
    const-string p3, "input_method"

    invoke-virtual {p0, p3}, Lcom/xyron/game/launcher/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 309
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 310
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 311
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 312
    const-string p1, "Nome salvo."

    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 314
    :cond_2
    const-string p1, "Nao foi possivel salvar o nome."

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$showNickDialog$13$com-xyron-game-launcher-MainActivity(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 1

    .line 0
    const/4 p3, -0x1

    .line 299
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p3

    new-instance v0, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/launcher/MainActivity;Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;)V

    .line 300
    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$showNickDialog$14$com-xyron-game-launcher-MainActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    const/4 p2, 0x0

    .line 318
    iput-object p2, p0, Lcom/xyron/game/launcher/MainActivity;->nicknameDialog:Landroidx/appcompat/app/AlertDialog;

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xyron/game/launcher/MainActivity;->nicknameDialogClosedAt:J

    .line 320
    const-string p2, "input_method"

    invoke-virtual {p0, p2}, Lcom/xyron/game/launcher/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_0

    .line 322
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$startGta$10$com-xyron-game-launcher-MainActivity(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/xyron/game/security/DeviceAccess$Decision;)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/xyron/game/launcher/MainActivity;->appAccessBusy:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/MainActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/xyron/game/launcher/MainActivity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 169
    const-string p1, "Aplicativo desativado"

    invoke-static {p0, p1, p2, v1}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 172
    const-string p2, "OK"

    if-eqz p3, :cond_3

    new-instance p4, Landroid/app/AlertDialog$Builder;

    invoke-direct {p4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Verifica\u00e7\u00e3o de acesso"

    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 173
    :cond_3
    iget-boolean p3, p4, Lcom/xyron/game/security/DeviceAccess$Decision;->blocked:Z

    if-eqz p3, :cond_4

    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Acesso ao aplicativo bloqueado"

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Este aparelho est\u00e1 bloqueado para acessar o DESTRITO NOBRE.\n\nMotivo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p4, Lcom/xyron/game/security/DeviceAccess$Decision;->reason:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n\nConsulte o Discord para solicitar uma revis\u00e3o."

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 174
    :cond_4
    iput-boolean v1, p0, Lcom/xyron/game/launcher/MainActivity;->appAccessApproved:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/MainActivity;->startGta()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/xyron/game/launcher/MainActivity;->appAccessApproved:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/xyron/game/launcher/MainActivity;->appAccessApproved:Z

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method synthetic lambda$startGta$11$com-xyron-game-launcher-MainActivity(Landroid/view/View;)V
    .locals 7

    .line 160
    :try_start_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/RemoteConfiguration;->fetchLauncher(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/RemoteConfiguration;->cachedLauncher(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    invoke-static {v0}, Lcom/xyron/game/launcher/util/RemoteConfiguration;->disabledMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_0

    .line 163
    :try_start_1
    invoke-static {p0}, Lcom/xyron/game/security/DeviceAccess;->check(Landroid/content/Context;)Lcom/xyron/game/security/DeviceAccess$Decision;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 164
    :catch_1
    const-string v1, "N\u00e3o foi poss\u00edvel verificar o acesso ao aplicativo. Confira sua conex\u00e3o e tente novamente."

    move-object v6, v0

    move-object v5, v1

    goto :goto_2

    :cond_0
    move-object v1, v0

    :goto_1
    move-object v5, v0

    move-object v6, v1

    .line 166
    :goto_2
    new-instance v0, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/launcher/MainActivity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/xyron/game/security/DeviceAccess$Decision;)V

    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$startGta$8$com-xyron-game-launcher-MainActivity(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/xyron/game/launcher/MainActivity;->checkingMap:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/launcher/MainActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/xyron/game/launcher/MainActivity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/xyron/game/launcher/MainActivity;->checkedMaps:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/xyron/game/launcher/MainActivity;->startGta()V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$startGta$9$com-xyron-game-launcher-MainActivity(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 142
    :try_start_0
    invoke-static {p1}, Lcom/xyron/game/launcher/util/AngraDataManifest;->fetch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0, p2}, Lcom/xyron/game/launcher/util/AngraDataManifest;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    .line 144
    invoke-static {p1}, Lcom/xyron/game/launcher/util/GameStorage;->manifestPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "last_valid_manifest"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    const-string v0, "AngraData"

    const-string v1, "Per-map manifest check unavailable; preserving installed data"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_0
    new-instance p1, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3, p2}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/launcher/MainActivity;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/xyron/game/launcher/SampActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x9c5

    if-ne p1, p2, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/xyron/game/launcher/MainActivity;->refreshLabels()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/xyron/game/launcher/SampActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 56
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/MainActivity;->setContentView(I)V

    .line 57
    invoke-static {p0}, Lcom/xyron/game/launcher/util/AngraNotifications;->prepare(Landroid/app/Activity;)V

    .line 59
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ConfigValidator;->validateConfigFiles(Landroid/content/Context;)V

    .line 60
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->ensureSelectedServer(Landroid/content/Context;)Z

    .line 61
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->beginLauncherSession(Landroid/content/Context;)V

    const p1, 0x7f0a01ae

    .line 63
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/launcher/MainActivity;->userNameView:Landroid/widget/TextView;

    const p1, 0x7f0a01a7

    .line 64
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/launcher/MainActivity;->serverNameView:Landroid/widget/TextView;

    .line 66
    new-instance p1, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/xyron/game/launcher/MainActivity;)V

    const v0, 0x7f0a0090

    invoke-direct {p0, v0, p1}, Lcom/xyron/game/launcher/MainActivity;->bind(ILandroid/view/View$OnClickListener;)V

    .line 68
    new-instance p1, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/xyron/game/launcher/MainActivity;)V

    const v0, 0x7f0a0088

    invoke-direct {p0, v0, p1}, Lcom/xyron/game/launcher/MainActivity;->bind(ILandroid/view/View$OnClickListener;)V

    .line 69
    new-instance p1, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/xyron/game/launcher/MainActivity;)V

    const v0, 0x7f0a01a6

    invoke-direct {p0, v0, p1}, Lcom/xyron/game/launcher/MainActivity;->bind(ILandroid/view/View$OnClickListener;)V

    .line 71
    new-instance p1, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/xyron/game/launcher/MainActivity;)V

    const v0, 0x7f0a01ad

    invoke-direct {p0, v0, p1}, Lcom/xyron/game/launcher/MainActivity;->bind(ILandroid/view/View$OnClickListener;)V

    .line 73
    new-instance p1, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/xyron/game/launcher/MainActivity;)V

    const v0, 0x7f0a01a9

    invoke-direct {p0, v0, p1}, Lcom/xyron/game/launcher/MainActivity;->bind(ILandroid/view/View$OnClickListener;)V

    .line 74
    new-instance p1, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/xyron/game/launcher/MainActivity;)V

    const v0, 0x7f0a01a8

    invoke-direct {p0, v0, p1}, Lcom/xyron/game/launcher/MainActivity;->bind(ILandroid/view/View$OnClickListener;)V

    .line 75
    new-instance p1, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda12;-><init>(Lcom/xyron/game/launcher/MainActivity;)V

    const v0, 0x7f0a01ab

    invoke-direct {p0, v0, p1}, Lcom/xyron/game/launcher/MainActivity;->bind(ILandroid/view/View$OnClickListener;)V

    .line 76
    new-instance p1, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda13;-><init>(Lcom/xyron/game/launcher/MainActivity;)V

    const v0, 0x7f0a01aa

    invoke-direct {p0, v0, p1}, Lcom/xyron/game/launcher/MainActivity;->bind(ILandroid/view/View$OnClickListener;)V

    .line 78
    invoke-direct {p0}, Lcom/xyron/game/launcher/MainActivity;->refreshLabels()V

    .line 79
    invoke-virtual {p0}, Lcom/xyron/game/launcher/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/MainActivity;->showBanFromIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/xyron/game/launcher/SampActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/xyron/game/launcher/MainActivity;->showBanFromIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 106
    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onResume()V

    const v0, 0x7f0a019b

    .line 107
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/xyron/game/launcher/util/AngraScene;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/xyron/game/launcher/util/AngraScene;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/StartupDiagnostics;->capturePreviousExit(Landroid/content/Context;)V

    .line 110
    invoke-static {p0}, Lcom/xyron/game/launcher/util/LauncherMedia;->beginLauncherSession(Landroid/content/Context;)V

    .line 111
    invoke-direct {p0}, Lcom/xyron/game/launcher/MainActivity;->refreshLabels()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 115
    invoke-super {p0}, Lcom/xyron/game/launcher/SampActivity;->onStop()V

    const v0, 0x7f0a019b

    .line 116
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public openTab(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 226
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xyron/game/launcher/ServerSelectActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x9c5

    invoke-virtual {p0, p1, v0}, Lcom/xyron/game/launcher/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 230
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xyron/game/launcher/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 233
    :cond_2
    const-string p1, "Esta ferramenta continua no codigo-fonte anterior do launcher."

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public setOnline(I)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/xyron/game/launcher/MainActivity;->online:I

    return-void
.end method

.method public startGta()V
    .locals 7

    .line 130
    iget-boolean v0, p0, Lcom/xyron/game/launcher/MainActivity;->checkingMap:Z

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSelectedServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v0

    .line 132
    iget-boolean v1, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->online:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 133
    const-string v1, "Servidor indispon\u00edvel"

    iget-object v0, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->offlineMessage:Ljava/lang/String;

    invoke-static {p0, v1, v0, v2}, Lcom/xyron/game/launcher/ui/AvailabilityCard;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 135
    :cond_1
    iget-object v0, v0, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->mapId:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/xyron/game/launcher/MainActivity;->checkedMaps:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f0a0088

    const/4 v4, 0x1

    if-nez v1, :cond_3

    .line 137
    iput-boolean v4, p0, Lcom/xyron/game/launcher/MainActivity;->checkingMap:Z

    .line 138
    invoke-virtual {p0, v3}, Lcom/xyron/game/launcher/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 139
    :cond_2
    invoke-static {p0, v0}, Lcom/xyron/game/launcher/util/GameStorage;->bound(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 140
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda14;-><init>(Lcom/xyron/game/launcher/MainActivity;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "angra-selected-map-check"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void

    .line 153
    :cond_3
    iget-boolean v0, p0, Lcom/xyron/game/launcher/MainActivity;->appAccessApproved:Z

    if-nez v0, :cond_6

    .line 154
    iget-boolean v0, p0, Lcom/xyron/game/launcher/MainActivity;->appAccessBusy:Z

    if-eqz v0, :cond_4

    return-void

    .line 155
    :cond_4
    iput-boolean v4, p0, Lcom/xyron/game/launcher/MainActivity;->appAccessBusy:Z

    .line 156
    invoke-virtual {p0, v3}, Lcom/xyron/game/launcher/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 157
    :cond_5
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/xyron/game/launcher/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/launcher/MainActivity;Landroid/view/View;)V

    const-string v0, "angra-app-access"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 179
    :cond_6
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasRequiredGameData(Landroid/content/Context;)Z

    move-result v0

    .line 180
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->needsUpdate(Landroid/content/Context;)Z

    move-result v1

    .line 181
    const-string v3, "first_data_install"

    const-string v5, "mode"

    if-eqz v1, :cond_7

    .line 182
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xyron/game/launcher/UpdateActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    sget-object v2, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->GameDataUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    invoke-virtual {v2}, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    xor-int/2addr v0, v4

    .line 184
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v1}, Lcom/xyron/game/launcher/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 189
    :cond_7
    invoke-direct {p0}, Lcom/xyron/game/launcher/MainActivity;->readNickname()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-direct {p0, v0}, Lcom/xyron/game/launcher/MainActivity;->isValidNickname(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 191
    const-string v0, "Defina o nome no formato Nome_Sobrenome."

    invoke-static {p0, v0, v4}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 192
    invoke-direct {p0}, Lcom/xyron/game/launcher/MainActivity;->showNickDialog()V

    return-void

    .line 196
    :cond_8
    invoke-static {p0}, Lcom/xyron/game/launcher/util/ServerConfigManager;->getSelectedServer(Landroid/content/Context;)Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 197
    invoke-virtual {v1}, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->isValid()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_0

    .line 203
    :cond_9
    invoke-static {p0}, Lcom/xyron/game/launcher/util/GameDataVerifier;->hasRequiredGameData(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xyron/game/launcher/UpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    sget-object v1, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->GameDataUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    invoke-virtual {v1}, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0}, Lcom/xyron/game/launcher/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 211
    :cond_a
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/xyron/game/launcher/GameLoadingActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    const-string v4, "server_ip"

    iget-object v5, v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->host:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v4, "server_port"

    iget v5, v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->port:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string v4, "nickname"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v0, "angra_character_server"

    iget-object v1, v1, Lcom/xyron/game/launcher/util/ServerConfigManager$ServerOption;->id:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000

    .line 216
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v3}, Lcom/xyron/game/launcher/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    invoke-virtual {p0, v2, v2}, Lcom/xyron/game/launcher/MainActivity;->overridePendingTransition(II)V

    return-void

    .line 198
    :cond_b
    :goto_0
    const-string v0, "Adicione e escolha um servidor primeiro."

    invoke-static {p0, v0, v4}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xyron/game/launcher/ServerSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x9c5

    invoke-virtual {p0, v0, v1}, Lcom/xyron/game/launcher/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
