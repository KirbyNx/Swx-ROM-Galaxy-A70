.class Lcom/android/server/input/CameraMotorManagerService$7$3;
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

    .line 1383
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$7$3;->this$1:Lcom/android/server/input/CameraMotorManagerService$7;

    iput-wide p2, p0, Lcom/android/server/input/CameraMotorManagerService$7$3;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1386
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$7$3;->this$1:Lcom/android/server/input/CameraMotorManagerService$7;

    iget-object v0, v0, Lcom/android/server/input/CameraMotorManagerService$7;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$200(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1387
    :try_start_9
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService$7$3;->this$1:Lcom/android/server/input/CameraMotorManagerService$7;

    iget-object v1, v1, Lcom/android/server/input/CameraMotorManagerService$7;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mIsOpened:Z
    invoke-static {v1}, Lcom/android/server/input/CameraMotorManagerService;->access$400(Lcom/android/server/input/CameraMotorManagerService;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService$7$3;->this$1:Lcom/android/server/input/CameraMotorManagerService$7;

    iget-object v1, v1, Lcom/android/server/input/CameraMotorManagerService$7;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->getCameraPosition(I)I
    invoke-static {v1, v2}, Lcom/android/server/input/CameraMotorManagerService;->access$2200(Lcom/android/server/input/CameraMotorManagerService;I)I

    move-result v1

    if-eqz v1, :cond_29

    .line 1388
    :cond_1e
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService$7$3;->this$1:Lcom/android/server/input/CameraMotorManagerService$7;

    iget-object v1, v1, Lcom/android/server/input/CameraMotorManagerService$7;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    iget-wide v3, p0, Lcom/android/server/input/CameraMotorManagerService$7$3;->val$time:J

    const/16 v5, 0x9

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->cameraMotorControlInnerLocked(JII)Z
    invoke-static {v1, v3, v4, v2, v5}, Lcom/android/server/input/CameraMotorManagerService;->access$4000(Lcom/android/server/input/CameraMotorManagerService;JII)Z

    .line 1390
    :cond_29
    monitor-exit v0

    .line 1391
    return-void

    .line 1390
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2b

    throw v1
.end method
