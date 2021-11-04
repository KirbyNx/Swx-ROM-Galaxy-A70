.class Lcom/samsung/android/camera/CameraServiceWorker$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 886
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 889
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    return-void

    .line 892
    :cond_7
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x85716fd

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_23

    const v3, 0x938ecab

    if-eq v2, v3, :cond_19

    :cond_18
    goto :goto_2c

    :cond_19
    const-string v2, "com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v1, v5

    goto :goto_2c

    :cond_23
    const-string v2, "com.samsung.android.intent.ACTION_MOTOR_DOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v1, v4

    :goto_2c
    const-string v2, "CameraService_worker"

    if-eqz v1, :cond_48

    if-eq v1, v5, :cond_34

    goto/16 :goto_c2

    .line 910
    :cond_34
    const-string v1, "Time to log proxy activity."

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1200(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->dumpDMALog()V

    .line 912
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->scheduleLogging()V
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1300(Lcom/samsung/android/camera/CameraServiceWorker;)V

    .line 913
    goto :goto_c2

    .line 894
    :cond_48
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mNotifyMotorManager:Z
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1100(Lcom/samsung/android/camera/CameraServiceWorker;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got ACTION_MOTOR_DOWN intent, mIsCameraOpened="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z
    invoke-static {v3}, Lcom/samsung/android/camera/CameraServiceWorker;->access$900(Lcom/samsung/android/camera/CameraServiceWorker;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$900(Lcom/samsung/android/camera/CameraServiceWorker;)Z

    move-result v1

    if-nez v1, :cond_c2

    .line 897
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$500(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 898
    invoke-static {}, Landroid/hardware/input/CameraMotorManager;->getInstance()Landroid/hardware/input/CameraMotorManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/CameraMotorManager;->getBlockTimeForCamera()J

    move-result-wide v6

    .line 899
    .local v6, "waitingTime":J
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_8d

    .line 900
    const-wide/16 v6, 0x258

    .line 902
    :cond_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Waiting for "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms for slide down"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-static {}, Landroid/hardware/input/CameraMotorManager;->getInstance()Landroid/hardware/input/CameraMotorManager;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/hardware/input/CameraMotorManager;->setBlockTimeForCamera(J)V

    .line 904
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$500(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->access$500(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v5, v4, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 918
    .end local v6    # "waitingTime":J
    :cond_c2
    :goto_c2
    return-void
.end method
