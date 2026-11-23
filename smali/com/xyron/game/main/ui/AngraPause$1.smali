.class Lcom/xyron/game/main/ui/AngraPause$1;
.super Ljava/lang/Object;
.source "AngraPause.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/ui/AngraPause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/ui/AngraPause;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/ui/AngraPause;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xyron/game/main/ui/AngraPause$1;->this$0:Lcom/xyron/game/main/ui/AngraPause;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 31
    iget-object v0, p0, Lcom/xyron/game/main/ui/AngraPause$1;->this$0:Lcom/xyron/game/main/ui/AngraPause;

    invoke-virtual {v0}, Lcom/xyron/game/main/ui/AngraPause;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xyron/game/main/ui/AngraPause$1;->this$0:Lcom/xyron/game/main/ui/AngraPause;

    invoke-static {v2}, Lcom/xyron/game/main/ui/AngraPause;->access$000(Lcom/xyron/game/main/ui/AngraPause;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 33
    iget-object v4, p0, Lcom/xyron/game/main/ui/AngraPause$1;->this$0:Lcom/xyron/game/main/ui/AngraPause;

    invoke-static {v4}, Lcom/xyron/game/main/ui/AngraPause;->access$200(Lcom/xyron/game/main/ui/AngraPause;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/xyron/game/main/ui/AngraPause$1;->this$0:Lcom/xyron/game/main/ui/AngraPause;

    invoke-static {v6}, Lcom/xyron/game/main/ui/AngraPause;->access$100(Lcom/xyron/game/main/ui/AngraPause;)Landroid/app/Activity;

    move-result-object v6

    const-string v7, "Em pausa"

    invoke-static {v6, v7}, Lcom/xyron/game/launcher/util/AngraLanguage;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-wide/16 v7, 0x3c

    div-long v9, v0, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    rem-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v9, v1, v7

    const/4 v7, 0x1

    aput-object v0, v1, v7

    const-string v0, ": %02d:%02d"

    invoke-static {v6, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/xyron/game/main/ui/AngraPause$1;->this$0:Lcom/xyron/game/main/ui/AngraPause;

    invoke-static {v0}, Lcom/xyron/game/main/ui/AngraPause;->access$300(Lcom/xyron/game/main/ui/AngraPause;)V

    .line 35
    iget-object v0, p0, Lcom/xyron/game/main/ui/AngraPause$1;->this$0:Lcom/xyron/game/main/ui/AngraPause;

    invoke-static {v0}, Lcom/xyron/game/main/ui/AngraPause;->access$400(Lcom/xyron/game/main/ui/AngraPause;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
