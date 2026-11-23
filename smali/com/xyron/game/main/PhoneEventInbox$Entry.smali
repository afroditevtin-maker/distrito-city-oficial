.class final Lcom/xyron/game/main/PhoneEventInbox$Entry;
.super Ljava/lang/Object;
.source "PhoneEventInbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/PhoneEventInbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation


# instance fields
.field final body:Ljava/lang/String;

.field delivering:Z

.field final key:Ljava/lang/String;

.field final revision:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/main/PhoneEventInbox$Entry;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/xyron/game/main/PhoneEventInbox$Entry;->body:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xyron/game/main/PhoneEventInbox$Entry;->revision:J

    return-void
.end method
