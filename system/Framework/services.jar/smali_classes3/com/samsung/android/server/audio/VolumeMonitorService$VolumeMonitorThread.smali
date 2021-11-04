.class Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;
.super Ljava/lang/Thread;
.source "VolumeMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/VolumeMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeMonitorThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/audio/VolumeMonitorService;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 179
    const-string p1, "VolumeMonitor"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 180
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 184
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    monitor-enter v0

    .line 187
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    new-instance v2, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;Lcom/samsung/android/server/audio/VolumeMonitorService$1;)V

    # setter for: Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/samsung/android/server/audio/VolumeMonitorService;->access$002(Lcom/samsung/android/server/audio/VolumeMonitorService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 188
    iget-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 189
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1b

    .line 191
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 192
    return-void

    .line 189
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method
