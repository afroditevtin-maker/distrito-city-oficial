.class public abstract Lcom/nvidia/devtech/NvEventQueueActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NvEventQueueActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/devtech/NvEventQueueActivity$RawData;,
        Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;,
        Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;
    }
.end annotation


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final EGL_OPENGL_ES3_BIT:I = 0x40

.field private static final EGL_RENDERABLE_TYPE:I = 0x3040


# instance fields
.field protected GetGLExtensions:Z

.field public HasGLExtensions:Z

.field protected IsShowingKeyboard:Z

.field protected volatile ResumeEventDone:Z

.field SwapBufferSkip:I

.field protected alphaSize:I

.field private final angraTouchSlots:Lcom/nvidia/devtech/AngraTouchSlots;

.field private final angraTouchX:[I

.field private final angraTouchY:[I

.field protected blueSize:I

.field protected volatile cachedSurfaceHolder:Landroid/view/SurfaceHolder;

.field capsLockOn:Z

.field protected configAttrs:[I

.field protected contextAttrs:[I

.field public delaySetContentView:Z

.field protected depthSize:I

.field protected display:Landroid/view/Display;

.field egl:Ljavax/microedition/khronos/egl/EGL10;

.field protected eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field protected eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field protected eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field protected eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private final eglSurfaceLock:Ljava/lang/Object;

.field gl:Ljavax/microedition/khronos/opengles/GL11;

.field public glExtensions:Ljava/lang/String;

.field protected glRenderer:Ljava/lang/String;

.field protected glVendor:Ljava/lang/String;

.field protected glVersion:Ljava/lang/String;

.field protected greenSize:I

.field protected handler:Landroid/os/Handler;

.field protected holder:Landroid/view/SurfaceHolder;

.field public isNativeApp:Z

.field protected isShieldTV:Z

.field protected mAndroidUI:Landroid/widget/FrameLayout;

.field protected mSensorDelay:I

.field protected mSensorManager:Landroid/hardware/SensorManager;

.field protected mSurfaceView:Landroid/view/SurfaceView;

.field protected maxDisplayHeight:I

.field protected maxDisplayWidth:I

.field private nativeLifecyclePaused:Z

.field protected volatile paused:Z

.field prefs:Landroid/content/SharedPreferences;

.field private ranInit:Z

.field protected redSize:I

.field protected stencilSize:I

.field protected supportPauseResume:Z

.field private volatile surfaceAvailable:Z

.field private surfaceHeight:I

.field private surfaceWidth:I

.field protected view:Landroid/view/SurfaceView;

.field protected viewIsActive:Z

.field waitingForResume:Z

.field protected wantsAccelerometer:Z

.field protected wantsMultitouch:Z


# direct methods
.method public static synthetic $r8$lambda$Ewd5BQQLYSZmoTMTfAAOmofUGi4(Lcom/nvidia/devtech/NvEventQueueActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->resumeNativeIfSurfaceReady()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 74
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 80
    iput-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->paused:Z

    .line 81
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurfaceLock:Ljava/lang/Object;

    .line 83
    iput-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->nativeLifecyclePaused:Z

    const/4 v2, 0x0

    .line 85
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->wantsMultitouch:Z

    .line 87
    iput-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->supportPauseResume:Z

    .line 90
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->wantsAccelerometer:Z

    .line 91
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 92
    iput v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorDelay:I

    .line 93
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->display:Landroid/view/Display;

    .line 99
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 100
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->gl:Ljavax/microedition/khronos/opengles/GL11;

    .line 102
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->ranInit:Z

    .line 103
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 104
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 105
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 106
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 108
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 109
    iput v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceWidth:I

    .line 110
    iput v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceHeight:I

    .line 111
    new-instance v1, Lcom/nvidia/devtech/AngraTouchSlots;

    invoke-direct {v1}, Lcom/nvidia/devtech/AngraTouchSlots;-><init>()V

    iput-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->angraTouchSlots:Lcom/nvidia/devtech/AngraTouchSlots;

    const/4 v1, 0x4

    .line 112
    new-array v3, v1, [I

    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->angraTouchX:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->angraTouchY:[I

    .line 114
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->GetGLExtensions:Z

    .line 115
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->HasGLExtensions:Z

    .line 116
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->IsShowingKeyboard:Z

    .line 117
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->ResumeEventDone:Z

    .line 118
    iput v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->SwapBufferSkip:I

    .line 119
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->capsLockOn:Z

    .line 120
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->delaySetContentView:Z

    .line 121
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glExtensions:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glRenderer:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVendor:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVersion:Ljava/lang/String;

    .line 126
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->isNativeApp:Z

    .line 127
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mAndroidUI:Landroid/widget/FrameLayout;

    .line 128
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 129
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->isShieldTV:Z

    const/16 v1, 0x438

    .line 130
    iput v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->maxDisplayHeight:I

    const/16 v1, 0x780

    .line 131
    iput v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->maxDisplayWidth:I

    .line 134
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->viewIsActive:Z

    .line 135
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->waitingForResume:Z

    const/4 v1, 0x5

    .line 931
    iput v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->redSize:I

    const/4 v3, 0x6

    .line 933
    iput v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->greenSize:I

    .line 935
    iput v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->blueSize:I

    .line 937
    iput v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->alphaSize:I

    .line 939
    iput v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->stencilSize:I

    const/16 v1, 0x10

    .line 941
    iput v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->depthSize:I

    .line 944
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    .line 946
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->contextAttrs:[I

    return-void
.end method

.method static synthetic access$000(Lcom/nvidia/devtech/NvEventQueueActivity;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->ranInit:Z

    return p0
.end method

.method static synthetic access$002(Lcom/nvidia/devtech/NvEventQueueActivity;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->ranInit:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nvidia/devtech/NvEventQueueActivity;)Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurfaceLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lcom/nvidia/devtech/NvEventQueueActivity;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceAvailable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nvidia/devtech/NvEventQueueActivity;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceWidth:I

    return p0
.end method

.method static synthetic access$302(Lcom/nvidia/devtech/NvEventQueueActivity;I)I
    .locals 0

    .line 74
    iput p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/nvidia/devtech/NvEventQueueActivity;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceHeight:I

    return p0
.end method

.method static synthetic access$402(Lcom/nvidia/devtech/NvEventQueueActivity;I)I
    .locals 0

    .line 74
    iput p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/nvidia/devtech/NvEventQueueActivity;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->resumeNativeIfSurfaceReady()V

    return-void
.end method

.method static synthetic access$600(Lcom/nvidia/devtech/NvEventQueueActivity;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->pauseNativeForLifecycle()V

    return-void
.end method

.method private initEGLAndGLES2WithValidSurface(I)Z
    .locals 5

    .line 704
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "InitEGLAndGLES2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 707
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "InitEGLAndGLES2 failed, cachedSurfaceHolder is null"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_4

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    const/16 p1, 0x18

    .line 717
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->initEGL(II)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 722
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initEGL 3 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 726
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    const/4 v0, 0x2

    .line 728
    :try_start_1
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->GetDepthBits()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/nvidia/devtech/NvEventQueueActivity;->initEGL(II)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 733
    :goto_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initEGL 2 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/16 p1, 0x10

    .line 735
    invoke-virtual {p0, v0, p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->initEGL(II)Z

    move-result p1

    .line 736
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_3

    .line 755
    :cond_3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "initEGLAndGLES2 failed, core EGL init failure"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1

    .line 742
    :cond_4
    :goto_3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Should we create a surface?"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 743
    iget-boolean p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->viewIsActive:Z

    if-nez p1, :cond_5

    .line 744
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Yes! Calling create surface"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 745
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->createEGLSurface(Landroid/view/SurfaceHolder;)V

    .line 746
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Done creating surface"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 749
    :cond_5
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq p1, v2, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    iput-boolean p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->viewIsActive:Z

    if-nez p1, :cond_7

    return v1

    .line 751
    :cond_7
    iput v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->SwapBufferSkip:I

    return v0
.end method

.method private isRenderSurfaceReady()Z
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 680
    iget-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->paused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceAvailable:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 681
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pauseNativeForLifecycle()V
    .locals 2

    .line 685
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->ResumeEventDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->nativeLifecyclePaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 686
    iput-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->nativeLifecyclePaused:Z

    .line 687
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->pauseEvent()V

    .line 688
    const-string v0, "AngraSurface"

    const-string v1, "native renderer paused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private resumeNativeIfSurfaceReady()V
    .locals 2

    .line 693
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->nativeLifecyclePaused:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->isRenderSurfaceReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 694
    iput-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->nativeLifecyclePaused:Z

    .line 695
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->resumeEvent()V

    const/4 v0, 0x1

    .line 696
    iput-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->ResumeEventDone:Z

    .line 697
    const-string v0, "AngraSurface"

    const-string v1, "native resume on valid foreground surface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onNativeSurfaceResumed()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public DoResumeEvent()V
    .locals 1

    .line 773
    new-instance v0, Lcom/nvidia/devtech/NvEventQueueActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/nvidia/devtech/NvEventQueueActivity$$ExternalSyntheticLambda10;-><init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V

    invoke-virtual {p0, v0}, Lcom/nvidia/devtech/NvEventQueueActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GamepadReportSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public GetDepthBits()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public GetGLExtensions()V
    .locals 3

    .line 648
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->HasGLExtensions:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->gl:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->gl:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1f00

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVendor:Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->gl:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1f03

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glExtensions:Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->gl:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1f01

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glRenderer:Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->gl:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1f02

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVersion:Ljava/lang/String;

    .line 653
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Vendor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 654
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extensions "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glExtensions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 655
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Renderer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glRenderer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 656
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVendor:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 658
    iput-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->HasGLExtensions:Z

    :cond_0
    return-void
.end method

.method public GetMainView()Landroid/view/View;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    :goto_0
    return-object v0
.end method

.method public InitEGLAndGLES2(I)Z
    .locals 4

    .line 665
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_0
    invoke-direct {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->isRenderSurfaceReady()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 669
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->initEGLAndGLES2WithValidSurface(I)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    .line 671
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->viewIsActive:Z

    .line 672
    const-string v1, "AngraSurface"

    const-string v3, "EGL init deferred until valid window"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 675
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public IsPortrait()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native accelerometerEvent(FFF)Z
.end method

.method public native cleanup()V
.end method

.method protected cleanupEGL()V
    .locals 5

    .line 1128
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "cleanupEGL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->destroyEGLSurface()V

    .line 1130
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v0, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 1133
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 1135
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    :cond_2
    const/4 v0, 0x0

    .line 1137
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1138
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1139
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    .line 1141
    iput-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->ranInit:Z

    .line 1142
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1144
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1145
    iput v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceWidth:I

    .line 1146
    iput v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceHeight:I

    return-void
.end method

.method protected createEGLSurface(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 1079
    invoke-direct {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->isRenderSurfaceReady()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1081
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    .line 1087
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 1091
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "eglSurface: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", err: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1092
    new-array p1, p1, [I

    .line 1094
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v3, 0x3057

    invoke-interface {v0, v1, v2, v3, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    const/4 v0, 0x0

    .line 1095
    aget v1, p1, v0

    iput v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceWidth:I

    .line 1096
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v4, 0x3056

    invoke-interface {v1, v2, v3, v4, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    .line 1097
    aget p1, p1, v0

    iput p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceHeight:I

    .line 1099
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "checking glVendor == null?"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1100
    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVendor:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 1102
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Making current and back"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->makeCurrent()Z

    .line 1104
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->unMakeCurrent()Z

    .line 1107
    :cond_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Done. Making current and back"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 1088
    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    .line 1083
    :catch_0
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1084
    const-string p1, "AngraSurface"

    const-string/jumbo v0, "window disappeared during EGL creation; retry on resume"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method protected destroyEGLSurface()V
    .locals 5

    .line 1116
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v0, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    .line 1119
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_1
    const/4 v0, 0x0

    .line 1120
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method

.method public getOrientation()I
    .locals 1

    .line 1239
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getSupportPauseResume()Z
    .locals 1

    .line 1186
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->supportPauseResume:Z

    return v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 1198
    iget v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 1192
    iget v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceWidth:I

    return v0
.end method

.method public hideSystemUI()V
    .locals 3

    .line 876
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 878
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Z)V

    .line 880
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 881
    invoke-static {v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;)I

    move-result v1

    if-nez v1, :cond_1

    .line 882
    invoke-static {}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v1

    invoke-static {}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m$1()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;I)V

    const/4 v1, 0x2

    .line 883
    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/WindowInsetsController;I)V

    goto :goto_0

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    const/16 v1, 0x1f06

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public native imeClosed()V
.end method

.method public native init(Z)Z
.end method

.method protected initEGL(II)Z
    .locals 23

    move-object/from16 v0, p0

    .line 955
    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    const/16 v2, 0x3038

    if-nez v1, :cond_0

    .line 956
    filled-new-array {v2}, [I

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    .line 957
    :cond_0
    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    .line 959
    array-length v3, v1

    const/4 v4, 0x2

    add-int/2addr v3, v4

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 961
    :goto_0
    array-length v6, v1

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    .line 962
    iget-object v6, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    aget v7, v1, v5

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 963
    :cond_1
    iget-object v6, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v8, v5, 0x1

    const/16 v9, 0x3040

    aput v9, v6, v5

    const/4 v9, 0x3

    move/from16 v10, p1

    if-ne v10, v9, :cond_2

    add-int/2addr v5, v4

    const/16 v9, 0x40

    .line 965
    aput v9, v6, v8

    goto :goto_1

    :cond_2
    add-int/2addr v5, v4

    const/4 v9, 0x4

    .line 967
    aput v9, v6, v8

    .line 968
    :goto_1
    aput v2, v6, v5

    const/16 v5, 0x3098

    .line 970
    filled-new-array {v5, v4, v2}, [I

    move-result-object v5

    iput-object v5, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->contextAttrs:[I

    if-nez v6, :cond_3

    .line 976
    filled-new-array {v2}, [I

    move-result-object v5

    iput-object v5, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    .line 977
    :cond_3
    iget-object v5, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    .line 979
    array-length v6, v5

    add-int/lit8 v6, v6, 0xc

    new-array v6, v6, [I

    iput-object v6, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    const/4 v6, 0x0

    .line 980
    :goto_2
    array-length v8, v5

    sub-int/2addr v8, v7

    if-ge v6, v8, :cond_4

    .line 981
    iget-object v8, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    aget v9, v5, v6

    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 982
    :cond_4
    iget-object v5, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v8, v6, 0x1

    const/16 v9, 0x3024

    aput v9, v5, v6

    add-int/lit8 v10, v6, 0x2

    .line 983
    iget v11, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->redSize:I

    aput v11, v5, v8

    add-int/lit8 v8, v6, 0x3

    const/16 v11, 0x3023

    .line 984
    aput v11, v5, v10

    add-int/lit8 v10, v6, 0x4

    .line 985
    iget v12, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->greenSize:I

    aput v12, v5, v8

    add-int/lit8 v8, v6, 0x5

    const/16 v12, 0x3022

    .line 986
    aput v12, v5, v10

    add-int/lit8 v10, v6, 0x6

    .line 987
    iget v13, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->blueSize:I

    aput v13, v5, v8

    add-int/lit8 v8, v6, 0x7

    const/16 v13, 0x3021

    .line 988
    aput v13, v5, v10

    add-int/lit8 v10, v6, 0x8

    .line 989
    iget v14, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->alphaSize:I

    aput v14, v5, v8

    add-int/lit8 v8, v6, 0x9

    const/16 v14, 0x3026

    .line 990
    aput v14, v5, v10

    add-int/lit8 v10, v6, 0xa

    .line 991
    iget v15, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->stencilSize:I

    aput v15, v5, v8

    add-int/lit8 v8, v6, 0xb

    const/16 v15, 0x3025

    .line 992
    aput v15, v5, v10

    add-int/lit8 v6, v6, 0xc

    .line 993
    aput p2, v5, v8

    .line 994
    aput v2, v5, v6

    .line 996
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 997
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 998
    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 999
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "eglDisplay: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", err: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1000
    new-array v2, v4, [I

    .line 1001
    iget-object v4, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v4, v5, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    .line 1002
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EglInitialize returned: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v2, :cond_5

    return v3

    .line 1007
    :cond_5
    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    const/16 v4, 0x3000

    if-eq v2, v4, :cond_6

    return v3

    .line 1010
    :cond_6
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "eglInitialize err: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v2, 0x14

    .line 1012
    new-array v4, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1013
    new-array v5, v7, [I

    .line 1014
    iget-object v6, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    move-object/from16 v16, v6

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move-object/from16 v19, v4

    move/from16 v20, v2

    move-object/from16 v21, v5

    invoke-interface/range {v16 .. v21}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1015
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "eglChooseConfig err: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1016
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "num_configs "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v8, v5, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1019
    new-array v2, v7, [I

    const/high16 v6, 0x1000000

    const/4 v8, 0x0

    .line 1020
    :goto_3
    aget v10, v5, v3

    if-ge v8, v10, :cond_c

    const/4 v10, 0x0

    .line 1026
    :goto_4
    array-length v14, v1

    sub-int/2addr v14, v7

    shr-int/2addr v14, v7

    if-ge v10, v14, :cond_8

    .line 1028
    iget-object v14, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v15, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v13, v4, v8

    iget-object v12, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    mul-int/lit8 v19, v10, 0x2

    aget v12, v12, v19

    invoke-interface {v14, v15, v13, v12, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1029
    aget v12, v2, v3

    iget-object v13, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v19, v19, 0x1

    aget v13, v13, v19

    and-int/2addr v12, v13

    if-eq v12, v13, :cond_7

    move-object/from16 v22, v1

    goto/16 :goto_6

    :cond_7
    add-int/lit8 v10, v10, 0x1

    const/16 v12, 0x3022

    const/16 v13, 0x3021

    const/16 v15, 0x3025

    goto :goto_4

    .line 1037
    :cond_8
    iget-object v10, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v12, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v13, v4, v8

    invoke-interface {v10, v12, v13, v9, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v10, v2, v3

    .line 1038
    iget-object v12, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v13, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v14, v4, v8

    invoke-interface {v12, v13, v14, v11, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v12, v2, v3

    .line 1039
    iget-object v13, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v14, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v15, v4, v8

    const/16 v9, 0x3022

    invoke-interface {v13, v14, v15, v9, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v13, v2, v3

    .line 1040
    iget-object v14, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v15, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v9, v4, v8

    const/16 v11, 0x3021

    invoke-interface {v14, v15, v9, v11, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v9, v2, v3

    .line 1041
    iget-object v14, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v15, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v11, v4, v8

    const/16 v7, 0x3025

    invoke-interface {v14, v15, v11, v7, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v11, v2, v3

    .line 1042
    iget-object v14, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v15, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v7, v4, v8

    move-object/from16 v22, v1

    const/16 v1, 0x3026

    invoke-interface {v14, v15, v7, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v7, v2, v3

    .line 1044
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v1, ">>> EGL Config ["

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] R"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "G"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "B"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "A"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " D"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "S"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1046
    iget v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->redSize:I

    sub-int/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v10, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->greenSize:I

    sub-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v1, v10

    iget v10, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->blueSize:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v1, v10

    iget v10, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->alphaSize:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v1, v9

    shl-int/lit8 v1, v1, 0x10

    sub-int v11, v11, p2

    .line 1047
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v1, v9

    .line 1048
    iget v9, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->stencilSize:I

    sub-int/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v1, v7

    if-ge v1, v6, :cond_b

    .line 1051
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "--------------------------"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1052
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "New config chosen: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 1053
    :goto_5
    iget-object v7, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    array-length v9, v7

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    shr-int/2addr v9, v10

    if-ge v6, v9, :cond_a

    .line 1055
    iget-object v9, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v11, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v12, v4, v8

    mul-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    invoke-interface {v9, v11, v12, v7, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1056
    aget v7, v2, v3

    iget-object v9, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/2addr v13, v10

    aget v9, v9, v13

    if-lt v7, v9, :cond_9

    .line 1057
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "setting "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", matches: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v2, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1061
    :cond_a
    aget-object v6, v4, v8

    iput-object v6, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move v6, v1

    :cond_b
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v22

    const/4 v7, 0x1

    const/16 v9, 0x3024

    const/16 v11, 0x3023

    const/16 v12, 0x3022

    const/16 v13, 0x3021

    const/16 v14, 0x3026

    const/16 v15, 0x3025

    goto/16 :goto_3

    .line 1064
    :cond_c
    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v5, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->contextAttrs:[I

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1065
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eglCreateContext: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1067
    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL11;

    iput-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->gl:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    return v1
.end method

.method public native jniNvAPKInit(Ljava/lang/Object;)V
.end method

.method public native keyEvent(IIIILandroid/view/KeyEvent;)Z
.end method

.method synthetic lambda$onCreate$0$com-nvidia-devtech-NvEventQueueActivity(I)V
    .locals 0

    .line 0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->hideSystemUI()V

    :cond_0
    return-void
.end method

.method public loadFile(Ljava/lang/String;)Lcom/nvidia/devtech/NvEventQueueActivity$RawData;
    .locals 5

    const-string v0, "/data/"

    .line 211
    new-instance v1, Lcom/nvidia/devtech/NvEventQueueActivity$RawData;

    invoke-direct {v1}, Lcom/nvidia/devtech/NvEventQueueActivity$RawData;-><init>()V

    const/4 v2, 0x0

    .line 215
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    .line 221
    :catch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :catch_2
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 228
    iput p1, v1, Lcom/nvidia/devtech/NvEventQueueActivity$RawData;->length:I

    .line 229
    new-array p1, p1, [B

    iput-object p1, v1, Lcom/nvidia/devtech/NvEventQueueActivity$RawData;->data:[B

    .line 230
    iget-object p1, v1, Lcom/nvidia/devtech/NvEventQueueActivity$RawData;->data:[B

    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 239
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :goto_2
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 241
    :catch_3
    :cond_0
    throw p1

    :goto_3
    if-eqz v2, :cond_1

    goto :goto_1

    :catch_4
    :cond_1
    :goto_4
    return-object v1
.end method

.method public loadTexture(Ljava/lang/String;)Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;
    .locals 13

    const-string v0, "/data/"

    .line 264
    new-instance v1, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;

    invoke-direct {v1}, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;-><init>()V

    .line 269
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 v2, 0x0

    .line 282
    :goto_0
    :try_start_2
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v1, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->width:I

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v1, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->height:I

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v0, v0, v2

    new-array v2, v0, [I

    .line 286
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 289
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    new-array v3, v3, [I

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 291
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    shr-int/lit8 v7, p1, 0x1

    if-ge v6, v7, :cond_0

    mul-int v7, v6, v4

    .line 294
    invoke-static {v2, v7, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, p1, -0x1

    sub-int/2addr v8, v6

    mul-int v8, v8, v4

    .line 295
    invoke-static {v2, v8, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    invoke-static {v3, v5, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x4

    .line 300
    iput v0, v1, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->length:I

    .line 301
    iget v0, v1, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->length:I

    new-array v0, v0, [B

    iput-object v0, v1, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->data:[B

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v0, p1, :cond_2

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_1

    .line 308
    aget v8, v2, v3

    .line 309
    iget-object v9, v1, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->data:[B

    add-int/lit8 v10, v6, 0x1

    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v9, v6

    .line 310
    iget-object v9, v1, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->data:[B

    add-int/lit8 v11, v6, 0x2

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v9, v10

    .line 311
    iget-object v9, v1, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->data:[B

    add-int/lit8 v10, v6, 0x3

    and-int/lit16 v12, v8, 0xff

    int-to-byte v12, v12

    aput-byte v12, v9, v11

    .line 312
    iget-object v9, v1, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->data:[B

    add-int/lit8 v6, v6, 0x4

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v9, v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 318
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method public native lowMemoryEvent()V
.end method

.method public mSleep(J)V
    .locals 0

    .line 765
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public makeCurrent()Z
    .locals 5

    .line 1210
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1212
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "eglContext is NULL"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1

    .line 1215
    :cond_0
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v2, :cond_1

    .line 1217
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "eglSurface is NULL"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1

    .line 1222
    :cond_1
    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v2, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1224
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eglMakeCurrent err: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1225
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1232
    :cond_2
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->GetGLExtensions()V

    const/4 v0, 0x1

    return v0
.end method

.method public native multiTouchEvent(IIIIIILandroid/view/MotionEvent;)Z
.end method

.method public native multiTouchEvent4(IIIIIIIIIILandroid/view/MotionEvent;)Z
.end method

.method public native multiTouchEvent4Ex(IIIIIIIIII)Z
.end method

.method public nativeCrashed()V
    .locals 5

    const-string v0, "saved game was:\n"

    .line 181
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "nativeCrashed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->prefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 184
    :try_start_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "savedGame"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :catch_0
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "crashed here (native trace should follow after the Java trace)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 383
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**** NvEventQueueActivity onCreate"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/nvidia/devtech/NvUtil;->getInstance()Lcom/nvidia/devtech/NvUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nvidia/devtech/NvUtil;->setActivity(Landroid/app/Activity;)V

    .line 386
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 388
    iget-boolean p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->wantsAccelerometer:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez p1, :cond_0

    .line 389
    const-string p1, "sensor"

    invoke-virtual {p0, p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 392
    :cond_0
    invoke-static {}, Lcom/nvidia/devtech/NvAPKFileHelper;->getInstance()Lcom/nvidia/devtech/NvAPKFileHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/nvidia/devtech/NvAPKFileHelper;->setContext(Landroid/content/Context;)V

    .line 393
    new-instance p1, Lcom/nvidia/devtech/NvAPKFile;

    invoke-direct {p1}, Lcom/nvidia/devtech/NvAPKFile;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 397
    invoke-virtual {p0, p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->jniNvAPKInit(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :catch_0
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->display:Landroid/view/Display;

    .line 404
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->systemInit()Z

    .line 406
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->hideSystemUI()V

    .line 408
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/nvidia/devtech/NvEventQueueActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/nvidia/devtech/NvEventQueueActivity$$ExternalSyntheticLambda9;-><init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 500
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**** onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 501
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->supportPauseResume:Z

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->quitAndWait()V

    .line 504
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->finish()V

    .line 507
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 508
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->systemCleanup()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x59

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x55

    if-eq p1, v0, :cond_3

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x52

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 616
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_2
    if-nez v1, :cond_3

    .line 620
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    move-object v2, p0

    move v4, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/nvidia/devtech/NvEventQueueActivity;->keyEvent(IIIILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_3
    :goto_0
    return v1

    .line 608
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/16 v0, 0x73

    if-ne p1, v0, :cond_1

    .line 632
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCapsLockOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->capsLockOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x4

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v3, 0x73

    move-object v1, p0

    move-object v6, p2

    .line 633
    invoke-virtual/range {v1 .. v6}, Lcom/nvidia/devtech/NvEventQueueActivity;->keyEvent(IIIILandroid/view/KeyEvent;)Z

    :cond_1
    const/16 v0, 0x59

    if-eq p1, v0, :cond_4

    const/16 v0, 0x55

    if-eq p1, v0, :cond_4

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 640
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 642
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    move-object v1, p0

    move v3, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/nvidia/devtech/NvEventQueueActivity;->keyEvent(IIIILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onNativeSurfaceResumed()V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 458
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**** onPause"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 459
    iput-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->paused:Z

    .line 460
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 461
    iget-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->supportPauseResume:Z

    if-eqz v1, :cond_0

    .line 463
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "java is invoking pauseEvent(), this will block until\nthe client calls NVEventPauseProcessed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 464
    invoke-direct {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->pauseNativeForLifecycle()V

    .line 465
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "pauseEvent() returned"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->quitAndWait()V

    .line 470
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->finish()V

    .line 473
    :goto_0
    iput-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->paused:Z

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 447
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**** onRestart"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 429
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**** onResume"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 430
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 431
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 434
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iget v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorDelay:I

    .line 432
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    const/4 v0, 0x0

    .line 436
    iput-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->paused:Z

    .line 437
    invoke-direct {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->resumeNativeIfSurfaceReady()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 527
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 528
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->accelerometerEvent(FFF)Z

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 483
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**** onStop"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 486
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 538
    invoke-virtual {p0, p2}, Lcom/nvidia/devtech/NvEventQueueActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 548
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v14, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move v3, v0

    .line 551
    :try_start_0
    invoke-virtual/range {v1 .. v11}, Lcom/nvidia/devtech/NvEventQueueActivity;->multiTouchEvent4Ex(IIIIIIIIII)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :catch_0
    :cond_0
    iget-object v0, v12, Lcom/nvidia/devtech/NvEventQueueActivity;->angraTouchSlots:Lcom/nvidia/devtech/AngraTouchSlots;

    invoke-virtual {v0}, Lcom/nvidia/devtech/AngraTouchSlots;->reset()V

    return v14

    .line 558
    :cond_1
    iget-boolean v0, v12, Lcom/nvidia/devtech/NvEventQueueActivity;->wantsMultitouch:Z

    if-eqz v0, :cond_b

    .line 559
    iget-object v0, v12, Lcom/nvidia/devtech/NvEventQueueActivity;->angraTouchX:[I

    iget-object v3, v12, Lcom/nvidia/devtech/NvEventQueueActivity;->angraTouchY:[I

    .line 560
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 561
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 563
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_2

    .line 564
    iget-object v6, v12, Lcom/nvidia/devtech/NvEventQueueActivity;->angraTouchSlots:Lcom/nvidia/devtech/AngraTouchSlots;

    invoke-virtual {v6}, Lcom/nvidia/devtech/AngraTouchSlots;->reset()V

    .line 565
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    if-ltz v6, :cond_a

    if-lt v6, v4, :cond_3

    goto/16 :goto_3

    .line 567
    :cond_3
    invoke-virtual {v13, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    if-eqz v5, :cond_4

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    .line 569
    :cond_4
    iget-object v6, v12, Lcom/nvidia/devtech/NvEventQueueActivity;->angraTouchSlots:Lcom/nvidia/devtech/AngraTouchSlots;

    invoke-virtual {v6, v15}, Lcom/nvidia/devtech/AngraTouchSlots;->assign(I)I

    :cond_5
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_7

    .line 572
    iget-object v7, v12, Lcom/nvidia/devtech/NvEventQueueActivity;->angraTouchSlots:Lcom/nvidia/devtech/AngraTouchSlots;

    invoke-virtual {v13, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/nvidia/devtech/AngraTouchSlots;->find(I)I

    move-result v7

    if-ltz v7, :cond_6

    .line 574
    invoke-virtual {v13, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    aput v8, v0, v7

    .line 575
    invoke-virtual {v13, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    aput v8, v3, v7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 579
    :cond_7
    iget-object v4, v12, Lcom/nvidia/devtech/NvEventQueueActivity;->angraTouchSlots:Lcom/nvidia/devtech/AngraTouchSlots;

    invoke-virtual {v4, v15}, Lcom/nvidia/devtech/AngraTouchSlots;->find(I)I

    move-result v4

    const/4 v6, 0x2

    if-gez v4, :cond_8

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 585
    :cond_8
    :try_start_1
    aget v7, v0, v1

    aget v8, v3, v1

    aget v9, v0, v14

    aget v10, v3, v14

    aget v11, v0, v6

    aget v16, v3, v6

    aget v0, v0, v2

    aget v17, v3, v2

    move-object/from16 v1, p0

    move v2, v5

    move v3, v4

    move v4, v7

    move v5, v8

    move v6, v9

    move v7, v10

    move v8, v11

    move/from16 v9, v16

    move v10, v0

    move/from16 v11, v17

    invoke-virtual/range {v1 .. v11}, Lcom/nvidia/devtech/NvEventQueueActivity;->multiTouchEvent4Ex(IIIIIIIIII)Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 588
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 590
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    iget-object v0, v12, Lcom/nvidia/devtech/NvEventQueueActivity;->angraTouchSlots:Lcom/nvidia/devtech/AngraTouchSlots;

    invoke-virtual {v0, v15}, Lcom/nvidia/devtech/AngraTouchSlots;->release(I)V

    .line 591
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v14, :cond_c

    iget-object v0, v12, Lcom/nvidia/devtech/NvEventQueueActivity;->angraTouchSlots:Lcom/nvidia/devtech/AngraTouchSlots;

    invoke-virtual {v0}, Lcom/nvidia/devtech/AngraTouchSlots;->reset()V

    goto :goto_4

    :cond_a
    :goto_3
    return v14

    .line 594
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v12, v0, v1, v2, v13}, Lcom/nvidia/devtech/NvEventQueueActivity;->touchEvent(IIILandroid/view/MotionEvent;)Z

    .line 596
    :cond_c
    :goto_4
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public native pauseEvent()V
.end method

.method public native quitAndWait()V
.end method

.method public native resumeEvent()V
.end method

.method public setGameWindowSize(II)V
    .locals 1

    .line 375
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->IsPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    if-gt p1, p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->IsPortrait()Z

    move-result v0

    if-nez v0, :cond_2

    if-le p2, p1, :cond_2

    .line 376
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->setWindowSize(II)V

    goto :goto_0

    .line 378
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/nvidia/devtech/NvEventQueueActivity;->setWindowSize(II)V

    :goto_0
    return-void
.end method

.method public native setWindowSize(II)V
.end method

.method protected shouldDispatchAutomaticPauseResume()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showSystemUI()V
    .locals 4

    .line 906
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 908
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 909
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Z)V

    .line 910
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 911
    invoke-static {v0}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 912
    invoke-static {}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v2

    invoke-static {}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m$1()I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/view/WindowInsetsController;I)V

    .line 913
    invoke-static {v0, v1}, Lcom/xyron/game/main/SAMP$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/WindowInsetsController;I)V

    goto :goto_0

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public swapBuffers()Z
    .locals 5

    .line 1158
    invoke-direct {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->isRenderSurfaceReady()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1159
    :cond_0
    iget v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->SwapBufferSkip:I

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    .line 1161
    iput v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->SwapBufferSkip:I

    .line 1162
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "swapBuffer wait"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1

    .line 1165
    :cond_1
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1167
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "eglSurface is NULL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2

    .line 1173
    :cond_2
    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1175
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "eglSwapBufferrr: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2

    :cond_3
    return v1
.end method

.method protected systemCleanup()V
    .locals 1

    .line 1271
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->ranInit:Z

    if-eqz v0, :cond_0

    .line 1272
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->cleanup()V

    .line 1273
    :cond_0
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->cleanupEGL()V

    return-void
.end method

.method protected systemInit()Z
    .locals 4

    .line 783
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "In systemInit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 784
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->GetGLExtensions:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->supportPauseResume:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 785
    invoke-virtual {p0, v0}, Lcom/nvidia/devtech/NvEventQueueActivity;->init(Z)Z

    :cond_0
    const v0, 0x7f0d0053

    .line 788
    invoke-virtual {p0, v0}, Lcom/nvidia/devtech/NvEventQueueActivity;->setContentView(I)V

    const v0, 0x7f0a0226

    .line 790
    invoke-virtual {p0, v0}, Lcom/nvidia/devtech/NvEventQueueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    .line 791
    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const v0, 0x7f0a03af

    .line 792
    invoke-virtual {p0, v0}, Lcom/nvidia/devtech/NvEventQueueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mAndroidUI:Landroid/widget/FrameLayout;

    .line 794
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x2

    .line 795
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 796
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 797
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->isShieldTV:Z

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->holder:Landroid/view/SurfaceHolder;

    iget v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->maxDisplayWidth:I

    iget v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->maxDisplayHeight:I

    invoke-interface {v0, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 802
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 803
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 805
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->holder:Landroid/view/SurfaceHolder;

    new-instance v2, Lcom/nvidia/devtech/NvEventQueueActivity$1;

    invoke-direct {v2, p0}, Lcom/nvidia/devtech/NvEventQueueActivity$1;-><init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 870
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->DoResumeEvent()V

    return v1
.end method

.method public native touchEvent(IIILandroid/view/MotionEvent;)Z
.end method

.method public unMakeCurrent()Z
    .locals 5

    .line 1251
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1253
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "egl(Un)MakeCurrent err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
