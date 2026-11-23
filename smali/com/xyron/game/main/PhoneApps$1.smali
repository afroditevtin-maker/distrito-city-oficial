.class Lcom/xyron/game/main/PhoneApps$1;
.super Ljava/lang/Object;
.source "PhoneApps.java"

# interfaces
.implements Lcom/xyron/game/main/LocalPhonePreferences$Store;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/main/PhoneApps;-><init>(Lcom/xyron/game/main/SAMP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/PhoneApps;

.field final synthetic val$local:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/PhoneApps;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/xyron/game/main/PhoneApps$1;->this$0:Lcom/xyron/game/main/PhoneApps;

    iput-object p2, p0, Lcom/xyron/game/main/PhoneApps$1;->val$local:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps$1;->val$local:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xyron/game/main/PhoneApps$1;->val$local:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method
