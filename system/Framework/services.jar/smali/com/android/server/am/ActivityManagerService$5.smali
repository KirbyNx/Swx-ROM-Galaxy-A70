.class Lcom/android/server/am/ActivityManagerService$5;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2395
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 5
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 2414
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 46
    .param p1, "msg"    # Landroid/os/Message;

    .line 2398
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_80

    if-eq v0, v4, :cond_79

    if-eq v0, v3, :cond_25

    const/4 v3, 0x4

    if-eq v0, v3, :cond_13

    goto :goto_7f

    .line 2532
    :cond_13
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getBinderStatsServiceInternal()Lcom/android/server/BinderCallsStatsService$Internal;

    move-result-object v0

    .line 2533
    .local v0, "bcsi":Lcom/android/server/BinderCallsStatsService$Internal;
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 2534
    .local v3, "pid":I
    iget v4, v2, Landroid/os/Message;->arg2:I

    .line 2535
    .local v4, "uid":I
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 2536
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/BinderCallsStatsService$Internal;->reportProcessDied(IILjava/lang/String;)V

    goto :goto_7f

    .line 2511
    .end local v0    # "bcsi":Lcom/android/server/BinderCallsStatsService$Internal;
    .end local v3    # "pid":I
    .end local v4    # "uid":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_25
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 2512
    .local v0, "nesting":I
    if-gtz v0, :cond_5e

    .line 2513
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v3, :cond_4b

    .line 2514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSS activity start deferral interval ended; now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    :cond_4b
    if-gez v0, :cond_78

    .line 2518
    const-string v3, "ActivityManager"

    const-string v4, "Activity start nesting undercount!"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_78

    .line 2522
    :cond_5e
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v3, :cond_78

    .line 2523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Still deferring PSS, nesting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    .end local v0    # "nesting":I
    :cond_78
    :goto_78
    goto :goto_7f

    .line 2507
    :cond_79
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->deferPssForActivityStart()V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)V

    .line 2508
    nop

    .line 2541
    :goto_7f
    return-void

    .line 2400
    :cond_80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2401
    .local v6, "start":J
    const/4 v8, 0x0

    .line 2402
    .local v8, "memInfo":Lcom/android/internal/util/MemInfoReader;
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_88
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2403
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_348

    const/4 v10, 0x0

    if-eqz v0, :cond_a2

    .line 2404
    :try_start_92
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 2405
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_9d

    move-object v8, v0

    .end local v8    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v0, "memInfo":Lcom/android/internal/util/MemInfoReader;
    goto :goto_a2

    .line 2407
    .end local v0    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v8    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    :catchall_9d
    move-exception v0

    move-wide/from16 v21, v6

    goto/16 :goto_34b

    :cond_a2
    :goto_a2
    :try_start_a2
    monitor-exit v9
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_348

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2408
    const/4 v0, 0x0

    if-eqz v8, :cond_168

    .line 2409
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2410
    const-wide/16 v11, 0x0

    .line 2412
    .local v11, "nativeTotalPss":J
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v9

    .line 2413
    :try_start_b5
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    sget-object v14, Lcom/android/server/am/-$$Lambda$ActivityManagerService$5$BegFiGFfKLYS7VRmiWluczgOC5k;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$5$BegFiGFfKLYS7VRmiWluczgOC5k;

    invoke-virtual {v13, v14}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v13

    .line 2416
    .local v13, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    monitor-exit v9
    :try_end_c0
    .catchall {:try_start_b5 .. :try_end_c0} :catchall_165

    .line 2417
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 2418
    .local v14, "N":I
    const/4 v9, 0x0

    move-wide/from16 v26, v11

    .end local v11    # "nativeTotalPss":J
    .local v9, "j":I
    .local v26, "nativeTotalPss":J
    :goto_c7
    if-ge v9, v14, :cond_f7

    .line 2419
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v11

    .line 2420
    :try_start_ce
    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v15, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v12, v15}, Lcom/android/server/am/ActivityManagerService$PidMap;->indexOfKey(I)I

    move-result v12

    if-ltz v12, :cond_e2

    .line 2422
    monitor-exit v11

    goto :goto_f1

    .line 2424
    :cond_e2
    monitor-exit v11
    :try_end_e3
    .catchall {:try_start_ce .. :try_end_e3} :catchall_f4

    .line 2425
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v11, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v11, v0, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v11

    add-long v26, v26, v11

    .line 2418
    :goto_f1
    add-int/lit8 v9, v9, 0x1

    goto :goto_c7

    .line 2424
    :catchall_f4
    move-exception v0

    :try_start_f5
    monitor-exit v11
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    throw v0

    .line 2427
    .end local v9    # "j":I
    :cond_f7
    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2428
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_fd
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2429
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v11, :cond_126

    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Collected native and kernel memory in "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2430
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    sub-long v4, v15, v6

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2429
    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    :cond_126
    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    .line 2432
    .local v4, "cachedKb":J
    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v11

    .line 2433
    .local v11, "freeKb":J
    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v15

    move-wide/from16 v28, v15

    .line 2434
    .local v28, "zramKb":J
    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v15

    move-wide/from16 v30, v15

    .line 2435
    .local v30, "kernelKb":J
    const-wide/16 v15, 0x400

    mul-long v32, v4, v15

    mul-long v34, v11, v15

    mul-long v36, v28, v15

    mul-long v38, v30, v15

    mul-long v40, v26, v15

    invoke-static/range {v32 .. v41}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 2437
    iget-object v15, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-wide/from16 v16, v4

    move-wide/from16 v18, v11

    move-wide/from16 v20, v28

    move-wide/from16 v22, v30

    move-wide/from16 v24, v26

    invoke-virtual/range {v15 .. v25}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 2439
    .end local v4    # "cachedKb":J
    .end local v11    # "freeKb":J
    .end local v28    # "zramKb":J
    .end local v30    # "kernelKb":J
    monitor-exit v9
    :try_end_15b
    .catchall {:try_start_fd .. :try_end_15b} :catchall_15f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_168

    :catchall_15f
    move-exception v0

    :try_start_160
    monitor-exit v9
    :try_end_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_15f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2416
    .end local v13    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v14    # "N":I
    .end local v26    # "nativeTotalPss":J
    .local v11, "nativeTotalPss":J
    :catchall_165
    move-exception v0

    :try_start_166
    monitor-exit v9
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_165

    throw v0

    .line 2442
    .end local v11    # "nativeTotalPss":J
    :cond_168
    :goto_168
    const/4 v4, 0x0

    .line 2443
    .local v4, "num":I
    new-array v3, v3, [J

    .line 2448
    .local v3, "tmp":[J
    :goto_16b
    const/4 v5, -0x1

    .line 2450
    .local v5, "pid":I
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_16f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2451
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9
    :try_end_17a
    .catchall {:try_start_16f .. :try_end_17a} :catchall_33d

    if-gtz v9, :cond_1c0

    .line 2452
    :try_start_17c
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v0, :cond_186

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_1af

    :cond_186
    const-string v0, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Collected pss of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " processes in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2452
    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    :cond_1af
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2456
    monitor-exit v11
    :try_end_1b7
    .catchall {:try_start_17c .. :try_end_1b7} :catchall_1bb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2476
    :catchall_1bb
    move-exception v0

    move-wide/from16 v21, v6

    goto/16 :goto_341

    .line 2458
    :cond_1c0
    :try_start_1c0
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 2459
    .local v9, "proc":Lcom/android/server/am/ProcessRecord;
    iget v12, v9, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 2460
    .local v12, "procState":I
    iget v13, v9, Lcom/android/server/am/ProcessRecord;->pssStatType:I

    move/from16 v39, v13

    .line 2461
    .local v39, "statType":I
    iget-wide v13, v9, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    .line 2462
    .local v13, "lastPssTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 2463
    .local v15, "now":J
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1d8
    .catchall {:try_start_1c0 .. :try_end_1d8} :catchall_33d

    const-wide/16 v18, 0x3e8

    if-eqz v10, :cond_1ec

    :try_start_1dc
    iget v10, v9, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v12, v10, :cond_1ec

    add-long v20, v13, v18

    cmp-long v10, v20, v15

    if-gez v10, :cond_1ec

    .line 2466
    iget v10, v9, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_1e8
    .catchall {:try_start_1dc .. :try_end_1e8} :catchall_1bb

    move v5, v10

    move-wide/from16 v21, v6

    goto :goto_22b

    .line 2468
    :cond_1ec
    :try_start_1ec
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v10}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2469
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v10, :cond_225

    const-string v10, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped pss collection of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": still need "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_209
    .catchall {:try_start_1ec .. :try_end_209} :catchall_33d

    add-long v18, v13, v18

    move v2, v5

    move-wide/from16 v21, v6

    .end local v5    # "pid":I
    .end local v6    # "start":J
    .local v2, "pid":I
    .local v21, "start":J
    sub-long v5, v18, v15

    :try_start_210
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms until safe"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_220
    .catchall {:try_start_210 .. :try_end_220} :catchall_221

    goto :goto_228

    .line 2476
    .end local v9    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "procState":I
    .end local v13    # "lastPssTime":J
    .end local v15    # "now":J
    .end local v39    # "statType":I
    :catchall_221
    move-exception v0

    move v5, v2

    goto/16 :goto_341

    .line 2469
    .end local v2    # "pid":I
    .end local v21    # "start":J
    .restart local v5    # "pid":I
    .restart local v6    # "start":J
    .restart local v9    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v12    # "procState":I
    .restart local v13    # "lastPssTime":J
    .restart local v15    # "now":J
    .restart local v39    # "statType":I
    :cond_225
    move v2, v5

    move-wide/from16 v21, v6

    .line 2473
    .end local v5    # "pid":I
    .end local v6    # "start":J
    .restart local v2    # "pid":I
    .restart local v21    # "start":J
    :goto_228
    const/4 v9, 0x0

    .line 2474
    const/4 v0, 0x0

    .end local v2    # "pid":I
    .local v0, "pid":I
    move v5, v0

    .line 2476
    .end local v0    # "pid":I
    .end local v15    # "now":J
    .restart local v5    # "pid":I
    :goto_22b
    :try_start_22b
    monitor-exit v11
    :try_end_22c
    .catchall {:try_start_22b .. :try_end_22c} :catchall_346

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2477
    if-eqz v9, :cond_32c

    .line 2478
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    .line 2481
    .local v6, "startTime":J
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v2, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->isCameraActiveForUid(I)Z

    move-result v2

    .line 2482
    .local v2, "usingCamera":Z
    const/4 v0, 0x0

    if-eqz v2, :cond_243

    const-wide/16 v15, 0x0

    goto :goto_247

    :cond_243
    invoke-static {v5, v3, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v15

    .line 2483
    .local v15, "pss":J
    :goto_247
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v18

    .line 2484
    .local v18, "endTime":J
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_24e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_251
    .catchall {:try_start_24e .. :try_end_251} :catchall_322

    .line 2485
    const-wide/16 v23, 0x0

    cmp-long v11, v15, v23

    if-eqz v11, :cond_2a7

    :try_start_257
    iget-object v11, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v11, :cond_2a7

    iget v11, v9, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v11, v12, :cond_2a7

    iget v11, v9, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_261
    .catchall {:try_start_257 .. :try_end_261} :catchall_2a2

    if-ne v11, v5, :cond_2a7

    :try_start_263
    iget-wide v0, v9, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v0, v0, v13

    if-nez v0, :cond_295

    .line 2487
    add-int/lit8 v4, v4, 0x1

    .line 2488
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    :try_end_270
    .catchall {:try_start_263 .. :try_end_270} :catchall_29e

    .line 2489
    move-object/from16 v1, p0

    :try_start_272
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v17, 0x0

    aget-wide v33, v3, v17

    const/16 v23, 0x1

    aget-wide v35, v3, v23

    const/16 v24, 0x2

    aget-wide v37, v3, v24

    sub-long v40, v18, v6

    .line 2490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v42

    .line 2489
    move-object/from16 v28, v0

    move-object/from16 v29, v9

    move/from16 v30, v12

    move-wide/from16 v31, v15

    invoke-virtual/range {v28 .. v43}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJIJJ)V
    :try_end_291
    .catchall {:try_start_272 .. :try_end_291} :catchall_2a2

    move/from16 v25, v2

    goto/16 :goto_31d

    .line 2485
    :cond_295
    const/16 v17, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x2

    move-object/from16 v1, p0

    goto :goto_2ad

    .line 2501
    :catchall_29e
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2a3

    :catchall_2a2
    move-exception v0

    :goto_2a3
    move/from16 v25, v2

    goto/16 :goto_325

    .line 2485
    :cond_2a7
    const/16 v17, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x2

    .line 2492
    :goto_2ad
    :try_start_2ad
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2493
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_31b

    const-string v0, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipped pss collection of "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2494
    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_2cc
    .catchall {:try_start_2ad .. :try_end_2cc} :catchall_322

    if-nez v1, :cond_2d1

    :try_start_2ce
    const-string v1, "NO_THREAD "
    :try_end_2d0
    .catchall {:try_start_2ce .. :try_end_2d0} :catchall_2a2

    goto :goto_2d3

    :cond_2d1
    :try_start_2d1
    const-string v1, ""

    :goto_2d3
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d6
    .catchall {:try_start_2d1 .. :try_end_2d6} :catchall_322

    .line 2495
    if-eqz v2, :cond_2db

    :try_start_2d8
    const-string v1, "CAMERA "
    :try_end_2da
    .catchall {:try_start_2d8 .. :try_end_2da} :catchall_2a2

    goto :goto_2dd

    :cond_2db
    :try_start_2db
    const-string v1, ""

    :goto_2dd
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2496
    iget v1, v9, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_2e2
    .catchall {:try_start_2db .. :try_end_2e2} :catchall_322

    if-eq v1, v5, :cond_2e7

    :try_start_2e4
    const-string v1, "PID_CHANGED "
    :try_end_2e6
    .catchall {:try_start_2e4 .. :try_end_2e6} :catchall_2a2

    goto :goto_2e9

    :cond_2e7
    :try_start_2e7
    const-string v1, ""

    :goto_2e9
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " initState="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " curState="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_303
    .catchall {:try_start_2e7 .. :try_end_303} :catchall_322

    .line 2499
    move/from16 v25, v2

    .end local v2    # "usingCamera":Z
    .local v25, "usingCamera":Z
    :try_start_305
    iget-wide v1, v9, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v1, v1, v13

    if-eqz v1, :cond_30e

    const-string v1, "TIME_CHANGED"

    goto :goto_310

    :cond_30e
    const-string v1, ""

    :goto_310
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2493
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31d

    .end local v25    # "usingCamera":Z
    .restart local v2    # "usingCamera":Z
    :cond_31b
    move/from16 v25, v2

    .line 2501
    .end local v2    # "usingCamera":Z
    .restart local v25    # "usingCamera":Z
    :goto_31d
    monitor-exit v10
    :try_end_31e
    .catchall {:try_start_305 .. :try_end_31e} :catchall_32a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_332

    .end local v25    # "usingCamera":Z
    .restart local v2    # "usingCamera":Z
    :catchall_322
    move-exception v0

    move/from16 v25, v2

    .end local v2    # "usingCamera":Z
    .restart local v25    # "usingCamera":Z
    :goto_325
    :try_start_325
    monitor-exit v10
    :try_end_326
    .catchall {:try_start_325 .. :try_end_326} :catchall_32a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_32a
    move-exception v0

    goto :goto_325

    .line 2477
    .end local v6    # "startTime":J
    .end local v15    # "pss":J
    .end local v18    # "endTime":J
    .end local v25    # "usingCamera":Z
    :cond_32c
    const/16 v17, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x2

    .line 2503
    .end local v5    # "pid":I
    .end local v9    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "procState":I
    .end local v13    # "lastPssTime":J
    .end local v39    # "statType":I
    :goto_332
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v10, v17

    move-wide/from16 v6, v21

    const/4 v0, 0x0

    goto/16 :goto_16b

    .line 2476
    .end local v21    # "start":J
    .restart local v5    # "pid":I
    .local v6, "start":J
    :catchall_33d
    move-exception v0

    move v2, v5

    move-wide/from16 v21, v6

    .end local v6    # "start":J
    .restart local v21    # "start":J
    :goto_341
    :try_start_341
    monitor-exit v11
    :try_end_342
    .catchall {:try_start_341 .. :try_end_342} :catchall_346

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_346
    move-exception v0

    goto :goto_341

    .line 2407
    .end local v3    # "tmp":[J
    .end local v4    # "num":I
    .end local v5    # "pid":I
    .end local v21    # "start":J
    .restart local v6    # "start":J
    :catchall_348
    move-exception v0

    move-wide/from16 v21, v6

    .end local v6    # "start":J
    .restart local v21    # "start":J
    :goto_34b
    :try_start_34b
    monitor-exit v9
    :try_end_34c
    .catchall {:try_start_34b .. :try_end_34c} :catchall_350

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_350
    move-exception v0

    goto :goto_34b
.end method
