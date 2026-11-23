.class final Lcom/xyron/game/main/AngraNotifyOverlay;
.super Ljava/lang/Object;
.source "AngraNotifyOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyron/game/main/AngraNotifyOverlay$BoundsBridge;
    }
.end annotation


# instance fields
.field private disposed:Z

.field private final game:Lcom/xyron/game/main/SAMP;

.field private volatile hitBottom:F

.field private volatile hitLeft:F

.field private volatile hitRight:F

.field private volatile hitTop:F

.field private final pending:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private ready:Z

.field private suppressed:Z

.field private web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/SAMP;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->pending:Ljava/util/ArrayDeque;

    .line 24
    iput-object p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->game:Lcom/xyron/game/main/SAMP;

    return-void
.end method

.method static synthetic access$000(Lcom/xyron/game/main/AngraNotifyOverlay;)F
    .locals 0

    .line 12
    iget p0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->hitLeft:F

    return p0
.end method

.method static synthetic access$002(Lcom/xyron/game/main/AngraNotifyOverlay;F)F
    .locals 0

    .line 12
    iput p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->hitLeft:F

    return p1
.end method

.method static synthetic access$100(Lcom/xyron/game/main/AngraNotifyOverlay;)F
    .locals 0

    .line 12
    iget p0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->hitTop:F

    return p0
.end method

.method static synthetic access$102(Lcom/xyron/game/main/AngraNotifyOverlay;F)F
    .locals 0

    .line 12
    iput p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->hitTop:F

    return p1
.end method

.method static synthetic access$200(Lcom/xyron/game/main/AngraNotifyOverlay;)F
    .locals 0

    .line 12
    iget p0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->hitRight:F

    return p0
.end method

.method static synthetic access$202(Lcom/xyron/game/main/AngraNotifyOverlay;F)F
    .locals 0

    .line 12
    iput p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->hitRight:F

    return p1
.end method

.method static synthetic access$300(Lcom/xyron/game/main/AngraNotifyOverlay;)F
    .locals 0

    .line 12
    iget p0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->hitBottom:F

    return p0
.end method

.method static synthetic access$302(Lcom/xyron/game/main/AngraNotifyOverlay;F)F
    .locals 0

    .line 12
    iput p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->hitBottom:F

    return p1
.end method

.method static synthetic access$400(Lcom/xyron/game/main/AngraNotifyOverlay;)Lcom/xyron/game/main/SAMP;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->game:Lcom/xyron/game/main/SAMP;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xyron/game/main/AngraNotifyOverlay;)Landroid/webkit/WebView;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->web:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xyron/game/main/AngraNotifyOverlay;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->disposed:Z

    return p0
.end method

.method static synthetic access$702(Lcom/xyron/game/main/AngraNotifyOverlay;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->ready:Z

    return p1
.end method

.method static synthetic access$800(Lcom/xyron/game/main/AngraNotifyOverlay;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xyron/game/main/AngraNotifyOverlay;->flush()V

    return-void
.end method

.method static synthetic access$900(Lcom/xyron/game/main/AngraNotifyOverlay;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xyron/game/main/AngraNotifyOverlay;->destroyView()V

    return-void
.end method

.method private create()V
    .locals 0

    return-void
.end method

.method private destroyView()V
    .locals 2

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->ready:Z

    iget-object v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    return-void
.end method

.method private flush()V
    .locals 3

    .line 65
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->ready:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->disposed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->web:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.AngraNotify&&AngraNotify.show("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->disposed:Z

    iget-object v0, p0, Lcom/xyron/game/main/AngraNotifyOverlay;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-direct {p0}, Lcom/xyron/game/main/AngraNotifyOverlay;->destroyView()V

    return-void
.end method

.method show(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method suppress(Z)V
    .locals 0

    return-void
.end method
