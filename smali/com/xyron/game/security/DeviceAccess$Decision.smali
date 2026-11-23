.class public final Lcom/xyron/game/security/DeviceAccess$Decision;
.super Ljava/lang/Object;
.source "DeviceAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/security/DeviceAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Decision"
.end annotation


# instance fields
.field public final blocked:Z

.field public final reason:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/xyron/game/security/DeviceAccess$Decision;->blocked:Z

    iput-object p2, p0, Lcom/xyron/game/security/DeviceAccess$Decision;->reason:Ljava/lang/String;

    return-void
.end method
