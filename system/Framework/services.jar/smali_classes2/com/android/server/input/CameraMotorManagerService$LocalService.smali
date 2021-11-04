.class final Lcom/android/server/input/CameraMotorManagerService$LocalService;
.super Landroid/hardware/input/CameraMotorManagerInternal;
.source "CameraMotorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/CameraMotorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/CameraMotorManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/CameraMotorManagerService;)V
    .registers 2

    .line 708
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    invoke-direct {p0}, Landroid/hardware/input/CameraMotorManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/CameraMotorManagerService;Lcom/android/server/input/CameraMotorManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p2, "x1"    # Lcom/android/server/input/CameraMotorManagerService$1;

    .line 708
    invoke-direct {p0, p1}, Lcom/android/server/input/CameraMotorManagerService$LocalService;-><init>(Lcom/android/server/input/CameraMotorManagerService;)V

    return-void
.end method


# virtual methods
.method public notifyMotorSwitch(JZ)V
    .registers 24
    .param p1, "whenNanos"    # J
    .param p3, "updown"    # Z

    .line 711
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$200(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 712
    :try_start_d
    iget-object v0, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mIsOpened:Z
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$400(Lcom/android/server/input/CameraMotorManagerService;)Z

    move-result v0

    if-ne v0, v4, :cond_17

    .line 713
    monitor-exit v5

    return-void

    .line 716
    :cond_17
    iget-object v0, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # setter for: Lcom/android/server/input/CameraMotorManagerService;->mIsOpened:Z
    invoke-static {v0, v4}, Lcom/android/server/input/CameraMotorManagerService;->access$402(Lcom/android/server/input/CameraMotorManagerService;Z)Z

    .line 717
    const/4 v0, 0x1

    if-eqz v4, :cond_21

    move v6, v0

    goto :goto_22

    :cond_21
    const/4 v6, 0x0

    .line 718
    .local v6, "updownState":I
    :goto_22
    const-string v7, "CameraMotorManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notifyMotorSwitch:: isOpen = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->StateToString(I)Ljava/lang/String;
    invoke-static {v9, v6}, Lcom/android/server/input/CameraMotorManagerService;->access$500(Lcom/android/server/input/CameraMotorManagerService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " mLastRequestState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    iget-object v10, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    .line 719
    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLastRequestState:I
    invoke-static {v10}, Lcom/android/server/input/CameraMotorManagerService;->access$600(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v10

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->StateToString(I)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/server/input/CameraMotorManagerService;->access$500(Lcom/android/server/input/CameraMotorManagerService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " mLastRequestStateFrom = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    iget-object v10, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    .line 720
    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLastRequestStateFrom:I
    invoke-static {v10}, Lcom/android/server/input/CameraMotorManagerService;->access$700(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v10

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->FromToString(I)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/server/input/CameraMotorManagerService;->access$800(Lcom/android/server/input/CameraMotorManagerService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " mActivatedCameraIds = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    .line 721
    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mActivatedCameraIds:I
    invoke-static {v9}, Lcom/android/server/input/CameraMotorManagerService;->access$900(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 718
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v7, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLastRequestState:I
    invoke-static {v7}, Lcom/android/server/input/CameraMotorManagerService;->access$600(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v7

    if-eq v6, v7, :cond_86

    .line 724
    if-ne v6, v0, :cond_86

    .line 725
    iget-object v7, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/16 v8, -0xc8

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->notifyResultMotorPosition(JI)Z
    invoke-static {v7, v2, v3, v8}, Lcom/android/server/input/CameraMotorManagerService;->access$1000(Lcom/android/server/input/CameraMotorManagerService;JI)Z

    .line 729
    :cond_86
    const-wide/32 v7, 0xf4240

    div-long v15, v2, v7

    .line 730
    .local v15, "time":J
    if-ne v6, v0, :cond_ad

    iget-object v7, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLastRequestState:I
    invoke-static {v7}, Lcom/android/server/input/CameraMotorManagerService;->access$600(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v7

    if-eq v7, v0, :cond_ad

    .line 732
    iget-object v0, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->acquireWakeLockForCameraMotor()V
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$1100(Lcom/android/server/input/CameraMotorManagerService;)V

    .line 733
    iget-object v14, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->runCameraMotorControlInner(JIII)Z
    invoke-static/range {v14 .. v19}, Lcom/android/server/input/CameraMotorManagerService;->access$1200(Lcom/android/server/input/CameraMotorManagerService;JIII)Z

    .line 734
    const-string v0, "CameraMotorManagerService"

    const-string/jumbo v7, "notifyMotorSwitch:: go to DOWN"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_ad
    iget-object v0, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mStateQueue:Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$1400(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;

    move-result-object v7

    iget-object v0, v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # operator++ for: Lcom/android/server/input/CameraMotorManagerService;->mCount:J
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$1308(Lcom/android/server/input/CameraMotorManagerService;)J

    move-result-wide v8

    const/4 v13, 0x0

    move-wide v10, v15

    move v12, v6

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->add(JJII)V

    .line 737
    .end local v6    # "updownState":I
    .end local v15    # "time":J
    monitor-exit v5

    .line 738
    return-void

    .line 737
    :catchall_c1
    move-exception v0

    monitor-exit v5
    :try_end_c3
    .catchall {:try_start_d .. :try_end_c3} :catchall_c1

    throw v0
.end method
