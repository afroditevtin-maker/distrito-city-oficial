.class public Lcom/nvidia/devtech/NvUtil;
.super Ljava/lang/Object;
.source "NvUtil.java"


# static fields
.field private static instance:Lcom/nvidia/devtech/NvUtil;


# instance fields
.field private activity:Landroid/app/Activity;

.field private appLocalValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/nvidia/devtech/NvUtil;

    invoke-direct {v0}, Lcom/nvidia/devtech/NvUtil;-><init>()V

    sput-object v0, Lcom/nvidia/devtech/NvUtil;->instance:Lcom/nvidia/devtech/NvUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/nvidia/devtech/NvUtil;->activity:Landroid/app/Activity;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nvidia/devtech/NvUtil;->appLocalValues:Ljava/util/HashMap;

    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "STORAGE_ROOT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/nvidia/devtech/NvUtil;
    .locals 1

    .line 53
    sget-object v0, Lcom/nvidia/devtech/NvUtil;->instance:Lcom/nvidia/devtech/NvUtil;

    return-object v0
.end method


# virtual methods
.method public getAppLocalValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/nvidia/devtech/NvUtil;->appLocalValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/nvidia/devtech/NvUtil;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasAppLocalValue(Ljava/lang/String;)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/nvidia/devtech/NvUtil;->appLocalValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/nvidia/devtech/NvUtil;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setAppLocalValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/nvidia/devtech/NvUtil;->appLocalValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
