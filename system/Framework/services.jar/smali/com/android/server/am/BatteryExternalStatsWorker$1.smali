.class Lcom/android/server/am/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryExternalStatsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 329
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .line 339
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v2

    .line 340
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$000(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v0

    move v9, v0

    .line 341
    .local v9, "updateFlags":I
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$100(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "reason":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    goto :goto_2b

    :cond_29
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    :goto_2b
    move-object v10, v0

    .line 343
    .local v10, "uidsToRemove":[I
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$300(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v6

    .line 344
    .local v6, "onBattery":Z
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$400(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v7

    .line 345
    .local v7, "onBatteryScreenOff":Z
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$500(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v8

    .line 346
    .local v8, "useLatestStates":Z
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v11, 0x0

    # setter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I
    invoke-static {v0, v11}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$002(Lcom/android/server/am/BatteryExternalStatsWorker;I)I

    .line 347
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$102(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 349
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # setter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;
    invoke-static {v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$602(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 350
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z
    invoke-static {v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$502(Lcom/android/server/am/BatteryExternalStatsWorker;Z)Z

    .line 351
    and-int/lit8 v0, v9, 0x3f

    if-eqz v0, :cond_67

    .line 352
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # invokes: Lcom/android/server/am/BatteryExternalStatsWorker;->cancelSyncDueToBatteryLevelChangeLocked()V
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$700(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    .line 354
    :cond_67
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_70

    .line 355
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelCpuSyncDueToWakelockChange()V

    .line 357
    :cond_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_5 .. :try_end_71} :catchall_e2

    .line 360
    :try_start_71
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$800(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_78} :catch_c9

    .line 365
    :try_start_78
    iget-object v3, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    move v5, v9

    # invokes: Lcom/android/server/am/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZZ)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$900(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZZ)V
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_c3

    .line 371
    nop

    .line 372
    :try_start_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_c6

    .line 374
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_8d

    .line 375
    :try_start_84
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->copyFromAllUidsCpuTimes()V

    .line 379
    :cond_8d
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    monitor-enter v2
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_94} :catch_c9

    .line 380
    :try_start_94
    array-length v0, v10

    move v3, v11

    :goto_96
    if-ge v3, v0, :cond_b5

    aget v5, v10, v3

    .line 381
    .local v5, "uid":I
    const/16 v12, 0x2b

    const/4 v13, -0x1

    invoke-static {v12, v13, v5, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 383
    iget-object v12, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {v12}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 384
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 383
    move v13, v5

    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->removeIsolatedUidLocked(IJJ)V

    .line 380
    .end local v5    # "uid":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_96

    .line 386
    :cond_b5
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->clearPendingRemovedUids()V

    .line 387
    monitor-exit v2

    .line 390
    goto :goto_d1

    .line 387
    :catchall_c0
    move-exception v0

    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_94 .. :try_end_c2} :catchall_c0

    .end local v4    # "reason":Ljava/lang/String;
    .end local v6    # "onBattery":Z
    .end local v7    # "onBatteryScreenOff":Z
    .end local v8    # "useLatestStates":Z
    .end local v9    # "updateFlags":I
    .end local v10    # "uidsToRemove":[I
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_c2
    throw v0
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c3} :catch_c9

    .line 368
    .restart local v4    # "reason":Ljava/lang/String;
    .restart local v6    # "onBattery":Z
    .restart local v7    # "onBatteryScreenOff":Z
    .restart local v8    # "useLatestStates":Z
    .restart local v9    # "updateFlags":I
    .restart local v10    # "uidsToRemove":[I
    .restart local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catchall_c3
    move-exception v0

    .line 371
    nop

    .end local v4    # "reason":Ljava/lang/String;
    .end local v6    # "onBattery":Z
    .end local v7    # "onBatteryScreenOff":Z
    .end local v8    # "useLatestStates":Z
    .end local v9    # "updateFlags":I
    .end local v10    # "uidsToRemove":[I
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_c5
    throw v0

    .line 372
    .restart local v4    # "reason":Ljava/lang/String;
    .restart local v6    # "onBattery":Z
    .restart local v7    # "onBatteryScreenOff":Z
    .restart local v8    # "useLatestStates":Z
    .restart local v9    # "updateFlags":I
    .restart local v10    # "uidsToRemove":[I
    .restart local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catchall_c6
    move-exception v0

    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_c6

    .end local v4    # "reason":Ljava/lang/String;
    .end local v6    # "onBattery":Z
    .end local v7    # "onBatteryScreenOff":Z
    .end local v8    # "useLatestStates":Z
    .end local v9    # "updateFlags":I
    .end local v10    # "uidsToRemove":[I
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_c8
    throw v0
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_c9} :catch_c9

    .line 388
    .restart local v4    # "reason":Ljava/lang/String;
    .restart local v6    # "onBattery":Z
    .restart local v7    # "onBatteryScreenOff":Z
    .restart local v8    # "useLatestStates":Z
    .restart local v9    # "updateFlags":I
    .restart local v10    # "uidsToRemove":[I
    .restart local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catch_c9
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BatteryExternalStatsWorker"

    const-string v3, "Error updating external stats: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d1
    iget-object v3, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v3

    .line 393
    :try_start_d4
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    # setter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J
    invoke-static {v0, v11, v12}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1102(Lcom/android/server/am/BatteryExternalStatsWorker;J)J

    .line 394
    monitor-exit v3

    .line 395
    return-void

    .line 394
    :catchall_df
    move-exception v0

    monitor-exit v3
    :try_end_e1
    .catchall {:try_start_d4 .. :try_end_e1} :catchall_df

    throw v0

    .line 357
    .end local v4    # "reason":Ljava/lang/String;
    .end local v6    # "onBattery":Z
    .end local v7    # "onBatteryScreenOff":Z
    .end local v8    # "useLatestStates":Z
    .end local v9    # "updateFlags":I
    .end local v10    # "uidsToRemove":[I
    :catchall_e2
    move-exception v0

    :try_start_e3
    monitor-exit v2
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v0
.end method
