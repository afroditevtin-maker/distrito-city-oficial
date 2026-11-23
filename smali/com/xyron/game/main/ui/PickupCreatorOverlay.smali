.class public Lcom/xyron/game/main/ui/PickupCreatorOverlay;
.super Ljava/lang/Object;
.source "PickupCreatorOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/ui/PickupCreatorOverlay$Listener;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final buttonCapture:Landroid/widget/TextView;

.field private final buttonClose:Landroid/widget/TextView;

.field private final buttonExportAll:Landroid/widget/TextView;

.field private final buttonPreview:Landroid/widget/TextView;

.field private final buttonReset:Landroid/widget/TextView;

.field private final buttonSave:Landroid/widget/TextView;

.field private editingPickupId:Ljava/lang/String;

.field private final emptyStateView:Landroid/widget/TextView;

.field private final exportPathView:Landroid/widget/TextView;

.field private final inputAmount:Landroid/widget/EditText;

.field private final inputInterior:Landroid/widget/EditText;

.field private final inputLabel:Landroid/widget/EditText;

.field private final inputModel:Landroid/widget/EditText;

.field private final inputType:Landroid/widget/EditText;

.field private final inputWorld:Landroid/widget/EditText;

.field private final inputX:Landroid/widget/EditText;

.field private final inputY:Landroid/widget/EditText;

.field private final inputZ:Landroid/widget/EditText;

.field private final librarySummaryView:Landroid/widget/TextView;

.field private final listContainer:Landroid/widget/LinearLayout;

.field private final listener:Lcom/xyron/game/main/ui/PickupCreatorOverlay$Listener;

.field private final root:Landroid/widget/FrameLayout;

