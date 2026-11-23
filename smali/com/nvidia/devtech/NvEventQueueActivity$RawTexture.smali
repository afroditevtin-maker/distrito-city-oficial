.class public Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;
.super Lcom/nvidia/devtech/NvEventQueueActivity$RawData;
.source "NvEventQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/devtech/NvEventQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawTexture"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/nvidia/devtech/NvEventQueueActivity$RawData;-><init>()V

    return-void
.end method
