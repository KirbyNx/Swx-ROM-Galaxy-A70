.class Lcom/android/server/am/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS:J = 0x2eeL

.field private static final TAG:Ljava/lang/String; = "BatteryExternalStatsWorker"


# instance fields
.field private mBatteryLevelSync:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentReason:Ljava/lang/String;

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mLastCollectionTimeStamp:J

.field private mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

.field private mOnBattery:Z

.field private mOnBatteryScreenOff:Z

.field mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mSyncTask:Ljava/lang/Runnable;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private final mUidsToRemove:Landroid/util/IntArray;

.field private mUpdateFlags:I

.field private mUseLatestStates:Z

.field private mWakelockChangesUpdate:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWorkerLock:Ljava/lang/Object;

.field private final mWriteTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 140
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    sget-object v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w;->INSTANCE:Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w;

    .line 77
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 92
    iput v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 95
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 98
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 107
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 110
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    .line 119
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 121
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 124
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 129
    new-instance v1, Landroid/os/connectivity/WifiActivityEnergyInfo;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 329
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    .line 398
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$2;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    .line 141
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    .line 142
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BatteryExternalStatsWorker;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/BatteryExternalStatsWorker;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # I

    .line 62
    iput p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/server/am/BatteryExternalStatsWorker;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # J

    .line 62
    iput-wide p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/BatteryExternalStatsWorker;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Ljava/util/concurrent/Future;

    .line 62
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelSyncDueToBatteryLevelChangeLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZZ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZZ)V

    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .registers 5
    .param p0, "receiver"    # Landroid/os/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    .line 556
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 557
    return-object v0

    .line 561
    :cond_4
    const-wide/16 v1, 0x7d0

    .line 562
    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 563
    .local v1, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1f

    .line 565
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 567
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2
    :try_end_1c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_1c} :catch_20

    .line 569
    .local v2, "data":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_1f

    .line 570
    return-object v2

    .line 575
    .end local v1    # "result":Landroid/os/SynchronousResultReceiver$Result;
    .end local v2    # "data":Landroid/os/Parcelable;, "TT;"
    :cond_1f
    goto :goto_41

    .line 573
    :catch_20
    move-exception v1

    .line 574
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryExternalStatsWorker"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_41
    return-object v0
.end method

.method private cancelSyncDueToBatteryLevelChangeLocked()V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_b

    .line 247
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 250
    :cond_b
    return-void
.end method

