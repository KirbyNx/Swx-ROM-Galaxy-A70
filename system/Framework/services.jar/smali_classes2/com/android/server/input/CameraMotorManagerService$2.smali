.class Lcom/android/server/input/CameraMotorManagerService$2;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CameraMotorManagerService.java"


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

    .line 741
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$2;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .registers 8
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 744
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$2;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$200(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 745
    :try_start_7
    const-string v1, "CameraMotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exit camera app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    if-nez p1, :cond_21

    .line 747
    monitor-exit v0

    return-void

    .line 749
    :cond_21
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 750
    .local v1, "id":I
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_31

    .line 751
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService$2;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    not-int v3, v3

    # &= operator for: Lcom/android/server/input/CameraMotorManagerService;->mActivatedCameraIds:I
    invoke-static {v2, v3}, Lcom/android/server/input/CameraMotorManagerService;->access$972(Lcom/android/server/input/CameraMotorManagerService;I)I

    .line 753
    :cond_31
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService$2;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;
    invoke-static {v2}, Lcom/android/server/input/CameraMotorManagerService;->access$1500(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    move-result-object v2

    const/4 v3, 0x4

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 754
    nop

    .end local v1    # "id":I
    monitor-exit v0

    .line 755
    return-void

    .line 754
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$2;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$200(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 760
    :try_start_7
    const-string v1, "CameraMotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter camera app  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    if-nez p1, :cond_21

    .line 762
    monitor-exit v0

    return-void

    .line 764
    :cond_21
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 765
    .local v1, "id":I
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_30

    .line 766
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService$2;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    # |= operator for: Lcom/android/server/input/CameraMotorManagerService;->mActivatedCameraIds:I
    invoke-static {v2, v3}, Lcom/android/server/input/CameraMotorManagerService;->access$976(Lcom/android/server/input/CameraMotorManagerService;I)I

    .line 768
    :cond_30
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService$2;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;
    invoke-static {v2}, Lcom/android/server/input/CameraMotorManagerService;->access$1500(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->removeMessages(I)V

    .line 769
    .end local v1    # "id":I
    monitor-exit v0

    .line 770
    return-void

    .line 769
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw v1
.end method
