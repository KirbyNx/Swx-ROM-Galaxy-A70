.class Lcom/android/server/AlarmManagerService$Injector;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNativeData:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 4472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4473
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    .line 4474
    return-void
.end method


# virtual methods
.method close()V
    .registers 3

    .line 4531
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->close(J)V
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$2200(J)V

    .line 4532
    return-void
.end method

.method getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;
    .registers 4

    .line 4543
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4544
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "*alarm*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    return-object v1
.end method

.method getClockReceiver(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;
    .registers 3
    .param p1, "service"    # Lcom/android/server/AlarmManagerService;

    .line 4554
    new-instance v0, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    return-object v0
.end method

.method getCurrentTimeMillis()J
    .registers 3

    .line 4539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getElapsedRealtime()J
    .registers 3

    .line 4535
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method getNextAlarm(I)J
    .registers 4
    .param p1, "type"    # I

    .line 4511
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->getNextAlarm(JI)J
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$1800(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method getSystemUiUid()I
    .registers 5

    .line 4548
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4549
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x100000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method init()V
    .registers 3

    .line 4477
    # invokes: Lcom/android/server/AlarmManagerService;->init()J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1500()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    .line 4478
    return-void
.end method

.method isAlarmDriverPresent()Z
    .registers 5

    .line 4485
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method setAlarm(IJ)V
    .registers 18
    .param p1, "type"    # I
    .param p2, "millis"    # J

    .line 4492
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_b

    .line 4493
    const-wide/16 v0, 0x0

    .line 4494
    .local v0, "alarmSeconds":J
    const-wide/16 v2, 0x0

    .local v2, "alarmNanoseconds":J
    goto :goto_16

    .line 4496
    .end local v0    # "alarmSeconds":J
    .end local v2    # "alarmNanoseconds":J
    :cond_b
    const-wide/16 v0, 0x3e8

    div-long v2, p2, v0

    .line 4497
    .local v2, "alarmSeconds":J
    rem-long v4, p2, v0

    mul-long/2addr v4, v0

    mul-long/2addr v0, v4

    move-wide v12, v0

    move-wide v0, v2

    move-wide v2, v12

    .line 4500
    .restart local v0    # "alarmSeconds":J
    .local v2, "alarmNanoseconds":J
    :goto_16
    move-object v11, p0

    iget-wide v4, v11, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    move v6, p1

    move-wide v7, v0

    move-wide v9, v2

    # invokes: Lcom/android/server/AlarmManagerService;->set(JIJJ)I
    invoke-static/range {v4 .. v10}, Lcom/android/server/AlarmManagerService;->access$1700(JIJJ)I

    move-result v4

    .line 4502
    .local v4, "result":I
    if-eqz v4, :cond_6a

    .line 4503
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 4504
    .local v5, "nowElapsed":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to set kernel alarm, now="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " @ ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "), ret = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4506
    invoke-static {v4}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4504
    const-string v9, "AlarmManager"

    invoke-static {v9, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 4502
    .end local v5    # "nowElapsed":J
    :cond_6a
    move v8, p1

    .line 4508
    :goto_6b
    return-void
.end method

.method setBootAlarm(Ljava/lang/String;)V
    .registers 6
    .param p1, "time"    # Ljava/lang/String;

    .line 4525
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 4526
    # invokes: Lcom/android/server/AlarmManagerService;->setBootAlarm(JLjava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$2100(JLjava/lang/String;)V

    .line 4528
    :cond_b
    return-void
.end method

.method setKernelTime(J)V
    .registers 7
    .param p1, "millis"    # J

    .line 4519
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 4520
    # invokes: Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/AlarmManagerService;->access$2000(JJ)I

    .line 4522
    :cond_b
    return-void
.end method

.method setKernelTimezone(I)V
    .registers 4
    .param p1, "minutesWest"    # I

    .line 4515
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$1900(JI)I

    .line 4516
    return-void
.end method

.method waitForAlarm()I
    .registers 3

    .line 4481
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$1600(J)I

    move-result v0

    return v0
.end method
