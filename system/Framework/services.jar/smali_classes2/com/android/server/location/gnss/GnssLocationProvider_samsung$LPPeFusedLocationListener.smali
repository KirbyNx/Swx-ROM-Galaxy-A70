.class final Lcom/android/server/location/gnss/GnssLocationProvider_samsung$LPPeFusedLocationListener;
.super Ljava/lang/Object;
.source "GnssLocationProvider_samsung.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LPPeFusedLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;


# direct methods
.method private constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V
    .registers 2

    .line 496
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$LPPeFusedLocationListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p2, "x1"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;

    .line 496
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$LPPeFusedLocationListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .line 500
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fused"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 502
    const-string v0, "LocationX"

    const-string v1, "LPPeFusedLocationListener : FUSED_PROVIDER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$LPPeFusedLocationListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->handleUpdateLPPeNLPLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2600(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Landroid/location/Location;)V

    .line 505
    :cond_18
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 517
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 513
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 509
    return-void
.end method
