.class final Lcom/xyron/game/main/PhoneSettingsOutbox$Pending;
.super Ljava/lang/Object;
.source "PhoneSettingsOutbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/PhoneSettingsOutbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pending"
.end annotation


# instance fields
.field final token:Ljava/lang/String;

.field final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/PhoneSettingsOutbox$Pending;->value:Ljava/lang/String;

    iput-object p2, p0, Lcom/xyron/game/main/PhoneSettingsOutbox$Pending;->token:Ljava/lang/String;

    return-void
.end method
