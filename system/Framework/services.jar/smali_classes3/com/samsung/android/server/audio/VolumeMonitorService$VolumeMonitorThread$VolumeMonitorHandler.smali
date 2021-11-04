.class Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;
.super Landroid/os/Handler;
.source "VolumeMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeMonitorHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;Lcom/samsung/android/server/audio/VolumeMonitorService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;
    .param p2, "x1"    # Lcom/samsung/android/server/audio/VolumeMonitorService$1;

    .line 194
    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0xea60

    const/4 v3, 0x1

    if-eqz v0, :cond_75

    if-eq v0, v3, :cond_13

    .line 227
    const-string v0, "AS.VolumeMonitor"

    const-string v1, "Not supported message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_aa

    .line 208
    :cond_13
    new-instance v0, Lcom/samsung/android/server/audio/-$$Lambda$VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler$vkKAOwv9TZ4vlQ_9jMRk50xd1GQ;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/-$$Lambda$VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler$vkKAOwv9TZ4vlQ_9jMRk50xd1GQ;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;)V

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v0, v0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    # getter for: Lcom/samsung/android/server/audio/VolumeMonitorService;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->access$200(Lcom/samsung/android/server/audio/VolumeMonitorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 211
    :try_start_24
    iget-object v4, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v4, v4, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    # getter for: Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z
    invoke-static {v4}, Lcom/samsung/android/server/audio/VolumeMonitorService;->access$400(Lcom/samsung/android/server/audio/VolumeMonitorService;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_38

    .line 212
    iget-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v1, v1, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    # setter for: Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I
    invoke-static {v1, v5}, Lcom/samsung/android/server/audio/VolumeMonitorService;->access$302(Lcom/samsung/android/server/audio/VolumeMonitorService;I)I

    .line 213
    monitor-exit v0

    return-void

    .line 216
    :cond_38
    iget-object v4, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v4, v4, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    # invokes: Lcom/samsung/android/server/audio/VolumeMonitorService;->isMusicPlaying()Z
    invoke-static {v4}, Lcom/samsung/android/server/audio/VolumeMonitorService;->access$500(Lcom/samsung/android/server/audio/VolumeMonitorService;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 217
    const-string v4, "AS.VolumeMonitor"

    const-string v5, "Music is playing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v4, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v4, v4, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    # getter for: Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/samsung/android/server/audio/VolumeMonitorService;->access$000(Lcom/samsung/android/server/audio/VolumeMonitorService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v5, v5, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 219
    # getter for: Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/samsung/android/server/audio/VolumeMonitorService;->access$000(Lcom/samsung/android/server/audio/VolumeMonitorService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 218
    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 220
    monitor-exit v0

    return-void

    .line 222
    :cond_62
    const-string v1, "AS.VolumeMonitor"

    const-string v2, "Music is stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v1, v1, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    # setter for: Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I
    invoke-static {v1, v5}, Lcom/samsung/android/server/audio/VolumeMonitorService;->access$302(Lcom/samsung/android/server/audio/VolumeMonitorService;I)I

    .line 224
    monitor-exit v0

    .line 225
    goto :goto_aa

    .line 224
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_24 .. :try_end_74} :catchall_72

    throw v1

    .line 199
    :cond_75
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v0, v0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    # getter for: Lcom/samsung/android/server/audio/VolumeMonitorService;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->access$200(Lcom/samsung/android/server/audio/VolumeMonitorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 200
    :try_start_7e
    iget-object v4, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v4, v4, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    # getter for: Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I
    invoke-static {v4}, Lcom/samsung/android/server/audio/VolumeMonitorService;->access$300(Lcom/samsung/android/server/audio/VolumeMonitorService;)I

    move-result v4

    if-ne v4, v3, :cond_8a

    monitor-exit v0

    return-void

    .line 202
    :cond_8a
    iget-object v4, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v4, v4, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    # setter for: Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I
    invoke-static {v4, v3}, Lcom/samsung/android/server/audio/VolumeMonitorService;->access$302(Lcom/samsung/android/server/audio/VolumeMonitorService;I)I

    .line 203
    iget-object v4, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v4, v4, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    # getter for: Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/samsung/android/server/audio/VolumeMonitorService;->access$000(Lcom/samsung/android/server/audio/VolumeMonitorService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v5, v5, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    # getter for: Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/samsung/android/server/audio/VolumeMonitorService;->access$000(Lcom/samsung/android/server/audio/VolumeMonitorService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 205
    monitor-exit v0

    .line 206
    nop

    .line 229
    :goto_aa
    return-void

    .line 205
    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_7e .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method public synthetic lambda$handleMessage$0$VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler()V
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v0, v0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    # invokes: Lcom/samsung/android/server/audio/VolumeMonitorService;->sendVolumeData()V
    invoke-static {v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->access$600(Lcom/samsung/android/server/audio/VolumeMonitorService;)V

    return-void
.end method
