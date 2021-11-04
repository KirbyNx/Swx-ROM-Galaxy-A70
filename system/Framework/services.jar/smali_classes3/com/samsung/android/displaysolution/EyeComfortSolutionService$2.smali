.class Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;
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

    .line 668
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 689
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 671
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 672
    .local v0, "time":J
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$400(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_34

    .line 673
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I
    invoke-static {v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2300(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v4

    add-int/2addr v3, v4

    # setter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I
    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2302(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)I

    .line 674
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # operator++ for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2408(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    .line 675
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2300(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I
    invoke-static {v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2400(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v4

    div-int/2addr v3, v4

    # setter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I
    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2502(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)I

    goto :goto_62

    .line 677
    :cond_34
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$400(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 678
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I
    invoke-static {v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2600(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v4

    add-int/2addr v3, v4

    # setter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I
    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2602(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)I

    .line 679
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # operator++ for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2708(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    .line 680
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2600(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I
    invoke-static {v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v4

    div-int/2addr v3, v4

    # setter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I
    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2802(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)I

    .line 682
    :cond_62
    :goto_62
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2100(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$2900(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 683
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 684
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS:I
    invoke-static {v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$900(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 685
    return-void
.end method
