.class public Lcom/android/server/am/HealthStatsBatteryStatsWriter;
.super Ljava/lang/Object;
.source "HealthStatsBatteryStatsWriter.java"


# instance fields
.field private final mNowRealtimeMs:J

.field private final mNowUptimeMs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    .line 44
    return-void
.end method

.method private addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V
    .registers 10
    .param p1, "writer"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "key"    # I
    .param p3, "timer"    # Landroid/os/BatteryStats$Timer;

    .line 464
    if-eqz p3, :cond_14

    .line 465
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    iget-wide v2, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 466
    invoke-virtual {p3, v2, v3, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    div-long/2addr v2, v4

    .line 465
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    .line 468
    :cond_14
    return-void
.end method

.method private addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V
    .registers 12
    .param p1, "writer"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "key"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "timer"    # Landroid/os/BatteryStats$Timer;

    .line 475
    if-eqz p4, :cond_19

    .line 476
    new-instance v0, Landroid/os/health/TimerStat;

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    iget-wide v3, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 477
    invoke-virtual {p4, v3, v4, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-direct {v0, v2, v3, v4}, Landroid/os/health/TimerStat;-><init>(IJ)V

    .line 476
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/health/HealthStatsWriter;->addTimers(ILjava/lang/String;Landroid/os/health/TimerStat;)V

    .line 479
    :cond_19
    return-void
.end method


# virtual methods
.method public writePid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pid;)V
    .registers 6
    .param p1, "pidWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "pid"    # Landroid/os/BatteryStats$Uid$Pid;

    .line 381
    if-nez p2, :cond_3

    .line 382
    return-void

    .line 386
    :cond_3
    const/16 v0, 0x4e21

    iget v1, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 389
    iget-wide v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    const/16 v2, 0x4e22

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 392
    iget-wide v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 393
    return-void
.end method

.method public writePkg(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg;)V
    .registers 10
    .param p1, "pkgWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "pkg"    # Landroid/os/BatteryStats$Uid$Pkg;

    .line 430
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 431
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    new-instance v2, Landroid/os/health/HealthStatsWriter;

    sget-object v3, Landroid/os/health/ServiceHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v2, v3}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 432
    .local v2, "writer":Landroid/os/health/HealthStatsWriter;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeServ(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg$Serv;)V

    .line 433
    const v3, 0x9c41

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v2}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    .line 434
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v2    # "writer":Landroid/os/health/HealthStatsWriter;
    goto :goto_c

    .line 438
    :cond_35
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 439
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Counter;

    .line 440
    .local v2, "counter":Landroid/os/BatteryStats$Counter;
    if-eqz v2, :cond_67

    .line 441
    const v3, 0x9c42

    .line 442
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v5

    int-to-long v5, v5

    .line 441
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/os/health/HealthStatsWriter;->addMeasurements(ILjava/lang/String;J)V

    .line 444
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v2    # "counter":Landroid/os/BatteryStats$Counter;
    :cond_67
    goto :goto_41

    .line 445
    :cond_68
    return-void
.end method

.method public writeProc(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Proc;)V
    .registers 7
    .param p1, "procWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "proc"    # Landroid/os/BatteryStats$Uid$Proc;

    .line 400
    nop

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v1

    .line 400
    const/16 v3, 0x7531

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 404
    nop

    .line 405
    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v1

    .line 404
    const/16 v3, 0x7532

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 408
    nop

    .line 409
    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v1

    int-to-long v1, v1

    .line 408
    const/16 v3, 0x7533

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 412
    nop

    .line 413
    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v1

    int-to-long v1, v1

    .line 412
    const/16 v3, 0x7534

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 416
    nop

    .line 417
    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v1

    int-to-long v1, v1

    .line 416
    const/16 v3, 0x7535

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 420
    nop

    .line 421
    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v0

    .line 420
    const/16 v2, 0x7536

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 422
    return-void
.end method

.method public writeServ(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg$Serv;)V
    .registers 7
    .param p1, "servWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "serv"    # Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 452
    nop

    .line 453
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v1

    int-to-long v1, v1

    .line 452
    const v3, 0xc351

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 456
    nop

    .line 457
    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v0

    int-to-long v0, v0

    .line 456
    const v2, 0xc352

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 458
    return-void
.end method

