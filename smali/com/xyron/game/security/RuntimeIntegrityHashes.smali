.class final Lcom/xyron/game/security/RuntimeIntegrityHashes;
.super Ljava/lang/Object;
.source "RuntimeIntegrityHashes.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static expected(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    const-string p0, "71d999c229f90198defd7e4bbe42048b2aa88e2a746109e446a49b8fca5f7690"

    goto :goto_0

    :cond_0
    const-string p0, "fa6b4bfeb785d22a7f186500c75c64e0ff1fb84442df4b94b7878a26bb9e8a81"

    :goto_0
    return-object p0
.end method
