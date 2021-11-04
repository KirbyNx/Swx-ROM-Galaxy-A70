.class Lcom/android/server/audio/PlaybackActivityMonitor$1;
.super Lcom/samsung/android/server/audio/FrequentWorker;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/server/audio/FrequentWorker<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/PlaybackActivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/audio/PlaybackActivityMonitor;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 1091
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-direct {p0}, Lcom/samsung/android/server/audio/FrequentWorker;-><init>()V

    .line 1093
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->mPeriodMs:I

    .line 1094
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->mCachedValue:Ljava/lang/Object;

    .line 1095
    return-void
.end method


# virtual methods
.method public bridge synthetic func()Ljava/lang/Object;
    .registers 2

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/audio/PlaybackActivityMonitor$1;->func()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public func()Ljava/lang/Void;
    .registers 7

    .line 1099
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    # getter for: Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->access$700(Lcom/android/server/audio/PlaybackActivityMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 1100
    const-string v0, "AudioService.PlaybackActivityMonitor"

    const-string v2, "There is no audio handler"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    return-object v1

    .line 1104
    :cond_11
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    # getter for: Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->access$700(Lcom/android/server/audio/PlaybackActivityMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$1;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 1105
    # getter for: Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->access$700(Lcom/android/server/audio/PlaybackActivityMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6a

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1104
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1108
    return-object v1
.end method
