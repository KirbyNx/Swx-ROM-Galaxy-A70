.class final Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightSensorEventListener"
.end annotation


# static fields
.field private static final INJECT_EVENTS_INTERVAL_MS:I = 0xfa


# instance fields
.field private mInjectSensorEventRunnable:Ljava/lang/Runnable;

.field private mLastSensorData:F

.field final synthetic this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 2

    .line 2258
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2333
    new-instance p1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayModeDirector$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .param p2, "x1"    # Lcom/android/server/display/DisplayModeDirector$1;

    .line 2258
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
    .param p1, "x1"    # J

    .line 2258
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 2258
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;FF)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 2258
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 2258
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private isDifferentZone(FF)Z
    .registers 6
    .param p1, "lux1"    # F
    .param p2, "lux2"    # F

    .line 2319
    const/4 v0, 0x0

    .local v0, "z":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    # getter for: Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I
    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$2700(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 2320
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    # getter for: Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I
    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$2700(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I

    move-result-object v1

    aget v1, v1, v0

    int-to-float v1, v1

    .line 2324
    .local v1, "boundary":F
    cmpg-float v2, p1, v1

    if-gtz v2, :cond_1b

    cmpl-float v2, p2, v1

    if-gtz v2, :cond_23

    :cond_1b
    cmpl-float v2, p1, v1

    if-lez v2, :cond_25

    cmpg-float v2, p2, v1

    if-gtz v2, :cond_25

    .line 2326
    :cond_23
    const/4 v2, 0x1

    return v2

    .line 2319
    .end local v1    # "boundary":F
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2330
    .end local v0    # "z":I
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private processSensorData(J)V
    .registers 5
    .param p1, "now"    # J

    .line 2311
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    # getter for: Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$2600(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result v1

    # setter for: Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$2502(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)F

    .line 2313
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2314
    :try_start_16
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    # invokes: Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V
    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1000(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    .line 2315
    monitor-exit v0

    .line 2316
    return-void

    .line 2315
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastSensorData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2264
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 2304
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 2268
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 2274
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v0, :cond_18

    .line 2275
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    # setter for: Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$2502(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)F

    .line 2276
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    # invokes: Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1000(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    goto :goto_77

    .line 2279
    :cond_18
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    # getter for: Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F
    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$2500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF)Z

    move-result v0

    .line 2280
    .local v0, "zoneChanged":Z
    if-eqz v0, :cond_3b

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    # getter for: Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F
    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$2500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3b

    .line 2283
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    # getter for: Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;
    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$2600(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 2286
    :cond_3b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2287
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    # getter for: Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;
    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$2600(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    .line 2289
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v3, v3, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->access$2400(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2290
    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    .line 2292
    if-eqz v0, :cond_77

    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    # getter for: Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F
    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$2500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_77

    .line 2296
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v3, v3, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->access$2400(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2299
    .end local v0    # "zoneChanged":Z
    .end local v1    # "now":J
    :cond_77
    :goto_77
    return-void
.end method

.method public removeCallbacks()V
    .registers 3

    .line 2307
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$2400(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2308
    return-void
.end method
