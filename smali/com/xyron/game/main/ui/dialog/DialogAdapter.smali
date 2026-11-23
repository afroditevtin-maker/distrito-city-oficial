.class public Lcom/xyron/game/main/ui/dialog/DialogAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnDoubleClickListener;,
        Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnClickListener;,
        Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final buttonHide:Landroid/view/animation/Animation;

.field public final buttonScale:Landroid/view/animation/Animation;

.field public final buttonShow:Landroid/view/animation/Animation;

.field private mContext:Landroid/app/Activity;

.field public mCurrentSelectedPosition:I

.field public mCurrentSelectedView:Landroid/view/View;

.field mFieldsCount:I

.field mNeedMatchParent:Z

.field public mOnClickListener:Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnClickListener;

.field public mOnDoubleClickListener:Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnDoubleClickListener;

.field private final mRowsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTabSizes:[I

.field mTablist:Z

.field mbSkip:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "Landroid/view/animation/Animation;",
            "Landroid/view/animation/Animation;",
            "Landroid/view/animation/Animation;",
            "Z)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mCurrentSelectedPosition:I

    const/4 v1, 0x1

    .line 28
    iput v1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mFieldsCount:I

    .line 29
    iput-boolean v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mNeedMatchParent:Z

    .line 35
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mTabSizes:[I

    .line 37
    iput-boolean v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mbSkip:Z

    .line 68
    iput-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mRowsList:Ljava/util/ArrayList;

    .line 69
    iput-object p2, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mContext:Landroid/app/Activity;

    .line 70
    iput-object p3, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->buttonShow:Landroid/view/animation/Animation;

    .line 71
    iput-object p4, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->buttonHide:Landroid/view/animation/Animation;

    .line 72
    iput-object p5, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->buttonScale:Landroid/view/animation/Animation;

    .line 73
    iput-boolean p6, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mTablist:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mRowsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public mergeTabSizes([I)[I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 93
    aget v1, p1, v0

    .line 94
    iget-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mTabSizes:[I

    .line 95
    aget v3, v2, v0

    if-le v1, v3, :cond_0

    .line 96
    aput v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mbSkip:Z

    .line 100
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->notifyDataSetChanged()V

    .line 101
    iget-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mTabSizes:[I

    return-object p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 145
    check-cast p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->onBindViewHolder(Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;)V
    .locals 8

    .line 149
    invoke-virtual {p1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mbSkip:Z

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->updateSizes(Landroid/widget/TextView;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    .line 153
    iget v3, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mFieldsCount:I

    if-gt v3, v0, :cond_1

    .line 154
    iget-object v3, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 156
    :cond_1
    iget-object v2, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v2, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mTabSizes:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    iget-object v3, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v2, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mRowsList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    iget-boolean v4, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mTablist:Z

    if-nez v4, :cond_3

    .line 165
    iget-object v3, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-static {v0}, Lcom/xyron/game/launcher/util/Util;->getColoredString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 167
    :cond_3
    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 168
    array-length v4, v0

    if-le v4, v3, :cond_4

    const/4 v4, 0x4

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_6

    if-le v4, v5, :cond_5

    .line 174
    iget-object v6, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    aget-object v6, v6, v5

    aget-object v7, v0, v5

    invoke-static {v7}, Lcom/xyron/game/launcher/util/Util;->getColoredString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 178
    :cond_6
    :goto_3
    iget v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mCurrentSelectedPosition:I

    invoke-virtual {p1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-ne v0, v3, :cond_7

    .line 179
    iget-object v0, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mRowBg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mCurrentSelectedView:Landroid/view/View;

    .line 180
    iget-object v0, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mRowBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mOnClickListener:Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnClickListener;

    invoke-virtual {p1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mFields:[Landroid/widget/TextView;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnClickListener;->onClick(ILjava/lang/String;)V

    goto :goto_4

    .line 183
    :cond_7
    iget-object v0, p1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->mRowBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    :goto_4
    invoke-virtual {p1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->getMView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 186
    iget-boolean v1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mNeedMatchParent:Z

    if-eqz v1, :cond_8

    const/4 v1, -0x1

    goto :goto_5

    :cond_8
    const/4 v1, -0x2

    :goto_5
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 187
    invoke-virtual {p1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->getMView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {p1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;->getMView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$1;-><init>(Lcom/xyron/game/main/ui/dialog/DialogAdapter;Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 140
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d003b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 141
    new-instance p2, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/xyron/game/main/ui/dialog/DialogAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setMatchParent(Z)V
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mNeedMatchParent:Z

    if-eq v0, p1, :cond_0

    .line 86
    iput-boolean p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mNeedMatchParent:Z

    .line 87
    invoke-virtual {p0}, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnClickListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mOnClickListener:Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnClickListener;

    return-void
.end method

.method public setOnDoubleClickListener(Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnDoubleClickListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mOnDoubleClickListener:Lcom/xyron/game/main/ui/dialog/DialogAdapter$OnDoubleClickListener;

    return-void
.end method

.method public updateSizes(Landroid/widget/TextView;)V
    .locals 9

    .line 105
    iget-object v0, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mTabSizes:[I

    const/4 v1, 0x0

    .line 106
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 107
    aput v1, v0, v2

    const/4 v3, 0x2

    .line 108
    aput v1, v0, v3

    const/4 v3, 0x3

    .line 109
    aput v1, v0, v3

    .line 110
    iput v2, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mFieldsCount:I

    const/4 v0, 0x0

    .line 111
    :goto_0
    iget-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mRowsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 112
    iget-object v2, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mRowsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    iget-boolean v3, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mTablist:Z

    const/high16 v4, 0x42000000    # 32.0f

    if-nez v3, :cond_0

    .line 114
    invoke-static {v2}, Lcom/xyron/game/launcher/util/Util;->getColoredString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xyron/game/launcher/util/Util;->getTextWidth(Ljava/lang/String;Landroid/text/TextPaint;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/xyron/game/launcher/util/Util;->scale(Landroid/app/Activity;F)F

    move-result v3

    add-float/2addr v2, v3

    .line 115
    iget-object v3, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mTabSizes:[I

    .line 116
    aget v4, v3, v1

    int-to-float v4, v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_4

    float-to-int v2, v2

    .line 117
    aput v2, v3, v1

    goto :goto_2

    .line 120
    :cond_0
    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 121
    array-length v3, v2

    const/4 v5, 0x4

    if-le v3, v5, :cond_1

    const/4 v3, 0x4

    .line 125
    :cond_1
    iget v5, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mFieldsCount:I

    if-ge v5, v3, :cond_2

    .line 126
    iput v3, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mFieldsCount:I

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    .line 129
    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/xyron/game/launcher/util/Util;->getColoredString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xyron/game/launcher/util/Util;->getTextWidth(Ljava/lang/String;Landroid/text/TextPaint;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v7, v4}, Lcom/xyron/game/launcher/util/Util;->scale(Landroid/app/Activity;F)F

    move-result v7

    add-float/2addr v6, v7

    .line 130
    iget-object v7, p0, Lcom/xyron/game/main/ui/dialog/DialogAdapter;->mTabSizes:[I

    .line 131
    aget v8, v7, v5

    int-to-float v8, v8

    cmpg-float v8, v8, v6

    if-gez v8, :cond_3

    float-to-int v6, v6

    .line 132
    aput v6, v7, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
