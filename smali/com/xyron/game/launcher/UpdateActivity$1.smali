.class Lcom/xyron/game/launcher/UpdateActivity$1;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyron/game/launcher/UpdateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/UpdateActivity;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity$1;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const/16 p2, 0x1f03

    .line 404
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 406
    const-string p2, "GL_IMG_texture_compression_pvrtc"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 407
    sget-object p1, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;->PVR:Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    .line 408
    iget-object p2, p0, Lcom/xyron/game/launcher/UpdateActivity$1;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const/4 v1, 0x3

    iput v1, p2, Lcom/xyron/game/launcher/UpdateActivity;->mGpuType:I

    goto :goto_1

    .line 409
    :cond_0
    const-string p2, "GL_EXT_texture_compression_dxt1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "GL_EXT_texture_compression_s3tc"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 413
    :cond_1
    sget-object p1, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;->ETC:Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    .line 414
    iget-object p2, p0, Lcom/xyron/game/launcher/UpdateActivity$1;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const/4 v1, 0x2

    iput v1, p2, Lcom/xyron/game/launcher/UpdateActivity;->mGpuType:I

    goto :goto_1

    .line 410
    :cond_2
    :goto_0
    sget-object p1, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;->DXT:Lcom/xyron/game/launcher/UpdateActivity$eGPUType;

    .line 411
    iget-object p2, p0, Lcom/xyron/game/launcher/UpdateActivity$1;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const/4 v1, 0x1

    iput v1, p2, Lcom/xyron/game/launcher/UpdateActivity;->mGpuType:I

    .line 416
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "GPU name: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "x1y2z"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "GPU type: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xyron/game/launcher/UpdateActivity$eGPUType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity$1;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-static {p1}, Lcom/xyron/game/launcher/UpdateActivity;->access$800(Lcom/xyron/game/launcher/UpdateActivity;)Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    move-result-object p1

    sget-object p2, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->GameDataUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity$1;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-static {p1}, Lcom/xyron/game/launcher/UpdateActivity;->access$800(Lcom/xyron/game/launcher/UpdateActivity;)Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    move-result-object p1

    sget-object p2, Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;->FullReinstall:Lcom/xyron/game/launcher/UpdateActivity$UpdateMode;

    if-ne p1, p2, :cond_4

    .line 420
    :cond_3
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity$1;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-static {p1}, Lcom/xyron/game/launcher/UpdateActivity;->access$900(Lcom/xyron/game/launcher/UpdateActivity;)V

    :cond_4
    return-void
.end method
