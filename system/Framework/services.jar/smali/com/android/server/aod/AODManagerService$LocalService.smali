.class final Lcom/android/server/aod/AODManagerService$LocalService;
.super Lcom/samsung/android/aod/AODManagerInternal;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .registers 2

    .line 1493
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p2, "x1"    # Lcom/android/server/aod/AODManagerService$1;

    .line 1493
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService$LocalService;-><init>(Lcom/android/server/aod/AODManagerService;)V

    return-void
.end method


# virtual methods
.method public isAODAnalogLiveClock()Z
    .registers 4

    .line 1524
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAODAnalogLiveClock: mIsAODAnalogLiveClock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$2400(Lcom/android/server/aod/AODManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$2400(Lcom/android/server/aod/AODManagerService;)Z

    move-result v0

    return v0
.end method

.method public screenTurningOn(Lcom/samsung/android/aod/AODManager$AODChangeListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/aod/AODManager$AODChangeListener;

    .line 1497
    invoke-static {}, Lcom/android/server/aod/AODConfig;->isNeedsScreenTurningOnDelayed()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1498
    # getter for: Lcom/android/server/aod/AODManagerService;->AOD_SCREEN_TURNING_ON_TIMEOUT:I
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$4800()I

    move-result v0

    # getter for: Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$4900()I

    move-result v1

    add-int/2addr v0, v1

    if-eqz v0, :cond_8e

    .line 1499
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$5100(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->access$5000(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1500
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$5100(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->access$5000(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/aod/AODManagerService$AODHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1503
    :cond_32
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screenTurningOn post"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    # getter for: Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$4900()I

    move-result v0

    if-eqz v0, :cond_5f

    .line 1505
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenTurningOn post - add delay +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$4900()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_5f
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$000(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1508
    :try_start_66
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    # setter for: Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;
    invoke-static {v1, p1}, Lcom/android/server/aod/AODManagerService;->access$202(Lcom/android/server/aod/AODManagerService;Lcom/samsung/android/aod/AODManager$AODChangeListener;)Lcom/samsung/android/aod/AODManager$AODChangeListener;

    .line 1509
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_8b

    .line 1510
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$5100(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->access$5000(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    # getter for: Lcom/android/server/aod/AODManagerService;->AOD_SCREEN_TURNING_ON_TIMEOUT:I
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$4800()I

    move-result v2

    # getter for: Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$4900()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1511
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->wakeUpInternal()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$5200(Lcom/android/server/aod/AODManagerService;)V

    goto :goto_a8

    .line 1509
    :catchall_8b
    move-exception v1

    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v1

    .line 1513
    :cond_8e
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screenTurningOn directly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    if-eqz p1, :cond_9e

    .line 1515
    invoke-interface {p1}, Lcom/samsung/android/aod/AODManager$AODChangeListener;->readyToScreenTurningOn()V

    goto :goto_a8

    .line 1517
    :cond_9e
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screenTurningOn : Do nothing, There is no Listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :goto_a8
    return-void
.end method
