.class Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;
.super Ljava/lang/Object;
.source "EyeComfortSolutionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;


# direct methods
.method constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 648
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 665
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 651
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 652
    .local v0, "time":J
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    float-to-int v3, v3

    # setter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_current_value:I
    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1702(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)I

    .line 653
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # operator++ for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1808(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    .line 654
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$600(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 655
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_current_value:I
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I
    invoke-static {v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1800(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v5

    # invokes: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_bopr(II)V
    invoke-static {v2, v3, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1900(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;II)V

    .line 656
    :cond_2b
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2100(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2000(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 657
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2200(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v2

    const/16 v3, 0x36

    if-ge v2, v3, :cond_66

    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$600(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 658
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 659
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$800(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v3

    int-to-long v5, v3

    add-long/2addr v5, v0

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 661
    :cond_66
    return-void
.end method