.method private extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;
    .registers 53
    .param p1, "latest"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 581
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 582
    invoke-virtual {v3}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 583
    .local v1, "timePeriodMs":J
    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v3}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v3

    .line 584
    .local v3, "lastScanMs":J
    iget-object v5, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v5

    .line 585
    .local v5, "lastIdleMs":J
    iget-object v7, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v7}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v7

    .line 586
    .local v7, "lastTxMs":J
    iget-object v9, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v9}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v9

    .line 587
    .local v9, "lastRxMs":J
    iget-object v11, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v11}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v11

    .line 589
    .local v11, "lastEnergy":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v27

    .line 590
    .local v27, "deltaTimeSinceBootMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v29

    .line 597
    .local v29, "deltaStackState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v13

    sub-long v30, v13, v7

    .line 598
    .local v30, "txTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v13

    sub-long v32, v13, v9

    .line 599
    .local v32, "rxTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v13

    sub-long v14, v13, v5

    .line 600
    .local v14, "idleTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v16

    sub-long v34, v16, v3

    .line 603
    .local v34, "scanTimeMs":J
    move-wide/from16 v36, v3

    .end local v3    # "lastScanMs":J
    .local v36, "lastScanMs":J
    const-wide/16 v3, 0x0

    cmp-long v13, v30, v3

    const-string v3, "BatteryExternalStatsWorker"

    const-wide/16 v18, 0x2ee

    if-ltz v13, :cond_141

    const-wide/16 v16, 0x0

    cmp-long v4, v32, v16

    if-ltz v4, :cond_141

    cmp-long v4, v34, v16

    if-ltz v4, :cond_141

    cmp-long v4, v14, v16

    if-gez v4, :cond_6e

    move-wide/from16 v38, v5

    move-wide/from16 v40, v7

    move-wide/from16 v42, v9

    move-wide v6, v14

    goto/16 :goto_148

    .line 625
    :cond_6e
    move-wide/from16 v20, v14

    .end local v14    # "idleTimeMs":J
    .local v20, "idleTimeMs":J
    add-long v13, v30, v32

    .line 627
    .local v13, "totalActiveTimeMs":J
    cmp-long v4, v13, v1

    if-lez v4, :cond_107

    .line 629
    const-wide/16 v22, 0x0

    .line 630
    .local v22, "maxExpectedIdleTimeMs":J
    add-long v18, v1, v18

    cmp-long v4, v13, v18

    if-lez v4, :cond_fe

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v15, "Total Active time "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-static {v13, v14, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 634
    const-string v15, " is longer than sample period "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-static {v1, v2, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 636
    const-string v15, ".\n"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string v15, "Previous WiFi snapshot: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "idle="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-static {v5, v6, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 639
    move-wide/from16 v38, v5

    .end local v5    # "lastIdleMs":J
    .local v38, "lastIdleMs":J
    const-string v5, " rx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-static {v9, v10, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 641
    const-string v6, " tx="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-static {v7, v8, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 643
    move-wide/from16 v40, v7

    .end local v7    # "lastTxMs":J
    .local v40, "lastTxMs":J
    const-string v7, " e="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 644
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const-string v8, "Current WiFi snapshot: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    move-wide/from16 v42, v9

    .end local v9    # "lastRxMs":J
    .local v42, "lastRxMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v8

    invoke-static {v8, v9, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 647
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v8

    invoke-static {v8, v9, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 649
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v5

    invoke-static {v5, v6, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 651
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    goto :goto_104

    .line 630
    .end local v38    # "lastIdleMs":J
    .end local v40    # "lastTxMs":J
    .end local v42    # "lastRxMs":J
    .restart local v5    # "lastIdleMs":J
    .restart local v7    # "lastTxMs":J
    .restart local v9    # "lastRxMs":J
    :cond_fe
    move-wide/from16 v38, v5

    move-wide/from16 v40, v7

    move-wide/from16 v42, v9

    .line 658
    .end local v5    # "lastIdleMs":J
    .end local v7    # "lastTxMs":J
    .end local v9    # "lastRxMs":J
    .restart local v38    # "lastIdleMs":J
    .restart local v40    # "lastTxMs":J
    .restart local v42    # "lastRxMs":J
    :goto_104
    move-wide/from16 v4, v22

    goto :goto_111

    .line 655
    .end local v22    # "maxExpectedIdleTimeMs":J
    .end local v38    # "lastIdleMs":J
    .end local v40    # "lastTxMs":J
    .end local v42    # "lastRxMs":J
    .restart local v5    # "lastIdleMs":J
    .restart local v7    # "lastTxMs":J
    .restart local v9    # "lastRxMs":J
    :cond_107
    move-wide/from16 v38, v5

    move-wide/from16 v40, v7

    move-wide/from16 v42, v9

    .end local v5    # "lastIdleMs":J
    .end local v7    # "lastTxMs":J
    .end local v9    # "lastRxMs":J
    .restart local v38    # "lastIdleMs":J
    .restart local v40    # "lastTxMs":J
    .restart local v42    # "lastRxMs":J
    sub-long v22, v1, v13

    move-wide/from16 v4, v22

    .line 658
    .local v4, "maxExpectedIdleTimeMs":J
    :goto_111
    move-wide/from16 v6, v30

    .line 659
    .local v6, "deltaControllerTxDurationMillis":J
    move-wide/from16 v8, v32

    .line 660
    .local v8, "deltaControllerRxDurationMillis":J
    move-wide/from16 v18, v34

    .line 666
    .local v18, "deltaControllerScanDurationMillis":J
    nop

    .line 667
    move-wide/from16 v22, v6

    move-wide v15, v8

    move-wide/from16 v6, v20

    const-wide/16 v8, 0x0

    move-wide/from16 v20, v13

    .end local v8    # "deltaControllerRxDurationMillis":J
    .end local v13    # "totalActiveTimeMs":J
    .local v6, "idleTimeMs":J
    .local v15, "deltaControllerRxDurationMillis":J
    .local v20, "totalActiveTimeMs":J
    .local v22, "deltaControllerTxDurationMillis":J
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 668
    .local v13, "deltaControllerIdleDurationMillis":J
    nop

    .line 669
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v24

    move-wide/from16 v44, v4

    .end local v4    # "maxExpectedIdleTimeMs":J
    .local v44, "maxExpectedIdleTimeMs":J
    sub-long v4, v24, v11

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 670
    .local v4, "deltaControllerEnergyUsedMicroJoules":J
    const/4 v8, 0x0

    move v10, v8

    move-wide/from16 v46, v13

    move-wide/from16 v44, v15

    move-wide/from16 v48, v18

    move-wide/from16 v8, v22

    .local v8, "wasReset":Z
    goto :goto_185

    .line 603
    .end local v4    # "deltaControllerEnergyUsedMicroJoules":J
    .end local v6    # "idleTimeMs":J
    .end local v8    # "wasReset":Z
    .end local v13    # "deltaControllerIdleDurationMillis":J
    .end local v15    # "deltaControllerRxDurationMillis":J
    .end local v18    # "deltaControllerScanDurationMillis":J
    .end local v20    # "totalActiveTimeMs":J
    .end local v22    # "deltaControllerTxDurationMillis":J
    .end local v38    # "lastIdleMs":J
    .end local v40    # "lastTxMs":J
    .end local v42    # "lastRxMs":J
    .end local v44    # "maxExpectedIdleTimeMs":J
    .restart local v5    # "lastIdleMs":J
    .restart local v7    # "lastTxMs":J
    .restart local v9    # "lastRxMs":J
    .restart local v14    # "idleTimeMs":J
    :cond_141
    move-wide/from16 v38, v5

    move-wide/from16 v40, v7

    move-wide/from16 v42, v9

    move-wide v6, v14

    .line 607
    .end local v5    # "lastIdleMs":J
    .end local v7    # "lastTxMs":J
    .end local v9    # "lastRxMs":J
    .end local v14    # "idleTimeMs":J
    .restart local v6    # "idleTimeMs":J
    .restart local v38    # "lastIdleMs":J
    .restart local v40    # "lastTxMs":J
    .restart local v42    # "lastRxMs":J
    :goto_148
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v4

    .line 608
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 609
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 610
    .local v4, "totalOnTimeMs":J
    add-long v18, v1, v18

    cmp-long v8, v4, v18

    if-gtz v8, :cond_171

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v8

    .line 612
    .local v8, "deltaControllerEnergyUsedMicroJoules":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v13

    .line 613
    .local v13, "deltaControllerRxDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v15

    .line 614
    .local v15, "deltaControllerTxDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v17

    .line 615
    .local v17, "deltaControllerIdleDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v19

    .local v19, "deltaControllerScanDurationMillis":J
    goto :goto_17b

    .line 617
    .end local v8    # "deltaControllerEnergyUsedMicroJoules":J
    .end local v13    # "deltaControllerRxDurationMillis":J
    .end local v15    # "deltaControllerTxDurationMillis":J
    .end local v17    # "deltaControllerIdleDurationMillis":J
    .end local v19    # "deltaControllerScanDurationMillis":J
    :cond_171
    const-wide/16 v8, 0x0

    .line 618
    .restart local v8    # "deltaControllerEnergyUsedMicroJoules":J
    const-wide/16 v13, 0x0

    .line 619
    .restart local v13    # "deltaControllerRxDurationMillis":J
    const-wide/16 v15, 0x0

    .line 620
    .restart local v15    # "deltaControllerTxDurationMillis":J
    const-wide/16 v17, 0x0

    .line 621
    .restart local v17    # "deltaControllerIdleDurationMillis":J
    const-wide/16 v19, 0x0

    .line 623
    .restart local v19    # "deltaControllerScanDurationMillis":J
    :goto_17b
    const/4 v4, 0x1

    .line 624
    .local v4, "wasReset":Z
    move v10, v4

    move-wide v4, v8

    move-wide/from16 v44, v13

    move-wide v8, v15

    move-wide/from16 v46, v17

    move-wide/from16 v48, v19

    .line 673
    .end local v13    # "deltaControllerRxDurationMillis":J
    .end local v15    # "deltaControllerTxDurationMillis":J
    .end local v17    # "deltaControllerIdleDurationMillis":J
    .end local v19    # "deltaControllerScanDurationMillis":J
    .local v4, "deltaControllerEnergyUsedMicroJoules":J
    .local v8, "deltaControllerTxDurationMillis":J
    .local v10, "wasReset":Z
    .local v44, "deltaControllerRxDurationMillis":J
    .local v46, "deltaControllerIdleDurationMillis":J
    .local v48, "deltaControllerScanDurationMillis":J
    :goto_185
    move-object/from16 v14, p1

    iput-object v14, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 674
    new-instance v50, Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-object/from16 v13, v50

    move-wide/from16 v14, v27

    move/from16 v16, v29

    move-wide/from16 v17, v8

    move-wide/from16 v19, v44

    move-wide/from16 v21, v48

    move-wide/from16 v23, v46

    move-wide/from16 v25, v4

    invoke-direct/range {v13 .. v26}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJJ)V

    .line 682
    .local v13, "delta":Landroid/os/connectivity/WifiActivityEnergyInfo;
    if-eqz v10, :cond_1b4

    .line 683
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_1b4
    return-object v13
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 81
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    .line 82
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 83
    return-void
.end method

.method static synthetic lambda$new$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 79
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ddVY5lmqswnSjXppAxPTOHbuzzQ;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ddVY5lmqswnSjXppAxPTOHbuzzQ;-><init>(Ljava/lang/Runnable;)V

    const-string v2, "batterystats-worker"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 85
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 86
    return-object v0
.end method

.method static synthetic lambda$updateExternalStatsLocked$5(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 4
    .param p0, "tempWifiReceiver"    # Landroid/os/SynchronousResultReceiver;
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 439
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 440
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 441
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 442
    return-void
.end method

.method private scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .registers 7
    .param p2, "syncRunnable"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 265
    .local p1, "lastScheduledSync":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_28

    .line 269
    :cond_11
    if-eqz p1, :cond_1f

    .line 272
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1e

    .line 273
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1f

    .line 275
    :cond_1e
    return-object p1

    .line 279
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, p4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0

    .line 266
    :cond_28
    :goto_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2b

    .line 314
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_23

    .line 315
    iput p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 316
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 319
    :cond_23
    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 320
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object v0

    .line 311
    :cond_2b
    :goto_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private updateExternalStatsLocked(Ljava/lang/String;IZZZ)V
    .registers 39
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I
    .param p3, "onBattery"    # Z
    .param p4, "onBatteryScreenOff"    # Z
    .param p5, "useLatestStates"    # Z

    .line 411
    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v0, 0x0

    .line 412
    .local v0, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v3, 0x0

    .line 413
    .local v3, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v4, 0x0

    .line 414
    .local v4, "modemReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v5, 0x0

    .line 416
    .local v5, "railUpdated":Z
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_57

    .line 418
    iget-object v6, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_25

    const-string/jumbo v6, "wifi"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_25

    .line 423
    iget-object v6, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    const-class v7, Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 427
    :cond_25
    iget-object v6, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_48

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 428
    new-instance v6, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v7, "wifi"

    invoke-direct {v6, v7}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 429
    .local v6, "tempWifiReceiver":Landroid/os/SynchronousResultReceiver;
    iget-object v7, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v8, Lcom/android/server/am/BatteryExternalStatsWorker$3;

    invoke-direct {v8, v1}, Lcom/android/server/am/BatteryExternalStatsWorker$3;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$MJXTdtPzBwRCdTjCDCE77VXPHBk;

    invoke-direct {v9, v6}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$MJXTdtPzBwRCdTjCDCE77VXPHBk;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 444
    move-object v0, v6

    goto :goto_49

    .line 446
    .end local v6    # "tempWifiReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_48
    move-object v6, v0

    .end local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .local v6, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :goto_49
    iget-object v7, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 447
    :try_start_4c
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 448
    monitor-exit v7

    .line 449
    const/4 v5, 0x1

    goto :goto_58

    .line 448
    :catchall_54
    move-exception v0

    monitor-exit v7
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_54

    throw v0

    .line 416
    .end local v6    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_57
    move-object v6, v0

    .line 452
    .end local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v6    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :goto_58
    and-int/lit8 v0, v2, 0x8

    if-eqz v0, :cond_6d

    .line 454
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 455
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_6d

    .line 456
    new-instance v7, Landroid/os/SynchronousResultReceiver;

    const-string v8, "bluetooth"

    invoke-direct {v7, v8}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    .line 457
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    .line 461
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_6d
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_a2

    .line 463
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_81

    .line 464
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    const-class v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 467
    :cond_81
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_93

    .line 468
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v7, "telephony"

    invoke-direct {v0, v7}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 469
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 471
    :cond_93
    if-nez v5, :cond_a2

    .line 472
    iget-object v7, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 473
    :try_start_98
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 474
    monitor-exit v7

    goto :goto_a2

    :catchall_9f
    move-exception v0

    monitor-exit v7
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_9f

    throw v0

    .line 478
    :cond_a2
    :goto_a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update stats : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "BatteryExternalStatsWorker"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-static {v6}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 480
    .local v15, "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    if-eqz v6, :cond_d8

    .line 481
    const-string v0, "BatteryExternalStatsWorker"

    const-string v8, "WifiActivityEnergyInfo was updated"

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_d8
    invoke-static {v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 484
    .local v14, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    if-eqz v3, :cond_e8

    .line 485
    const-string v0, "BatteryExternalStatsWorker"

    const-string v8, "BluetoothActivityEnergyInfo was updated"

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_e8
    invoke-static {v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/telephony/ModemActivityInfo;

    .line 488
    .local v13, "modemInfo":Landroid/telephony/ModemActivityInfo;
    if-eqz v4, :cond_f8

    .line 489
    const-string v0, "BatteryExternalStatsWorker"

    const-string v8, "ModemActivityEnergyInfo was updated"

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_f8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 492
    .local v22, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 493
    .local v24, "uptime":J
    const-wide/16 v8, 0x3e8

    mul-long v11, v22, v8

    .line 494
    .local v11, "elapsedRealtimeUs":J
    mul-long v26, v24, v8

    .line 496
    .local v26, "uptimeUs":J
    iget-object v9, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v9

    .line 497
    :try_start_109
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_10b
    .catchall {:try_start_109 .. :try_end_10b} :catchall_23b

    const/16 v0, 0xe

    const/16 v16, 0x0

    move-object/from16 v17, v9

    move-wide/from16 v9, v22

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-wide v3, v11

    .end local v4    # "modemReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v11    # "elapsedRealtimeUs":J
    .local v3, "elapsedRealtimeUs":J
    .local v28, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .local v29, "modemReceiver":Landroid/os/SynchronousResultReceiver;
    move-wide/from16 v11, v24

    move-object/from16 v30, v13

    .end local v13    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .local v30, "modemInfo":Landroid/telephony/ModemActivityInfo;
    move v13, v0

    move-object/from16 v31, v14

    .end local v14    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v31, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    move-object/from16 v14, p1

    move/from16 v32, v5

    move-object v5, v15

    .end local v15    # "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    .local v5, "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    .local v32, "railUpdated":Z
    move/from16 v15, v16

    :try_start_126
    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_231

    .line 503
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_168

    .line 504
    if-eqz p5, :cond_153

    .line 505
    :try_start_12f
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryLocked()Z

    move-result v0
    :try_end_135
    .catchall {:try_start_12f .. :try_end_135} :catchall_148

    move v8, v0

    .line 506
    .end local p3    # "onBattery":Z
    .local v8, "onBattery":Z
    :try_start_136
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryScreenOffLocked()Z

    move-result v0
    :try_end_13c
    .catchall {:try_start_136 .. :try_end_13c} :catchall_13e

    move v9, v0

    .end local p4    # "onBatteryScreenOff":Z
    .local v0, "onBatteryScreenOff":Z
    goto :goto_157

    .line 527
    .end local v0    # "onBatteryScreenOff":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :catchall_13e
    move-exception v0

    move/from16 v15, p4

    move v14, v8

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    goto/16 :goto_24c

    .end local v8    # "onBattery":Z
    .restart local p3    # "onBattery":Z
    :catchall_148
    move-exception v0

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    goto/16 :goto_24c

    .line 504
    :cond_153
    move/from16 v8, p3

    move/from16 v9, p4

    .line 508
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v8    # "onBattery":Z
    .local v9, "onBatteryScreenOff":Z
    :goto_157
    :try_start_157
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(ZZ)V
    :try_end_15c
    .catchall {:try_start_157 .. :try_end_15c} :catchall_15f

    move v14, v8

    move v15, v9

    goto :goto_16c

    .line 527
    :catchall_15f
    move-exception v0

    move v14, v8

    move v15, v9

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    goto/16 :goto_24c

    .line 503
    .end local v8    # "onBattery":Z
    .end local v9    # "onBatteryScreenOff":Z
    .restart local p3    # "onBattery":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :cond_168
    move/from16 v14, p3

    move/from16 v15, p4

    .line 511
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .local v14, "onBattery":Z
    .local v15, "onBatteryScreenOff":Z
    :goto_16c
    and-int/lit8 v0, v2, 0x3f

    if-eqz v0, :cond_182

    .line 512
    :try_start_170
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked(J)V

    .line 513
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked(J)V

    goto :goto_182

    .line 527
    :catchall_17b
    move-exception v0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    goto/16 :goto_24c

    .line 516
    :cond_182
    :goto_182
    and-int/lit8 v0, v2, 0x10

    if-eqz v0, :cond_18b

    .line 517
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateRpmStatsLocked(J)V
    :try_end_18b
    .catchall {:try_start_170 .. :try_end_18b} :catchall_17b

    .line 520
    :cond_18b
    move-object/from16 v12, v31

    .end local v31    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v12, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    if-eqz v12, :cond_1c4

    .line 521
    :try_start_18f
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1a1

    .line 522
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_197
    .catchall {:try_start_18f .. :try_end_197} :catchall_1be

    move-object v9, v12

    move-wide/from16 v10, v22

    move-object v2, v12

    .end local v12    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v2, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    move-wide/from16 v12, v24

    :try_start_19d
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    goto :goto_1c5

    .line 524
    .end local v2    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v12    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_1a1
    move-object v2, v12

    .end local v12    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v2    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    const-string v0, "BatteryExternalStatsWorker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bluetooth info is invalid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b8
    .catchall {:try_start_19d .. :try_end_1b8} :catchall_1b9

    goto :goto_1c5

    .line 527
    :catchall_1b9
    move-exception v0

    move-object/from16 v1, v30

    goto/16 :goto_24c

    .end local v2    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v12    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :catchall_1be
    move-exception v0

    move-object v2, v12

    move-object/from16 v1, v30

    .end local v12    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v2    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    goto/16 :goto_24c

    .line 520
    .end local v2    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v12    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_1c4
    move-object v2, v12

    .line 527
    .end local v12    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v2    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :goto_1c5
    :try_start_1c5
    monitor-exit v17
    :try_end_1c6
    .catchall {:try_start_1c5 .. :try_end_1c6} :catchall_22d

    .line 528
    const-string v0, "BatteryExternalStatsWorker"

    const-string v8, "done updateExternalStatsLocked"

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-eqz v5, :cond_1fc

    .line 534
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1e5

    .line 535
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v5}, Lcom/android/server/am/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object v17

    move-object/from16 v16, v0

    move-wide/from16 v18, v22

    move-wide/from16 v20, v24

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJ)V

    goto :goto_1fc

    .line 537
    :cond_1e5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wifi info is invalid: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "BatteryExternalStatsWorker"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_1fc
    :goto_1fc
    move-object/from16 v12, v30

    .end local v30    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .local v12, "modemInfo":Landroid/telephony/ModemActivityInfo;
    if-eqz v12, :cond_22b

    .line 542
    invoke-virtual {v12}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_212

    .line 543
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v9, v12

    move-wide/from16 v10, v22

    move-object v1, v12

    .end local v12    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .local v1, "modemInfo":Landroid/telephony/ModemActivityInfo;
    move-wide/from16 v12, v24

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioState(Landroid/telephony/ModemActivityInfo;JJ)V

    goto :goto_22c

    .line 545
    .end local v1    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local v12    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    :cond_212
    move-object v1, v12

    .end local v12    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local v1    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "modem info is invalid: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "BatteryExternalStatsWorker"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22c

    .line 541
    .end local v1    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local v12    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    :cond_22b
    move-object v1, v12

    .line 548
    .end local v12    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local v1    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    :goto_22c
    return-void

    .line 527
    .end local v1    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local v30    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    :catchall_22d
    move-exception v0

    move-object/from16 v1, v30

    .end local v30    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local v1    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    goto :goto_24c

    .end local v1    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .end local v2    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .end local v14    # "onBattery":Z
    .end local v15    # "onBatteryScreenOff":Z
    .restart local v30    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local v31    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local p3    # "onBattery":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :catchall_231
    move-exception v0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v14, p3

    move/from16 v15, p4

    .end local v30    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .end local v31    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v1    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local v2    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    goto :goto_24c

    .end local v1    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .end local v2    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .end local v28    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v29    # "modemReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v32    # "railUpdated":Z
    .local v3, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v4    # "modemReceiver":Landroid/os/SynchronousResultReceiver;
    .local v5, "railUpdated":Z
    .restart local v11    # "elapsedRealtimeUs":J
    .restart local v13    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .local v14, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v15, "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    :catchall_23b
    move-exception v0

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move/from16 v32, v5

    move-object/from16 v17, v9

    move-wide v3, v11

    move-object v1, v13

    move-object v2, v14

    move-object v5, v15

    move/from16 v14, p3

    move/from16 v15, p4

    .end local v4    # "modemReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v11    # "elapsedRealtimeUs":J
    .end local v13    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v1    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local v2    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v3, "elapsedRealtimeUs":J
    .local v5, "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    .local v14, "onBattery":Z
    .local v15, "onBatteryScreenOff":Z
    .restart local v28    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v29    # "modemReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v32    # "railUpdated":Z
    :goto_24c
    :try_start_24c
    monitor-exit v17
    :try_end_24d
    .catchall {:try_start_24c .. :try_end_24d} :catchall_24e

    throw v0

    :catchall_24e
    move-exception v0

    goto :goto_24c
.end method


# virtual methods
.method public cancelCpuSyncDueToWakelockChange()V
    .registers 3

    .line 226
    monitor-enter p0

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_e

    .line 228
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 231
    :cond_e
    monitor-exit p0

    .line 232
    return-void

    .line 231
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method getLastCollectionTimeStamp()J
    .registers 3

    .line 324
    monitor-enter p0

    .line 325
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit p0

    return-wide v0

    .line 326
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public synthetic lambda$scheduleCpuSyncDueToWakelockChange$2$BatteryExternalStatsWorker()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->postBatteryNeedsCpuUpdateMsg()V

    return-void
.end method

.method public synthetic lambda$scheduleCpuSyncDueToWakelockChange$3$BatteryExternalStatsWorker()V
    .registers 3

    .line 216
    const-string/jumbo v0, "wakelock-change"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 217
    new-instance v0, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$PpNEY15dspg9oLlkg1OsyjrPTqw;

    invoke-direct {v0, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$PpNEY15dspg9oLlkg1OsyjrPTqw;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public synthetic lambda$scheduleSyncDueToBatteryLevelChange$4$BatteryExternalStatsWorker()V
    .registers 3

    .line 238
    const-string v0, "battery-level"

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method public scheduleCopyFromAllUidsCpuTimes(ZZ)Ljava/util/concurrent/Future;
    .registers 8
    .param p1, "onBattery"    # Z
    .param p2, "onBatteryScreenOff"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 184
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 185
    monitor-exit v0

    return-object v2

    .line 187
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_41

    .line 188
    monitor-enter p0

    .line 189
    :try_start_10
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 190
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/android/server/am/-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM;->INSTANCE:Lcom/android/server/am/-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM;

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 192
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 190
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 192
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 190
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 194
    :cond_3c
    monitor-exit p0

    .line 195
    return-object v2

    .line 194
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_3e

    throw v0

    .line 187
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public declared-synchronized scheduleCpuSyncDueToRemovedUid(I)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 153
    const-string/jumbo v0, "remove-uid"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 151
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    .end local p1    # "uid":I
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scheduleCpuSyncDueToScreenStateChange(ZZ)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "onBattery"    # Z
    .param p2, "onBatteryScreenOff"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 201
    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_12

    .line 203
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    .line 204
    iput-boolean p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 207
    :cond_12
    const-string/jumbo v0, "screen-state"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 208
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public declared-synchronized scheduleCpuSyncDueToSettingChange()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 158
    :try_start_1
    const-string/jumbo v0, "setting-change"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 158
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scheduleCpuSyncDueToWakelockChange(J)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 213
    monitor-enter p0

    .line 214
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$r3x3xYmhrLG8kgeNVPXl5EILHwU;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$r3x3xYmhrLG8kgeNVPXl5EILHwU;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 220
    monitor-exit p0

    return-object v0

    .line 221
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public scheduleReadProcStateCpuTimes(ZZJ)Ljava/util/concurrent/Future;
    .registers 10
    .param p1, "onBattery"    # Z
    .param p2, "onBatteryScreenOff"    # Z
    .param p3, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZJ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 165
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 166
    monitor-exit v0

    return-object v2

    .line 168
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_43

    .line 169
    monitor-enter p0

    .line 170
    :try_start_10
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 171
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/android/server/am/-$$Lambda$cC4f0pNQX9_D9f8AXLmKk2sArGY;->INSTANCE:Lcom/android/server/am/-$$Lambda$cC4f0pNQX9_D9f8AXLmKk2sArGY;

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 173
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 171
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 173
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 171
    invoke-interface {v0, v1, p3, p4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 176
    :cond_3e
    monitor-exit p0

    .line 177
    return-object v2

    .line 176
    :catchall_40
    move-exception v0

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_10 .. :try_end_42} :catchall_40

    throw v0

    .line 168
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public declared-synchronized scheduleRunnable(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 298
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    .line 299
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 301
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :cond_16
    monitor-exit p0

    return-void

    .line 297
    .end local p1    # "runnable":Ljava/lang/Runnable;
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 147
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 147
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    .end local p1    # "reason":Ljava/lang/String;
    .end local p2    # "flags":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scheduleSyncDueToBatteryLevelChange(J)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 236
    monitor-enter p0

    .line 237
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$xR3yCbbVfCo3oq_xPiH7j5l5uac;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$xR3yCbbVfCo3oq_xPiH7j5l5uac;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 240
    monitor-exit p0

    return-object v0

    .line 241
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized scheduleWrite()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 283
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_24

    .line 287
    :cond_12
    const-string/jumbo v0, "write"

    const/16 v1, 0x3f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 290
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_32

    monitor-exit p0

    return-object v0

    .line 284
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :cond_24
    :goto_24
    :try_start_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_32

    monitor-exit p0

    return-object v0

    .line 282
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shutdown()V
    .registers 3

    .line 304
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 306
    return-void
.end method
