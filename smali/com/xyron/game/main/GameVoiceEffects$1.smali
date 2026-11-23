.class Lcom/xyron/game/main/GameVoiceEffects$1;
.super Landroid/media/AudioManager$AudioRecordingCallback;
.source "GameVoiceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/main/GameVoiceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/main/GameVoiceEffects;


# direct methods
.method constructor <init>(Lcom/xyron/game/main/GameVoiceEffects;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xyron/game/main/GameVoiceEffects$1;->this$0:Lcom/xyron/game/main/GameVoiceEffects;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioRecordingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingConfigChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/xyron/game/main/GameVoiceEffects$1;->this$0:Lcom/xyron/game/main/GameVoiceEffects;

    invoke-static {v0, p1}, Lcom/xyron/game/main/GameVoiceEffects;->access$000(Lcom/xyron/game/main/GameVoiceEffects;Ljava/util/List;)V

    return-void
.end method
