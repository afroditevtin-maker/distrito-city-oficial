.class public Lcom/xyron/game/launcher/util/Util$LoadNewsImage;
.super Landroid/os/AsyncTask;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadNewsImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 192
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 193
    iput p1, p0, Lcom/xyron/game/launcher/util/Util$LoadNewsImage;->mPosition:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 200
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    .line 201
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 189
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/Util$LoadNewsImage;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 210
    sget-object v0, Lcom/xyron/game/launcher/data/Config;->mBitmap:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/xyron/game/launcher/util/Util$LoadNewsImage;->mPosition:I

    aput-object p1, v0, v1

    .line 212
    sget-object p1, Lcom/xyron/game/launcher/data/Config;->mainContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0a02eb

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/xyron/game/launcher/adapters/NewsAdapter;

    if-eqz p1, :cond_0

    .line 217
    iget v0, p0, Lcom/xyron/game/launcher/util/Util$LoadNewsImage;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/xyron/game/launcher/adapters/NewsAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 189
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/xyron/game/launcher/util/Util$LoadNewsImage;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
