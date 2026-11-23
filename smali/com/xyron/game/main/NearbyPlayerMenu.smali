.class final Lcom/xyron/game/main/NearbyPlayerMenu;
.super Ljava/lang/Object;
.source "NearbyPlayerMenu.java"


# static fields
.field private static final ART:Ljava/lang/String; = "interfaces/nearby_player/"

.field private static final ICONS:[Ljava/lang/String;

.field private static final LABELS:[Ljava/lang/String;


# instance fields
.field private final game:Lcom/xyron/game/main/SAMP;

.field private final hitOrigin:[I

.field private lastSelectionAt:J

.field private ownsGesture:Z

.field private panel:Landroid/widget/FrameLayout;

.field private pressedGeneration:Ljava/lang/Object;

.field private pressedTarget:Landroid/widget/ImageButton;

.field private final root:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private running:Z

.field private selectedGeneration:I

.field private selectedPlayer:I

.field private final targets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private final tick:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$aQou1X6wK3reHAMJok7-q9GfKBk(Lcom/xyron/game/main/NearbyPlayerMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/NearbyPlayerMenu;->update()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 21
    const-string v6, "Silenciar\nvoz"

    const-string v7, "Fechar"

    const-string v0, "Mostrar\npassaporte"

    const-string v1, "Mostrar\ncarteira\nmilitar"

    const-string v2, "Mostrar\ncarteira"

    const-string v3, "Mostrar\nlicen\u00e7as"

    const-string v4, "Mostrar\no documento"

    const-string v5, "Aperto\nde m\u00e3os"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/main/NearbyPlayerMenu;->LABELS:[Ljava/lang/String;

    .line 25
    const-string v7, "interaction_ignore_btn.webp"

    const-string v8, "interaction_item_close.webp"

    const-string v1, "interaction_passport_btn.webp"

    const-string v2, "interaction_militaryid_btn.webp"

    const-string v3, "interaction_medcard_btn.webp"

    const-string v4, "interaction_showlic_btn.webp"

    const-string v5, "interaction_pts_btn.webp"

    const-string v6, "interaction_handshake_btn.webp"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/main/NearbyPlayerMenu;->ICONS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/xyron/game/main/SAMP;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->targets:Landroid/util/SparseArray;

    .line 34
    new-instance v0, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda3;-><init>(Lcom/xyron/game/main/NearbyPlayerMenu;)V

    iput-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->tick:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedPlayer:I

    const/4 v0, 0x2

    .line 74
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->hitOrigin:[I

    .line 42
    iput-object p1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    .line 43
    iput-object p2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method private art(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string v0, "interfaces/nearby_player/"

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v1}, Lcom/xyron/game/main/SAMP;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :try_start_1
    invoke-static {v0, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 302
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 300
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 303
    :catch_0
    iget-object p1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    const v0, 0x1080041

    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private choose(I)V
    .locals 9

    .line 277
    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->panel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/xyron/game/main/NearbyPlayerMenu;->back()Z

    return-void

    .line 282
    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/main/NearbyPlayerMenu;->snapshot()[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/main/NearbyPlayerMenu;->selected([F)[F

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Lcom/xyron/game/main/NearbyPlayerMenu;->back()Z

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    .line 284
    aget v2, v0, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedPlayer:I

    if-ne v2, v3, :cond_7

    const/4 v2, 0x3

    aget v2, v0, v2

    float-to-int v2, v2

    iget v3, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedGeneration:I

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 286
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 287
    iget-wide v4, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->lastSelectionAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    return-void

    .line 288
    :cond_3
    iput-wide v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->lastSelectionAt:J

    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    const/4 p1, 0x4

    .line 290
    aget p1, v0, p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_4

    const/4 v1, 0x1

    .line 291
    :cond_4
    iget-object p1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    iget v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedPlayer:I

    iget v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedGeneration:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/xyron/game/main/SAMP;->setNearbyPlayerMuted(IIZ)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 292
    iget-object p1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    if-eqz v1, :cond_5

    const-string v0, "Voz do jogador silenciada."

    goto :goto_0

    :cond_5
    const-string v0, "Voz do jogador reativada."

    :goto_0
    invoke-virtual {p1, v0}, Lcom/xyron/game/main/SAMP;->showAngraServerNotice(Ljava/lang/String;)V

    goto :goto_1

    .line 295
    :cond_6
    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nearby|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedPlayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xyron/game/main/SAMP;->sendAngraSystemRequest(Ljava/lang/String;)Z

    :cond_7
    :goto_1
    return-void
.end method

.method private createTarget(I)Landroid/widget/ImageButton;
    .locals 5

    .line 47
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 48
    const-string v1, "Interagir com jogador"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f08015c

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 50
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x1

    .line 52
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v2, 0x35112238

    .line 53
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 54
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/xyron/game/main/NearbyPlayerMenu;->dp(I)I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0xf

    .line 55
    invoke-direct {p0, v1}, Lcom/xyron/game/main/NearbyPlayerMenu;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/xyron/game/main/NearbyPlayerMenu;->dp(I)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/xyron/game/main/NearbyPlayerMenu;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/xyron/game/main/NearbyPlayerMenu;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    const/16 v1, 0x6e

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    const/16 v1, 0x8

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v1, 0x2a

    .line 58
    invoke-direct {p0, v1}, Lcom/xyron/game/main/NearbyPlayerMenu;->dp(I)I

    move-result v1

    .line 59
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 60
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 61
    iget-object v1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v1, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/NearbyPlayerMenu;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 308
    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private hitDistance(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)F
    .locals 5

    .line 112
    invoke-virtual {p1}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->hitOrigin:[I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->hitOrigin:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->hitOrigin:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float/2addr p2, v2

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    .line 116
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getHeight()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    mul-float v0, v0, v0

    mul-float p2, p2, p2

    add-float/2addr v0, p2

    mul-float p1, p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    move v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method private open()V
    .locals 14

    .line 179
    invoke-direct {p0}, Lcom/xyron/game/main/NearbyPlayerMenu;->snapshot()[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/main/NearbyPlayerMenu;->selected([F)[F

    move-result-object v0

    if-eqz v0, :cond_5

    .line 180
    iget-object v1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->panel:Landroid/widget/FrameLayout;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    aget v2, v0, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedPlayer:I

    if-ne v2, v3, :cond_5

    const/4 v2, 0x3

    aget v3, v0, v2

    float-to-int v3, v3

    iget v4, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedGeneration:I

    if-eq v3, v4, :cond_0

    goto/16 :goto_2

    .line 182
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 183
    iput-object v3, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->panel:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    .line 184
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/high16 v5, -0x6e000000

    .line 185
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 186
    sget-object v5, Lcom/xyron/game/main/NearbyPlayerMenu;->LABELS:[Ljava/lang/String;

    array-length v6, v5

    new-array v9, v6, [Landroid/view/View;

    .line 187
    array-length v5, v5

    new-array v10, v5, [Landroid/widget/TextView;

    const/4 v5, 0x0

    .line 188
    :goto_0
    sget-object v6, Lcom/xyron/game/main/NearbyPlayerMenu;->LABELS:[Ljava/lang/String;

    array-length v7, v6

    const/16 v8, 0x11

    const/4 v11, -0x1

    if-ge v5, v7, :cond_2

    const/4 v7, 0x6

    if-ne v5, v7, :cond_1

    const/4 v7, 0x4

    .line 190
    aget v7, v0, v7

    const/4 v12, 0x0

    cmpl-float v7, v7, v12

    if-eqz v7, :cond_1

    const-string v6, "Reativar voz"

    goto :goto_1

    :cond_1
    aget-object v6, v6, v5

    .line 191
    :goto_1
    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v12, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v7, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    new-instance v12, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda0;

    invoke-direct {v12, p0, v5}, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/main/NearbyPlayerMenu;I)V

    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v12, Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v12, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 195
    sget-object v13, Lcom/xyron/game/main/NearbyPlayerMenu;->ICONS:[Ljava/lang/String;

    aget-object v13, v13, v5

    invoke-direct {p0, v13}, Lcom/xyron/game/main/NearbyPlayerMenu;->art(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 197
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v12, Landroid/widget/TextView;

    iget-object v13, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 202
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 203
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v6, 0x9

    .line 204
    invoke-direct {p0, v6}, Lcom/xyron/game/main/NearbyPlayerMenu;->dp(I)I

    move-result v8

    invoke-direct {p0, v6}, Lcom/xyron/game/main/NearbyPlayerMenu;->dp(I)I

    move-result v6

    invoke-virtual {v12, v8, v1, v6, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 205
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v12, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    aput-object v7, v9, v5

    .line 208
    aput-object v12, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 210
    :cond_2
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 211
    const-string v2, "Intera\u00e7\u00e3o com"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 215
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v12, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    invoke-direct {v12, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x1000000

    .line 217
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    iget v5, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedPlayer:I

    iget v6, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedGeneration:I

    invoke-virtual {v2, v5, v6}, Lcom/xyron/game/main/SAMP;->getNearbyPlayerName(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 219
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const-string v2, "Jogador"

    .line 220
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedPlayer:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 222
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 223
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 224
    const-string v2, "ineteraction_button.webp"

    invoke-direct {p0, v2}, Lcom/xyron/game/main/NearbyPlayerMenu;->art(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 225
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v12, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    new-instance v2, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda1;

    move-object v7, v2

    move-object v8, p0

    move-object v11, v0

    invoke-direct/range {v7 .. v12}, Lcom/xyron/game/main/NearbyPlayerMenu$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/NearbyPlayerMenu;[Landroid/view/View;[Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 247
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 248
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 250
    iget-object v1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v3, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 252
    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v4}, Lcom/xyron/game/main/SAMP;->nearbyHudChanged(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method private place(Landroid/view/View;FFFF)V
    .locals 2

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 257
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 258
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p4, v1

    sub-float/2addr p2, p4

    .line 259
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    div-float/2addr p5, v1

    sub-float/2addr p3, p5

    .line 260
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private selected([F)[F
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 162
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 163
    aget v2, p1, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedPlayer:I

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x3

    aget v2, p1, v2

    float-to-int v2, v2

    iget v3, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedGeneration:I

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v1, 0x5

    .line 164
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private snapshot()[F
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->canShowNearbyPlayer()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 170
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->getNearbyPlayer()[F

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    array-length v2, v0

    rem-int/lit8 v2, v2, 0x5
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1

    :catch_0
    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->running:Z

    return-object v1
.end method

.method private update()V
    .locals 11

    .line 135
    iget-boolean v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/NearbyPlayerMenu;->snapshot()[F

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 137
    :goto_0
    iget-object v3, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->targets:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->targets:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 138
    iget-object v3, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->panel:Landroid/widget/FrameLayout;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_5

    .line 139
    aget v4, v0, v3

    float-to-int v4, v4

    add-int/lit8 v5, v3, 0x3

    aget v5, v0, v5

    float-to-int v5, v5

    if-gez v4, :cond_2

    goto/16 :goto_2

    .line 141
    :cond_2
    iget-object v6, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->targets:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    if-nez v6, :cond_3

    .line 142
    invoke-direct {p0, v4}, Lcom/xyron/game/main/NearbyPlayerMenu;->createTarget(I)Landroid/widget/ImageButton;

    move-result-object v6

    iget-object v7, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->targets:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    :cond_3
    iget-object v4, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-int/lit8 v7, v3, 0x1

    aget v7, v0, v7

    mul-float v4, v4, v7

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    .line 144
    iget-object v7, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-int/lit8 v9, v3, 0x2

    aget v9, v0, v9

    mul-float v7, v7, v9

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    sub-float/2addr v7, v9

    .line 145
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 146
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getTranslationX()F

    move-result v8

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getTranslationX()F

    move-result v9

    sub-float/2addr v4, v9

    const v9, 0x3f266666    # 0.65f

    mul-float v4, v4, v9

    add-float/2addr v4, v8

    .line 147
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getTranslationY()F

    move-result v8

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getTranslationY()F

    move-result v10

    sub-float/2addr v7, v10

    mul-float v7, v7, v9

    add-float/2addr v7, v8

    .line 149
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setTranslationX(F)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 150
    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x5

    goto/16 :goto_1

    .line 152
    :cond_5
    iget-object v1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->targets:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_3
    if-ltz v1, :cond_7

    .line 153
    iget-object v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->targets:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 154
    invoke-virtual {v2}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->targets:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 156
    :cond_7
    iget-object v1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->panel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_8

    invoke-direct {p0, v0}, Lcom/xyron/game/main/NearbyPlayerMenu;->selected([F)[F

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/xyron/game/main/NearbyPlayerMenu;->back()Z

    .line 157
    :cond_8
    iget-boolean v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->running:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method


# virtual methods
.method back()Z
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->panel:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->panel:Landroid/widget/FrameLayout;

    .line 272
    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v0, v1}, Lcom/xyron/game/main/SAMP;->nearbyHudChanged(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method isOpen()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->panel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPanel(Landroid/view/View;)Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->panel:Landroid/widget/FrameLayout;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method synthetic lambda$createTarget$0$com-xyron-game-main-NearbyPlayerMenu(ILandroid/view/View;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->panel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    iput p1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedPlayer:I

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->selectedGeneration:I

    .line 66
    invoke-direct {p0}, Lcom/xyron/game/main/NearbyPlayerMenu;->open()V

    return-void
.end method

.method synthetic lambda$open$1$com-xyron-game-main-NearbyPlayerMenu(ILandroid/view/View;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lcom/xyron/game/main/NearbyPlayerMenu;->choose(I)V

    return-void
.end method

.method synthetic lambda$open$2$com-xyron-game-main-NearbyPlayerMenu([Landroid/view/View;[Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;IIIIIIII)V
    .locals 18

    .line 0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    sub-int v2, p8, p6

    sub-int v3, p9, p7

    sub-int v4, p12, p10

    if-ne v2, v4, :cond_0

    sub-int v4, p13, p11

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    int-to-float v2, v2

    const v4, 0x44c44000    # 1570.0f

    div-float v5, v2, v4

    int-to-float v6, v3

    const/high16 v7, 0x44340000    # 720.0f

    div-float v8, v6, v7

    .line 229
    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v8, 0x2

    .line 230
    new-array v9, v8, [F

    fill-array-data v9, :array_0

    new-array v10, v8, [F

    fill-array-data v10, :array_1

    new-array v11, v8, [F

    fill-array-data v11, :array_2

    new-array v12, v8, [F

    fill-array-data v12, :array_3

    new-array v13, v8, [F

    fill-array-data v13, :array_4

    new-array v14, v8, [F

    fill-array-data v14, :array_5

    new-array v15, v8, [F

    fill-array-data v15, :array_6

    new-array v7, v8, [F

    fill-array-data v7, :array_7

    const/16 v4, 0x8

    new-array v4, v4, [[F

    const/4 v8, 0x0

    aput-object v9, v4, v8

    const/4 v9, 0x1

    aput-object v10, v4, v9

    const/4 v10, 0x2

    aput-object v11, v4, v10

    const/4 v10, 0x3

    aput-object v12, v4, v10

    const/4 v10, 0x4

    aput-object v13, v4, v10

    const/4 v10, 0x5

    aput-object v14, v4, v10

    const/4 v10, 0x6

    aput-object v15, v4, v10

    const/4 v10, 0x7

    aput-object v7, v4, v10

    const/4 v7, 0x0

    .line 232
    :goto_0
    array-length v11, v0

    if-ge v7, v11, :cond_4

    const/high16 v11, 0x432c0000    # 172.0f

    if-ne v7, v10, :cond_1

    const/high16 v12, 0x431a0000    # 154.0f

    goto :goto_1

    :cond_1
    const/high16 v12, 0x432c0000    # 172.0f

    :goto_1
    if-ne v7, v10, :cond_2

    const/high16 v11, 0x432b0000    # 171.0f

    .line 235
    :cond_2
    aget-object v13, v0, v7

    aget-object v14, v4, v7

    aget v15, v14, v8

    mul-float v15, v15, v2

    const v16, 0x44c44000    # 1570.0f

    div-float v15, v15, v16

    aget v14, v14, v9

    mul-float v14, v14, v6

    const/high16 v17, 0x44340000    # 720.0f

    div-float v14, v14, v17

    mul-float v12, v12, v5

    mul-float v11, v11, v5

    move-object/from16 p7, p0

    move-object/from16 p8, v13

    move/from16 p9, v15

    move/from16 p10, v14

    move/from16 p11, v12

    move/from16 p12, v11

    invoke-direct/range {p7 .. p12}, Lcom/xyron/game/main/NearbyPlayerMenu;->place(Landroid/view/View;FFFF)V

    .line 237
    aget-object v11, p2, v7

    const/high16 v12, 0x41b00000    # 22.0f

    mul-float v12, v12, v5

    invoke-virtual {v11, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 238
    aget-object v11, p2, v7

    const/high16 v12, 0x41400000    # 12.0f

    mul-float v12, v12, v5

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    if-ne v7, v10, :cond_3

    const/4 v14, 0x0

    goto :goto_2

    :cond_3
    const/high16 v14, 0x422c0000    # 43.0f

    mul-float v14, v14, v5

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 239
    :goto_2
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 238
    invoke-virtual {v11, v13, v14, v12, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    const/high16 v0, 0x42000000    # 32.0f

    mul-float v0, v0, v5

    move-object/from16 v4, p3

    .line 241
    invoke-virtual {v4, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v0, 0x41900000    # 18.0f

    mul-float v0, v0, v5

    .line 242
    invoke-virtual {v1, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v0, 0x41500000    # 13.0f

    mul-float v0, v0, v5

    .line 243
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v6, v8, v0, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    mul-int/lit16 v2, v3, 0x238

    int-to-float v2, v2

    const/high16 v6, 0x44340000    # 720.0f

    div-float/2addr v2, v6

    const/high16 v6, 0x43be0000    # 380.0f

    mul-float v6, v6, v5

    const/high16 v7, 0x421c0000    # 39.0f

    mul-float v7, v7, v5

    move-object/from16 p6, p0

    move-object/from16 p7, p3

    move/from16 p8, v0

    move/from16 p9, v2

    move/from16 p10, v6

    move/from16 p11, v7

    .line 244
    invoke-direct/range {p6 .. p11}, Lcom/xyron/game/main/NearbyPlayerMenu;->place(Landroid/view/View;FFFF)V

    mul-int/lit16 v3, v3, 0x26d

    int-to-float v2, v3

    const/high16 v3, 0x44340000    # 720.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x438d0000    # 282.0f

    mul-float v3, v3, v5

    const/high16 v4, 0x42840000    # 66.0f

    mul-float v4, v4, v5

    move-object/from16 p5, p0

    move-object/from16 p6, p4

    move/from16 p7, v0

    move/from16 p8, v2

    move/from16 p9, v3

    move/from16 p10, v4

    .line 245
    invoke-direct/range {p5 .. p10}, Lcom/xyron/game/main/NearbyPlayerMenu;->place(Landroid/view/View;FFFF)V

    return-void

    nop

    :array_0
    .array-data 4
        0x43440000    # 196.0f
        0x44038000    # 526.0f
    .end array-data

    :array_1
    .array-data 4
        0x43440000    # 196.0f
        0x43420000    # 194.0f
    .end array-data

    :array_2
    .array-data 4
        0x42c40000    # 98.0f
        0x43b40000    # 360.0f
    .end array-data

    :array_3
    .array-data 4
        0x449f6000    # 1275.0f
        0x43b40000    # 360.0f
    .end array-data

    :array_4
    .array-data 4
        0x43930000    # 294.0f
        0x43b40000    # 360.0f
    .end array-data

    :array_5
    .array-data 4
        0x44abc000    # 1374.0f
        0x43420000    # 194.0f
    .end array-data

    :array_6
    .array-data 4
        0x44b80000    # 1472.0f
        0x43b40000    # 360.0f
    .end array-data

    :array_7
    .array-data 4
        0x44abc000    # 1374.0f
        0x44038000    # 526.0f
    .end array-data
.end method

.method routeTouch(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_5

    .line 79
    iput-object v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->pressedTarget:Landroid/widget/ImageButton;

    .line 80
    iput-boolean v4, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->ownsGesture:Z

    .line 81
    iget-boolean v5, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->running:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->panel:Landroid/widget/FrameLayout;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    invoke-virtual {v5}, Lcom/xyron/game/main/SAMP;->canShowNearbyPlayer()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->isShown()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 83
    :goto_0
    iget-object v7, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->targets:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 84
    iget-object v7, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->targets:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 85
    invoke-direct {p0, v7, p1}, Lcom/xyron/game/main/NearbyPlayerMenu;->hitDistance(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)F

    move-result v8

    cmpg-float v9, v8, v6

    if-gez v9, :cond_1

    .line 88
    iput-object v7, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->pressedTarget:Landroid/widget/ImageButton;

    move v6, v8

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 91
    :cond_2
    iget-object v5, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->pressedTarget:Landroid/widget/ImageButton;

    if-nez v5, :cond_3

    return v4

    .line 92
    :cond_3
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->pressedGeneration:Ljava/lang/Object;

    .line 93
    iput-boolean v3, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->ownsGesture:Z

    goto :goto_2

    :cond_4
    :goto_1
    return v4

    .line 95
    :cond_5
    :goto_2
    iget-boolean v5, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->ownsGesture:Z

    if-nez v5, :cond_6

    return v4

    :cond_6
    const/4 v5, 0x5

    if-ne v0, v5, :cond_7

    .line 96
    iput-object v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->pressedTarget:Landroid/widget/ImageButton;

    :cond_7
    if-eq v0, v3, :cond_8

    const/4 v5, 0x3

    if-ne v0, v5, :cond_9

    .line 98
    :cond_8
    iget-object v5, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->pressedTarget:Landroid/widget/ImageButton;

    .line 99
    iput-object v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->pressedTarget:Landroid/widget/ImageButton;

    .line 100
    iput-boolean v4, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->ownsGesture:Z

    if-ne v0, v3, :cond_9

    if-eqz v5, :cond_9

    .line 101
    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->game:Lcom/xyron/game/main/SAMP;

    .line 102
    invoke-virtual {v0}, Lcom/xyron/game/main/SAMP;->canShowNearbyPlayer()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->pressedGeneration:Ljava/lang/Object;

    .line 103
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 104
    invoke-direct {p0, v5, p1}, Lcom/xyron/game/main/NearbyPlayerMenu;->hitDistance(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_9

    .line 105
    invoke-virtual {v5}, Landroid/widget/ImageButton;->performClick()Z

    :cond_9
    return v3
.end method

.method start()V
    .locals 2

    .line 122
    iget-boolean v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->running:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->running:Z

    .line 124
    iget-object v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method stop()V
    .locals 3

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->running:Z

    .line 129
    iget-object v1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->tick:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->targets:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/xyron/game/main/NearbyPlayerMenu;->targets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/xyron/game/main/NearbyPlayerMenu;->back()Z

    return-void
.end method
