.class public final Lcom/xyron/game/main/ui/AccessoryEditorControls;
.super Ljava/lang/Object;
.source "AccessoryEditorControls.java"


# static fields
.field public static final LABELS:[Ljava/lang/String;

.field public static final NATIVE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 6
    const-string v5, "Girar"

    const-string v6, "Tamanho"

    const-string v0, "Lados"

    const-string v1, "Altura"

    const-string v2, "Distancia do corpo"

    const-string v3, "Inclinar para frente"

    const-string v4, "Inclinar para os lados"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/main/ui/AccessoryEditorControls;->LABELS:[Ljava/lang/String;

    const/4 v0, 0x7

    .line 7
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xyron/game/main/ui/AccessoryEditorControls;->NATIVE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x5
        0x6
        0x3
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(II)I
    .locals 2

    if-ltz p0, :cond_0

    .line 15
    sget-object v0, Lcom/xyron/game/main/ui/AccessoryEditorControls;->NATIVE:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    .line 16
    aget p0, v0, p0

    mul-int/lit8 p1, p1, 0x7

    add-int/2addr p0, p1

    return p0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid editor control"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static minus(I)Ljava/lang/String;
    .locals 7

    .line 9
    const-string v5, "Girar -"

    const-string v6, "Diminuir"

    const-string v0, "Esquerda"

    const-string v1, "Descer"

    const-string v2, "Aproximar"

    const-string v3, "Inclinar -"

    const-string v4, "Inclinar -"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static plus(I)Ljava/lang/String;
    .locals 7

    .line 12
    const-string v5, "Girar +"

    const-string v6, "Aumentar"

    const-string v0, "Direita"

    const-string v1, "Subir"

    const-string v2, "Afastar"

    const-string v3, "Inclinar +"

    const-string v4, "Inclinar +"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method
