.class public Lcom/samsung/android/server/audio/SensorHandleThread;
.super Ljava/lang/Thread;
.source "SensorHandleThread.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# instance fields
.field private final mAudioService:Lcom/android/server/audio/AudioService;

.field private mContext:Landroid/content/Context;

.field private mDevicePositionChangedDuringRingtone:Z

.field private mDevicePositionSensorEnabled:Z

.field private mFlatMotionSensorEnabled:Z

.field private mIsClosed:Z

.field private mListenerStarted:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private mSensorHandler:Landroid/os/Handler;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/audio/AudioService;

    .line 57
    const-string v0, "SensorHandleThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mListenerStarted:Z

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    .line 58
    iput-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 60
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    .line 61
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mProximitySensor:Landroid/hardware/Sensor;

    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mContext:Landroid/content/Context;

    const-string v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 65
    if-eqz v0, :cond_50

    .line 66
    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionSensorEnabled:Z

    .line 67
    if-nez v0, :cond_50

    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mFlatMotionSensorEnabled:Z

    .line 72
    :cond_50
    return-void
.end method


# virtual methods
.method public isClosed()Z
    .registers 2

    .line 167
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    return v0
.end method

.method public declared-synchronized isStarted()Z
    .registers 2

    monitor-enter p0

    .line 171
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mListenerStarted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 171
    .end local p0    # "this":Lcom/samsung/android/server/audio/SensorHandleThread;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 84
    return-void
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 10
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 101
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 102
    .local v0, "context":Lcom/samsung/android/hardware/context/SemContext;
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    .line 103
    .local v1, "device":I
    iget-boolean v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    if-eqz v2, :cond_e

    return-void

    .line 104
    :cond_e
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1b

    iget-object v4, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 105
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    if-gt v4, v3, :cond_1b

    return-void

    .line 106
    :cond_1b
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v4

    const/16 v5, 0x14

    const-string v6, "l_hw_flat_motion_state=0"

    const-string v7, "l_hw_flat_motion_state=1"

    if-eq v4, v5, :cond_48

    const/16 v2, 0x16

    if-eq v4, v2, :cond_2c

    goto :goto_65

    .line 108
    :cond_2c
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    move-result-object v2

    .line 109
    .local v2, "devicePosition":Lcom/samsung/android/hardware/context/SemContextDevicePosition;
    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    move-result v4

    .line 110
    .local v4, "position":I
    if-ne v4, v3, :cond_3a

    .line 111
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_65

    .line 113
    :cond_3a
    invoke-static {v6}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 114
    iget-object v5, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v5

    if-ne v5, v3, :cond_65

    .line 115
    iput-boolean v3, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    goto :goto_65

    .line 120
    .end local v2    # "devicePosition":Lcom/samsung/android/hardware/context/SemContextDevicePosition;
    .end local v4    # "position":I
    :cond_48
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getFlatMotionContext()Lcom/samsung/android/hardware/context/SemContextFlatMotion;

    move-result-object v4

    .line 121
    .local v4, "flatMotion":Lcom/samsung/android/hardware/context/SemContextFlatMotion;
    invoke-virtual {v4}, Lcom/samsung/android/hardware/context/SemContextFlatMotion;->getAction()I

    move-result v5

    .line 122
    .local v5, "action":I
    if-ne v5, v3, :cond_56

    .line 123
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_65

    .line 124
    :cond_56
    if-ne v5, v2, :cond_65

    .line 125
    invoke-static {v6}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v2

    if-ne v2, v3, :cond_65

    .line 127
    iput-boolean v3, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    .line 134
    .end local v4    # "flatMotion":Lcom/samsung/android/hardware/context/SemContextFlatMotion;
    .end local v5    # "action":I
    :cond_65
    :goto_65
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 88
    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2e

    .line 90
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    float-to-double v3, v0

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_27

    const-string v0, "GAMEVOIP"

    iget-object v3, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getAppMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 91
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    goto :goto_29

    .line 93
    :cond_27
    iput-boolean v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    .line 95
    :goto_29
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/SensorHandleThread;->setProximitySensorClosed(Z)V

    .line 97
    :cond_2e
    monitor-exit p0

    .line 98
    return-void

    .line 97
    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public run()V
    .registers 2

    .line 76
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorHandler:Landroid/os/Handler;

    .line 78
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 79
    return-void
.end method

.method public setDevicePositionChangedDuringRingtone(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 183
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    .line 184
    return-void
.end method

.method public setProximitySensorClosed(Z)V
    .registers 3
    .param p1, "closed"    # Z

    .line 175
    if-eqz p1, :cond_8

    .line 176
    const-string v0, "l_hw_proximity_sensor_state=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_d

    .line 178
    :cond_8
    const-string v0, "l_hw_proximity_sensor_state=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 180
    :goto_d
    return-void
.end method

.method public declared-synchronized startSensor()V
    .registers 5

    monitor-enter p0

    .line 137
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mListenerStarted:Z

    if-nez v0, :cond_29

    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionSensorEnabled:Z

    if-eqz v0, :cond_1b

    .line 142
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    goto :goto_26

    .line 143
    .end local p0    # "this":Lcom/samsung/android/server/audio/SensorHandleThread;
    :cond_1b
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mFlatMotionSensorEnabled:Z

    if-eqz v0, :cond_26

    .line 144
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    .line 147
    :cond_26
    :goto_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mListenerStarted:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 149
    :cond_29
    monitor-exit p0

    return-void

    .line 136
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSensor()V
    .registers 3

    monitor-enter p0

    .line 152
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mListenerStarted:Z

    if-eqz v0, :cond_30

    .line 153
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 155
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionSensorEnabled:Z

    if-eqz v0, :cond_1d

    .line 156
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 157
    const-string v0, "l_hw_flat_motion_state=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_2d

    .line 158
    .end local p0    # "this":Lcom/samsung/android/server/audio/SensorHandleThread;
    :cond_1d
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mFlatMotionSensorEnabled:Z

    if-eqz v0, :cond_2d

    .line 159
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 160
    const-string v0, "l_hw_flat_motion_state=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 162
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mListenerStarted:Z
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 164
    :cond_30
    monitor-exit p0

    return-void

    .line 151
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method
