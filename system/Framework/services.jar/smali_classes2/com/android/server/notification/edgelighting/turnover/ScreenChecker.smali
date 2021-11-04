.class public Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;
.super Ljava/lang/Object;
.source "ScreenChecker.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenChecker"


# instance fields
.field private mLastSensorValue:Z

.field private mListener:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;

.field private mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 58
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_2e

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 59
    const-string/jumbo v1, "scontext"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 60
    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 62
    const-string v1, "ScreenChecker"

    const-string v2, "The Sensor is not supported in device"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2e
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mLastSensorValue:Z

    .line 86
    monitor-enter p0

    .line 87
    :try_start_4
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;

    if-nez v0, :cond_a

    .line 88
    monitor-exit p0

    return-void

    .line 90
    :cond_a
    const-string v0, "ScreenChecker"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;

    .line 93
    monitor-exit p0

    .line 94
    return-void

    .line 93
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public isRunning()Z
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 25
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 26
    .local v0, "sContext":Lcom/samsung/android/hardware/context/SemContext;
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v1

    const-string v2, "ScreenChecker"

    const/16 v3, 0x16

    if-eq v1, v3, :cond_13

    .line 27
    const-string/jumbo v1, "onSemContextChanged: type is not 22"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 30
    :cond_13
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    move-result-object v1

    .line 31
    .local v1, "devicePositionContext":Lcom/samsung/android/hardware/context/SemContextDevicePosition;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSemContextChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mLastSensorValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mLastSensorValue:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_66

    const/4 v4, 0x6

    if-eq v3, v4, :cond_4f

    .line 48
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;

    if-eqz v2, :cond_67

    .line 49
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;->onChanged(Z)V

    .line 50
    iput-boolean v3, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mLastSensorValue:Z

    goto :goto_67

    .line 36
    :cond_4f
    iget-boolean v3, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mLastSensorValue:Z

    if-eqz v3, :cond_54

    .line 37
    return-void

    .line 39
    :cond_54
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;

    if-eqz v3, :cond_5f

    .line 40
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;->onChanged(Z)V

    .line 41
    iput-boolean v2, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mLastSensorValue:Z

    goto :goto_67

    .line 43
    :cond_5f
    const-string/jumbo v3, "onSemContextChanged, listener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    goto :goto_67

    .line 34
    :cond_66
    nop

    .line 54
    :cond_67
    :goto_67
    return-void
.end method

.method public run(Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mLastSensorValue:Z

    .line 69
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v0, :cond_f

    .line 70
    const-string v0, "ScreenChecker"

    const-string v1, "The sensor is not supported in device"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 73
    :cond_f
    monitor-enter p0

    .line 74
    :try_start_10
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;

    if-eqz v0, :cond_1e

    .line 75
    const-string v0, "ScreenChecker"

    const-string/jumbo v1, "run: Listener is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    monitor-exit p0

    return-void

    .line 78
    :cond_1e
    const-string v0, "ScreenChecker"

    const-string/jumbo v1, "run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;

    .line 80
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    .line 81
    monitor-exit p0

    .line 82
    return-void

    .line 81
    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_31

    throw v0
.end method
