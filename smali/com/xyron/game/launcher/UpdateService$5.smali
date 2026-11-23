.class Lcom/xyron/game/launcher/UpdateService$5;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/launcher/UpdateService;->getFilesInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/UpdateService;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/UpdateService;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 480
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateService$5;->this$0:Lcom/xyron/game/launcher/UpdateService;

    iput-object p2, p0, Lcom/xyron/game/launcher/UpdateService$5;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x2

    .line 487
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/xyron/game/launcher/UpdateService$5;->val$response:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 489
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 492
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 494
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 496
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 499
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xyron/game/launcher/util/Util;->responseFiles:Ljava/lang/String;

    const/4 v1, 0x1

    .line 505
    sput v1, Lcom/xyron/game/launcher/util/Util;->responseFilesInt:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 512
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    sput v0, Lcom/xyron/game/launcher/util/Util;->responseFilesInt:I

    goto :goto_1

    :catch_1
    move-exception v1

    .line 509
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 510
    sput v0, Lcom/xyron/game/launcher/util/Util;->responseFilesInt:I

    :goto_1
    return-void
.end method
