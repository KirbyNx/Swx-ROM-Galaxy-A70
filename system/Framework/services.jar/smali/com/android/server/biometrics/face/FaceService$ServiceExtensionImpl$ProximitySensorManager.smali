.class final Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;
.super Ljava/lang/Object;
.source "FaceService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProximitySensorManager"
.end annotation


# instance fields
.field private mIsRegisterListener:Z

.field private mPrxSensor:Landroid/hardware/Sensor;

.field private mSensorThread:Landroid/os/HandlerThread;

.field private mSmgr:Landroid/hardware/SensorManager;

.field private mThreadHandler:Landroid/os/Handler;

.field final synthetic this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Landroid/content/Context;)V
    .registers 4
    .param p2, "ctx"    # Landroid/content/Context;

    .line 2524
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2522
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mIsRegisterListener:Z

    .line 2525
    const-string/jumbo p1, "sensor"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mSmgr:Landroid/hardware/SensorManager;

    .line 2526
    if-eqz p1, :cond_1d

    .line 2527
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mPrxSensor:Landroid/hardware/Sensor;

    .line 2529
    :cond_1d
    return-void
.end method

.method static synthetic access$22400(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;

    .line 2516
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->unregisterListener()V

    return-void
.end method

.method static synthetic access$22500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;

    .line 2516
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->registerListener()Z

    move-result v0

    return v0
.end method

.method private registerListener()Z
    .registers 6

    .line 2532
    const/4 v0, 0x0

    .line 2533
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mIsRegisterListener:Z

    if-nez v1, :cond_38

    .line 2535
    :try_start_5
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "sensor thread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mSensorThread:Landroid/os/HandlerThread;

    .line 2536
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 2537
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mThreadHandler:Landroid/os/Handler;

    .line 2538
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mSmgr:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mPrxSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v2, p0, v3, v4, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_27

    move v0, v1

    .line 2543
    goto :goto_35

    .line 2540
    :catch_27
    move-exception v1

    .line 2541
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GFaceService"

    const-string/jumbo v3, "registerListener : failed to register sensor listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2542
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2544
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_35
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mIsRegisterListener:Z

    .line 2546
    :cond_38
    return v0
.end method

.method private declared-synchronized unregisterListener()V
    .registers 4

    monitor-enter p0

    .line 2550
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mIsRegisterListener:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    if-eqz v0, :cond_23

    .line 2552
    :try_start_5
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mSmgr:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b
    .catchall {:try_start_5 .. :try_end_a} :catchall_25

    .line 2555
    goto :goto_14

    .line 2553
    .end local p0    # "this":Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;
    :catch_b
    move-exception v0

    .line 2554
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    const-string v1, "GFaceService"

    const-string/jumbo v2, "unregisterListener : failed to unregister sensor listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2556
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mSensorThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_20

    .line 2557
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mSensorThread:Landroid/os/HandlerThread;

    .line 2560
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->mIsRegisterListener:Z
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_25

    .line 2562
    :cond_23
    monitor-exit p0

    return-void

    .line 2549
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 2585
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 2566
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_64

    .line 2567
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 2569
    .local v0, "values":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x4

    if-nez v2, :cond_2a

    .line 2570
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v2, v2, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2571
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v2, v2, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4c

    .line 2572
    :cond_2a
    aget v2, v0, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4c

    .line 2573
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v2, v2, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2574
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 2575
    .local v2, "msg":Landroid/os/Message;
    iput v3, v2, Landroid/os/Message;->what:I

    .line 2576
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2577
    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v3, v3, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2579
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4c
    :goto_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PROXIMITY] onSensorChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GFaceService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    .end local v0    # "values":[F
    :cond_64
    return-void
.end method
