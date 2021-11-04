.class final Lcom/android/server/audio/AudioService$VolumeMap;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VolumeMap"
.end annotation


# instance fields
.field lowerStep:S

.field raiseStep:S


# direct methods
.method public constructor <init>(SS)V
    .registers 3
    .param p1, "lowerStep"    # S
    .param p2, "raiseStep"    # S

    .line 13322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13323
    iput-short p2, p0, Lcom/android/server/audio/AudioService$VolumeMap;->raiseStep:S

    .line 13324
    iput-short p1, p0, Lcom/android/server/audio/AudioService$VolumeMap;->lowerStep:S

    .line 13325
    return-void
.end method
