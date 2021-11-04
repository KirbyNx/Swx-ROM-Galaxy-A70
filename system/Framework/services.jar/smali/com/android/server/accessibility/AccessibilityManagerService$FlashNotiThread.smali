.class Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
.super Ljava/lang/Thread;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashNotiThread"
.end annotation


# instance fields
.field private final mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

.field private mForceStop:Z

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V
    .registers 3
    .param p2, "noti"    # Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    .line 5269
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5270
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    .line 5271
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    .line 5272
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;
    .param p3, "x2"    # Lcom/android/server/accessibility/AccessibilityManagerService$1;

    .line 5265
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    .line 5265
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    return-object v0
.end method

.method private delay(J)V
    .registers 9
    .param p1, "duration"    # J

    .line 5323
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1f

    .line 5324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 5327
    .local v2, "bedtime":J
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f

    .line 5329
    goto :goto_10

    .line 5328
    :catch_f
    move-exception v4

    .line 5330
    :goto_10
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-eqz v4, :cond_15

    .line 5331
    goto :goto_1f

    .line 5333
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long p1, v2, v4

    .line 5334
    cmp-long v4, p1, v0

    if-gtz v4, :cond_b

    .line 5336
    .end local v2    # "bedtime":J
    :cond_1f
    :goto_1f
    return-void
.end method

.method private startFlashNoti()V
    .registers 3

    .line 5298
    monitor-enter p0

    .line 5299
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-nez v0, :cond_44

    .line 5300
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mType:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$3900(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mRepeat:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$9000(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    if-ltz v0, :cond_1f

    .line 5301
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    # operator-- for: Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mRepeat:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$9010(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 5302
    goto :goto_44

    .line 5304
    :cond_1f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->doFlashNoti(Z)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9100(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    .line 5305
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOnDuration:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$9200(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->delay(J)V

    .line 5306
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-eqz v0, :cond_33

    .line 5307
    goto :goto_44

    .line 5309
    :cond_33
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->doFlashNoti(Z)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9100(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    .line 5310
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOffDuration:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$9300(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->delay(J)V

    goto :goto_1

    .line 5312
    :cond_44
    :goto_44
    monitor-exit p0

    .line 5313
    return-void

    .line 5312
    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_46

    throw v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 5316
    monitor-enter p0

    .line 5317
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    .line 5318
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 5319
    monitor-exit p0

    .line 5320
    return-void

    .line 5319
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public run()V
    .registers 5

    .line 5275
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 5276
    monitor-enter p0

    .line 5277
    :try_start_5
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_56

    .line 5279
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->startFlashNoti()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_4a

    .line 5281
    :try_start_11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5282
    nop

    .line 5283
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_56

    .line 5284
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotifications:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8300(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 5285
    :try_start_23
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, p0, :cond_31

    .line 5286
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8802(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    .line 5288
    :cond_31
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-nez v1, :cond_45

    .line 5289
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    if-eqz v1, :cond_40

    .line 5290
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->unlinkFlashNoti(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V
    invoke-static {v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V

    .line 5292
    :cond_40
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8402(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    .line 5294
    :cond_45
    monitor-exit v0

    .line 5295
    return-void

    .line 5294
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_23 .. :try_end_49} :catchall_47

    throw v1

    .line 5281
    :catchall_4a
    move-exception v0

    :try_start_4b
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5282
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
    throw v0

    .line 5283
    .restart local p0    # "this":Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
    :catchall_56
    move-exception v0

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_56

    throw v0
.end method
