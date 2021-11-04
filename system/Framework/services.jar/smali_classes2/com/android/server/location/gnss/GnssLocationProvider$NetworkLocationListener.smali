.class final Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;
.super Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 3

    .line 2450
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p2, "x1"    # Lcom/android/server/location/gnss/GnssLocationProvider$1;

    .line 2450
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .line 2454
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2458
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-boolean v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    .line 2461
    :cond_1e
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_changeChnNlpAccuracy(Landroid/location/Location;)V

    .line 2463
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->injectLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4000(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V

    .line 2465
    :cond_28
    return-void
.end method
