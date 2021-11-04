.class Lcom/android/server/input/CameraMotorManagerService$4;
.super Ljava/lang/Object;
.source "CameraMotorManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 899
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$4;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 902
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$4;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$200(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 903
    :try_start_7
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService$4;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mTopPositionMonitorEnable:Z
    invoke-static {v1}, Lcom/android/server/input/CameraMotorManagerService;->access$2600(Lcom/android/server/input/CameraMotorManagerService;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 904
    const-string v1, "CameraMotorManagerService"

    const-string/jumbo v2, "skip mTopPositionChecker"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    monitor-exit v0

    return-void

    .line 907
    :cond_19
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService$4;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/16 v2, 0x9

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->getCameraPosition(I)I
    invoke-static {v1, v2}, Lcom/android/server/input/CameraMotorManagerService;->access$2200(Lcom/android/server/input/CameraMotorManagerService;I)I

    move-result v1

    .line 908
    .local v1, "currentPosition":I
    const/4 v2, 0x7

    const-wide/16 v3, 0x64

    if-gt v1, v2, :cond_7a

    .line 909
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService$4;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/4 v5, 0x1

    # += operator for: Lcom/android/server/input/CameraMotorManagerService;->mNonTopPositionCount:I
    invoke-static {v2, v5}, Lcom/android/server/input/CameraMotorManagerService;->access$3512(Lcom/android/server/input/CameraMotorManagerService;I)I

    .line 910
    const-string v2, "CameraMotorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mNonTopPositionCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/input/CameraMotorManagerService$4;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mNonTopPositionCount:I
    invoke-static {v6}, Lcom/android/server/input/CameraMotorManagerService;->access$3500(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService$4;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mNonTopPositionCount:I
    invoke-static {v2}, Lcom/android/server/input/CameraMotorManagerService;->access$3500(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_6a

    .line 913
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 914
    .local v2, "curtime":J
    iget-object v4, p0, Lcom/android/server/input/CameraMotorManagerService$4;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/16 v5, -0x64

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->notifyResultMotorPosition(JI)Z
    invoke-static {v4, v2, v3, v5}, Lcom/android/server/input/CameraMotorManagerService;->access$1000(Lcom/android/server/input/CameraMotorManagerService;JI)Z

    .line 915
    iget-object v4, p0, Lcom/android/server/input/CameraMotorManagerService$4;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/16 v9, 0x200

    move-wide v5, v2

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->runCameraMotorControlInner(JIII)Z
    invoke-static/range {v4 .. v9}, Lcom/android/server/input/CameraMotorManagerService;->access$1200(Lcom/android/server/input/CameraMotorManagerService;JIII)Z

    .line 917
    nop

    .end local v2    # "curtime":J
    goto :goto_8f

    .line 918
    :cond_6a
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService$4;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mCameraPositionHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/input/CameraMotorManagerService;->access$2800(Lcom/android/server/input/CameraMotorManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/input/CameraMotorManagerService$4;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mTopPositionChecker:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/input/CameraMotorManagerService;->access$2700(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8f

    .line 921
    :cond_7a
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService$4;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/input/CameraMotorManagerService;->mNonTopPositionCount:I
    invoke-static {v2, v5}, Lcom/android/server/input/CameraMotorManagerService;->access$3502(Lcom/android/server/input/CameraMotorManagerService;I)I

    .line 922
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService$4;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mCameraPositionHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/input/CameraMotorManagerService;->access$2800(Lcom/android/server/input/CameraMotorManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/input/CameraMotorManagerService$4;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mTopPositionChecker:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/input/CameraMotorManagerService;->access$2700(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 924
    .end local v1    # "currentPosition":I
    :goto_8f
    monitor-exit v0

    .line 925
    return-void

    .line 924
    :catchall_91
    move-exception v1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_7 .. :try_end_93} :catchall_91

    throw v1
.end method
