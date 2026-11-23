.class final Lcom/xyron/game/main/PhoneServiceRoutes;
.super Ljava/lang/Object;
.source "PhoneServiceRoutes.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static resource(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    if-eqz p0, :cond_e

    const/16 v0, 0x3a

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_e

    .line 8
    const-string v1, "call:history"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "callHistory"

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v3, "wallpaper"

    const-string v4, "settings"

    const-string v5, "notifications"

    const-string v6, "notes"

    const-string v7, "news"

    const-string v8, "bank"

    const-string v9, "olx"

    const-string v10, "environment"

    const-string v11, "messages"

    const-string v12, "contacts"

    const-string v13, "support"

    const/4 v14, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0x9

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v2, 0x8

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "call"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_8
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_9
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_a
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_b
    invoke-virtual {p0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :sswitch_c
    invoke-virtual {p0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x0

    :cond_d
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Pedido desconhecido."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    return-object v3

    :pswitch_1
    return-object v4

    :pswitch_2
    return-object v5

    :pswitch_3
    return-object v6

    :pswitch_4
    return-object v7

    .line 10
    :pswitch_5
    const-string p0, "calls"

    return-object p0

    :pswitch_6
    return-object v8

    :pswitch_7
    return-object v9

    :pswitch_8
    return-object v10

    :pswitch_9
    return-object v11

    :pswitch_a
    return-object v12

    :pswitch_b
    return-object v13

    .line 7
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Pedido inv\u00e1lido."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x6e8d8031 -> :sswitch_c
        -0x21d29fad -> :sswitch_b
        -0x1b8afeb4 -> :sswitch_a
        -0x51ecded -> :sswitch_9
        0x1ae3b -> :sswitch_8
        0x2e063c -> :sswitch_7
        0x2e7a5e -> :sswitch_6
        0x338ad3 -> :sswitch_5
        0x6424ec1 -> :sswitch_4
        0x65b3d6e -> :sswitch_3
        0x4bd694e8 -> :sswitch_2
        0x5582bc23 -> :sswitch_1
        0x57e60e02 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
