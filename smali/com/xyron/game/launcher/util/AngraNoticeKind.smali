.class public final Lcom/xyron/game/launcher/util/AngraNoticeKind;
.super Ljava/lang/Object;
.source "AngraNoticeKind.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolve(ILjava/lang/String;)I
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    if-ltz v0, :cond_0

    if-gt v0, v2, :cond_0

    return v0

    .line 10
    :cond_0
    const-string v0, ""

    if-nez v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    sget-object v3, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    .line 10
    invoke-static {v1, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\p{M}"

    .line 11
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_0
    const-string v13, "sem espaco"

    const-string v14, "nao esta"

    const-string v3, "nao foi"

    const-string v4, "nao pode"

    const-string v5, "nao confirmou"

    const-string v6, "nao recebemos"

    const-string v7, "inval"

    const-string v8, "erro"

    const-string v9, "falha"

    const-string v10, "insuficiente"

    const-string v11, "incorre"

    const-string v12, "indisponivel"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0xc

    if-ge v4, v5, :cond_3

    aget-object v5, v1, v4

    .line 13
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 14
    :cond_3
    const-string v16, "saque realizado"

    const-string v17, "equipamento colocado"

    const-string v5, "sucesso"

    const-string v6, "equipad"

    const-string v7, "guardad"

    const-string v8, "carregada e salva"

    const-string v9, "voce enviou"

    const-string v10, "voce recebeu"

    const-string v11, "transferencia realizada"

    const-string v12, "transferencia enviada"

    const-string v13, "transferencia recebida"

    const-string v14, "pagamento realizado"

    const-string v15, "deposito realizado"

    filled-new-array/range {v5 .. v17}, [Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/16 v4, 0xd

    if-ge v3, v4, :cond_5

    aget-object v4, v1, v3

    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return v2
.end method
