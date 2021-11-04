.class final Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NandswapHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method private constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 2

    .line 1440
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1441
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessNandswapThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1442
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/CachedAppOptimizer;
    .param p2, "x1"    # Lcom/android/server/am/CachedAppOptimizer$1;

    .line 1439
    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 44
    .param p1, "msg"    # Landroid/os/Message;

    .line 1446
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x40

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v0, v6, :cond_2b

    if-eq v0, v7, :cond_11

    goto/16 :goto_546

    .line 1597
    :cond_11
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mNandswapLevel:I
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2600(Lcom/android/server/am/CachedAppOptimizer;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 1598
    goto/16 :goto_546

    .line 1600
    :cond_1b
    const-string/jumbo v0, "nandswapSystem"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1601
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # invokes: Lcom/android/server/am/CachedAppOptimizer;->compactSystem(Z)V
    invoke-static {v0, v3}, Lcom/android/server/am/CachedAppOptimizer;->access$3200(Lcom/android/server/am/CachedAppOptimizer;Z)V

    .line 1602
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_546

    .line 1448
    :cond_2b
    # invokes: Lcom/android/server/am/CachedAppOptimizer$ZramStats;->isNandswapQuotaAvailable()Z
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->access$2300()Z

    move-result v8

    .line 1449
    .local v8, "needWriteback":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1454
    .local v9, "start":J
    iget v11, v2, Landroid/os/Message;->arg1:I

    .line 1455
    .local v11, "lastOomAdj":I
    iget v15, v2, Landroid/os/Message;->arg2:I

    .line 1457
    .local v15, "action":I
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1500(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    monitor-enter v12

    :try_start_3e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1458
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mPendingNandswapProcesses:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2400(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v14, v0

    .line 1460
    .local v14, "proc":Lcom/android/server/am/ProcessRecord;
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    move v13, v0

    .line 1461
    .local v13, "pid":I
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1462
    .local v19, "name":Ljava/lang/String;
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v20, v0

    .line 1464
    .local v20, "procState":I
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;

    .line 1465
    .local v0, "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    iget-object v4, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # operator-- for: Lcom/android/server/am/CachedAppOptimizer;->mNandswapMsgCount:J
    invoke-static {v4}, Lcom/android/server/am/CachedAppOptimizer;->access$2510(Lcom/android/server/am/CachedAppOptimizer;)J

    .line 1466
    monitor-exit v12
    :try_end_6d
    .catchall {:try_start_3e .. :try_end_6d} :catchall_547

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1468
    iget-object v4, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mNandswapLevel:I
    invoke-static {v4}, Lcom/android/server/am/CachedAppOptimizer;->access$2600(Lcom/android/server/am/CachedAppOptimizer;)I

    move-result v4

    if-nez v4, :cond_99

    .line 1469
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v3, :cond_98

    .line 1470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping nandswap LEVEL_DISABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mNandswapMsgCount:J
    invoke-static {v4}, Lcom/android/server/am/CachedAppOptimizer;->access$2500(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_98
    return-void

    .line 1475
    :cond_99
    if-nez v13, :cond_9c

    .line 1477
    return-void

    .line 1480
    :cond_9c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v4, v13, :cond_c7

    .line 1481
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v3, :cond_c4

    .line 1482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping nandswap as process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    .end local v19    # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is system_server."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 1481
    .end local v4    # "name":Ljava/lang/String;
    .restart local v19    # "name":Ljava/lang/String;
    :cond_c4
    move-object/from16 v4, v19

    .line 1486
    .end local v19    # "name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :goto_c6
    return-void

    .line 1489
    .end local v4    # "name":Ljava/lang/String;
    .restart local v19    # "name":Ljava/lang/String;
    :cond_c7
    move-object/from16 v4, v19

    .end local v19    # "name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    const/4 v5, 0x6

    if-ne v15, v5, :cond_dd

    .line 1490
    const-string v12, "com.sec.android.app.launcher"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_dc

    .line 1491
    const-string v12, "com.samsung.android.honeyboard"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_dd

    .line 1492
    :cond_dc
    return-void

    .line 1495
    :cond_dd
    iget-object v12, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;
    invoke-static {v12}, Lcom/android/server/am/CachedAppOptimizer;->access$1700(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v12

    invoke-interface {v12, v13}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v19

    .line 1496
    .local v19, "rssBefore":[J
    aget-wide v5, v19, v7

    .line 1498
    .local v5, "anonRssBefore":J
    aget-wide v17, v19, v3

    const-wide/16 v21, 0x0

    cmp-long v17, v17, v21

    const/16 v18, 0x3

    if-nez v17, :cond_127

    const/16 v16, 0x1

    aget-wide v23, v19, v16

    cmp-long v17, v23, v21

    if-nez v17, :cond_127

    aget-wide v23, v19, v7

    cmp-long v17, v23, v21

    if-nez v17, :cond_127

    aget-wide v23, v19, v18

    cmp-long v17, v23, v21

    if-nez v17, :cond_127

    .line 1500
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v3, :cond_126

    .line 1501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping nandswap for process "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " with no memory usage. Dead?"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "ActivityManager"

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_126
    return-void

    .line 1507
    :cond_127
    iget-object v12, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mNandswapRssThrottleKb:J
    invoke-static {v12}, Lcom/android/server/am/CachedAppOptimizer;->access$2700(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v23

    cmp-long v12, v23, v21

    if-lez v12, :cond_163

    iget-object v12, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1508
    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mNandswapRssThrottleKb:J
    invoke-static {v12}, Lcom/android/server/am/CachedAppOptimizer;->access$2700(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v23

    cmp-long v12, v5, v23

    if-gez v12, :cond_163

    .line 1509
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v3, :cond_162

    .line 1510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping nandswap for process "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; anon RSS is too small: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "KB."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "ActivityManager"

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_162
    return-void

    .line 1517
    :cond_163
    if-eqz v0, :cond_199

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_199

    .line 1518
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v12, :cond_196

    .line 1519
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignore lastNandswapStats because it is old stats for name: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stats.name: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1519
    const-string v12, "ActivityManager"

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_196
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_19a

    .line 1525
    :cond_199
    move-object v3, v0

    .end local v0    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .local v3, "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    :goto_19a
    if-eqz v3, :cond_210

    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mNandswapDeltaRssThrottleKb:J
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2800(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v24

    cmp-long v0, v24, v21

    if-lez v0, :cond_210

    .line 1526
    invoke-virtual {v3}, Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;->getRssAfterNandswap()[J

    move-result-object v0

    .line 1527
    .local v0, "lastRss":[J
    aget-wide v21, v19, v7

    aget-wide v24, v0, v7

    sub-long v21, v21, v24

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(J)J

    move-result-wide v21

    aget-wide v24, v19, v18

    aget-wide v26, v0, v18

    sub-long v24, v24, v26

    .line 1528
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    move/from16 v26, v8

    .end local v8    # "needWriteback":Z
    .local v26, "needWriteback":Z
    add-long v7, v21, v24

    .line 1529
    .local v7, "absDelta":J
    iget-object v12, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mNandswapDeltaRssThrottleKb:J
    invoke-static {v12}, Lcom/android/server/am/CachedAppOptimizer;->access$2800(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v21

    cmp-long v12, v7, v21

    if-gtz v12, :cond_1f4

    .line 1530
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v12, :cond_1f3

    .line 1531
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping nandswap for process "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; abs delta is too small: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "KB."

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v12, "ActivityManager"

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_1f3
    return-void

    .line 1537
    :cond_1f4
    const/4 v2, 0x2

    aget-wide v21, v19, v2

    aget-wide v24, v19, v18

    add-long v21, v21, v24

    aget-wide v24, v0, v2

    sub-long v21, v21, v24

    aget-wide v24, v0, v18

    sub-long v21, v21, v24

    iget-object v2, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mNandswapDeltaRssThrottleKb:J
    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->access$2800(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v24

    cmp-long v2, v21, v24

    if-gez v2, :cond_212

    .line 1538
    const/4 v2, 0x0

    move v8, v2

    .end local v26    # "needWriteback":Z
    .local v2, "needWriteback":Z
    goto :goto_214

    .line 1525
    .end local v0    # "lastRss":[J
    .end local v2    # "needWriteback":Z
    .end local v7    # "absDelta":J
    .restart local v8    # "needWriteback":Z
    :cond_210
    move/from16 v26, v8

    .line 1542
    .end local v8    # "needWriteback":Z
    .restart local v26    # "needWriteback":Z
    :cond_212
    move/from16 v8, v26

    .end local v26    # "needWriteback":Z
    .restart local v8    # "needWriteback":Z
    :goto_214
    :try_start_214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nandswap : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_227} :catch_532
    .catchall {:try_start_214 .. :try_end_227} :catchall_520

    .line 1543
    if-eqz v8, :cond_24b

    :try_start_229
    const-string/jumbo v2, "writeback"
    :try_end_22c
    .catch Ljava/lang/Exception; {:try_start_229 .. :try_end_22c} :catch_23b
    .catchall {:try_start_229 .. :try_end_22c} :catchall_22d

    goto :goto_24e

    .line 1591
    :catchall_22d
    move-exception v0

    move-object/from16 v26, v3

    move-wide/from16 v30, v5

    move-wide/from16 v34, v9

    move v10, v13

    move-object v2, v14

    move v3, v15

    move/from16 v7, v20

    goto/16 :goto_52c

    .line 1588
    :catch_23b
    move-exception v0

    move-object/from16 v26, v3

    move-wide/from16 v30, v5

    move-wide/from16 v34, v9

    move v10, v13

    move-object v2, v14

    move v3, v15

    move/from16 v7, v20

    const-wide/16 v5, 0x40

    goto/16 :goto_540

    .line 1543
    :cond_24b
    :try_start_24b
    const-string/jumbo v2, "swaponly"

    :goto_24e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_255
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_255} :catch_532
    .catchall {:try_start_24b .. :try_end_255} :catchall_520

    .line 1542
    move-object v7, v3

    const-wide/16 v2, 0x40

    .end local v3    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .local v7, "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    :try_start_258
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1544
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v2

    .line 1545
    .local v2, "zramFreeKbBefore":J
    # invokes: Lcom/android/server/am/CachedAppOptimizer$ZramStats;->readZramWritebackLimit()J
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->access$2900()J

    move-result-wide v21

    .line 1546
    .local v21, "writebackLimitBefore":J
    # invokes: Lcom/android/server/am/CachedAppOptimizer$ZramStats;->readZramBdstat()[J
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->access$3000()[J

    move-result-object v0

    move-object/from16 v24, v0

    .line 1548
    .local v24, "bdstatBefore":[J
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1700(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    const-string v12, "anon"

    invoke-interface {v0, v12, v13}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Ljava/lang/String;I)V
    :try_end_274
    .catch Ljava/lang/Exception; {:try_start_258 .. :try_end_274} :catch_511
    .catchall {:try_start_258 .. :try_end_274} :catchall_504

    .line 1549
    if-eqz v8, :cond_2a1

    .line 1550
    :try_start_276
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1700(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    const-string/jumbo v12, "writeback"

    invoke-interface {v0, v12, v13}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Ljava/lang/String;I)V
    :try_end_282
    .catch Ljava/lang/Exception; {:try_start_276 .. :try_end_282} :catch_291
    .catchall {:try_start_276 .. :try_end_282} :catchall_283

    goto :goto_2a1

    .line 1591
    .end local v2    # "zramFreeKbBefore":J
    .end local v21    # "writebackLimitBefore":J
    .end local v24    # "bdstatBefore":[J
    :catchall_283
    move-exception v0

    move-wide/from16 v30, v5

    move-object/from16 v26, v7

    move-wide/from16 v34, v9

    move v10, v13

    move-object v2, v14

    move v3, v15

    move/from16 v7, v20

    goto/16 :goto_52c

    .line 1588
    :catch_291
    move-exception v0

    move-wide/from16 v30, v5

    move-object/from16 v26, v7

    move-wide/from16 v34, v9

    move v10, v13

    move-object v2, v14

    move v3, v15

    move/from16 v7, v20

    const-wide/16 v5, 0x40

    goto/16 :goto_540

    .line 1552
    .restart local v2    # "zramFreeKbBefore":J
    .restart local v21    # "writebackLimitBefore":J
    .restart local v24    # "bdstatBefore":[J
    :cond_2a1
    :goto_2a1
    :try_start_2a1
    # invokes: Lcom/android/server/am/CachedAppOptimizer$ZramStats;->readZramBdstat()[J
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->access$3000()[J

    move-result-object v0

    move-object/from16 v25, v0

    .line 1553
    .local v25, "bdstatAfter":[J
    # invokes: Lcom/android/server/am/CachedAppOptimizer$ZramStats;->readZramWritebackLimit()J
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->access$2900()J

    move-result-wide v28

    .line 1555
    .local v28, "writebackLimitAfter":J
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1700(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v13}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v0

    move-object v12, v0

    .line 1556
    .local v12, "rssAfter":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30
    :try_end_2ba
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_2ba} :catch_511
    .catchall {:try_start_2a1 .. :try_end_2ba} :catchall_504

    move-wide/from16 v32, v30

    .line 1557
    .local v32, "end":J
    move-wide/from16 v30, v5

    move-wide/from16 v5, v32

    move-wide/from16 v32, v2

    .end local v2    # "zramFreeKbBefore":J
    .local v5, "end":J
    .local v30, "anonRssBefore":J
    .local v32, "zramFreeKbBefore":J
    sub-long v1, v5, v9

    .line 1558
    .local v1, "time":J
    :try_start_2c4
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v34

    move-wide/from16 v36, v34

    .line 1560
    .local v36, "zramFreeKbAfter":J
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z
    :try_end_2cc
    .catch Ljava/lang/Exception; {:try_start_2c4 .. :try_end_2cc} :catch_4f5
    .catchall {:try_start_2c4 .. :try_end_2cc} :catchall_4e8

    if-eqz v0, :cond_3df

    .line 1561
    :try_start_2ce
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2d5
    .catch Ljava/lang/Exception; {:try_start_2ce .. :try_end_2d5} :catch_3cf
    .catchall {:try_start_2ce .. :try_end_2d5} :catchall_3c1

    move-object/from16 v26, v7

    .end local v7    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .local v26, "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    :try_start_2d7
    const-string/jumbo v7, "nandswap for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " action:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", adj:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", state:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2fd
    .catch Ljava/lang/Exception; {:try_start_2d7 .. :try_end_2fd} :catch_3b3
    .catchall {:try_start_2d7 .. :try_end_2fd} :catchall_3a7

    move/from16 v7, v20

    .end local v20    # "procState":I
    .local v7, "procState":I
    :try_start_2ff
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_302
    .catch Ljava/lang/Exception; {:try_start_2ff .. :try_end_302} :catch_39b
    .catchall {:try_start_2ff .. :try_end_302} :catchall_391

    move-wide/from16 v34, v9

    .end local v9    # "start":J
    .local v34, "start":J
    :try_start_304
    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v38, v5

    const/4 v9, 0x1

    .end local v5    # "end":J
    .local v38, "end":J
    aget-wide v5, v12, v9

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-wide v9, v12, v5

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v12, v18

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v36

    .end local v36    # "zramFreeKbAfter":J
    .local v5, "zramFreeKbAfter":J
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms, "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    aget-wide v36, v12, v9

    aget-wide v40, v19, v9

    sub-long v9, v36, v40

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    aget-wide v36, v12, v9

    aget-wide v40, v19, v9

    sub-long v9, v36, v40

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v12, v18

    aget-wide v36, v19, v18

    sub-long v9, v9, v36

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v5, v32

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37d
    .catch Ljava/lang/Exception; {:try_start_304 .. :try_end_37d} :catch_387
    .catchall {:try_start_304 .. :try_end_37d} :catchall_37f

    goto/16 :goto_3e9

    .line 1591
    .end local v1    # "time":J
    .end local v5    # "zramFreeKbAfter":J
    .end local v12    # "rssAfter":[J
    .end local v21    # "writebackLimitBefore":J
    .end local v24    # "bdstatBefore":[J
    .end local v25    # "bdstatAfter":[J
    .end local v28    # "writebackLimitAfter":J
    .end local v32    # "zramFreeKbBefore":J
    .end local v38    # "end":J
    :catchall_37f
    move-exception v0

    move-object/from16 v1, p0

    move v10, v13

    move-object v2, v14

    move v3, v15

    goto/16 :goto_52c

    .line 1588
    :catch_387
    move-exception v0

    move-object/from16 v1, p0

    move v10, v13

    move-object v2, v14

    move v3, v15

    const-wide/16 v5, 0x40

    goto/16 :goto_540

    .line 1591
    .end local v34    # "start":J
    .restart local v9    # "start":J
    :catchall_391
    move-exception v0

    move-wide/from16 v34, v9

    move-object/from16 v1, p0

    move v10, v13

    move-object v2, v14

    move v3, v15

    .end local v9    # "start":J
    .restart local v34    # "start":J
    goto/16 :goto_52c

    .line 1588
    .end local v34    # "start":J
    .restart local v9    # "start":J
    :catch_39b
    move-exception v0

    move-wide/from16 v34, v9

    move-object/from16 v1, p0

    move v10, v13

    move-object v2, v14

    move v3, v15

    const-wide/16 v5, 0x40

    .end local v9    # "start":J
    .restart local v34    # "start":J
    goto/16 :goto_540

    .line 1591
    .end local v7    # "procState":I
    .end local v34    # "start":J
    .restart local v9    # "start":J
    .restart local v20    # "procState":I
    :catchall_3a7
    move-exception v0

    move-wide/from16 v34, v9

    move/from16 v7, v20

    move-object/from16 v1, p0

    move v10, v13

    move-object v2, v14

    move v3, v15

    .end local v9    # "start":J
    .end local v20    # "procState":I
    .restart local v7    # "procState":I
    .restart local v34    # "start":J
    goto/16 :goto_52c

    .line 1588
    .end local v7    # "procState":I
    .end local v34    # "start":J
    .restart local v9    # "start":J
    .restart local v20    # "procState":I
    :catch_3b3
    move-exception v0

    move-wide/from16 v34, v9

    move/from16 v7, v20

    move-object/from16 v1, p0

    move v10, v13

    move-object v2, v14

    move v3, v15

    const-wide/16 v5, 0x40

    .end local v9    # "start":J
    .end local v20    # "procState":I
    .restart local v7    # "procState":I
    .restart local v34    # "start":J
    goto/16 :goto_540

    .line 1591
    .end local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .end local v34    # "start":J
    .local v7, "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v9    # "start":J
    .restart local v20    # "procState":I
    :catchall_3c1
    move-exception v0

    move-object/from16 v26, v7

    move-wide/from16 v34, v9

    move/from16 v7, v20

    move-object/from16 v1, p0

    move v10, v13

    move-object v2, v14

    move v3, v15

    .end local v9    # "start":J
    .end local v20    # "procState":I
    .local v7, "procState":I
    .restart local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v34    # "start":J
    goto/16 :goto_52c

    .line 1588
    .end local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .end local v34    # "start":J
    .local v7, "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v9    # "start":J
    .restart local v20    # "procState":I
    :catch_3cf
    move-exception v0

    move-object/from16 v26, v7

    move-wide/from16 v34, v9

    move/from16 v7, v20

    move-object/from16 v1, p0

    move v10, v13

    move-object v2, v14

    move v3, v15

    const-wide/16 v5, 0x40

    .end local v9    # "start":J
    .end local v20    # "procState":I
    .local v7, "procState":I
    .restart local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v34    # "start":J
    goto/16 :goto_540

    .line 1560
    .end local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .end local v34    # "start":J
    .restart local v1    # "time":J
    .local v5, "end":J
    .local v7, "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v9    # "start":J
    .restart local v12    # "rssAfter":[J
    .restart local v20    # "procState":I
    .restart local v21    # "writebackLimitBefore":J
    .restart local v24    # "bdstatBefore":[J
    .restart local v25    # "bdstatAfter":[J
    .restart local v28    # "writebackLimitAfter":J
    .restart local v32    # "zramFreeKbBefore":J
    .restart local v36    # "zramFreeKbAfter":J
    :cond_3df
    move-wide/from16 v38, v5

    move-object/from16 v26, v7

    move-wide/from16 v34, v9

    move/from16 v7, v20

    move-wide/from16 v5, v36

    .line 1571
    .end local v9    # "start":J
    .end local v20    # "procState":I
    .end local v36    # "zramFreeKbAfter":J
    .local v5, "zramFreeKbAfter":J
    .local v7, "procState":I
    .restart local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v34    # "start":J
    .restart local v38    # "end":J
    :goto_3e9
    if-eqz v24, :cond_49d

    if-eqz v25, :cond_49d

    .line 1572
    const/16 v3, 0xd

    :try_start_3ef
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v3, v10

    const/4 v9, 0x1

    aput-object v4, v3, v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v3, v10

    .line 1573
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v18

    const/4 v9, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x6

    aput-object v0, v3, v9

    move-object v9, v12

    .line 1574
    .end local v12    # "rssAfter":[J
    .local v9, "rssAfter":[J
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x7

    aput-object v0, v3, v10

    const/16 v0, 0x8

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v3, v0

    const/16 v0, 0x9

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v3, v0

    const/16 v0, 0xa

    .line 1575
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v3, v0

    const/16 v0, 0xb

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v3, v0

    const/16 v0, 0xc

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v3, v0

    .line 1572
    const v0, 0x13d6e8

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_465
    .catch Ljava/lang/Exception; {:try_start_3ef .. :try_end_465} :catch_493
    .catchall {:try_start_3ef .. :try_end_465} :catchall_48b

    .line 1577
    move-wide v2, v1

    move-object/from16 v1, p0

    .end local v1    # "time":J
    .local v2, "time":J
    :try_start_468
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    const/4 v12, 0x6

    aget-wide v16, v25, v12

    aget-wide v36, v24, v12

    sub-long v16, v16, v36

    aget-wide v36, v25, v10

    aget-wide v40, v24, v10
    :try_end_475
    .catch Ljava/lang/Exception; {:try_start_468 .. :try_end_475} :catch_489
    .catchall {:try_start_468 .. :try_end_475} :catchall_487

    sub-long v36, v36, v40

    move-object v12, v0

    move v10, v13

    .end local v13    # "pid":I
    .local v10, "pid":I
    move v13, v15

    move-wide/from16 v40, v2

    move-object v2, v14

    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    .local v40, "time":J
    move v14, v8

    move v3, v15

    .end local v15    # "action":I
    .local v3, "action":I
    move-wide/from16 v15, v16

    move-wide/from16 v17, v36

    :try_start_483
    # invokes: Lcom/android/server/am/CachedAppOptimizer;->updateNandswapStat(IZJJ)V
    invoke-static/range {v12 .. v18}, Lcom/android/server/am/CachedAppOptimizer;->access$3100(Lcom/android/server/am/CachedAppOptimizer;IZJJ)V

    goto :goto_4a5

    .line 1591
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "action":I
    .end local v5    # "zramFreeKbAfter":J
    .end local v9    # "rssAfter":[J
    .end local v10    # "pid":I
    .end local v21    # "writebackLimitBefore":J
    .end local v24    # "bdstatBefore":[J
    .end local v25    # "bdstatAfter":[J
    .end local v28    # "writebackLimitAfter":J
    .end local v32    # "zramFreeKbBefore":J
    .end local v38    # "end":J
    .end local v40    # "time":J
    .restart local v13    # "pid":I
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "action":I
    :catchall_487
    move-exception v0

    goto :goto_48e

    .line 1588
    :catch_489
    move-exception v0

    goto :goto_496

    .line 1591
    :catchall_48b
    move-exception v0

    move-object/from16 v1, p0

    :goto_48e
    move v10, v13

    move-object v2, v14

    move v3, v15

    .end local v13    # "pid":I
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "action":I
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "action":I
    .restart local v10    # "pid":I
    goto/16 :goto_52c

    .line 1588
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "action":I
    .end local v10    # "pid":I
    .restart local v13    # "pid":I
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "action":I
    :catch_493
    move-exception v0

    move-object/from16 v1, p0

    :goto_496
    move v10, v13

    move-object v2, v14

    move v3, v15

    const-wide/16 v5, 0x40

    .end local v13    # "pid":I
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "action":I
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "action":I
    .restart local v10    # "pid":I
    goto/16 :goto_540

    .line 1571
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "action":I
    .end local v10    # "pid":I
    .restart local v1    # "time":J
    .restart local v5    # "zramFreeKbAfter":J
    .restart local v12    # "rssAfter":[J
    .restart local v13    # "pid":I
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "action":I
    .restart local v21    # "writebackLimitBefore":J
    .restart local v24    # "bdstatBefore":[J
    .restart local v25    # "bdstatAfter":[J
    .restart local v28    # "writebackLimitAfter":J
    .restart local v32    # "zramFreeKbBefore":J
    .restart local v38    # "end":J
    :cond_49d
    move-wide/from16 v40, v1

    move-object v9, v12

    move v10, v13

    move-object v2, v14

    move v3, v15

    move-object/from16 v1, p0

    .line 1582
    .end local v1    # "time":J
    .end local v12    # "rssAfter":[J
    .end local v13    # "pid":I
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "action":I
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "action":I
    .restart local v9    # "rssAfter":[J
    .restart local v10    # "pid":I
    .restart local v40    # "time":J
    :goto_4a5
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1500(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    monitor-enter v12
    :try_end_4ac
    .catch Ljava/lang/Exception; {:try_start_483 .. :try_end_4ac} :catch_4e3
    .catchall {:try_start_483 .. :try_end_4ac} :catchall_4e0

    :try_start_4ac
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_4af
    .catchall {:try_start_4ac .. :try_end_4af} :catchall_4d8

    .line 1583
    move-wide/from16 v13, v38

    .end local v38    # "end":J
    .local v13, "end":J
    :try_start_4b1
    iput-wide v13, v2, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    .line 1584
    monitor-exit v12
    :try_end_4b4
    .catchall {:try_start_4b1 .. :try_end_4b4} :catchall_4d6

    :try_start_4b4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1586
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v15, Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;

    invoke-direct {v15, v4, v9}, Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;-><init>(Ljava/lang/String;[J)V

    invoke-virtual {v0, v12, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d2
    .catch Ljava/lang/Exception; {:try_start_4b4 .. :try_end_4d2} :catch_4e3
    .catchall {:try_start_4b4 .. :try_end_4d2} :catchall_4e0

    .line 1591
    const-wide/16 v5, 0x40

    .end local v5    # "zramFreeKbAfter":J
    .end local v9    # "rssAfter":[J
    .end local v13    # "end":J
    .end local v21    # "writebackLimitBefore":J
    .end local v24    # "bdstatBefore":[J
    .end local v25    # "bdstatAfter":[J
    .end local v28    # "writebackLimitAfter":J
    .end local v32    # "zramFreeKbBefore":J
    .end local v40    # "time":J
    goto/16 :goto_541

    .line 1584
    .restart local v5    # "zramFreeKbAfter":J
    .restart local v9    # "rssAfter":[J
    .restart local v13    # "end":J
    .restart local v21    # "writebackLimitBefore":J
    .restart local v24    # "bdstatBefore":[J
    .restart local v25    # "bdstatAfter":[J
    .restart local v28    # "writebackLimitAfter":J
    .restart local v32    # "zramFreeKbBefore":J
    .restart local v40    # "time":J
    :catchall_4d6
    move-exception v0

    goto :goto_4db

    .end local v13    # "end":J
    .restart local v38    # "end":J
    :catchall_4d8
    move-exception v0

    move-wide/from16 v13, v38

    .end local v38    # "end":J
    .restart local v13    # "end":J
    :goto_4db
    :try_start_4db
    monitor-exit v12
    :try_end_4dc
    .catchall {:try_start_4db .. :try_end_4dc} :catchall_4d6

    :try_start_4dc
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "action":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "procState":I
    .end local v8    # "needWriteback":Z
    .end local v10    # "pid":I
    .end local v11    # "lastOomAdj":I
    .end local v19    # "rssBefore":[J
    .end local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .end local v30    # "anonRssBefore":J
    .end local v34    # "start":J
    .end local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v0
    :try_end_4e0
    .catch Ljava/lang/Exception; {:try_start_4dc .. :try_end_4e0} :catch_4e3
    .catchall {:try_start_4dc .. :try_end_4e0} :catchall_4e0

    .line 1591
    .end local v5    # "zramFreeKbAfter":J
    .end local v9    # "rssAfter":[J
    .end local v13    # "end":J
    .end local v21    # "writebackLimitBefore":J
    .end local v24    # "bdstatBefore":[J
    .end local v25    # "bdstatAfter":[J
    .end local v28    # "writebackLimitAfter":J
    .end local v32    # "zramFreeKbBefore":J
    .end local v40    # "time":J
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "action":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v7    # "procState":I
    .restart local v8    # "needWriteback":Z
    .restart local v10    # "pid":I
    .restart local v11    # "lastOomAdj":I
    .restart local v19    # "rssBefore":[J
    .restart local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v30    # "anonRssBefore":J
    .restart local v34    # "start":J
    .restart local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_4e0
    move-exception v0

    goto/16 :goto_52c

    .line 1588
    :catch_4e3
    move-exception v0

    const-wide/16 v5, 0x40

    goto/16 :goto_540

    .line 1591
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "action":I
    .end local v10    # "pid":I
    .end local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .end local v34    # "start":J
    .local v7, "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .local v9, "start":J
    .local v13, "pid":I
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "action":I
    .restart local v20    # "procState":I
    :catchall_4e8
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v26, v7

    move-wide/from16 v34, v9

    move v10, v13

    move-object v2, v14

    move v3, v15

    move/from16 v7, v20

    .end local v9    # "start":J
    .end local v13    # "pid":I
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "action":I
    .end local v20    # "procState":I
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "action":I
    .local v7, "procState":I
    .restart local v10    # "pid":I
    .restart local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v34    # "start":J
    goto :goto_52c

    .line 1588
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "action":I
    .end local v10    # "pid":I
    .end local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .end local v34    # "start":J
    .local v7, "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v9    # "start":J
    .restart local v13    # "pid":I
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "action":I
    .restart local v20    # "procState":I
    :catch_4f5
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v26, v7

    move-wide/from16 v34, v9

    move v10, v13

    move-object v2, v14

    move v3, v15

    move/from16 v7, v20

    const-wide/16 v5, 0x40

    .end local v9    # "start":J
    .end local v13    # "pid":I
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "action":I
    .end local v20    # "procState":I
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "action":I
    .local v7, "procState":I
    .restart local v10    # "pid":I
    .restart local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v34    # "start":J
    goto :goto_540

    .line 1591
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "action":I
    .end local v10    # "pid":I
    .end local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .end local v30    # "anonRssBefore":J
    .end local v34    # "start":J
    .local v5, "anonRssBefore":J
    .local v7, "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v9    # "start":J
    .restart local v13    # "pid":I
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "action":I
    .restart local v20    # "procState":I
    :catchall_504
    move-exception v0

    move-wide/from16 v30, v5

    move-object/from16 v26, v7

    move-wide/from16 v34, v9

    move v10, v13

    move-object v2, v14

    move v3, v15

    move/from16 v7, v20

    .end local v5    # "anonRssBefore":J
    .end local v9    # "start":J
    .end local v13    # "pid":I
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "action":I
    .end local v20    # "procState":I
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "action":I
    .local v7, "procState":I
    .restart local v10    # "pid":I
    .restart local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v30    # "anonRssBefore":J
    .restart local v34    # "start":J
    goto :goto_52c

    .line 1588
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "action":I
    .end local v10    # "pid":I
    .end local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .end local v30    # "anonRssBefore":J
    .end local v34    # "start":J
    .restart local v5    # "anonRssBefore":J
    .local v7, "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v9    # "start":J
    .restart local v13    # "pid":I
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "action":I
    .restart local v20    # "procState":I
    :catch_511
    move-exception v0

    move-wide/from16 v30, v5

    move-object/from16 v26, v7

    move-wide/from16 v34, v9

    move v10, v13

    move-object v2, v14

    move v3, v15

    move/from16 v7, v20

    const-wide/16 v5, 0x40

    .end local v5    # "anonRssBefore":J
    .end local v9    # "start":J
    .end local v13    # "pid":I
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "action":I
    .end local v20    # "procState":I
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "action":I
    .local v7, "procState":I
    .restart local v10    # "pid":I
    .restart local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v30    # "anonRssBefore":J
    .restart local v34    # "start":J
    goto :goto_540

    .line 1591
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "procState":I
    .end local v10    # "pid":I
    .end local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .end local v30    # "anonRssBefore":J
    .end local v34    # "start":J
    .local v3, "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v5    # "anonRssBefore":J
    .restart local v9    # "start":J
    .restart local v13    # "pid":I
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "action":I
    .restart local v20    # "procState":I
    :catchall_520
    move-exception v0

    move-object/from16 v26, v3

    move-wide/from16 v30, v5

    move-wide/from16 v34, v9

    move v10, v13

    move-object v2, v14

    move v3, v15

    move/from16 v7, v20

    .end local v5    # "anonRssBefore":J
    .end local v9    # "start":J
    .end local v13    # "pid":I
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "action":I
    .end local v20    # "procState":I
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v3, "action":I
    .restart local v7    # "procState":I
    .restart local v10    # "pid":I
    .restart local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v30    # "anonRssBefore":J
    .restart local v34    # "start":J
    :goto_52c
    const-wide/16 v5, 0x40

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1592
    throw v0

    .line 1588
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "procState":I
    .end local v10    # "pid":I
    .end local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .end local v30    # "anonRssBefore":J
    .end local v34    # "start":J
    .local v3, "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v5    # "anonRssBefore":J
    .restart local v9    # "start":J
    .restart local v13    # "pid":I
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "action":I
    .restart local v20    # "procState":I
    :catch_532
    move-exception v0

    move-object/from16 v26, v3

    move-wide/from16 v30, v5

    move-wide/from16 v34, v9

    move v10, v13

    move-object v2, v14

    move v3, v15

    move/from16 v7, v20

    const-wide/16 v5, 0x40

    .line 1591
    .end local v5    # "anonRssBefore":J
    .end local v9    # "start":J
    .end local v13    # "pid":I
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "action":I
    .end local v20    # "procState":I
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v3, "action":I
    .restart local v7    # "procState":I
    .restart local v10    # "pid":I
    .restart local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .restart local v30    # "anonRssBefore":J
    .restart local v34    # "start":J
    :goto_540
    nop

    :goto_541
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1592
    nop

    .line 1593
    nop

    .line 1606
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "action":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "procState":I
    .end local v8    # "needWriteback":Z
    .end local v10    # "pid":I
    .end local v11    # "lastOomAdj":I
    .end local v19    # "rssBefore":[J
    .end local v26    # "lastNandswapStats":Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;
    .end local v30    # "anonRssBefore":J
    .end local v34    # "start":J
    :goto_546
    return-void

    .line 1466
    .restart local v8    # "needWriteback":Z
    .restart local v9    # "start":J
    .restart local v11    # "lastOomAdj":I
    .restart local v15    # "action":I
    :catchall_547
    move-exception v0

    move/from16 v26, v8

    move-wide/from16 v34, v9

    move v3, v15

    .end local v8    # "needWriteback":Z
    .end local v9    # "start":J
    .end local v15    # "action":I
    .restart local v3    # "action":I
    .local v26, "needWriteback":Z
    .restart local v34    # "start":J
    :goto_54d
    :try_start_54d
    monitor-exit v12
    :try_end_54e
    .catchall {:try_start_54d .. :try_end_54e} :catchall_552

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_552
    move-exception v0

    goto :goto_54d
.end method