.field private final statusView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$0glx4ZZujk77dQj7bpTPSEl3Hd0(Lcom/xyron/game/main/ui/PickupCreatorOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->previewCurrentPickup()V

    return-void
.end method

.method public static synthetic $r8$lambda$C1zSbj8v3mLhuC72pCpyv9tPtAc(Lcom/xyron/game/main/ui/PickupCreatorOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->saveCurrentPickup()V

    return-void
.end method

.method public static synthetic $r8$lambda$cV7nfJYcfgUNiwnD44yQLrxxHZ8(Lcom/xyron/game/main/ui/PickupCreatorOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->captureCurrentPosition()V

    return-void
.end method

.method public static synthetic $r8$lambda$suZnpWLjyeiHLo3tc2YpY92uamk(Lcom/xyron/game/main/ui/PickupCreatorOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->exportAllPickups()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/xyron/game/main/ui/PickupCreatorOverlay$Listener;)V
    .locals 6

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->editingPickupId:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->listener:Lcom/xyron/game/main/ui/PickupCreatorOverlay$Listener;

    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0086

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 66
    iput-object p2, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->root:Landroid/widget/FrameLayout;

    .line 67
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f0a02a9

    .line 69
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->statusView:Landroid/widget/TextView;

    const p1, 0x7f0a029b

    .line 70
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->exportPathView:Landroid/widget/TextView;

    const p1, 0x7f0a02a6

    .line 71
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->librarySummaryView:Landroid/widget/TextView;

    const p1, 0x7f0a029a

    .line 72
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->emptyStateView:Landroid/widget/TextView;

    const p1, 0x7f0a0295

    .line 73
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->buttonClose:Landroid/widget/TextView;

    const v0, 0x7f0a0294

    .line 74
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->buttonCapture:Landroid/widget/TextView;

    const v1, 0x7f0a0297

    .line 75
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->buttonPreview:Landroid/widget/TextView;

    const v2, 0x7f0a0298

    .line 76
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->buttonReset:Landroid/widget/TextView;

    const v3, 0x7f0a0299

    .line 77
    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->buttonSave:Landroid/widget/TextView;

    const v4, 0x7f0a0296

    .line 78
    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->buttonExportAll:Landroid/widget/TextView;

    const v5, 0x7f0a029e

    .line 79
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputLabel:Landroid/widget/EditText;

    const v5, 0x7f0a029f

    .line 80
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputModel:Landroid/widget/EditText;

    const v5, 0x7f0a02a0

    .line 81
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputType:Landroid/widget/EditText;

    const v5, 0x7f0a02a1

    .line 82
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputWorld:Landroid/widget/EditText;

    const v5, 0x7f0a029d

    .line 83
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputInterior:Landroid/widget/EditText;

    const v5, 0x7f0a02a2

    .line 84
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputX:Landroid/widget/EditText;

    const v5, 0x7f0a02a3

    .line 85
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputY:Landroid/widget/EditText;

    const v5, 0x7f0a02a4

    .line 86
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputZ:Landroid/widget/EditText;

    const v5, 0x7f0a029c

    .line 87
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputAmount:Landroid/widget/EditText;

    const v5, 0x7f0a02a7

    .line 88
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->listContainer:Landroid/widget/LinearLayout;

    .line 90
    new-instance v5, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance p2, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda4;-><init>(Lcom/xyron/game/main/ui/PickupCreatorOverlay;)V

    invoke-direct {p0, p1, p2}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->bindAction(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 94
    new-instance p1, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda5;-><init>(Lcom/xyron/game/main/ui/PickupCreatorOverlay;)V

    invoke-direct {p0, v0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->bindAction(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 95
    new-instance p1, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda6;-><init>(Lcom/xyron/game/main/ui/PickupCreatorOverlay;)V

    invoke-direct {p0, v1, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->bindAction(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 96
    new-instance p1, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda7;-><init>(Lcom/xyron/game/main/ui/PickupCreatorOverlay;)V

    invoke-direct {p0, v2, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->bindAction(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 97
    new-instance p1, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda8;-><init>(Lcom/xyron/game/main/ui/PickupCreatorOverlay;)V

    invoke-direct {p0, v3, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->bindAction(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 98
    new-instance p1, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda9;-><init>(Lcom/xyron/game/main/ui/PickupCreatorOverlay;)V

    invoke-direct {p0, v4, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->bindAction(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 100
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->resetForm(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->refreshUi()V

    return-void
.end method

.method private bindAction(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    new-instance v0, Lcom/xyron/game/launcher/util/ButtonAnimator;

    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/xyron/game/launcher/util/ButtonAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 389
    new-instance v0, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private bindPickupItem(Landroid/view/View;Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V
    .locals 9

    const v0, 0x7f0a0293

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a028c

    .line 163
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0292

    .line 164
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0291

    .line 165
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a028f

    .line 166
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0290

    .line 167
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a028d

    .line 168
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a028e

    .line 169
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a02a5

    .line 170
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 172
    iget-object v8, p2, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->label:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "M"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p2, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->modelId:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tipo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p2, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->pickupType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | World "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->worldId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | Interior "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->interiorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | Valor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->amount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p2, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->x:F

    .line 181
    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | Y "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->y:F

    .line 182
    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | Z "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->z:F

    .line 183
    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    new-instance v0, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda10;-><init>(Lcom/xyron/game/main/ui/PickupCreatorOverlay;Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    invoke-direct {p0, p1, v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->bindAction(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 187
    new-instance p1, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, p2}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda11;-><init>(Lcom/xyron/game/main/ui/PickupCreatorOverlay;Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    invoke-direct {p0, v4, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->bindAction(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 188
    new-instance p1, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0, p2}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda12;-><init>(Lcom/xyron/game/main/ui/PickupCreatorOverlay;Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    invoke-direct {p0, v5, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->bindAction(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 189
    new-instance p1, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda1;-><init>(Lcom/xyron/game/main/ui/PickupCreatorOverlay;Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    invoke-direct {p0, v6, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->bindAction(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 190
    new-instance p1, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$$ExternalSyntheticLambda2;-><init>(Lcom/xyron/game/main/ui/PickupCreatorOverlay;Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    invoke-direct {p0, v7, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->bindAction(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private buildPickupFromInputs(Z)Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;
    .locals 10

    .line 314
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputLabel:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->valueOf(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 315
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 316
    const-string p1, "Digite um nome para o pickup."

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    return-object v1

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputModel:Landroid/widget/EditText;

    const-string v2, "modelo"

    invoke-direct {p0, p1, v2}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->parseInteger(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 321
    iget-object v2, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputType:Landroid/widget/EditText;

    const-string v3, "tipo"

    invoke-direct {p0, v2, v3}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->parseInteger(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 322
    iget-object v3, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputWorld:Landroid/widget/EditText;

    const-string/jumbo v4, "world"

    invoke-direct {p0, v3, v4}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->parseInteger(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 323
    iget-object v4, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputInterior:Landroid/widget/EditText;

    const-string v5, "interior"

    invoke-direct {p0, v4, v5}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->parseInteger(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 324
    iget-object v5, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputAmount:Landroid/widget/EditText;

    const-string v6, "valor"

    invoke-direct {p0, v5, v6}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->parseInteger(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 325
    iget-object v6, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputX:Landroid/widget/EditText;

    const-string v7, "posicao X"

    invoke-direct {p0, v6, v7}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->parseFloat(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 326
    iget-object v7, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputY:Landroid/widget/EditText;

    const-string v8, "posicao Y"

    invoke-direct {p0, v7, v8}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->parseFloat(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    .line 327
    iget-object v8, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputZ:Landroid/widget/EditText;

    const-string v9, "posicao Z"

    invoke-direct {p0, v8, v9}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->parseFloat(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    if-nez v8, :cond_1

    goto :goto_0

    .line 334
    :cond_1
    new-instance v1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    invoke-direct {v1}, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;-><init>()V

    .line 335
    iget-object v9, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->editingPickupId:Ljava/lang/String;

    iput-object v9, v1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v0, "Pickup"

    :cond_2
    iput-object v0, v1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->label:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->modelId:I

    .line 338
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->pickupType:I

    .line 339
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->worldId:I

    .line 340
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->interiorId:I

    .line 341
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->amount:I

    .line 342
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->x:F

    .line 343
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->y:F

    .line 344
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->z:F

    :cond_3
    :goto_0
    return-object v1
.end method

.method private captureCurrentPosition()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->listener:Lcom/xyron/game/main/ui/PickupCreatorOverlay$Listener;

    if-nez v0, :cond_0

    .line 234
    const-string v0, "Captura indisponivel agora."

    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    return-void

    .line 237
    :cond_0
    invoke-interface {v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$Listener;->captureCurrentPlacement()[F

    move-result-object v0

    if-eqz v0, :cond_2

    .line 238
    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputX:Landroid/widget/EditText;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->formatFloat(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputY:Landroid/widget/EditText;

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v3}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->formatFloat(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputZ:Landroid/widget/EditText;

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-direct {p0, v3}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->formatFloat(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputInterior:Landroid/widget/EditText;

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const-string v0, "Posicao atual capturada."

    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    return-void

    .line 239
    :cond_2
    :goto_0
    const-string v0, "Nao foi possivel ler a posicao atual do player."

    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private clearFocusAndKeyboard()V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->hideSoftKeyboard()V

    return-void
.end method

.method private copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method private exportAllPickups()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->exportAll(Landroid/content/Context;)Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    move-result-object v0

    .line 309
    iget-object v0, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;->message:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->refreshStatus()V

    return-void
.end method

.method private exportSinglePickup(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-static {p1}, Lcom/xyron/game/launcher/util/PickupStudioManager;->buildSnippet(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)Ljava/lang/String;

    move-result-object p1

    .line 303
    const-string v0, "pickup_snippet"

    invoke-direct {p0, v0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string p1, "Snippet do pickup copiado para a area de transferencia."

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private formatFloat(F)Ljava/lang/String;
    .locals 3

    .line 381
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%.4f"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    .line 415
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method static synthetic lambda$bindAction$7(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 389
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private loadPickupIntoForm(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->editingPickupId:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputLabel:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputModel:Landroid/widget/EditText;

    iget v1, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->modelId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputType:Landroid/widget/EditText;

    iget v1, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->pickupType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputWorld:Landroid/widget/EditText;

    iget v1, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->worldId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputInterior:Landroid/widget/EditText;

    iget v1, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->interiorId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputX:Landroid/widget/EditText;

    iget v1, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->x:F

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputY:Landroid/widget/EditText;

    iget v1, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->y:F

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputZ:Landroid/widget/EditText;

    iget v1, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->z:F

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputAmount:Landroid/widget/EditText;

    iget p1, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->amount:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->updateSaveButtonLabel()V

    .line 208
    const-string p1, "Pickup carregado no editor."

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private parseFloat(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/Float;
    .locals 4

    .line 363
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->valueOf(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "."

    if-eqz v0, :cond_0

    .line 365
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Preencha "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/16 v0, 0x2c

    const/16 v3, 0x2e

    .line 369
    :try_start_0
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 371
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Valor invalido em "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    return-object v1
.end method

.method private parseInteger(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 349
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->valueOf(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "."

    if-eqz v0, :cond_0

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Preencha "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    return-object v1

    .line 355
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 357
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Valor invalido em "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    return-object v1
.end method

.method private previewCurrentPickup()V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->buildPickupFromInputs(Z)Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->previewPickup(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    return-void
.end method

.method private previewPickup(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->listener:Lcom/xyron/game/main/ui/PickupCreatorOverlay$Listener;

    if-nez v0, :cond_0

    .line 259
    const-string p1, "Preview indisponivel."

    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    return-void

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->sanitized()Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay$Listener;->previewPickup(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 264
    const-string p1, "Pickup mostrado no jogo."

    goto :goto_0

    .line 265
    :cond_1
    const-string p1, "Nao foi possivel criar o preview agora."

    .line 263
    :goto_0
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private refreshPickupList()V
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->loadPickups(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 147
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->emptyStateView:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    const v4, 0x7f0d004e

    .line 155
    iget-object v5, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 156
    invoke-direct {p0, v4, v2}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->bindPickupItem(Landroid/view/View;Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    .line 157
    iget-object v2, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private refreshStatus()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->loadPickups(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "Nenhum pickup salvo ainda. Use a captura de posicao e monte o primeiro item."

    goto :goto_0

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pickup(s) salvo(s). O export .inc e atualizado pelo launcher."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->statusView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->exportPathView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/xyron/game/launcher/util/PickupStudioManager;->buildExportTargetLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->librarySummaryView:Landroid/widget/TextView;

    .line 138
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    const-string v0, "Biblioteca vazia"

    goto :goto_1

    .line 140
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " item(ns) pronto(s) para exportar"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private removePickup(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v1}, Lcom/xyron/game/launcher/util/PickupStudioManager;->deletePickup(Landroid/content/Context;Ljava/lang/String;)Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;

    move-result-object v0

    .line 289
    iget-object v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;->message:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    .line 290
    iget-boolean v0, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$DeleteResult;->success:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 291
    iget-object p1, p1, Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->editingPickupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 292
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->resetForm(Z)V

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->refreshUi()V

    :cond_2
    return-void
.end method

.method private resetForm(Z)V
    .locals 3

    .line 212
    const-string v0, ""

    iput-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->editingPickupId:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputLabel:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputModel:Landroid/widget/EditText;

    const-string v2, "1242"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputType:Landroid/widget/EditText;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputWorld:Landroid/widget/EditText;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputInterior:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputX:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputY:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputZ:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputAmount:Landroid/widget/EditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->updateSaveButtonLabel()V

    if-eqz p1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->captureCurrentPosition()V

    :cond_0
    return-void
.end method

.method private saveCurrentPickup()V
    .locals 4

    const/4 v0, 0x1

    .line 269
    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->buildPickupFromInputs(Z)Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->savePickup(Landroid/content/Context;Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;

    move-result-object v0

    .line 275
    iget-boolean v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->success:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->pickup:Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    if-nez v1, :cond_1

    goto :goto_2

    .line 280
    :cond_1
    iget-object v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->pickup:Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->loadPickupIntoForm(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    .line 281
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->refreshUi()V

    .line 282
    iget-object v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->pickup:Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;

    invoke-direct {p0, v1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->previewPickup(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    .line 283
    iget-object v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->exportResult:Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    const-string v2, ""

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->exportResult:Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;

    iget-object v1, v1, Lcom/xyron/game/launcher/util/PickupStudioManager$ExportResult;->message:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 284
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->message:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    return-void

    .line 276
    :cond_4
    :goto_2
    iget-object v0, v0, Lcom/xyron/game/launcher/util/PickupStudioManager$SaveResult;->message:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateSaveButtonLabel()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->buttonSave:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->editingPickupId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Salvar pickup"

    goto :goto_0

    :cond_0
    const-string v1, "Atualizar pickup"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private valueOf(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 377
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ""

    :goto_1
    return-object p1
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->root:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 121
    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->clearFocusAndKeyboard()V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$bindPickupItem$2$com-xyron-game-main-ui-PickupCreatorOverlay(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->loadPickupIntoForm(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    return-void
.end method

.method synthetic lambda$bindPickupItem$3$com-xyron-game-main-ui-PickupCreatorOverlay(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->loadPickupIntoForm(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    return-void
.end method

.method synthetic lambda$bindPickupItem$4$com-xyron-game-main-ui-PickupCreatorOverlay(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->previewPickup(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    return-void
.end method

.method synthetic lambda$bindPickupItem$5$com-xyron-game-main-ui-PickupCreatorOverlay(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->exportSinglePickup(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    return-void
.end method

.method synthetic lambda$bindPickupItem$6$com-xyron-game-main-ui-PickupCreatorOverlay(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->removePickup(Lcom/xyron/game/launcher/util/PickupStudioManager$PickupDefinition;)V

    return-void
.end method

.method synthetic lambda$new$1$com-xyron-game-main-ui-PickupCreatorOverlay()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 96
    invoke-direct {p0, v0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->resetForm(Z)V

    return-void
.end method

.method public refreshUi()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->refreshStatus()V

    .line 126
    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->refreshPickupList()V

    .line 127
    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->updateSaveButtonLabel()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xyron/game/launcher/util/PickupStudioManager;->prepareWorkspace(Landroid/content/Context;)Z

    .line 110
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->root:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 112
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->refreshUi()V

    .line 113
    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputX:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputY:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->inputZ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->captureCurrentPosition()V

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/xyron/game/main/ui/PickupCreatorOverlay;->hideSoftKeyboard()V

    return-void
.end method
