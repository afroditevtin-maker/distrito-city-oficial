.class public Lcom/wardrumstudios/utils/WarBilling;
.super Lcom/wardrumstudios/utils/WarBase;
.source "WarBilling.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarBase;-><init>()V

    return-void
.end method


# virtual methods
.method public AddSKU(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public InitBilling()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public LocalizedPrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    const-string p1, ""

    return-object p1
.end method

.method public RequestPurchase(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public SetBillingKey(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public native changeConnection(Z)V
.end method

.method public native notifyChange(Ljava/lang/String;I)V
.end method
