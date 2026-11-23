.class final enum Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
.super Ljava/lang/Enum;
.source "AbstractBeanInvocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ini4j/spi/AbstractBeanInvocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Prefix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum ADD_CHANGE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum ADD_VETO:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum HAS:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum READ:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum READ_BOOLEAN:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum REMOVE_CHANGE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum REMOVE_VETO:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum WRITE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;


# instance fields
.field private _len:I

.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 42
    new-instance v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v1, "get"

    const-string v2, "READ"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->READ:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 43
    new-instance v1, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v2, "is"

    const-string v4, "READ_BOOLEAN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->READ_BOOLEAN:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 44
    new-instance v2, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v4, "set"

    const-string v6, "WRITE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->WRITE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 45
    new-instance v4, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v6, "addPropertyChangeListener"

    const-string v8, "ADD_CHANGE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->ADD_CHANGE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 46
    new-instance v6, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v8, "addVetoableChangeListener"

    const-string v10, "ADD_VETO"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->ADD_VETO:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 47
    new-instance v8, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v10, "removePropertyChangeListener"

    const-string v12, "REMOVE_CHANGE"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->REMOVE_CHANGE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 48
    new-instance v10, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v12, "removeVetoableChangeListener"

    const-string v14, "REMOVE_VETO"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->REMOVE_VETO:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 49
    new-instance v12, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v14, "has"

    const-string v15, "HAS"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->HAS:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const/16 v14, 0x8

    .line 40
    new-array v14, v14, [Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    aput-object v0, v14, v3

    aput-object v1, v14, v5

    aput-object v2, v14, v7

    aput-object v4, v14, v9

    aput-object v6, v14, v11

    const/4 v0, 0x5

    aput-object v8, v14, v0

    const/4 v0, 0x6

    aput-object v10, v14, v0

    aput-object v12, v14, v13

    sput-object v14, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->$VALUES:[Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->_value:Ljava/lang/String;

    .line 56
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->_len:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
    .locals 5

    .line 63
    invoke-static {}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->values()[Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 65
    invoke-virtual {v3}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
    .locals 1

    .line 40
    const-class v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    return-object p0
.end method

.method public static values()[Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
    .locals 1

    .line 40
    sget-object v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->$VALUES:[Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    invoke-virtual {v0}, [Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    return-object v0
.end method


# virtual methods
.method public getTail(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 78
    iget v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->_len:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->_value:Ljava/lang/String;

    return-object v0
.end method
