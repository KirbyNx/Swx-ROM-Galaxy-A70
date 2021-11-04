.class final Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FreezeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method private constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 2

    .line 1226
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1227
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1228
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/CachedAppOptimizer;
    .param p2, "x1"    # Lcom/android/server/am/CachedAppOptimizer$1;

    .line 1225
    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method

.method private freezeProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 14
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1254
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1500(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1255
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1256
    .local v1, "pid":I
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v8, v2

    .line 1258
    .local v8, "name":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/am/FreecessController;->ENABLE_PROCESS_FREEZE:Z

    if-eqz v2, :cond_3f

    .line 1259
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_120

    .line 1260
    :try_start_16
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1262
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1261
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/FreecessController;->getFreezedPackage(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v3

    .line 1264
    .local v3, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v3, :cond_3a

    iget-boolean v4, v3, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v4, :cond_3a

    iget v4, v3, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v5, :cond_3a

    .line 1265
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_3c

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_120

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1267
    .end local v3    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_3a
    :try_start_3a
    monitor-exit v2

    goto :goto_3f

    :catchall_3c
    move-exception v3

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3c

    .end local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;
    .end local p1    # "proc":Lcom/android/server/am/ProcessRecord;
    :try_start_3e
    throw v3

    .line 1270
    .restart local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;
    .restart local p1    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_3f
    :goto_3f
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v3, 0x384

    if-lt v2, v3, :cond_e5

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    if-eqz v2, :cond_4b

    goto/16 :goto_e5

    .line 1280
    :cond_4b
    if-eqz v1, :cond_e0

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-eqz v2, :cond_53

    goto/16 :goto_e0

    .line 1286
    :cond_53
    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTime:J
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_120

    .line 1289
    .local v2, "unfreezeTime":J
    const/4 v4, 0x1

    :try_start_56
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1, v5, v4}, Landroid/os/Process;->setProcessFrozen(IIZ)V

    .line 1291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTime:J

    .line 1292
    iput-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_63} :catch_64
    .catchall {:try_start_56 .. :try_end_63} :catchall_120

    .line 1295
    goto :goto_83

    .line 1293
    :catch_64
    move-exception v5

    .line 1294
    .local v5, "e":Ljava/lang/Exception;
    :try_start_65
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to freeze "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_83
    iget-wide v5, p1, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTime:J

    sub-long v9, v5, v2

    .line 1298
    .local v9, "unfrozenDuration":J
    iget-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    move v11, v5

    .line 1299
    .end local v2    # "unfreezeTime":J
    .local v11, "frozen":Z
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_65 .. :try_end_8b} :catchall_120

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1301
    if-eqz v11, :cond_df

    .line 1302
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v0, :cond_b3

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "froze "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_b3
    const/16 v0, 0x7574

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v8, v2, v4

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1309
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2200(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_df

    .line 1310
    const/16 v2, 0xfe

    const/4 v3, 0x1

    move v4, v1

    move-object v5, v8

    move-wide v6, v9

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;J)V

    .line 1317
    :cond_df
    return-void

    .line 1283
    .end local v9    # "unfrozenDuration":J
    .end local v11    # "frozen":Z
    :cond_e0
    :goto_e0
    :try_start_e0
    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_120

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1272
    :cond_e5
    :goto_e5
    :try_start_e5
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v2, :cond_11b

    .line 1273
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping freeze for process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " curAdj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", shouldNotFreeze = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_11b
    monitor-exit v0
    :try_end_11c
    .catchall {:try_start_e5 .. :try_end_11c} :catchall_120

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1299
    .end local v1    # "pid":I
    .end local v8    # "name":Ljava/lang/String;
    :catchall_120
    move-exception v1

    :try_start_121
    monitor-exit v0
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private reportUnfreeze(IILjava/lang/String;)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "frozenDuration"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .line 1321
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/16 v2, 0x7575

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1324
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;
    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->access$2200(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_29

    .line 1325
    const/16 v1, 0xfe

    invoke-static {v1, v0, p1, p3, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    .line 1332
    :cond_29
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1232
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 1244
    return-void

    .line 1237
    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1238
    .local v0, "pid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1239
    .local v1, "frozenDuration":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1241
    .local v2, "processName":Ljava/lang/String;
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->reportUnfreeze(IILjava/lang/String;)V

    .line 1242
    goto :goto_1d

    .line 1234
    .end local v0    # "pid":I
    .end local v1    # "frozenDuration":I
    .end local v2    # "processName":Ljava/lang/String;
    :cond_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->freezeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1235
    nop

    .line 1246
    :goto_1d
    return-void
.end method
