.class Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;
.super Landroid/content/BroadcastReceiver;
.source "CameraServiceWorker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShakeEventListener"
.end annotation


# static fields
.field private static final ACTION_AUDIO_MODE_CHANGE:Ljava/lang/String; = "android.samsung.media.action.AUDIO_MODE"

.field private static final CALL_END:I = 0x0

.field private static final CALL_START:I = 0x2

.field private static final CALL_VIDEO:I = 0x3

.field private static final DAYS_TO_KEEP_LOG:I = 0xa

.field private static final EVENT_SHAKE_OFF:I = 0x2

.field private static final EVENT_SHAKE_ON:I = 0x1

.field private static final EXTRA_VALUE_AUDIO_MODE_CHANGE:Ljava/lang/String; = "android.samsung.media.extra.AUDIO_MODE"

.field private static final TYPE_SHAKE:I = 0x1004c

.field private static final VENDOR_STATE_SHAKE_INFO:J = 0x100000000L

.field private static final VENDOR_STATE_SHAKE_OFF:J = 0x0L

.field private static final VENDOR_STATE_SHAKE_ON:J = 0x200000000L


# instance fields
.field private mAccumulatedShakeTime:J

.field private mApplied:Z

.field private mDailyLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mInCall:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeCount:J

.field private mShakeDetected:Z

.field private mShakeDetector:Landroid/hardware/Sensor;

