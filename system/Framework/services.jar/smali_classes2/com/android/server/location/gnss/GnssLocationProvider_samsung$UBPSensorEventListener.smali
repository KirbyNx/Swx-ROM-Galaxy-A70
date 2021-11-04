.class Lcom/android/server/location/gnss/GnssLocationProvider_samsung$UBPSensorEventListener;
.super Ljava/lang/Object;
.source "GnssLocationProvider_samsung.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UBPSensorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;


# direct methods
.method private constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V
    .registers 2

    .line 644
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$UBPSensorEventListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p2, "x1"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;

    .line 644
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$UBPSensorEventListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 657
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 648
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 649
    .local v0, "sensorMeasurement":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UBPSensorEventListener : UBP Pressure = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationX"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v1, "UBPSensorEventListener : onSensorChanged() "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$UBPSensorEventListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->handleUpdateUBPInfo(I)V
    invoke-static {v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2800(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;I)V

    .line 653
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$UBPSensorEventListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$3000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$UBPSensorEventListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mUBPSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2900(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 654
    return-void
.end method
