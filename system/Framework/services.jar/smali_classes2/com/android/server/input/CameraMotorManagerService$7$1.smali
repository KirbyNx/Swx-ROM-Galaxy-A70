.class Lcom/android/server/input/CameraMotorManagerService$7$1;
.super Ljava/lang/Object;
.source "CameraMotorManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/CameraMotorManagerService$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/input/CameraMotorManagerService$7;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/android/server/input/CameraMotorManagerService$7;J)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/input/CameraMotorManagerService$7;

    .line 1357
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$7$1;->this$1:Lcom/android/server/input/CameraMotorManagerService$7;

    iput-wide p2, p0, Lcom/android/server/input/CameraMotorManagerService$7$1;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1360
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$7$1;->this$1:Lcom/android/server/input/CameraMotorManagerService$7;

    iget-object v0, v0, Lcom/android/server/input/CameraMotorManagerService$7;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$200(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1361
    :try_start_9
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService$7$1;->this$1:Lcom/android/server/input/CameraMotorManagerService$7;

    iget-object v1, v1, Lcom/android/server/input/CameraMotorManagerService$7;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mIsOpened:Z
    invoke-static {v1}, Lcom/android/server/input/CameraMotorManagerService;->access$400(Lcom/android/server/input/CameraMotorManagerService;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService$7$1;->this$1:Lcom/android/server/input/CameraMotorManagerService$7;

    iget-object v1, v1, Lcom/android/server/input/CameraMotorManagerService$7;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->getCameraPosition(I)I
    invoke-static {v1, v2}, Lcom/android/server/input/CameraMotorManagerService;->access$2200(Lcom/android/server/input/CameraMotorManagerService;I)I

    move-result v1

    if-eqz v1, :cond_3e

    .line 1362
    :cond_1e
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService$7$1;->this$1:Lcom/android/server/input/CameraMotorManagerService$7;

    iget-object v1, v1, Lcom/android/server/input/CameraMotorManagerService$7;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mActivatedCameraIds:I
    invoke-static {v1}, Lcom/android/server/input/CameraMotorManagerService;->access$900(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService$7$1;->this$1:Lcom/android/server/input/CameraMotorManagerService$7;

    iget-object v1, v1, Lcom/android/server/input/CameraMotorManagerService$7;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLastRequestState:I
    invoke-static {v1}, Lcom/android/server/input/CameraMotorManagerService;->access$600(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v1

    const/16 v3, 0x9

    if-eq v1, v3, :cond_3e

    .line 1363
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService$7$1;->this$1:Lcom/android/server/input/CameraMotorManagerService$7;

    iget-object v1, v1, Lcom/android/server/input/CameraMotorManagerService$7;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    iget-wide v3, p0, Lcom/android/server/input/CameraMotorManagerService$7$1;->val$time:J

    const/4 v5, 0x3

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->cameraMotorControlInnerLocked(JII)Z
    invoke-static {v1, v3, v4, v2, v5}, Lcom/android/server/input/CameraMotorManagerService;->access$4000(Lcom/android/server/input/CameraMotorManagerService;JII)Z

    .line 1366
    :cond_3e
    monitor-exit v0

    .line 1367
    return-void

    .line 1366
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_40

    throw v1
.end method
