.class Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;
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
    name = "FoldLPMSensorEventListener"
.end annotation


# instance fields
.field public mEnabled:Z

.field final synthetic this$0:Lcom/android/server/policy/DisplayFoldController;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/DisplayFoldController;)V
    .registers 2

    .line 829
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;->this$0:Lcom/android/server/policy/DisplayFoldController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/DisplayFoldController;Lcom/android/server/policy/DisplayFoldController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/DisplayFoldController;
    .param p2, "x1"    # Lcom/android/server/policy/DisplayFoldController$1;

    .line 829
    invoke-direct {p0, p1}, Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;-><init>(Lcom/android/server/policy/DisplayFoldController;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 873
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 834
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    .line 835
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 836
    const-string v0, "DisplayFoldController"

    const-string/jumbo v1, "onSensorChanged: Factory mode, ignore it."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-void

    .line 842
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;->this$0:Lcom/android/server/policy/DisplayFoldController;

    iget-object v0, v0, Lcom/android/server/policy/DisplayFoldController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_16
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_29

    .line 844
    const-string v1, "DisplayFoldController"

    const-string v3, "[FoldLPMSensor] CLOSE"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/4 v1, 0x0

    .local v1, "foldLPMState":I
    goto :goto_61

    .line 846
    .end local v1    # "foldLPMState":I
    :cond_29
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3c

    .line 847
    const-string v1, "DisplayFoldController"

    const-string v3, "[FoldLPMSensor] HALF_FOLDED"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/4 v1, 0x2

    .restart local v1    # "foldLPMState":I
    goto :goto_61

    .line 849
    .end local v1    # "foldLPMState":I
    :cond_3c
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4f

    .line 850
    const-string v1, "DisplayFoldController"

    const-string v3, "[FoldLPMSensor] OPEN"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v1, 0x3

    .restart local v1    # "foldLPMState":I
    goto :goto_61

    .line 852
    .end local v1    # "foldLPMState":I
    :cond_4f
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7f

    .line 853
    const-string v1, "DisplayFoldController"

    const-string v3, "[FoldLPMSensor] TENT"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v1, 0x1

    .line 860
    .restart local v1    # "foldLPMState":I
    :goto_61
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;->this$0:Lcom/android/server/policy/DisplayFoldController;

    # getter for: Lcom/android/server/policy/DisplayFoldController;->mTentMode:Z
    invoke-static {v3}, Lcom/android/server/policy/DisplayFoldController;->access$600(Lcom/android/server/policy/DisplayFoldController;)Z

    move-result v3

    if-eqz v3, :cond_7d

    const/4 v3, 0x2

    if-le v1, v3, :cond_7d

    .line 861
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;->this$0:Lcom/android/server/policy/DisplayFoldController;

    iget-boolean v3, v3, Lcom/android/server/policy/DisplayFoldController;->mForcedDeviceFolded:Z

    if-eqz v3, :cond_78

    .line 862
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;->this$0:Lcom/android/server/policy/DisplayFoldController;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/DisplayFoldController;->setTentMode(Z)V

    goto :goto_7d

    .line 864
    :cond_78
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;->this$0:Lcom/android/server/policy/DisplayFoldController;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/DisplayFoldController;->setDeviceFolded(Z)V

    .line 867
    :cond_7d
    :goto_7d
    monitor-exit v0

    .line 868
    return-void

    .line 856
    .end local v1    # "foldLPMState":I
    :cond_7f
    monitor-exit v0

    return-void

    .line 867
    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_16 .. :try_end_83} :catchall_81

    throw v1
.end method
