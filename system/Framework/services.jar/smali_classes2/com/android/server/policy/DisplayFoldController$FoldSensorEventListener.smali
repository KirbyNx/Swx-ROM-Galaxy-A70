.class Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;
.super Ljava/lang/Object;
.source "DisplayFoldController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DisplayFoldController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FoldSensorEventListener"
.end annotation


# instance fields
.field public mEnabled:Z

.field final synthetic this$0:Lcom/android/server/policy/DisplayFoldController;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/DisplayFoldController;)V
    .registers 2

    .line 527
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;->this$0:Lcom/android/server/policy/DisplayFoldController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/DisplayFoldController;Lcom/android/server/policy/DisplayFoldController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/DisplayFoldController;
    .param p2, "x1"    # Lcom/android/server/policy/DisplayFoldController$1;

    .line 527
    invoke-direct {p0, p1}, Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;-><init>(Lcom/android/server/policy/DisplayFoldController;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 581
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 533
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 534
    const-string v0, "DisplayFoldController"

    const-string/jumbo v1, "onSensorChanged: Factory mode, ignore it."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void

    .line 539
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;->this$0:Lcom/android/server/policy/DisplayFoldController;

    iget-object v0, v0, Lcom/android/server/policy/DisplayFoldController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_14
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_27

    .line 541
    const-string v1, "DisplayFoldController"

    const-string v3, "[foldSensor]TABLE_MODE_EVENT_CLOSE"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v1, 0x0

    .local v1, "foldState":I
    goto :goto_5f

    .line 543
    .end local v1    # "foldState":I
    :cond_27
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3a

    .line 544
    const-string v1, "DisplayFoldController"

    const-string v3, "[foldSensor]TABLE_MODE_EVENT_HALF_FOLDED"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v1, 0x2

    .restart local v1    # "foldState":I
    goto :goto_5f

    .line 546
    .end local v1    # "foldState":I
    :cond_3a
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4d

    .line 547
    const-string v1, "DisplayFoldController"

    const-string v3, "[foldSensor]TABLE_MODE_EVENT_OPEN"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v1, 0x3

    .restart local v1    # "foldState":I
    goto :goto_5f

    .line 549
    .end local v1    # "foldState":I
    :cond_4d
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_8f

    .line 550
    const-string v1, "DisplayFoldController"

    const-string v3, "[foldSensor]TABLE_MODE_EVENT_TENT"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v1, 0x1

    .line 556
    .restart local v1    # "foldState":I
    :goto_5f
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;->this$0:Lcom/android/server/policy/DisplayFoldController;

    # getter for: Lcom/android/server/policy/DisplayFoldController;->mFoldState:I
    invoke-static {v3}, Lcom/android/server/policy/DisplayFoldController;->access$100(Lcom/android/server/policy/DisplayFoldController;)I

    move-result v3

    .line 557
    .local v3, "lastFoldState":I
    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;->this$0:Lcom/android/server/policy/DisplayFoldController;

    # setter for: Lcom/android/server/policy/DisplayFoldController;->mFoldState:I
    invoke-static {v4, v1}, Lcom/android/server/policy/DisplayFoldController;->access$102(Lcom/android/server/policy/DisplayFoldController;I)I

    .line 564
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_14 .. :try_end_6b} :catchall_91

    .line 566
    if-eq v1, v3, :cond_8e

    .line 567
    const/4 v0, 0x2

    const/4 v4, 0x3

    if-eq v1, v0, :cond_73

    if-ne v1, v4, :cond_7f

    .line 568
    :cond_73
    if-ne v1, v4, :cond_76

    goto :goto_77

    :cond_76
    const/4 v2, 0x1

    :goto_77
    invoke-static {v2}, Lcom/android/server/policy/EventLogTags;->writeWmTableModeChanged(I)V

    .line 569
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;->this$0:Lcom/android/server/policy/DisplayFoldController;

    # invokes: Lcom/android/server/policy/DisplayFoldController;->sendFoldStateChangedEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/DisplayFoldController;->access$200(Lcom/android/server/policy/DisplayFoldController;I)V

    .line 572
    :cond_7f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_HALF_OPEN_MODE:Z

    if-eqz v0, :cond_8e

    .line 573
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;->this$0:Lcom/android/server/policy/DisplayFoldController;

    # getter for: Lcom/android/server/policy/DisplayFoldController;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/DisplayFoldController;->access$300(Lcom/android/server/policy/DisplayFoldController;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldStateForSALogging(II)V

    .line 576
    :cond_8e
    return-void

    .line 553
    .end local v1    # "foldState":I
    .end local v3    # "lastFoldState":I
    :cond_8f
    :try_start_8f
    monitor-exit v0

    return-void

    .line 564
    :catchall_91
    move-exception v1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_91

    throw v1
.end method
