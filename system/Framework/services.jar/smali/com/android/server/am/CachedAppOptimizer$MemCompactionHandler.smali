.class final Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MemCompactionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method private constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 2

    .line 972
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 973
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 974
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/CachedAppOptimizer;
    .param p2, "x1"    # Lcom/android/server/am/CachedAppOptimizer$1;

    .line 971
    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 68
    .param p1, "msg"    # Landroid/os/Message;

    .line 978
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_b

    goto/16 :goto_614

    .line 980
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 988
    .local v4, "start":J
    iget v14, v2, Landroid/os/Message;->arg1:I

    .line 989
    .local v14, "lastOomAdj":I
    iget v15, v2, Landroid/os/Message;->arg2:I

    .line 990
    .local v15, "procState":I
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1500(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    monitor-enter v6

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 991
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1600(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v12, v0

    .line 993
    .local v12, "proc":Lcom/android/server/am/ProcessRecord;
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    move v13, v0

    .line 994
    .local v13, "pendingAction":I
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    move v10, v0

    .line 995
    .local v10, "pid":I
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v11, v0

    .line 999
    .local v11, "name":Ljava/lang/String;
    const/4 v0, 0x2

    if-eq v13, v3, :cond_39

    if-ne v13, v0, :cond_6c

    :cond_39
    iget v8, v12, Lcom/android/server/am/ProcessRecord;->setAdj:I
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_615

    const/16 v9, 0xc8

    if-gt v8, v9, :cond_6c

    .line 1002
    :try_start_3f
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_5e

    .line 1003
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping compaction as process "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is now perceptible."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_5e
    monitor-exit v6
    :try_end_5f
    .catchall {:try_start_3f .. :try_end_5f} :catchall_63

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1013
    .end local v10    # "pid":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "pendingAction":I
    :catchall_63
    move-exception v0

    move-wide/from16 v40, v4

    move/from16 v64, v14

    move/from16 v65, v15

    goto/16 :goto_61c

    .line 1010
    .restart local v10    # "pid":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "pendingAction":I
    :cond_6c
    :try_start_6c
    iget v8, v12, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    move v9, v8

    .line 1011
    .local v9, "lastCompactAction":I
    iget-wide v7, v12, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    move-wide/from16 v37, v7

    .line 1012
    .local v37, "lastCompactTime":J
    iget-object v7, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    move-object/from16 v39, v7

    .line 1013
    .local v39, "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    monitor-exit v6
    :try_end_84
    .catchall {:try_start_6c .. :try_end_84} :catchall_615

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1015
    if-nez v10, :cond_8a

    .line 1017
    return-void

    .line 1027
    :cond_8a
    const-wide/16 v6, 0x0

    cmp-long v8, v37, v6

    if-eqz v8, :cond_1df

    .line 1028
    if-ne v13, v3, :cond_f7

    .line 1029
    if-ne v9, v3, :cond_a2

    sub-long v19, v4, v37

    iget-object v8, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v6, v8, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    cmp-long v6, v19, v6

    if-ltz v6, :cond_9f

    goto :goto_a2

    :cond_9f
    move-wide/from16 v40, v4

    goto :goto_b0

    :cond_a2
    :goto_a2
    if-ne v9, v0, :cond_f3

    sub-long v6, v4, v37

    iget-object v8, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-wide/from16 v40, v4

    .end local v4    # "start":J
    .local v40, "start":J
    iget-wide v3, v8, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    cmp-long v3, v6, v3

    if-gez v3, :cond_1e1

    .line 1034
    :goto_b0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_f2

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping some compaction for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": too soon. throttle="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " last="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v40, v37

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms ago"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_f2
    return-void

    .line 1029
    .end local v40    # "start":J
    .restart local v4    # "start":J
    :cond_f3
    move-wide/from16 v40, v4

    .end local v4    # "start":J
    .restart local v40    # "start":J
    goto/16 :goto_1e1

    .line 1042
    .end local v40    # "start":J
    .restart local v4    # "start":J
    :cond_f7
    move-wide/from16 v40, v4

    .end local v4    # "start":J
    .restart local v40    # "start":J
    if-ne v13, v0, :cond_157

    .line 1043
    const/4 v3, 0x1

    if-ne v9, v3, :cond_108

    sub-long v3, v40, v37

    iget-object v6, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    cmp-long v3, v3, v6

    if-ltz v3, :cond_114

    :cond_108
    if-ne v9, v0, :cond_1e1

    sub-long v3, v40, v37

    iget-object v6, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    cmp-long v3, v3, v6

    if-gez v3, :cond_1e1

    .line 1048
    :cond_114
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_156

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping full compaction for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": too soon. throttle="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " last="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v40, v37

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms ago"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_156
    return-void

    .line 1056
    :cond_157
    const/4 v3, 0x3

    if-ne v13, v3, :cond_19b

    .line 1057
    sub-long v3, v40, v37

    iget-object v6, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    cmp-long v3, v3, v6

    if-gez v3, :cond_1e1

    .line 1058
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_19a

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping persistent compaction for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": too soon. throttle="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " last="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v40, v37

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms ago"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_19a
    return-void

    .line 1065
    :cond_19b
    const/4 v3, 0x4

    if-ne v13, v3, :cond_1e1

    .line 1066
    sub-long v3, v40, v37

    iget-object v6, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    cmp-long v3, v3, v6

    if-gez v3, :cond_1e1

    .line 1067
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_1de

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping bfgs compaction for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": too soon. throttle="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " last="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v40, v37

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms ago"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_1de
    return-void

    .line 1027
    .end local v40    # "start":J
    .restart local v4    # "start":J
    :cond_1df
    move-wide/from16 v40, v4

    .line 1077
    .end local v4    # "start":J
    .restart local v40    # "start":J
    :cond_1e1
    :goto_1e1
    const/4 v3, 0x1

    if-eq v13, v3, :cond_1ee

    if-eq v13, v0, :cond_1e9

    .line 1094
    const-string v3, ""

    .local v3, "action":Ljava/lang/String;
    goto :goto_1f1

    .line 1084
    .end local v3    # "action":Ljava/lang/String;
    :cond_1e9
    iget-object v3, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionAnon:Ljava/lang/String;

    .line 1085
    .restart local v3    # "action":Ljava/lang/String;
    goto :goto_1f1

    .line 1080
    .end local v3    # "action":Ljava/lang/String;
    :cond_1ee
    const-string v3, ""

    .line 1081
    .restart local v3    # "action":Ljava/lang/String;
    nop

    .line 1098
    :goto_1f1
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fa

    .line 1099
    return-void

    .line 1102
    :cond_1fa
    iget-object v4, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v4, v4, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22b

    .line 1103
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_22a

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping full compaction for process "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; proc state is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ActivityManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_22a
    return-void

    .line 1110
    :cond_22b
    iget-object v4, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;
    invoke-static {v4}, Lcom/android/server/am/CachedAppOptimizer;->access$1700(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v4

    invoke-interface {v4, v10}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v4

    .line 1111
    .local v4, "rssBefore":[J
    aget-wide v7, v4, v0

    .line 1113
    .local v7, "anonRssBefore":J
    const/4 v6, 0x0

    aget-wide v19, v4, v6

    const-wide/16 v17, 0x0

    cmp-long v6, v19, v17

    if-nez v6, :cond_274

    const/4 v5, 0x1

    aget-wide v19, v4, v5

    cmp-long v6, v19, v17

    if-nez v6, :cond_274

    aget-wide v19, v4, v0

    cmp-long v6, v19, v17

    if-nez v6, :cond_274

    const/4 v6, 0x3

    aget-wide v19, v4, v6

    cmp-long v6, v19, v17

    if-nez v6, :cond_274

    .line 1115
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_273

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping compaction forprocess "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " with no memory usage. Dead?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ActivityManager"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_273
    return-void

    .line 1122
    :cond_274
    const-string v6, "all"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_289

    const-string v6, "anon"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_285

    goto :goto_289

    :cond_285
    move-wide/from16 v18, v7

    goto/16 :goto_32e

    .line 1123
    :cond_289
    :goto_289
    iget-object v6, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v5, v6, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v17, 0x0

    cmp-long v5, v5, v17

    if-lez v5, :cond_2c3

    iget-object v5, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v5, v5, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v5, v7, v5

    if-gez v5, :cond_2c3

    .line 1125
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_2c2

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping full compaction for process "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; anon RSS is too small: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "KB."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ActivityManager"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_2c2
    return-void

    .line 1133
    :cond_2c3
    if-eqz v39, :cond_32c

    iget-object v5, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v5, v5, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    const-wide/16 v17, 0x0

    cmp-long v5, v5, v17

    if-lez v5, :cond_32c

    .line 1134
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v6

    .line 1135
    .local v6, "lastRss":[J
    const/4 v5, 0x1

    aget-wide v17, v4, v5

    aget-wide v19, v6, v5

    sub-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v17

    aget-wide v19, v4, v0

    aget-wide v23, v6, v0

    sub-long v19, v19, v23

    .line 1136
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(J)J

    move-result-wide v19

    add-long v17, v17, v19

    const/16 v19, 0x3

    aget-wide v23, v4, v19

    aget-wide v25, v6, v19

    sub-long v23, v23, v25

    .line 1137
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(J)J

    move-result-wide v19

    move-object/from16 v23, v6

    .end local v6    # "lastRss":[J
    .local v23, "lastRss":[J
    add-long v5, v17, v19

    .line 1138
    .local v5, "absDelta":J
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-wide/from16 v18, v7

    .end local v7    # "anonRssBefore":J
    .local v18, "anonRssBefore":J
    iget-wide v7, v0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long v0, v5, v7

    if-gtz v0, :cond_32e

    .line 1139
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_32b

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping full compaction for process "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; abs delta is too small: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "KB."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ActivityManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_32b
    return-void

    .line 1133
    .end local v5    # "absDelta":J
    .end local v18    # "anonRssBefore":J
    .end local v23    # "lastRss":[J
    .restart local v7    # "anonRssBefore":J
    :cond_32c
    move-wide/from16 v18, v7

    .line 1151
    .end local v7    # "anonRssBefore":J
    .restart local v18    # "anonRssBefore":J
    :cond_32e
    :goto_32e
    const/4 v0, 0x1

    if-eq v13, v0, :cond_34d

    const/4 v0, 0x2

    if-eq v13, v0, :cond_347

    const/4 v0, 0x3

    if-eq v13, v0, :cond_341

    const/4 v0, 0x4

    if-eq v13, v0, :cond_33b

    goto :goto_353

    .line 1162
    :cond_33b
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # operator++ for: Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2108(Lcom/android/server/am/CachedAppOptimizer;)I

    .line 1163
    goto :goto_353

    .line 1159
    :cond_341
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # operator++ for: Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2008(Lcom/android/server/am/CachedAppOptimizer;)I

    .line 1160
    goto :goto_353

    .line 1156
    :cond_347
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # operator++ for: Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1908(Lcom/android/server/am/CachedAppOptimizer;)I

    .line 1157
    goto :goto_353

    .line 1153
    :cond_34d
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # operator++ for: Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1808(Lcom/android/server/am/CachedAppOptimizer;)I

    .line 1154
    nop

    .line 1168
    :goto_353
    const-wide/16 v7, 0x40

    :try_start_355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compact "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_35f
    .catch Ljava/lang/Exception; {:try_start_355 .. :try_end_35f} :catch_5fc
    .catchall {:try_start_355 .. :try_end_35f} :catchall_5e5

    .line 1169
    const/4 v5, 0x1

    if-ne v13, v5, :cond_390

    :try_start_362
    const-string/jumbo v6, "none"
    :try_end_365
    .catch Ljava/lang/Exception; {:try_start_362 .. :try_end_365} :catch_37b
    .catchall {:try_start_362 .. :try_end_365} :catchall_366

    goto :goto_392

    .line 1208
    :catchall_366
    move-exception v0

    move-object/from16 v55, v4

    move-wide/from16 v57, v7

    move/from16 v59, v9

    move/from16 v60, v10

    move-object/from16 v61, v11

    move-object v7, v12

    move v8, v13

    move/from16 v64, v14

    move/from16 v65, v15

    move-wide/from16 v53, v18

    goto/16 :goto_5f8

    .line 1205
    :catch_37b
    move-exception v0

    move-object/from16 v55, v4

    move-wide/from16 v57, v7

    move/from16 v59, v9

    move/from16 v60, v10

    move-object/from16 v61, v11

    move-object v7, v12

    move v8, v13

    move/from16 v64, v14

    move/from16 v65, v15

    move-wide/from16 v53, v18

    goto/16 :goto_60f

    .line 1169
    :cond_390
    :try_start_390
    const-string v6, "anon"

    :goto_392
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1172
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v23

    move-wide/from16 v42, v23

    .line 1173
    .local v42, "zramFreeKbBefore":J
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1700(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v3, v10}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Ljava/lang/String;I)V

    .line 1174
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1700(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v0

    move-object v6, v0

    .line 1175
    .local v6, "rssAfter":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    move-wide/from16 v44, v23

    .line 1176
    .local v44, "end":J
    move-object/from16 v20, v6

    move-wide/from16 v5, v44

    .end local v6    # "rssAfter":[J
    .end local v44    # "end":J
    .local v5, "end":J
    .local v20, "rssAfter":[J
    sub-long v44, v5, v40

    .line 1177
    .local v44, "time":J
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v23
    :try_end_3ce
    .catch Ljava/lang/Exception; {:try_start_390 .. :try_end_3ce} :catch_5fc
    .catchall {:try_start_390 .. :try_end_3ce} :catchall_5e5

    move-wide/from16 v46, v23

    .line 1178
    .local v46, "zramFreeKbAfter":J
    const/16 v0, 0x756f

    const/16 v7, 0x12

    :try_start_3d4
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v16, 0x0

    aput-object v8, v7, v16

    const/4 v8, 0x1

    aput-object v11, v7, v8

    const/16 v17, 0x2

    aput-object v3, v7, v17

    aget-wide v23, v4, v16

    .line 1179
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v22, 0x3

    aput-object v23, v7, v22

    const/4 v8, 0x1

    aget-wide v23, v4, v8

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v21, 0x4

    aput-object v23, v7, v21

    const/16 v21, 0x5

    const/16 v17, 0x2

    aget-wide v23, v4, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v7, v21

    const/16 v21, 0x6

    const/16 v22, 0x3

    aget-wide v23, v4, v22

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v7, v21

    const/16 v21, 0x7

    const/16 v16, 0x0

    aget-wide v23, v20, v16

    aget-wide v27, v4, v16

    sub-long v23, v23, v27

    .line 1180
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v7, v21

    const/16 v21, 0x8

    const/4 v8, 0x1

    aget-wide v23, v20, v8

    aget-wide v27, v4, v8

    sub-long v23, v23, v27

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v7, v21

    const/16 v21, 0x9

    const/16 v17, 0x2

    aget-wide v23, v20, v17

    aget-wide v27, v4, v17

    sub-long v23, v23, v27

    .line 1181
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v7, v21

    const/16 v21, 0xa

    const/16 v22, 0x3

    aget-wide v23, v20, v22

    aget-wide v27, v4, v22

    sub-long v23, v23, v27

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v7, v21

    const/16 v21, 0xb

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v7, v21

    const/16 v21, 0xc

    .line 1182
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v21

    const/16 v21, 0xd

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v7, v21

    const/16 v21, 0xe

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v21

    const/16 v21, 0xf

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v21

    const/16 v21, 0x10

    .line 1183
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v7, v21

    const/16 v21, 0x11

    sub-long v23, v46, v42

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v7, v21

    .line 1178
    invoke-static {v0, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1187
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2200(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v7, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F
    :try_end_49c
    .catch Ljava/lang/Exception; {:try_start_3d4 .. :try_end_49c} :catch_5d1
    .catchall {:try_start_3d4 .. :try_end_49c} :catchall_5bd

    cmpg-float v0, v0, v7

    if-gez v0, :cond_536

    .line 1188
    const/16 v0, 0x73

    const/4 v7, 0x0

    :try_start_4a3
    aget-wide v23, v4, v7

    const/4 v7, 0x1

    aget-wide v27, v4, v7

    const/4 v8, 0x2

    aget-wide v29, v4, v8

    const/4 v8, 0x3

    aget-wide v31, v4, v8

    const/4 v8, 0x0

    aget-wide v33, v20, v8

    const/4 v7, 0x1

    aget-wide v35, v20, v7

    const/4 v7, 0x2

    aget-wide v48, v20, v7

    const/4 v7, 0x3

    aget-wide v50, v20, v7

    .line 1192
    invoke-static {v15}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v52
    :try_end_4be
    .catch Ljava/lang/Exception; {:try_start_4a3 .. :try_end_4be} :catch_521
    .catchall {:try_start_4a3 .. :try_end_4be} :catchall_50c

    .line 1188
    move-wide v7, v5

    move-object/from16 v5, v20

    .end local v20    # "rssAfter":[J
    .local v5, "rssAfter":[J
    .local v7, "end":J
    move v6, v0

    move-object/from16 v55, v4

    move-object/from16 v56, v5

    move-wide v4, v7

    move-wide/from16 v53, v18

    const-wide/16 v57, 0x40

    .end local v5    # "rssAfter":[J
    .end local v7    # "end":J
    .end local v18    # "anonRssBefore":J
    .local v4, "end":J
    .local v53, "anonRssBefore":J
    .local v55, "rssBefore":[J
    .local v56, "rssAfter":[J
    move v7, v10

    move-object v8, v11

    move/from16 v59, v9

    .end local v9    # "lastCompactAction":I
    .local v59, "lastCompactAction":I
    move v9, v13

    move/from16 v60, v10

    move-object/from16 v61, v11

    .end local v10    # "pid":I
    .end local v11    # "name":Ljava/lang/String;
    .local v60, "pid":I
    .local v61, "name":Ljava/lang/String;
    move-wide/from16 v10, v23

    move-object/from16 v62, v12

    move/from16 v63, v13

    .end local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "pendingAction":I
    .local v62, "proc":Lcom/android/server/am/ProcessRecord;
    .local v63, "pendingAction":I
    move-wide/from16 v12, v27

    move/from16 v64, v14

    move/from16 v65, v15

    .end local v14    # "lastOomAdj":I
    .end local v15    # "procState":I
    .local v64, "lastOomAdj":I
    .local v65, "procState":I
    move-wide/from16 v14, v29

    move-wide/from16 v16, v31

    move-wide/from16 v18, v33

    move-wide/from16 v20, v35

    move-wide/from16 v22, v48

    move-wide/from16 v24, v50

    move-wide/from16 v26, v44

    move/from16 v28, v59

    move-wide/from16 v29, v37

    move/from16 v31, v64

    move/from16 v32, v52

    move-wide/from16 v33, v42

    move-wide/from16 v35, v46

    :try_start_4fa
    invoke-static/range {v6 .. v36}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJJJJIJIIJJ)V
    :try_end_4fd
    .catch Ljava/lang/Exception; {:try_start_4fa .. :try_end_4fd} :catch_505
    .catchall {:try_start_4fa .. :try_end_4fd} :catchall_4fe

    goto :goto_54d

    .line 1208
    .end local v4    # "end":J
    .end local v42    # "zramFreeKbBefore":J
    .end local v44    # "time":J
    .end local v46    # "zramFreeKbAfter":J
    .end local v56    # "rssAfter":[J
    :catchall_4fe
    move-exception v0

    move-object/from16 v7, v62

    move/from16 v8, v63

    goto/16 :goto_5f8

    .line 1205
    :catch_505
    move-exception v0

    move-object/from16 v7, v62

    move/from16 v8, v63

    goto/16 :goto_60f

    .line 1208
    .end local v53    # "anonRssBefore":J
    .end local v55    # "rssBefore":[J
    .end local v59    # "lastCompactAction":I
    .end local v60    # "pid":I
    .end local v61    # "name":Ljava/lang/String;
    .end local v62    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v63    # "pendingAction":I
    .end local v64    # "lastOomAdj":I
    .end local v65    # "procState":I
    .local v4, "rssBefore":[J
    .restart local v9    # "lastCompactAction":I
    .restart local v10    # "pid":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "pendingAction":I
    .restart local v14    # "lastOomAdj":I
    .restart local v15    # "procState":I
    .restart local v18    # "anonRssBefore":J
    :catchall_50c
    move-exception v0

    move-object/from16 v55, v4

    move/from16 v59, v9

    move/from16 v60, v10

    move-object/from16 v61, v11

    move/from16 v64, v14

    move/from16 v65, v15

    move-wide/from16 v53, v18

    const-wide/16 v57, 0x40

    move-object v7, v12

    move v8, v13

    .end local v4    # "rssBefore":[J
    .end local v9    # "lastCompactAction":I
    .end local v10    # "pid":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "pendingAction":I
    .end local v14    # "lastOomAdj":I
    .end local v15    # "procState":I
    .end local v18    # "anonRssBefore":J
    .restart local v53    # "anonRssBefore":J
    .restart local v55    # "rssBefore":[J
    .restart local v59    # "lastCompactAction":I
    .restart local v60    # "pid":I
    .restart local v61    # "name":Ljava/lang/String;
    .restart local v62    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v63    # "pendingAction":I
    .restart local v64    # "lastOomAdj":I
    .restart local v65    # "procState":I
    goto/16 :goto_5f8

    .line 1205
    .end local v53    # "anonRssBefore":J
    .end local v55    # "rssBefore":[J
    .end local v59    # "lastCompactAction":I
    .end local v60    # "pid":I
    .end local v61    # "name":Ljava/lang/String;
    .end local v62    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v63    # "pendingAction":I
    .end local v64    # "lastOomAdj":I
    .end local v65    # "procState":I
    .restart local v4    # "rssBefore":[J
    .restart local v9    # "lastCompactAction":I
    .restart local v10    # "pid":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "pendingAction":I
    .restart local v14    # "lastOomAdj":I
    .restart local v15    # "procState":I
    .restart local v18    # "anonRssBefore":J
    :catch_521
    move-exception v0

    move-object/from16 v55, v4

    move/from16 v59, v9

    move/from16 v60, v10

    move-object/from16 v61, v11

    move/from16 v64, v14

    move/from16 v65, v15

    move-wide/from16 v53, v18

    const-wide/16 v57, 0x40

    move-object v7, v12

    move v8, v13

    .end local v4    # "rssBefore":[J
    .end local v9    # "lastCompactAction":I
    .end local v10    # "pid":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "pendingAction":I
    .end local v14    # "lastOomAdj":I
    .end local v15    # "procState":I
    .end local v18    # "anonRssBefore":J
    .restart local v53    # "anonRssBefore":J
    .restart local v55    # "rssBefore":[J
    .restart local v59    # "lastCompactAction":I
    .restart local v60    # "pid":I
    .restart local v61    # "name":Ljava/lang/String;
    .restart local v62    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v63    # "pendingAction":I
    .restart local v64    # "lastOomAdj":I
    .restart local v65    # "procState":I
    goto/16 :goto_60f

    .line 1187
    .end local v53    # "anonRssBefore":J
    .end local v55    # "rssBefore":[J
    .end local v59    # "lastCompactAction":I
    .end local v60    # "pid":I
    .end local v61    # "name":Ljava/lang/String;
    .end local v62    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v63    # "pendingAction":I
    .end local v64    # "lastOomAdj":I
    .end local v65    # "procState":I
    .restart local v4    # "rssBefore":[J
    .local v5, "end":J
    .restart local v9    # "lastCompactAction":I
    .restart local v10    # "pid":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "pendingAction":I
    .restart local v14    # "lastOomAdj":I
    .restart local v15    # "procState":I
    .restart local v18    # "anonRssBefore":J
    .restart local v20    # "rssAfter":[J
    .restart local v42    # "zramFreeKbBefore":J
    .restart local v44    # "time":J
    .restart local v46    # "zramFreeKbAfter":J
    :cond_536
    move-object/from16 v55, v4

    move-wide v4, v5

    move/from16 v59, v9

    move/from16 v60, v10

    move-object/from16 v61, v11

    move-object/from16 v62, v12

    move/from16 v63, v13

    move/from16 v64, v14

    move/from16 v65, v15

    move-wide/from16 v53, v18

    move-object/from16 v56, v20

    const-wide/16 v57, 0x40

    .line 1195
    .end local v5    # "end":J
    .end local v9    # "lastCompactAction":I
    .end local v10    # "pid":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "pendingAction":I
    .end local v14    # "lastOomAdj":I
    .end local v15    # "procState":I
    .end local v18    # "anonRssBefore":J
    .end local v20    # "rssAfter":[J
    .local v4, "end":J
    .restart local v53    # "anonRssBefore":J
    .restart local v55    # "rssBefore":[J
    .restart local v56    # "rssAfter":[J
    .restart local v59    # "lastCompactAction":I
    .restart local v60    # "pid":I
    .restart local v61    # "name":Ljava/lang/String;
    .restart local v62    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v63    # "pendingAction":I
    .restart local v64    # "lastOomAdj":I
    .restart local v65    # "procState":I
    :goto_54d
    :try_start_54d
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1500(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    monitor-enter v6
    :try_end_554
    .catch Ljava/lang/Exception; {:try_start_54d .. :try_end_554} :catch_5b6
    .catchall {:try_start_54d .. :try_end_554} :catchall_5b0

    :try_start_554
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_557
    .catchall {:try_start_554 .. :try_end_557} :catchall_59c

    .line 1196
    move-object/from16 v7, v62

    .end local v62    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v7, "proc":Lcom/android/server/am/ProcessRecord;
    :try_start_559
    iput-wide v4, v7, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J
    :try_end_55b
    .catchall {:try_start_559 .. :try_end_55b} :catchall_596

    .line 1197
    move/from16 v8, v63

    .end local v63    # "pendingAction":I
    .local v8, "pendingAction":I
    :try_start_55d
    iput v8, v7, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    .line 1198
    monitor-exit v6
    :try_end_560
    .catchall {:try_start_55d .. :try_end_560} :catchall_592

    :try_start_560
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1199
    const-string v0, "all"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_573

    const-string v0, "anon"

    .line 1200
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60f

    .line 1202
    :cond_573
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v9, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    move-object/from16 v10, v56

    .end local v56    # "rssAfter":[J
    .local v10, "rssAfter":[J
    invoke-direct {v9, v10}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;-><init>([J)V

    invoke-virtual {v0, v6, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_590
    .catch Ljava/lang/Exception; {:try_start_560 .. :try_end_590} :catch_5ab
    .catchall {:try_start_560 .. :try_end_590} :catchall_5a8

    goto/16 :goto_60f

    .line 1198
    .end local v10    # "rssAfter":[J
    .restart local v56    # "rssAfter":[J
    :catchall_592
    move-exception v0

    move-object/from16 v10, v56

    .end local v56    # "rssAfter":[J
    .restart local v10    # "rssAfter":[J
    goto :goto_5a3

    .end local v8    # "pendingAction":I
    .end local v10    # "rssAfter":[J
    .restart local v56    # "rssAfter":[J
    .restart local v63    # "pendingAction":I
    :catchall_596
    move-exception v0

    move-object/from16 v10, v56

    move/from16 v8, v63

    .end local v56    # "rssAfter":[J
    .end local v63    # "pendingAction":I
    .restart local v8    # "pendingAction":I
    .restart local v10    # "rssAfter":[J
    goto :goto_5a3

    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "pendingAction":I
    .end local v10    # "rssAfter":[J
    .restart local v56    # "rssAfter":[J
    .restart local v62    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v63    # "pendingAction":I
    :catchall_59c
    move-exception v0

    move-object/from16 v10, v56

    move-object/from16 v7, v62

    move/from16 v8, v63

    .end local v56    # "rssAfter":[J
    .end local v62    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v63    # "pendingAction":I
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "pendingAction":I
    .restart local v10    # "rssAfter":[J
    :goto_5a3
    :try_start_5a3
    monitor-exit v6
    :try_end_5a4
    .catchall {:try_start_5a3 .. :try_end_5a4} :catchall_5ae

    :try_start_5a4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v3    # "action":Ljava/lang/String;
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "pendingAction":I
    .end local v37    # "lastCompactTime":J
    .end local v39    # "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    .end local v40    # "start":J
    .end local v53    # "anonRssBefore":J
    .end local v55    # "rssBefore":[J
    .end local v59    # "lastCompactAction":I
    .end local v60    # "pid":I
    .end local v61    # "name":Ljava/lang/String;
    .end local v64    # "lastOomAdj":I
    .end local v65    # "procState":I
    .end local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v0
    :try_end_5a8
    .catch Ljava/lang/Exception; {:try_start_5a4 .. :try_end_5a8} :catch_5ab
    .catchall {:try_start_5a4 .. :try_end_5a8} :catchall_5a8

    .line 1208
    .end local v4    # "end":J
    .end local v10    # "rssAfter":[J
    .end local v42    # "zramFreeKbBefore":J
    .end local v44    # "time":J
    .end local v46    # "zramFreeKbAfter":J
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "pendingAction":I
    .restart local v37    # "lastCompactTime":J
    .restart local v39    # "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    .restart local v40    # "start":J
    .restart local v53    # "anonRssBefore":J
    .restart local v55    # "rssBefore":[J
    .restart local v59    # "lastCompactAction":I
    .restart local v60    # "pid":I
    .restart local v61    # "name":Ljava/lang/String;
    .restart local v64    # "lastOomAdj":I
    .restart local v65    # "procState":I
    .restart local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_5a8
    move-exception v0

    goto/16 :goto_5f8

    .line 1205
    :catch_5ab
    move-exception v0

    goto/16 :goto_60f

    .line 1198
    .restart local v4    # "end":J
    .restart local v10    # "rssAfter":[J
    .restart local v42    # "zramFreeKbBefore":J
    .restart local v44    # "time":J
    .restart local v46    # "zramFreeKbAfter":J
    :catchall_5ae
    move-exception v0

    goto :goto_5a3

    .line 1208
    .end local v4    # "end":J
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "pendingAction":I
    .end local v10    # "rssAfter":[J
    .end local v42    # "zramFreeKbBefore":J
    .end local v44    # "time":J
    .end local v46    # "zramFreeKbAfter":J
    .restart local v62    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v63    # "pendingAction":I
    :catchall_5b0
    move-exception v0

    move-object/from16 v7, v62

    move/from16 v8, v63

    .end local v62    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v63    # "pendingAction":I
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "pendingAction":I
    goto :goto_5f8

    .line 1205
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "pendingAction":I
    .restart local v62    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v63    # "pendingAction":I
    :catch_5b6
    move-exception v0

    move-object/from16 v7, v62

    move/from16 v8, v63

    .end local v62    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v63    # "pendingAction":I
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "pendingAction":I
    goto/16 :goto_60f

    .line 1208
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "pendingAction":I
    .end local v53    # "anonRssBefore":J
    .end local v55    # "rssBefore":[J
    .end local v59    # "lastCompactAction":I
    .end local v60    # "pid":I
    .end local v61    # "name":Ljava/lang/String;
    .end local v64    # "lastOomAdj":I
    .end local v65    # "procState":I
    .local v4, "rssBefore":[J
    .restart local v9    # "lastCompactAction":I
    .local v10, "pid":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "pendingAction":I
    .restart local v14    # "lastOomAdj":I
    .restart local v15    # "procState":I
    .restart local v18    # "anonRssBefore":J
    :catchall_5bd
    move-exception v0

    move-object/from16 v55, v4

    move/from16 v59, v9

    move/from16 v60, v10

    move-object/from16 v61, v11

    move-object v7, v12

    move v8, v13

    move/from16 v64, v14

    move/from16 v65, v15

    move-wide/from16 v53, v18

    const-wide/16 v57, 0x40

    goto :goto_5f8

    .line 1205
    :catch_5d1
    move-exception v0

    move-object/from16 v55, v4

    move/from16 v59, v9

    move/from16 v60, v10

    move-object/from16 v61, v11

    move-object v7, v12

    move v8, v13

    move/from16 v64, v14

    move/from16 v65, v15

    move-wide/from16 v53, v18

    const-wide/16 v57, 0x40

    goto :goto_60f

    .line 1208
    :catchall_5e5
    move-exception v0

    move-object/from16 v55, v4

    move-wide/from16 v57, v7

    move/from16 v59, v9

    move/from16 v60, v10

    move-object/from16 v61, v11

    move-object v7, v12

    move v8, v13

    move/from16 v64, v14

    move/from16 v65, v15

    move-wide/from16 v53, v18

    .end local v4    # "rssBefore":[J
    .end local v9    # "lastCompactAction":I
    .end local v10    # "pid":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "pendingAction":I
    .end local v14    # "lastOomAdj":I
    .end local v15    # "procState":I
    .end local v18    # "anonRssBefore":J
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "pendingAction":I
    .restart local v53    # "anonRssBefore":J
    .restart local v55    # "rssBefore":[J
    .restart local v59    # "lastCompactAction":I
    .restart local v60    # "pid":I
    .restart local v61    # "name":Ljava/lang/String;
    .restart local v64    # "lastOomAdj":I
    .restart local v65    # "procState":I
    :goto_5f8
    invoke-static/range {v57 .. v58}, Landroid/os/Trace;->traceEnd(J)V

    .line 1209
    throw v0

    .line 1205
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "pendingAction":I
    .end local v53    # "anonRssBefore":J
    .end local v55    # "rssBefore":[J
    .end local v59    # "lastCompactAction":I
    .end local v60    # "pid":I
    .end local v61    # "name":Ljava/lang/String;
    .end local v64    # "lastOomAdj":I
    .end local v65    # "procState":I
    .restart local v4    # "rssBefore":[J
    .restart local v9    # "lastCompactAction":I
    .restart local v10    # "pid":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "pendingAction":I
    .restart local v14    # "lastOomAdj":I
    .restart local v15    # "procState":I
    .restart local v18    # "anonRssBefore":J
    :catch_5fc
    move-exception v0

    move-object/from16 v55, v4

    move-wide/from16 v57, v7

    move/from16 v59, v9

    move/from16 v60, v10

    move-object/from16 v61, v11

    move-object v7, v12

    move v8, v13

    move/from16 v64, v14

    move/from16 v65, v15

    move-wide/from16 v53, v18

    .line 1208
    .end local v4    # "rssBefore":[J
    .end local v9    # "lastCompactAction":I
    .end local v10    # "pid":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "pendingAction":I
    .end local v14    # "lastOomAdj":I
    .end local v15    # "procState":I
    .end local v18    # "anonRssBefore":J
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "pendingAction":I
    .restart local v53    # "anonRssBefore":J
    .restart local v55    # "rssBefore":[J
    .restart local v59    # "lastCompactAction":I
    .restart local v60    # "pid":I
    .restart local v61    # "name":Ljava/lang/String;
    .restart local v64    # "lastOomAdj":I
    .restart local v65    # "procState":I
    :cond_60f
    :goto_60f
    invoke-static/range {v57 .. v58}, Landroid/os/Trace;->traceEnd(J)V

    .line 1209
    nop

    .line 1210
    nop

    .line 1222
    .end local v3    # "action":Ljava/lang/String;
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "pendingAction":I
    .end local v37    # "lastCompactTime":J
    .end local v39    # "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    .end local v40    # "start":J
    .end local v53    # "anonRssBefore":J
    .end local v55    # "rssBefore":[J
    .end local v59    # "lastCompactAction":I
    .end local v60    # "pid":I
    .end local v61    # "name":Ljava/lang/String;
    .end local v64    # "lastOomAdj":I
    .end local v65    # "procState":I
    :goto_614
    return-void

    .line 1013
    .local v4, "start":J
    .restart local v14    # "lastOomAdj":I
    .restart local v15    # "procState":I
    :catchall_615
    move-exception v0

    move-wide/from16 v40, v4

    move/from16 v64, v14

    move/from16 v65, v15

    .end local v4    # "start":J
    .end local v14    # "lastOomAdj":I
    .end local v15    # "procState":I
    .restart local v40    # "start":J
    .restart local v64    # "lastOomAdj":I
    .restart local v65    # "procState":I
    :goto_61c
    :try_start_61c
    monitor-exit v6
    :try_end_61d
    .catchall {:try_start_61c .. :try_end_61d} :catchall_621

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_621
    move-exception v0

    goto :goto_61c
.end method
