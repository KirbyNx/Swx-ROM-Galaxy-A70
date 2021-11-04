.class Lcom/android/server/input/CameraMotorManagerService$5;
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

    .line 931
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$5;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 948
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 934
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 935
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    .line 937
    .local v2, "state":I
    if-nez v2, :cond_d

    const/4 v3, 0x1

    .line 938
    .local v3, "isGrip":Z
    :cond_d
    iget-object v4, p0, Lcom/android/server/input/CameraMotorManagerService$5;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mIsGripped:Z
    invoke-static {v4}, Lcom/android/server/input/CameraMotorManagerService;->access$3600(Lcom/android/server/input/CameraMotorManagerService;)Z

    move-result v4

    if-eq v4, v3, :cond_23

    .line 940
    iget-object v4, p0, Lcom/android/server/input/CameraMotorManagerService$5;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # setter for: Lcom/android/server/input/CameraMotorManagerService;->mIsGripped:Z
    invoke-static {v4, v3}, Lcom/android/server/input/CameraMotorManagerService;->access$3602(Lcom/android/server/input/CameraMotorManagerService;Z)Z

    .line 941
    iget-object v4, p0, Lcom/android/server/input/CameraMotorManagerService$5;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mGripSensorQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;
    invoke-static {v4}, Lcom/android/server/input/CameraMotorManagerService;->access$3700(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->add(JI)V

    .line 943
    :cond_23
    return-void
.end method