.field private mShakeStartTime:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/os/Handler;)V
    .registers 6
    .param p2, "handler"    # Landroid/os/Handler;

    .line 352
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mEnabled:Z

    .line 341
    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mInCall:Z

    .line 342
    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeDetected:Z

    .line 343
    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mApplied:Z

    .line 346
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeCount:J

    .line 347
    iput-wide v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mAccumulatedShakeTime:J

    .line 348
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mDailyLog:Ljava/util/List;

    .line 350
    iput-wide v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeStartTime:J

    .line 353
    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 354
    const v1, 0x1004c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeDetector:Landroid/hardware/Sensor;

    .line 356
    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 357
    .local p1, "pm":Landroid/os/PowerManager;
    const-string v0, "CameraService_worker"

    invoke-virtual {p1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 359
    iput-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mHandler:Landroid/os/Handler;

    .line 360
    return-void
.end method

.method private handleShakeEventChanged()V
    .registers 12

    .line 473
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$700(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 476
    :try_start_7
    const-string v1, "Shake event changed now(%b) -> next(%b), enable(%b) call(%b) shake(%b)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mApplied:Z

    .line 477
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mEnabled:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_24

    iget-boolean v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mInCall:Z

    if-nez v3, :cond_24

    iget-boolean v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeDetected:Z

    if-eqz v3, :cond_24

    move v3, v5

    goto :goto_25

    :cond_24
    move v3, v4

    :goto_25
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    iget-boolean v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-boolean v7, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mInCall:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v3

    const/4 v3, 0x4

    iget-boolean v7, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeDetected:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v3

    .line 476
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "eventMessage":Ljava/lang/String;
    const-string v2, "CameraService_worker"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget-object v2, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->SHAKE:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    invoke-static {v2, v1}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 481
    iget-boolean v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mApplied:Z

    iget-boolean v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mEnabled:Z

    if-eqz v3, :cond_64

    iget-boolean v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mInCall:Z

    if-nez v3, :cond_64

    iget-boolean v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeDetected:Z

    if-eqz v3, :cond_64

    move v3, v5

    goto :goto_65

    :cond_64
    move v3, v4

    :goto_65
    if-eq v2, v3, :cond_166

    .line 482
    iget-boolean v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mEnabled:Z

    if-eqz v2, :cond_75

    iget-boolean v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mInCall:Z

    if-nez v2, :cond_75

    iget-boolean v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeDetected:Z

    if-eqz v2, :cond_75

    move v2, v5

    goto :goto_76

    :cond_75
    move v2, v4

    :goto_76
    iput-boolean v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mApplied:Z

    .line 484
    const-wide/16 v7, 0x0

    if-eqz v2, :cond_fb

    .line 486
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_99

    .line 487
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 488
    const-string v2, "CameraService_worker"

    const-string/jumbo v3, "wakelock acquired"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    sget-object v2, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->SHAKE:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string/jumbo v3, "wakelock acquired"

    invoke-static {v2, v3}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 492
    :cond_99
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-wide v9, 0x300000000L

    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(JZ)Landroid/util/Pair;
    invoke-static {v2, v9, v10, v5}, Lcom/samsung/android/camera/CameraServiceWorker;->access$800(Lcom/samsung/android/camera/CameraServiceWorker;JZ)Landroid/util/Pair;

    move-result-object v2

    .line 494
    .local v2, "notifyResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/String;>;"
    const-string v3, "ON: %s"

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v10, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v10, v9, v4

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 495
    const-string v3, "CameraService_worker"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-object v3, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->SHAKE:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    invoke-static {v3, v1}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 498
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_db

    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z
    invoke-static {v3}, Lcom/samsung/android/camera/CameraServiceWorker;->access$900(Lcom/samsung/android/camera/CameraServiceWorker;)Z

    move-result v3

    if-nez v3, :cond_db

    .line 499
    iget-wide v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeCount:J

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeStartTime:J

    goto :goto_fa

    .line 502
    :cond_db
    sget-object v3, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->SHAKE:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string v9, "Logging Skipped, event(%b) camera open(%b)"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v10, v6, v4

    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z
    invoke-static {v4}, Lcom/samsung/android/camera/CameraServiceWorker;->access$900(Lcom/samsung/android/camera/CameraServiceWorker;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 503
    iput-wide v7, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeStartTime:J

    .line 505
    .end local v2    # "notifyResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/String;>;"
    :goto_fa
    goto :goto_161

    .line 506
    :cond_fb
    const-string v2, "OFF: %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-wide v9, 0x100000000L

    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(JZ)Landroid/util/Pair;
    invoke-static {v6, v9, v10, v5}, Lcom/samsung/android/camera/CameraServiceWorker;->access$800(Lcom/samsung/android/camera/CameraServiceWorker;JZ)Landroid/util/Pair;

    move-result-object v6

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 507
    const-string v2, "CameraService_worker"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    sget-object v2, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->SHAKE:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    invoke-static {v2, v1}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 510
    iget-wide v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeStartTime:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_142

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v9, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeStartTime:J

    sub-long/2addr v2, v9

    .line 512
    .local v2, "duration":J
    iget-wide v9, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mAccumulatedShakeTime:J

    add-long/2addr v9, v2

    iput-wide v9, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mAccumulatedShakeTime:J

    .line 513
    sget-object v6, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->SHAKE:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string v9, "Duration: %d ms"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v5, v4

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 515
    .end local v2    # "duration":J
    :cond_142
    iput-wide v7, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeStartTime:J

    .line 518
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_161

    .line 519
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 520
    const-string v2, "CameraService_worker"

    const-string/jumbo v3, "wakelock released"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    sget-object v2, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->SHAKE:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string/jumbo v3, "wakelock released"

    invoke-static {v2, v3}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 525
    :cond_161
    :goto_161
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # setter for: Lcom/samsung/android/camera/CameraServiceWorker;->mLastEventMessage:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1002(Lcom/samsung/android/camera/CameraServiceWorker;Ljava/lang/String;)Ljava/lang/String;

    .line 527
    .end local v1    # "eventMessage":Ljava/lang/String;
    :cond_166
    monitor-exit v0

    .line 528
    return-void

    .line 527
    :catchall_168
    move-exception v1

    monitor-exit v0
    :try_end_16a
    .catchall {:try_start_7 .. :try_end_16a} :catchall_168

    throw v1
.end method


# virtual methods
.method public declared-synchronized dumpDMALog()V
    .registers 8

    monitor-enter p0

    .line 446
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mEnableSurveyMode:Z
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$600(Lcom/samsung/android/camera/CameraServiceWorker;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 447
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string v1, "0125"

    iget-wide v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 448
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string v1, "0124"

    iget-wide v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mAccumulatedShakeTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 451
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;
    :cond_24
    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->SHAKE:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string v1, "Reset and dump, count(%d), duration(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeCount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-wide v5, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mAccumulatedShakeTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mDailyLog:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    iget-wide v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v5, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mAccumulatedShakeTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mDailyLog:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_69

    .line 455
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mDailyLog:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 458
    :cond_69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeCount:J

    .line 459
    iput-wide v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mAccumulatedShakeTime:J
    :try_end_6f
    .catchall {:try_start_1 .. :try_end_6f} :catchall_71

    .line 460
    monitor-exit p0

    return-void

    .line 445
    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dumpLog(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 463
    :try_start_1
    const-string v0, "\n\tDump of ShakeEventListener Activity"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t\tTotal # of shake detection (since update): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t\tAccumulated shake power on duration (since update): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mAccumulatedShakeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    const-string v0, "\t\tDaily accumulated (old first):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mDailyLog:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 468
    .local v1, "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string v2, "\t\t\tcount(%d), duration(%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_62

    .line 469
    .end local v1    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    goto :goto_3d

    .line 470
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;
    :cond_60
    monitor-exit p0

    return-void

    .line 462
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_62
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isSupported()Z
    .registers 2

    monitor-enter p0

    .line 421
    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 365
    return-void
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    monitor-enter p0

    .line 388
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_5d

    .line 389
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    .line 391
    :cond_9
    const/4 v1, -0x1

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7539e1b9

    const/4 v4, 0x0

    if-eq v2, v3, :cond_15

    :cond_14
    goto :goto_1e

    :cond_15
    const-string v2, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v1, v4

    :goto_1e
    if-eqz v1, :cond_21

    goto :goto_5b

    .line 393
    :cond_21
    const-string v1, "android.samsung.media.extra.AUDIO_MODE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 394
    .local v1, "audioMode":I
    const-string v2, "CameraService_worker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio mode changed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    if-eqz v1, :cond_51

    const/4 v2, 0x2

    if-eq v1, v2, :cond_46

    const/4 v2, 0x3

    if-eq v1, v2, :cond_46

    goto :goto_5a

    .line 399
    :cond_46
    iget-boolean v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mInCall:Z

    if-nez v2, :cond_5a

    .line 400
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mInCall:Z

    .line 401
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->handleShakeEventChanged()V

    goto :goto_5a

    .line 405
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;
    :cond_51
    iget-boolean v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mInCall:Z

    if-eqz v2, :cond_5a

    .line 406
    iput-boolean v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mInCall:Z

    .line 407
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->handleShakeEventChanged()V
    :try_end_5a
    .catchall {:try_start_a .. :try_end_5a} :catchall_5d

    .line 414
    .end local v1    # "audioMode":I
    :cond_5a
    :goto_5a
    nop

    .line 418
    :goto_5b
    monitor-exit p0

    return-void

    .line 387
    .end local v0    # "action":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    monitor-enter p0

    .line 369
    :try_start_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1004c

    if-ne v0, v1, :cond_2c

    .line 370
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_27

    const/4 v2, 0x2

    if-eq v0, v2, :cond_21

    .line 380
    const-string v0, "CameraService_worker"

    const-string v1, "Unknown shake event. ignore"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_2e

    .line 381
    monitor-exit p0

    return-void

    .line 376
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;
    :cond_21
    :try_start_21
    iput-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeDetected:Z

    .line 377
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->handleShakeEventChanged()V

    .line 378
    goto :goto_2c

    .line 372
    :cond_27
    iput-boolean v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeDetected:Z

    .line 373
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->handleShakeEventChanged()V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2e

    .line 384
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    .line 368
    .end local p1    # "event":Landroid/hardware/SensorEvent;
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .registers 5

    monitor-enter p0

    .line 425
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mEnabled:Z

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 426
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mShakeDetector:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 428
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 429
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 432
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mEnabled:Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 434
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;
    :cond_2b
    monitor-exit p0

    return-void

    .line 424
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    .line 437
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mEnabled:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 438
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 439
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->mEnabled:Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 443
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;
    :cond_1c
    monitor-exit p0

    return-void

    .line 436
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