.method public writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V
    .registers 23
    .param p1, "uidWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "bs"    # Landroid/os/BatteryStats;
    .param p3, "uid"    # Landroid/os/BatteryStats$Uid;

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 66
    const/4 v8, 0x0

    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    .line 65
    const/16 v9, 0x2711

    invoke-virtual {v1, v9, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 69
    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    mul-long/2addr v4, v6

    .line 70
    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    .line 69
    const/16 v9, 0x2712

    invoke-virtual {v1, v9, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 73
    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v4, v6

    .line 74
    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    .line 73
    const/16 v9, 0x2713

    invoke-virtual {v1, v9, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 78
    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    mul-long/2addr v4, v6

    .line 79
    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    .line 78
    const/16 v9, 0x2714

    invoke-virtual {v1, v9, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v5, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 87
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 88
    .local v11, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 91
    .local v12, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    invoke-virtual {v12, v10}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v10

    .line 92
    .local v10, "timer":Landroid/os/BatteryStats$Timer;
    const/16 v13, 0x2715

    invoke-direct {v0, v1, v13, v11, v10}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 95
    invoke-virtual {v12, v8}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v10

    .line 96
    const/16 v13, 0x2716

    invoke-direct {v0, v1, v13, v11, v10}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 99
    invoke-virtual {v12, v9}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    .line 100
    .end local v10    # "timer":Landroid/os/BatteryStats$Timer;
    .local v9, "timer":Landroid/os/BatteryStats$Timer;
    const/16 v10, 0x2717

    invoke-direct {v0, v1, v10, v11, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 103
    const/16 v10, 0x12

    invoke-virtual {v12, v10}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    .line 104
    const/16 v10, 0x2718

    invoke-direct {v0, v1, v10, v11, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 105
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    goto :goto_4b

    .line 109
    .end local v9    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_8c
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_98
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 110
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/16 v11, 0x2719

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Timer;

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 111
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    goto :goto_98

    .line 115
    :cond_b6
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 116
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/16 v11, 0x271a

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Timer;

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 117
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    goto :goto_c2

    .line 120
    :cond_e0
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v4

    .line 121
    .local v4, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 122
    .local v5, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_e9
    if-ge v11, v5, :cond_12d

    .line 123
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 126
    .local v12, "sensorId":I
    const/16 v13, -0x2710

    if-ne v12, v13, :cond_103

    .line 127
    const/16 v13, 0x271b

    .line 128
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    .line 127
    invoke-direct {v0, v1, v13, v14}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    goto :goto_12a

    .line 130
    :cond_103
    const/16 v13, -0x2711

    if-ne v12, v13, :cond_117

    .line 131
    const/16 v13, 0x2751

    .line 132
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    .line 131
    invoke-direct {v0, v1, v13, v14}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    goto :goto_12a

    .line 135
    :cond_117
    const/16 v13, 0x271c

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 136
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 135
    invoke-direct {v0, v1, v13, v14, v15}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 122
    .end local v12    # "sensorId":I
    :goto_12a
    add-int/lit8 v11, v11, 0x1

    goto :goto_e9

    .line 141
    .end local v11    # "i":I
    :cond_12d
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v11

    .line 142
    .local v11, "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 143
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_136
    if-ge v12, v5, :cond_158

    .line 144
    new-instance v13, Landroid/os/health/HealthStatsWriter;

    sget-object v14, Landroid/os/health/PidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v13, v14}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 145
    .local v13, "writer":Landroid/os/health/HealthStatsWriter;
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pid;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writePid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pid;)V

    .line 146
    const/16 v14, 0x271d

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v14, v15, v13}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    .line 143
    .end local v13    # "writer":Landroid/os/health/HealthStatsWriter;
    add-int/lit8 v12, v12, 0x1

    goto :goto_136

    .line 151
    .end local v12    # "i":I
    :cond_158
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_164
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_18f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 152
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    new-instance v14, Landroid/os/health/HealthStatsWriter;

    sget-object v15, Landroid/os/health/ProcessHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v14, v15}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 153
    .local v14, "writer":Landroid/os/health/HealthStatsWriter;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeProc(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Proc;)V

    .line 154
    const/16 v15, 0x271e

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v15, v9, v14}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    .line 155
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v14    # "writer":Landroid/os/health/HealthStatsWriter;
    const/4 v9, 0x2

    goto :goto_164

    .line 159
    :cond_18f
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_19b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 160
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    new-instance v13, Landroid/os/health/HealthStatsWriter;

    sget-object v14, Landroid/os/health/PackageHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v13, v14}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 161
    .local v13, "writer":Landroid/os/health/HealthStatsWriter;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writePkg(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg;)V

    .line 162
    const/16 v14, 0x271f

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v1, v14, v15, v13}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    .line 163
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v13    # "writer":Landroid/os/health/HealthStatsWriter;
    goto :goto_19b

    .line 165
    :cond_1c3
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v9

    .line 166
    .local v9, "controller":Landroid/os/BatteryStats$ControllerActivityCounter;
    if-eqz v9, :cond_20c

    .line 168
    const/16 v12, 0x2720

    .line 169
    invoke-virtual {v9}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    .line 168
    invoke-virtual {v1, v12, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 171
    const/16 v12, 0x2721

    .line 172
    invoke-virtual {v9}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    .line 171
    invoke-virtual {v1, v12, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 174
    const-wide/16 v12, 0x0

    .line 175
    .local v12, "sum":J
    invoke-virtual {v9}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v14

    array-length v15, v14

    move v10, v8

    :goto_1eb
    if-ge v10, v15, :cond_1fa

    aget-object v6, v14, v10

    .line 176
    .local v6, "counter":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v6, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v17

    add-long v12, v12, v17

    .line 175
    .end local v6    # "counter":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v6, 0x3e8

    goto :goto_1eb

    .line 178
    :cond_1fa
    const/16 v6, 0x2722

    invoke-virtual {v1, v6, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 180
    const/16 v6, 0x2723

    .line 181
    invoke-virtual {v9}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    .line 180
    invoke-virtual {v1, v6, v14, v15}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 184
    .end local v12    # "sum":J
    :cond_20c
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    .line 185
    .end local v9    # "controller":Landroid/os/BatteryStats$ControllerActivityCounter;
    .local v6, "controller":Landroid/os/BatteryStats$ControllerActivityCounter;
    if-eqz v6, :cond_253

    .line 187
    const/16 v7, 0x2724

    .line 188
    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    .line 187
    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 190
    const/16 v7, 0x2725

    .line 191
    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    .line 190
    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 193
    const-wide/16 v9, 0x0

    .line 194
    .local v9, "sum":J
    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    array-length v12, v7

    move v13, v8

    :goto_234
    if-ge v13, v12, :cond_241

    aget-object v14, v7, v13

    .line 195
    .local v14, "counter":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v14, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v17

    add-long v9, v9, v17

    .line 194
    .end local v14    # "counter":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v13, v13, 0x1

    goto :goto_234

    .line 197
    :cond_241
    const/16 v7, 0x2726

    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 199
    const/16 v7, 0x2727

    .line 200
    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    .line 199
    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 203
    .end local v9    # "sum":J
    :cond_253
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    .line 204
    if-eqz v6, :cond_29a

    .line 206
    const/16 v7, 0x2728

    .line 207
    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    .line 206
    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 209
    const/16 v7, 0x2729

    .line 210
    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    .line 209
    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 212
    const-wide/16 v9, 0x0

    .line 213
    .restart local v9    # "sum":J
    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    array-length v12, v7

    move v13, v8

    :goto_27b
    if-ge v13, v12, :cond_288

    aget-object v14, v7, v13

    .line 214
    .restart local v14    # "counter":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v14, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v17

    add-long v9, v9, v17

    .line 213
    .end local v14    # "counter":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v13, v13, 0x1

    goto :goto_27b

    .line 216
    :cond_288
    const/16 v7, 0x272a

    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 218
    const/16 v7, 0x272b

    .line 219
    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    .line 218
    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 223
    .end local v9    # "sum":J
    :cond_29a
    const/16 v7, 0x272c

    iget-wide v9, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v9, v12

    .line 224
    invoke-virtual {v3, v9, v10, v8}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v9

    div-long/2addr v9, v12

    .line 223
    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 227
    const/16 v7, 0x272d

    iget-wide v9, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v9, v12

    .line 228
    invoke-virtual {v3, v9, v10, v8}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v9

    div-long/2addr v9, v12

    .line 227
    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 231
    const/16 v7, 0x272e

    .line 232
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v9

    iget-wide v14, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v14, v12

    .line 233
    invoke-virtual {v3, v14, v15, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v14

    div-long/2addr v14, v12

    .line 231
    invoke-virtual {v1, v7, v9, v14, v15}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    .line 236
    const/16 v7, 0x272f

    iget-wide v9, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v9, v12

    .line 237
    invoke-virtual {v3, v9, v10, v8}, Landroid/os/BatteryStats$Uid;->getWifiMulticastTime(JI)J

    move-result-wide v9

    div-long/2addr v9, v12

    .line 236
    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 240
    const/16 v7, 0x2730

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    invoke-direct {v0, v1, v7, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 243
    const/16 v7, 0x2731

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    invoke-direct {v0, v1, v7, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 246
    const/16 v7, 0x2732

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    invoke-direct {v0, v1, v7, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 249
    const/16 v7, 0x2733

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    invoke-direct {v0, v1, v7, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 252
    const/16 v7, 0x2734

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    .line 252
    invoke-direct {v0, v1, v7, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 256
    const/16 v7, 0x2735

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    invoke-direct {v0, v1, v7, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 259
    const/16 v7, 0x2736

    .line 260
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    .line 259
    invoke-direct {v0, v1, v7, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 263
    const/16 v7, 0x2737

    .line 264
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v10

    .line 263
    invoke-direct {v0, v1, v7, v10}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 267
    const/16 v7, 0x2738

    .line 268
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v10

    .line 267
    invoke-direct {v0, v1, v7, v10}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 271
    const/16 v7, 0x2739

    .line 272
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    .line 271
    invoke-direct {v0, v1, v7, v12}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 275
    const/16 v7, 0x273a

    .line 276
    const/4 v10, 0x3

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    .line 275
    invoke-direct {v0, v1, v7, v12}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 279
    const/16 v7, 0x273b

    const/4 v12, 0x6

    .line 280
    invoke-virtual {v3, v12}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    .line 279
    invoke-direct {v0, v1, v7, v12}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 283
    const/16 v7, 0x273c

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    invoke-direct {v0, v1, v7, v12}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 286
    const/16 v7, 0x273d

    .line 287
    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v12

    int-to-long v12, v12

    .line 286
    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 291
    const/16 v7, 0x273e

    .line 292
    const/4 v12, 0x1

    invoke-virtual {v3, v12, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v13

    int-to-long v12, v13

    .line 291
    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 296
    const/16 v7, 0x273f

    .line 297
    const/4 v12, 0x2

    invoke-virtual {v3, v12, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v13

    int-to-long v12, v13

    .line 296
    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 301
    const/16 v7, 0x2740

    .line 302
    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    .line 301
    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 306
    const/16 v7, 0x2741

    .line 307
    const/4 v12, 0x1

    invoke-virtual {v3, v12, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 306
    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 311
    const/16 v7, 0x2742

    .line 312
    const/4 v12, 0x2

    invoke-virtual {v3, v12, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 311
    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 316
    const/16 v7, 0x2743

    .line 317
    invoke-virtual {v3, v10, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    .line 316
    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 321
    const/16 v7, 0x2744

    .line 322
    invoke-virtual {v3, v9, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    .line 321
    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 326
    const/16 v7, 0x2745

    .line 327
    const/4 v12, 0x5

    invoke-virtual {v3, v12, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 326
    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 331
    const/16 v7, 0x2746

    .line 332
    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 331
    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 336
    const/16 v7, 0x2747

    .line 337
    const/4 v13, 0x1

    invoke-virtual {v3, v13, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 336
    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 341
    const/16 v7, 0x2748

    .line 342
    const/4 v13, 0x2

    invoke-virtual {v3, v13, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 341
    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 346
    const/16 v7, 0x2749

    .line 347
    invoke-virtual {v3, v10, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 346
    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 351
    const/16 v7, 0x274a

    .line 352
    invoke-virtual {v3, v9, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v9

    .line 351
    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 356
    const/16 v7, 0x274b

    .line 357
    invoke-virtual {v3, v12, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v9

    .line 356
    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 361
    const/16 v7, 0x274d

    .line 362
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v9

    .line 363
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v12

    .line 361
    invoke-virtual {v1, v7, v9, v12, v13}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    .line 366
    const/16 v7, 0x274e

    .line 367
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v9

    const-wide/16 v12, 0x3e8

    div-long/2addr v9, v12

    .line 366
    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 370
    const/16 v7, 0x274f

    .line 371
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v8

    div-long/2addr v8, v12

    .line 370
    invoke-virtual {v1, v7, v8, v9}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 374
    const/16 v7, 0x2750

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 375
    return-void
.end method
