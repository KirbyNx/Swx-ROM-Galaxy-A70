.class public Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;
.super Ljava/lang/Object;
.source "GnssMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssMeasurementsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssMeasurementProviderNative"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMeasurementSupported()Z
    .registers 2

    .line 183
    # invokes: Lcom/android/server/location/gnss/GnssMeasurementsProvider;->native_is_measurement_supported()Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->access$000()Z

    move-result v0

    return v0
.end method

.method public startMeasurementCollection(Z)Z
    .registers 3
    .param p1, "enableFullTracking"    # Z

    .line 187
    # invokes: Lcom/android/server/location/gnss/GnssMeasurementsProvider;->native_start_measurement_collection(Z)Z
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->access$100(Z)Z

    move-result v0

    return v0
.end method

.method public stopMeasurementCollection()Z
    .registers 2

    .line 191
    # invokes: Lcom/android/server/location/gnss/GnssMeasurementsProvider;->native_stop_measurement_collection()Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->access$200()Z

    move-result v0

    return v0
.end method
