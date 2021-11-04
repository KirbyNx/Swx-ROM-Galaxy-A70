.class Lcom/android/server/input/InputManagerService$37;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .line 5446
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$37;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 5468
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 5449
    const/4 v0, 0x0

    .line 5450
    .local v0, "stateChanged":Z
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 5452
    .local v1, "angle":F
    :goto_6
    # getter for: Lcom/android/server/input/InputManagerService;->mLowHysteresis:[F
    invoke-static {}, Lcom/android/server/input/InputManagerService;->access$4600()[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$37;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mFoldingState:I
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$4700(Lcom/android/server/input/InputManagerService;)I

    move-result v3

    aget v2, v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1d

    .line 5453
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$37;->this$0:Lcom/android/server/input/InputManagerService;

    # operator-- for: Lcom/android/server/input/InputManagerService;->mFoldingState:I
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$4710(Lcom/android/server/input/InputManagerService;)I

    .line 5454
    const/4 v0, 0x1

    goto :goto_6

    .line 5456
    :cond_1d
    :goto_1d
    # getter for: Lcom/android/server/input/InputManagerService;->mHighHysteresis:[F
    invoke-static {}, Lcom/android/server/input/InputManagerService;->access$4800()[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$37;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mFoldingState:I
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$4700(Lcom/android/server/input/InputManagerService;)I

    move-result v3

    aget v2, v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_34

    .line 5457
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$37;->this$0:Lcom/android/server/input/InputManagerService;

    # operator++ for: Lcom/android/server/input/InputManagerService;->mFoldingState:I
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$4708(Lcom/android/server/input/InputManagerService;)I

    .line 5458
    const/4 v0, 0x1

    goto :goto_1d

    .line 5460
    :cond_34
    if-eqz v0, :cond_6a

    .line 5461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFoldingAngleListener: state changed, angle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$37;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mFoldingState:I
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$4700(Lcom/android/server/input/InputManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5462
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$37;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$2800(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$37;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mFoldingState:I
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$4700(Lcom/android/server/input/InputManagerService;)I

    move-result v4

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetFoldingState(JI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->access$4900(JI)V

    .line 5464
    :cond_6a
    return-void
.end method
