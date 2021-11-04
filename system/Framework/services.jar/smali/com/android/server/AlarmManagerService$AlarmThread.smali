.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field private mFalseWakeups:I

.field private mWtfThreshold:I

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .line 4585
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4586
    const-string p1, "AlarmManager"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4587
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 4588
    const/16 p1, 0x64

    iput p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    .line 4589
    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .line 4593
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 4597
    .local v2, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_8
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->waitForAlarm()I

    move-result v3

    .line 4599
    .local v3, "result":I
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SamsungAlarmManagerService;->notifyWaitForAlarm(I)V

    .line 4602
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v10

    .line 4603
    .local v10, "nowRTC":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v12

    .line 4604
    .local v12, "nowELAPSED":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4605
    :try_start_32
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # setter for: Lcom/android/server/AlarmManagerService;->mLastWakeup:J
    invoke-static {v0, v12, v13}, Lcom/android/server/AlarmManagerService;->access$2302(Lcom/android/server/AlarmManagerService;J)J

    .line 4606
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_297

    .line 4607
    if-nez v3, :cond_59

    .line 4608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitForAlarm returned 0, nowRTC = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", nowElapsed = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AlarmManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    :cond_59
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4613
    const/high16 v0, 0x10000

    and-int v4, v3, v0

    if-eqz v4, :cond_e4

    .line 4618
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4619
    :try_start_67
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v5, v5, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4620
    .local v5, "lastTimeChangeClockTime":J
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v7, v7, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    sub-long v7, v12, v7

    add-long/2addr v7, v5

    .line 4622
    .local v7, "expectedClockTime":J
    monitor-exit v4
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_e1

    .line 4623
    const-wide/16 v14, 0x0

    cmp-long v4, v5, v14

    if-eqz v4, :cond_86

    const-wide/16 v14, 0x3e8

    sub-long v16, v7, v14

    cmp-long v4, v10, v16

    if-ltz v4, :cond_86

    add-long/2addr v14, v7

    cmp-long v4, v10, v14

    if-lez v4, :cond_e4

    .line 4631
    :cond_86
    const/16 v4, 0x2d

    invoke-static {v4, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 4632
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v4, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    const/4 v14, 0x0

    invoke-virtual {v4, v14, v9}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4633
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v4, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v4, v9, v14}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4634
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 4635
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 4636
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 4637
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v4, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4638
    :try_start_b2
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v14, v4, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v4, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    .line 4639
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v10, v4, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4640
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v12, v4, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 4641
    monitor-exit v9
    :try_end_c3
    .catchall {:try_start_b2 .. :try_end_c3} :catchall_de

    .line 4642
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.TIME_SET"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4643
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v9, 0x25200000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4647
    iget-object v9, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4651
    or-int/lit8 v3, v3, 0x5

    move v14, v3

    goto :goto_e5

    .line 4641
    .end local v4    # "intent":Landroid/content/Intent;
    :catchall_de
    move-exception v0

    :try_start_df
    monitor-exit v9
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw v0

    .line 4622
    .end local v5    # "lastTimeChangeClockTime":J
    .end local v7    # "expectedClockTime":J
    :catchall_e1
    move-exception v0

    :try_start_e2
    monitor-exit v4
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    throw v0

    .line 4655
    :cond_e4
    move v14, v3

    .end local v3    # "result":I
    .local v14, "result":I
    :goto_e5
    if-eq v14, v0, :cond_287

    .line 4658
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4663
    :try_start_ec
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->WAKEUP_STATS:Z

    if-eqz v0, :cond_153

    .line 4664
    and-int/lit8 v0, v14, 0x5

    if-eqz v0, :cond_153

    .line 4665
    const-wide/32 v4, 0x5265c00

    sub-long v15, v10, v4

    .line 4666
    .local v15, "newEarliest":J
    const/4 v0, 0x0

    .line 4669
    .local v0, "n":I
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/16 v5, 0xbb8

    if-le v4, v5, :cond_11c

    .line 4670
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    .line 4671
    .local v4, "diff":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_110
    if-ge v5, v4, :cond_11c

    .line 4672
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 4671
    add-int/lit8 v5, v5, 0x1

    goto :goto_110

    .line 4677
    .end local v4    # "diff":I
    .end local v5    # "i":I
    :cond_11c
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_124
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$WakeupEvent;

    .line 4678
    .local v5, "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    iget-wide v6, v5, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    cmp-long v6, v6, v15

    if-lez v6, :cond_137

    goto :goto_13b

    .line 4679
    :cond_137
    nop

    .end local v5    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    add-int/lit8 v0, v0, 0x1

    .line 4680
    goto :goto_124

    .line 4681
    :cond_13b
    :goto_13b
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13c
    if-ge v4, v0, :cond_148

    .line 4682
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 4681
    add-int/lit8 v4, v4, 0x1

    goto :goto_13c

    .line 4685
    .end local v4    # "i":I
    :cond_148
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-wide v6, v12

    move-wide v8, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->recordWakeupAlarms(Ljava/util/ArrayList;JJ)V

    .line 4689
    .end local v0    # "n":I
    .end local v15    # "newEarliest":J
    :cond_153
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # setter for: Lcom/android/server/AlarmManagerService;->mLastTrigger:J
    invoke-static {v0, v12, v13}, Lcom/android/server/AlarmManagerService;->access$2402(Lcom/android/server/AlarmManagerService;J)J

    .line 4690
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;J)Z

    move-result v0

    .line 4693
    .local v0, "hasWakeup":Z
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v4

    if-eqz v4, :cond_16d

    .line 4694
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->filtAlarmsForFreeCess(Ljava/util/ArrayList;)V
    invoke-static {v4, v2}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;)V

    .line 4698
    :cond_16d
    if-nez v0, :cond_1b4

    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v12, v13}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v4

    if-eqz v4, :cond_1b4

    .line 4701
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_196

    .line 4702
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v12, v4, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 4703
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4704
    invoke-virtual {v5, v12, v13}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v5

    const-wide/16 v7, 0x3

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    add-long/2addr v5, v12

    iput-wide v5, v4, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 4706
    :cond_196
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4707
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v5, v4, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 4708
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4709
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$2600(Lcom/android/server/AlarmManagerService;)V

    goto/16 :goto_282

    .line 4715
    :cond_1b4
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1f5

    .line 4716
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 4717
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4718
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4719
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v4, v12, v4

    .line 4720
    .local v4, "thisDelayTime":J
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v7, v6, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v7, v4

    iput-wide v7, v6, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 4721
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v6, v6, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_1ee

    .line 4722
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v6, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 4724
    :cond_1ee
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 4726
    .end local v4    # "thisDelayTime":J
    :cond_1f5
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    cmp-long v4, v4, v12

    if-eqz v4, :cond_23e

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23e

    .line 4727
    iget v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    iget v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    if-lt v4, v5, :cond_23e

    .line 4728
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") false wakeups, nowElapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4730
    iget v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    const v5, 0x186a0

    if-ge v4, v5, :cond_23b

    .line 4731
    iget v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    mul-int/lit8 v4, v4, 0xa

    iput v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    goto :goto_23e

    .line 4733
    :cond_23b
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 4737
    :cond_23e
    :goto_23e
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 4739
    .local v4, "triggerPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_244
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_26e

    .line 4740
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4741
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z
    invoke-static {v7, v6}, Lcom/android/server/AlarmManagerService;->access$2700(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v7

    if-nez v7, :cond_26b

    .line 4742
    iget-object v7, v6, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v8, v6, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 4743
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 4742
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4739
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_26b
    add-int/lit8 v5, v5, 0x1

    goto :goto_244

    .line 4746
    .end local v5    # "i":I
    :cond_26e
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v2, v12, v13}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 4747
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 4748
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4749
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$2600(Lcom/android/server/AlarmManagerService;)V

    .line 4751
    .end local v0    # "hasWakeup":Z
    .end local v4    # "triggerPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_282
    monitor-exit v3

    goto :goto_292

    :catchall_284
    move-exception v0

    monitor-exit v3
    :try_end_286
    .catchall {:try_start_ec .. :try_end_286} :catchall_284

    throw v0

    .line 4756
    :cond_287
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4757
    :try_start_28c
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4758
    monitor-exit v5

    .line 4760
    .end local v10    # "nowRTC":J
    .end local v12    # "nowELAPSED":J
    .end local v14    # "result":I
    :goto_292
    goto/16 :goto_8

    .line 4758
    .restart local v10    # "nowRTC":J
    .restart local v12    # "nowELAPSED":J
    .restart local v14    # "result":I
    :catchall_294
    move-exception v0

    monitor-exit v5
    :try_end_296
    .catchall {:try_start_28c .. :try_end_296} :catchall_294

    throw v0

    .line 4606
    .end local v14    # "result":I
    .restart local v3    # "result":I
    :catchall_297
    move-exception v0

    :try_start_298
    monitor-exit v4
    :try_end_299
    .catchall {:try_start_298 .. :try_end_299} :catchall_297

    throw v0
.end method
