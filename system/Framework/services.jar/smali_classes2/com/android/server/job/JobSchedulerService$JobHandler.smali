.class final Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1895
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 1896
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1897
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .line 1901
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1902
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-nez v1, :cond_d

    .line 1903
    monitor-exit v0

    return-void

    .line 1905
    :cond_d
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_f8

    goto/16 :goto_ed

    .line 1967
    :pswitch_16
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1968
    .local v1, "uid":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_1d

    goto :goto_1e

    :cond_1d
    move v3, v2

    .line 1969
    .local v3, "disabled":Z
    :goto_1e
    if-eqz v3, :cond_27

    .line 1970
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v5, "app uid idle"

    invoke-virtual {v4, v1, v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    .line 1972
    :cond_27
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_f4

    .line 1973
    :try_start_2c
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # getter for: Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;
    invoke-static {v5}, Lcom/android/server/job/JobSchedulerService;->access$600(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1974
    monitor-exit v4

    .line 1975
    goto/16 :goto_ed

    .line 1974
    :catchall_38
    move-exception v2

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_3a
    throw v2

    .line 1960
    .end local v1    # "uid":I
    .end local v3    # "disabled":Z
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .restart local p1    # "message":Landroid/os/Message;
    :pswitch_3b
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1961
    .restart local v1    # "uid":I
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_f4

    .line 1962
    :try_start_42
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # getter for: Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;
    invoke-static {v4}, Lcom/android/server/job/JobSchedulerService;->access$600(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1963
    monitor-exit v2

    .line 1964
    goto/16 :goto_ed

    .line 1963
    :catchall_4e
    move-exception v3

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_4e

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_50
    throw v3

    .line 1948
    .end local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .restart local p1    # "message":Landroid/os/Message;
    :pswitch_51
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1949
    .restart local v1    # "uid":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_58

    goto :goto_59

    :cond_58
    move v3, v2

    .line 1950
    .restart local v3    # "disabled":Z
    :goto_59
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v5, 0x13

    invoke-virtual {v4, v1, v5}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 1951
    if-eqz v3, :cond_6a

    .line 1952
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v5, "uid gone"

    invoke-virtual {v4, v1, v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    .line 1954
    :cond_6a
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6f
    .catchall {:try_start_50 .. :try_end_6f} :catchall_f4

    .line 1955
    :try_start_6f
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # getter for: Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;
    invoke-static {v5}, Lcom/android/server/job/JobSchedulerService;->access$600(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1956
    monitor-exit v4

    .line 1957
    goto/16 :goto_ed

    .line 1956
    :catchall_7b
    move-exception v2

    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_6f .. :try_end_7d} :catchall_7b

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_7d
    throw v2

    .line 1942
    .end local v1    # "uid":I
    .end local v3    # "disabled":Z
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .restart local p1    # "message":Landroid/os/Message;
    :pswitch_7e
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1943
    .restart local v1    # "uid":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1944
    .local v2, "procState":I
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 1945
    goto :goto_ed

    .line 1931
    .end local v1    # "uid":I
    .end local v2    # "procState":I
    :pswitch_88
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_93

    .line 1932
    const-string v1, "JobScheduler"

    const-string v2, "MSG_CHECK_JOB_GREEDY"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :cond_93
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$300(Lcom/android/server/job/JobSchedulerService;)V

    .line 1935
    goto :goto_ed

    .line 1937
    :pswitch_99
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    const/4 v3, 0x0

    const-string v4, "app no longer allowed to run"

    # invokes: Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/job/JobSchedulerService;->access$500(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1939
    goto :goto_ed

    .line 1918
    :pswitch_a6
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_b1

    .line 1919
    const-string v1, "JobScheduler"

    const-string v2, "MSG_CHECK_JOB"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_b1
    invoke-virtual {p0, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    .line 1922
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eqz v1, :cond_c0

    .line 1924
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$300(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_ed

    .line 1927
    :cond_c0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->maybeQueueReadyJobsForExecutionLocked()V
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$400(Lcom/android/server/job/JobSchedulerService;)V

    .line 1929
    goto :goto_ed

    .line 1907
    :pswitch_c6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1910
    .local v1, "runNow":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_e7

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 1911
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1912
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    # getter for: Lcom/android/server/job/JobSchedulerService;->sPendingJobComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/server/job/JobSchedulerService;->access$200()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/server/job/JobSchedulerService;->addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_ec

    .line 1914
    :cond_e7
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V
    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->access$300(Lcom/android/server/job/JobSchedulerService;)V

    .line 1916
    .end local v1    # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :goto_ec
    nop

    .line 1979
    :goto_ed
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 1981
    monitor-exit v0

    .line 1982
    return-void

    .line 1981
    :catchall_f4
    move-exception v1

    monitor-exit v0
    :try_end_f6
    .catchall {:try_start_7d .. :try_end_f6} :catchall_f4

    throw v1

    nop

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_c6
        :pswitch_a6
        :pswitch_99
        :pswitch_88
        :pswitch_7e
        :pswitch_51
        :pswitch_3b
        :pswitch_16
    .end packed-switch
.end method
