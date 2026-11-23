.class final Lcom/nvidia/devtech/AngraTouchSlots;
.super Ljava/lang/Object;
.source "AngraTouchSlots.java"


# instance fields
.field private final ids:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/devtech/AngraTouchSlots;->ids:[I

    return-void
.end method


# virtual methods
.method assign(I)I
    .locals 4

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nvidia/devtech/AngraTouchSlots;->find(I)I

    move-result v1

    if-ltz v1, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/nvidia/devtech/AngraTouchSlots;->ids:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 16
    aget v3, v2, v1

    if-ne v3, v0, :cond_2

    aput p1, v2, v1

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method find(I)I
    .locals 4

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/nvidia/devtech/AngraTouchSlots;->ids:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget v2, v2, v1

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method release(I)V
    .locals 2

    .line 20
    invoke-virtual {p0, p1}, Lcom/nvidia/devtech/AngraTouchSlots;->find(I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nvidia/devtech/AngraTouchSlots;->ids:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method reset()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/nvidia/devtech/AngraTouchSlots;->ids:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method
