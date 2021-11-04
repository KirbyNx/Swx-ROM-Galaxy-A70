.class Lcom/android/server/input/CameraMotorManagerService$3;
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

    .line 813
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .line 816
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$200(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 817
    :try_start_9
    iget-object v0, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mTargetPosition:I
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$2100(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 818
    .local v0, "targetPosition":I
    iget-object v3, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->getCameraPosition(I)I
    invoke-static {v3, v0}, Lcom/android/server/input/CameraMotorManagerService;->access$2200(Lcom/android/server/input/CameraMotorManagerService;I)I

    move-result v3

    .line 819
    .local v3, "currentPosition":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 820
    .local v4, "curtime":J
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mLastRequestStateTime:J
    invoke-static {v6}, Lcom/android/server/input/CameraMotorManagerService;->access$2300(Lcom/android/server/input/CameraMotorManagerService;)J

    move-result-wide v6

    sub-long v14, v4, v6

    .line 822
    .local v14, "delay":J
    const/4 v6, 0x1

    const/16 v7, 0x9

    if-ne v0, v3, :cond_85

    .line 824
    const-string v8, "CameraMotorManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "touch down. delay = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v8, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mIsStartedFromEndPoint:Z
    invoke-static {v8}, Lcom/android/server/input/CameraMotorManagerService;->access$2400(Lcom/android/server/input/CameraMotorManagerService;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 827
    iget-object v8, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/4 v9, -0x1

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->onSetMovingTo(I)V
    invoke-static {v8, v9}, Lcom/android/server/input/CameraMotorManagerService;->access$2500(Lcom/android/server/input/CameraMotorManagerService;I)V

    .line 828
    iget-object v8, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->releaseWakeLockForCameraMotor()V
    invoke-static {v8}, Lcom/android/server/input/CameraMotorManagerService;->access$1700(Lcom/android/server/input/CameraMotorManagerService;)V

    goto :goto_5e

    .line 830
    :cond_53
    iget-object v8, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;
    invoke-static {v8}, Lcom/android/server/input/CameraMotorManagerService;->access$1500(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    move-result-object v8

    const-wide/16 v9, 0x96

    invoke-virtual {v8, v6, v9, v10}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 832
    :goto_5e
    iget-object v8, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->notifyResultMotorPosition(JI)Z
    invoke-static {v8, v4, v5, v3}, Lcom/android/server/input/CameraMotorManagerService;->access$1000(Lcom/android/server/input/CameraMotorManagerService;JI)Z

    .line 835
    if-ne v3, v7, :cond_1c6

    .line 836
    const-string v7, "CameraMotorManagerService"

    const-string/jumbo v8, "mStopper:: register mTopPositionChecker"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v7, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # setter for: Lcom/android/server/input/CameraMotorManagerService;->mTopPositionMonitorEnable:Z
    invoke-static {v7, v6}, Lcom/android/server/input/CameraMotorManagerService;->access$2602(Lcom/android/server/input/CameraMotorManagerService;Z)Z

    .line 838
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mCameraPositionHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/input/CameraMotorManagerService;->access$2800(Lcom/android/server/input/CameraMotorManagerService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mTopPositionChecker:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/server/input/CameraMotorManagerService;->access$2700(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1c6

    .line 841
    :cond_85
    iget-object v8, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mMotorOperationTimeMs:I
    invoke-static {v8}, Lcom/android/server/input/CameraMotorManagerService;->access$2900(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v14, v8

    if-gez v8, :cond_b2

    .line 843
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mCameraPositionHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/input/CameraMotorManagerService;->access$2800(Lcom/android/server/input/CameraMotorManagerService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mStopper:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/server/input/CameraMotorManagerService;->access$3000(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 844
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mCameraPositionHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/input/CameraMotorManagerService;->access$2800(Lcom/android/server/input/CameraMotorManagerService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mStopper:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/server/input/CameraMotorManagerService;->access$3000(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0xa

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1c6

    .line 848
    :cond_b2
    const/16 v8, -0x12c

    if-ne v0, v7, :cond_ef

    iget-object v9, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    .line 849
    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mTargetPosition:I
    invoke-static {v9}, Lcom/android/server/input/CameraMotorManagerService;->access$2100(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v9

    and-int/lit16 v9, v9, 0x100

    if-eqz v9, :cond_ef

    .line 851
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->notifyResultMotorPosition(JI)Z
    invoke-static {v6, v4, v5, v8}, Lcom/android/server/input/CameraMotorManagerService;->access$1000(Lcom/android/server/input/CameraMotorManagerService;JI)Z

    .line 852
    const-string v6, "CameraMotorManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "camera motor goes back to bottom position. it took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms. current position : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-wide v7, v4

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->runCameraMotorControlInner(JIII)Z
    invoke-static/range {v6 .. v11}, Lcom/android/server/input/CameraMotorManagerService;->access$1200(Lcom/android/server/input/CameraMotorManagerService;JIII)Z

    goto/16 :goto_1c6

    .line 855
    :cond_ef
    iget-object v9, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mTargetPosition:I
    invoke-static {v9}, Lcom/android/server/input/CameraMotorManagerService;->access$2100(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v9

    and-int/lit16 v9, v9, 0x200

    if-eqz v9, :cond_131

    .line 857
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mIsInFreeFalling:Z
    invoke-static {v6}, Lcom/android/server/input/CameraMotorManagerService;->access$3100(Lcom/android/server/input/CameraMotorManagerService;)Z

    move-result v6

    if-nez v6, :cond_106

    .line 858
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->notifyResultMotorPosition(JI)Z
    invoke-static {v6, v4, v5, v8}, Lcom/android/server/input/CameraMotorManagerService;->access$1000(Lcom/android/server/input/CameraMotorManagerService;JI)Z

    .line 860
    :cond_106
    const-string v6, "CameraMotorManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "camera motor force stop. it took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms. current position : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->cameraMotorStop()Z
    invoke-static {v6}, Lcom/android/server/input/CameraMotorManagerService;->access$1600(Lcom/android/server/input/CameraMotorManagerService;)Z

    .line 863
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->releaseWakeLockForCameraMotor()V
    invoke-static {v6}, Lcom/android/server/input/CameraMotorManagerService;->access$1700(Lcom/android/server/input/CameraMotorManagerService;)V

    goto/16 :goto_1c6

    .line 866
    :cond_131
    if-ne v0, v7, :cond_134

    .line 867
    goto :goto_135

    :cond_134
    const/4 v6, 0x0

    :goto_135
    move v9, v6

    .line 868
    .local v9, "targetState":I
    const-string v6, "CameraMotorManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "camera motor stop. but retry !!!!!! it took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms. current position : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " retryCNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    .line 870
    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mRetryCnt:I
    invoke-static {v8}, Lcom/android/server/input/CameraMotorManagerService;->access$3200(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " BatteryTemp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    .line 871
    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mBatteryTemp:I
    invoke-static {v8}, Lcom/android/server/input/CameraMotorManagerService;->access$3300(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 868
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->cameraMotorStop()Z
    invoke-static {v6}, Lcom/android/server/input/CameraMotorManagerService;->access$1600(Lcom/android/server/input/CameraMotorManagerService;)Z

    .line 873
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mBatteryTemp:I
    invoke-static {v6}, Lcom/android/server/input/CameraMotorManagerService;->access$3300(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v6

    const/16 v7, 0x50

    const/4 v8, 0x2

    if-gt v6, v7, :cond_1a3

    .line 874
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mRetryCnt:I
    invoke-static {v6}, Lcom/android/server/input/CameraMotorManagerService;->access$3200(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v6

    if-ge v6, v8, :cond_194

    .line 875
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-wide v7, v4

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->runCameraMotorControlInner(JIII)Z
    invoke-static/range {v6 .. v11}, Lcom/android/server/input/CameraMotorManagerService;->access$1200(Lcom/android/server/input/CameraMotorManagerService;JIII)Z

    move-wide/from16 v16, v14

    goto :goto_1c1

    .line 877
    :cond_194
    iget-object v10, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/4 v6, 0x2

    const/16 v7, 0x200

    move-wide v11, v4

    move v13, v9

    move-wide/from16 v16, v14

    .end local v14    # "delay":J
    .local v16, "delay":J
    move v14, v6

    move v15, v7

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->runCameraMotorControlInner(JIII)Z
    invoke-static/range {v10 .. v15}, Lcom/android/server/input/CameraMotorManagerService;->access$1200(Lcom/android/server/input/CameraMotorManagerService;JIII)Z

    goto :goto_1c1

    .line 881
    .end local v16    # "delay":J
    .restart local v14    # "delay":J
    :cond_1a3
    move-wide/from16 v16, v14

    .end local v14    # "delay":J
    .restart local v16    # "delay":J
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mRetryCnt:I
    invoke-static {v6}, Lcom/android/server/input/CameraMotorManagerService;->access$3200(Lcom/android/server/input/CameraMotorManagerService;)I

    move-result v6

    if-ge v6, v8, :cond_1b7

    .line 882
    iget-object v10, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-wide v11, v4

    move v13, v9

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->runCameraMotorControlInner(JIII)Z
    invoke-static/range {v10 .. v15}, Lcom/android/server/input/CameraMotorManagerService;->access$1200(Lcom/android/server/input/CameraMotorManagerService;JIII)Z

    goto :goto_1c1

    .line 884
    :cond_1b7
    iget-object v10, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/4 v14, 0x2

    const/16 v15, 0x200

    move-wide v11, v4

    move v13, v9

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->runCameraMotorControlInner(JIII)Z
    invoke-static/range {v10 .. v15}, Lcom/android/server/input/CameraMotorManagerService;->access$1200(Lcom/android/server/input/CameraMotorManagerService;JIII)Z

    .line 888
    :goto_1c1
    iget-object v6, v1, Lcom/android/server/input/CameraMotorManagerService$3;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->writeMotorRetryCountToEfs()V
    invoke-static {v6}, Lcom/android/server/input/CameraMotorManagerService;->access$3400(Lcom/android/server/input/CameraMotorManagerService;)V

    .line 892
    .end local v0    # "targetPosition":I
    .end local v3    # "currentPosition":I
    .end local v4    # "curtime":J
    .end local v9    # "targetState":I
    .end local v16    # "delay":J
    :cond_1c6
    :goto_1c6
    monitor-exit v2

    .line 893
    return-void

    .line 892
    :catchall_1c8
    move-exception v0

    monitor-exit v2
    :try_end_1ca
    .catchall {:try_start_9 .. :try_end_1ca} :catchall_1c8

    throw v0
.end method
