.class Lcom/android/server/input/CameraMotorManagerService$1;
.super Ljava/lang/Object;
.source "CameraMotorManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/CameraMotorManagerService;->runCameraMotorControlInner(JIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/CameraMotorManagerService;

.field final synthetic val$flags:I

.field final synthetic val$from:I

.field final synthetic val$time:J

.field final synthetic val$updownState:I


# direct methods
.method constructor <init>(Lcom/android/server/input/CameraMotorManagerService;JIII)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 498
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$1;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    iput-wide p2, p0, Lcom/android/server/input/CameraMotorManagerService$1;->val$time:J

    iput p4, p0, Lcom/android/server/input/CameraMotorManagerService$1;->val$updownState:I

    iput p5, p0, Lcom/android/server/input/CameraMotorManagerService$1;->val$from:I

    iput p6, p0, Lcom/android/server/input/CameraMotorManagerService$1;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 501
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$1;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$200(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 502
    :try_start_7
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService$1;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    iget-wide v2, p0, Lcom/android/server/input/CameraMotorManagerService$1;->val$time:J

    iget v4, p0, Lcom/android/server/input/CameraMotorManagerService$1;->val$updownState:I

    iget v5, p0, Lcom/android/server/input/CameraMotorManagerService$1;->val$from:I

    iget v6, p0, Lcom/android/server/input/CameraMotorManagerService$1;->val$flags:I

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->cameraMotorControlInnerLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/input/CameraMotorManagerService;->access$300(Lcom/android/server/input/CameraMotorManagerService;JIII)Z

    .line 503
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method
