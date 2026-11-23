.class public final synthetic Lcom/xyron/game/launcher/util/ArchiveDataInstaller$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;


# instance fields
.field public final synthetic f$0:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;JLcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;

    iput-wide p2, p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$$ExternalSyntheticLambda0;->f$2:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    iput p5, p0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final update(ZJJLjava/lang/String;)V
    .locals 12

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$$ExternalSyntheticLambda0;->f$0:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;

    iget-wide v2, v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$$ExternalSyntheticLambda0;->f$1:J

    iget-object v4, v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$$ExternalSyntheticLambda0;->f$2:Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;

    iget v5, v0, Lcom/xyron/game/launcher/util/ArchiveDataInstaller$$ExternalSyntheticLambda0;->f$3:I

    move v6, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    invoke-static/range {v1 .. v11}, Lcom/xyron/game/launcher/util/ArchiveDataInstaller;->lambda$installSplit$0(Lcom/xyron/game/launcher/util/ArchiveDataInstaller$Progress;JLcom/xyron/game/launcher/util/ArchiveDataInstaller$Source;IZJJLjava/lang/String;)V

    return-void
.end method
