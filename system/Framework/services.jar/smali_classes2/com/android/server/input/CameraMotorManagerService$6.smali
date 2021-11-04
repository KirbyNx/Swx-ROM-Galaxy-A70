.class Lcom/android/server/input/CameraMotorManagerService$6;
.super Ljava/lang/Object;
.source "CameraMotorManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/CameraMotorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/CameraMotorManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/CameraMotorManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 954
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1005
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 16
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 957
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 958
    .local v6, "now":J
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v8, v0

    .line 959
    .local v8, "dropSensorEventValue":I
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mDropSensorQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$3800(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    move-result-object v0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->add(JI)V

    .line 961
    const/4 v9, 0x1

    if-ne v8, v9, :cond_18

    move v0, v9

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    move v10, v0

    .line 962
    .local v10, "freeFalling":Z
    const/4 v0, 0x2

    if-ne v8, v0, :cond_1f

    move v0, v9

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    move v11, v0

    .line 963
    .local v11, "highShock":Z
    const/4 v0, 0x3

    if-ne v8, v0, :cond_26

    move v0, v9

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    move v12, v0

    .line 965
    .local v12, "noShock":Z
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$200(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 966
    :try_start_2f
    const-string v2, "CameraMotorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSensorChanged:: freeFalling : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", grip : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mIsGripped:Z
    invoke-static {v4}, Lcom/android/server/input/CameraMotorManagerService;->access$3600(Lcom/android/server/input/CameraMotorManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", open : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    .line 967
    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mIsOpened:Z
    invoke-static {v4}, Lcom/android/server/input/CameraMotorManagerService;->access$400(Lcom/android/server/input/CameraMotorManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mActivatedCameraIds : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mActivatedCameraIds:I
    invoke-static {v4}, Lcom/android/server/input/CameraMotorManagerService;->access$900(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", highShock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", noShock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", time= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mLastDropTime= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    .line 969
    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLastDropTime:J
    invoke-static {v4}, Lcom/android/server/input/CameraMotorManagerService;->access$3900(Lcom/android/server/input/CameraMotorManagerService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 966
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_2f .. :try_end_97} :catchall_133

    .line 972
    if-eqz v10, :cond_dc

    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mIsGripped:Z
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$3600(Lcom/android/server/input/CameraMotorManagerService;)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 973
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$200(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 974
    :try_start_a8
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mIsOpened:Z
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$400(Lcom/android/server/input/CameraMotorManagerService;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 975
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/16 v5, 0x200

    move-wide v1, v6

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->cameraMotorControlInnerLocked(JIII)Z
    invoke-static/range {v0 .. v5}, Lcom/android/server/input/CameraMotorManagerService;->access$300(Lcom/android/server/input/CameraMotorManagerService;JIII)Z

    .line 977
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mActivatedCameraIds:I
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$900(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v0

    if-eqz v0, :cond_c7

    .line 978
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # setter for: Lcom/android/server/input/CameraMotorManagerService;->mLastDropTime:J
    invoke-static {v0, v6, v7}, Lcom/android/server/input/CameraMotorManagerService;->access$3902(Lcom/android/server/input/CameraMotorManagerService;J)J

    .line 980
    :cond_c7
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$1500(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 981
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # setter for: Lcom/android/server/input/CameraMotorManagerService;->mIsInFreeFalling:Z
    invoke-static {v0, v9}, Lcom/android/server/input/CameraMotorManagerService;->access$3102(Lcom/android/server/input/CameraMotorManagerService;Z)Z

    .line 983
    :cond_d7
    monitor-exit v13

    goto :goto_132

    :catchall_d9
    move-exception v0

    monitor-exit v13
    :try_end_db
    .catchall {:try_start_a8 .. :try_end_db} :catchall_d9

    throw v0

    .line 984
    :cond_dc
    const-wide/16 v2, 0x7d0

    if-eqz v11, :cond_104

    .line 985
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLastDropTime:J
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$3900(Lcom/android/server/input/CameraMotorManagerService;)J

    move-result-wide v4

    sub-long v2, v6, v2

    cmp-long v0, v4, v2

    if-lez v0, :cond_132

    .line 986
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/16 v2, -0x190

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->notifyResultMotorPosition(JI)Z
    invoke-static {v0, v6, v7, v2}, Lcom/android/server/input/CameraMotorManagerService;->access$1000(Lcom/android/server/input/CameraMotorManagerService;JI)Z

    .line 987
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$200(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 988
    :try_start_fa
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # setter for: Lcom/android/server/input/CameraMotorManagerService;->mIsInFreeFalling:Z
    invoke-static {v2, v1}, Lcom/android/server/input/CameraMotorManagerService;->access$3102(Lcom/android/server/input/CameraMotorManagerService;Z)Z

    .line 989
    monitor-exit v0

    goto :goto_132

    :catchall_101
    move-exception v1

    monitor-exit v0
    :try_end_103
    .catchall {:try_start_fa .. :try_end_103} :catchall_101

    throw v1

    .line 991
    :cond_104
    if-eqz v12, :cond_132

    .line 992
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLastDropTime:J
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$3900(Lcom/android/server/input/CameraMotorManagerService;)J

    move-result-wide v4

    sub-long v2, v6, v2

    cmp-long v0, v4, v2

    if-lez v0, :cond_132

    .line 993
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$200(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 994
    :try_start_119
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;
    invoke-static {v2}, Lcom/android/server/input/CameraMotorManagerService;->access$1500(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->removeMessages(I)V

    .line 995
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/4 v3, 0x6

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->cameraMotorControlInnerLocked(JII)Z
    invoke-static {v2, v6, v7, v9, v3}, Lcom/android/server/input/CameraMotorManagerService;->access$4000(Lcom/android/server/input/CameraMotorManagerService;JII)Z

    .line 996
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService$6;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # setter for: Lcom/android/server/input/CameraMotorManagerService;->mIsInFreeFalling:Z
    invoke-static {v2, v1}, Lcom/android/server/input/CameraMotorManagerService;->access$3102(Lcom/android/server/input/CameraMotorManagerService;Z)Z

    .line 997
    monitor-exit v0

    goto :goto_132

    :catchall_12f
    move-exception v1

    monitor-exit v0
    :try_end_131
    .catchall {:try_start_119 .. :try_end_131} :catchall_12f

    throw v1

    .line 1000
    :cond_132
    :goto_132
    return-void

    .line 970
    :catchall_133
    move-exception v1

    :try_start_134
    monitor-exit v0
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_133

    throw v1
.end method
