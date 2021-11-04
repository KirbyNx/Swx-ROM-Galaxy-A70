.class Lcom/android/server/AlarmManagerService$4;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .line 2382
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public currentNetworkTimeMillis()J
    .registers 6

    .line 2557
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    .line 2558
    .local v0, "time":Landroid/util/NtpTrustedTime;
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v1

    .line 2559
    .local v1, "ntpResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-eqz v1, :cond_15

    .line 2560
    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->currentTimeMillis()J

    move-result-wide v2

    return-wide v2

    .line 2562
    :cond_15
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/time/DateTimeException;

    const-string v4, "Missing NTP fix"

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2568
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 2570
    :cond_f
    array-length v0, p3

    if-lez v0, :cond_23

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--proto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2571
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_28

    .line 2573
    :cond_23
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/AlarmManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 2575
    :goto_28
    return-void
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 9
    .param p1, "userId"    # I

    .line 2532
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2533
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2532
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "getNextAlarmClock"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2536
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextAlarmClocks(I)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation

    .line 2542
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    iget v1, v1, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    if-ne v0, v1, :cond_24

    .line 2547
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 2547
    const-string/jumbo v7, "getNextAlarmClock"

    move v4, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2551
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->getNextAlarmClocksImpl(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2543
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial : getNextAlarmClocks from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2544
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNextWakeFromIdleTime()J
    .registers 3

    .line 2527
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getNextWakeFromIdleTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2581
    new-instance v0, Lcom/android/server/AlarmManagerService$ShellCmd;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$ShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 2582
    return-void
.end method

.method public remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 5
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    .line 2511
    if-nez p1, :cond_d

    if-nez p2, :cond_d

    .line 2512
    const-string v0, "AlarmManager"

    const-string/jumbo v1, "remove() with no intent or listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    return-void

    .line 2517
    :cond_d
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SamsungAlarmManagerService;->notifyCancelAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 2520
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2521
    :try_start_19
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 2522
    monitor-exit v0

    .line 2523
    return-void

    .line 2522
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 34
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "triggerAtTime"    # J
    .param p5, "windowLength"    # J
    .param p7, "interval"    # J
    .param p9, "flags"    # I
    .param p10, "operation"    # Landroid/app/PendingIntent;
    .param p11, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2388
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 2392
    .local v15, "callingUid":I
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v14, p1

    invoke-virtual {v1, v15, v14}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2395
    const-wide/16 v1, 0x0

    cmp-long v3, p7, v1

    if-eqz v3, :cond_20

    .line 2396
    if-nez p11, :cond_18

    goto :goto_20

    .line 2397
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Repeating alarms cannot use AlarmReceivers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2401
    :cond_20
    :goto_20
    if-eqz p13, :cond_33

    .line 2402
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2404
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2402
    const-string v5, "android.permission.UPDATE_DEVICE_STATS"

    const-string v6, "AlarmManager.set"

    invoke-virtual {v3, v5, v4, v15, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2409
    :cond_33
    and-int/lit8 v3, p9, -0xb

    .line 2414
    .end local p9    # "flags":I
    .local v3, "flags":I
    const/16 v4, 0x3e8

    if-eq v15, v4, :cond_3b

    .line 2415
    and-int/lit8 v3, v3, -0x11

    .line 2419
    :cond_3b
    cmp-long v1, p5, v1

    if-nez v1, :cond_41

    .line 2420
    or-int/lit8 v3, v3, 0x1

    .line 2425
    :cond_41
    if-eqz p14, :cond_48

    .line 2426
    or-int/lit8 v3, v3, 0x3

    move/from16 v17, v3

    goto :goto_75

    .line 2432
    :cond_48
    if-nez p13, :cond_73

    const/16 v1, 0x2710

    if-lt v15, v1, :cond_6c

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    iget v1, v1, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    .line 2433
    invoke-static {v15, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_6c

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2434
    # getter for: Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v1

    if-eqz v1, :cond_73

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2435
    # getter for: Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/server/AppStateTracker;->isUidPowerSaveUserWhitelisted(I)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 2436
    :cond_6c
    or-int/lit8 v1, v3, 0x8

    .line 2437
    .end local v3    # "flags":I
    .local v1, "flags":I
    and-int/lit8 v3, v1, -0x5

    move/from16 v17, v3

    .end local v1    # "flags":I
    .restart local v3    # "flags":I
    goto :goto_75

    .line 2440
    :cond_73
    move/from16 v17, v3

    .end local v3    # "flags":I
    .local v17, "flags":I
    :goto_75
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, v17

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v18, v15

    .end local v15    # "callingUid":I
    .local v18, "callingUid":I
    move-object/from16 v16, p1

    invoke-virtual/range {v1 .. v16}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 2442
    return-void
.end method

.method public setAutoPowerUp(Ljava/lang/String;)V
    .registers 3
    .param p1, "time"    # Ljava/lang/String;

    .line 2504
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/SamsungAlarmManagerService;->notifySetAutoPowerUp(Ljava/lang/String;)V

    .line 2506
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Injector;->setBootAlarm(Ljava/lang/String;)V

    .line 2507
    return-void
.end method

.method public setTime(J)Z
    .registers 6
    .param p1, "millis"    # J

    .line 2446
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "setTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    invoke-static {}, Lcom/android/server/AlarmManagerService$4;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_44

    .line 2451
    invoke-static {}, Lcom/android/server/AlarmManagerService$4;->getCallingUid()I

    move-result v0

    const/16 v1, 0x4e1f

    if-gt v0, v1, :cond_44

    .line 2453
    :try_start_1e
    const-string v0, "date_time_policy"

    .line 2454
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    .line 2455
    .local v0, "dateTimeService":Lcom/samsung/android/knox/datetime/IDateTimePolicy;
    if-eqz v0, :cond_42

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Lcom/android/server/AlarmManagerService$4;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2456
    const-string v1, "AlarmManager"

    const-string v2, "Not setting time since EDM doesn\'t allow date & time change."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_40} :catch_43

    .line 2457
    const/4 v1, 0x0

    return v1

    .line 2461
    .end local v0    # "dateTimeService":Lcom/samsung/android/knox/datetime/IDateTimePolicy;
    :cond_42
    goto :goto_44

    .line 2459
    :catch_43
    move-exception v0

    .line 2465
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerService;->setTimeImpl(J)Z

    move-result v0

    return v0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 5
    .param p1, "tz"    # Ljava/lang/String;

    .line 2470
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME_ZONE"

    const-string/jumbo v2, "setTimeZone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    invoke-static {}, Lcom/android/server/AlarmManagerService$4;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_3c

    .line 2475
    invoke-static {}, Lcom/android/server/AlarmManagerService$4;->getCallingUid()I

    move-result v0

    const/16 v1, 0x4e1f

    if-gt v0, v1, :cond_3c

    .line 2477
    :try_start_1e
    const-string v0, "date_time_policy"

    .line 2478
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    .line 2479
    .local v0, "dateTimeService":Lcom/samsung/android/knox/datetime/IDateTimePolicy;
    if-eqz v0, :cond_3a

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 2480
    invoke-static {}, Lcom/android/server/AlarmManagerService$4;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2479
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_37} :catch_3b

    if-nez v1, :cond_3a

    .line 2481
    return-void

    .line 2485
    .end local v0    # "dateTimeService":Lcom/samsung/android/knox/datetime/IDateTimePolicy;
    :cond_3a
    goto :goto_3c

    .line 2483
    :catch_3b
    move-exception v0

    .line 2490
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/SamsungAlarmManagerService;->notifySetTimeZone(Ljava/lang/String;)V

    .line 2493
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2495
    .local v0, "oldId":J
    :try_start_47
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_51

    .line 2497
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2498
    nop

    .line 2499
    return-void

    .line 2497
    :catchall_51
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2498
    throw v2
.end method
