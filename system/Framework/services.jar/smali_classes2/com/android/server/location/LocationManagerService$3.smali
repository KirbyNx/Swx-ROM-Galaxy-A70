.class Lcom/android/server/location/LocationManagerService$3;
.super Lcom/samsung/android/location/ISLocationLMSHook$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationManagerService;->setSLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/LocationManagerService;

    .line 533
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Lcom/samsung/android/location/ISLocationLMSHook$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getHWGeofence()Landroid/location/IGpsGeofenceHardware;
    .registers 3

    .line 541
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 542
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v0

    .line 543
    .local v0, "igps":Landroid/location/IGpsGeofenceHardware;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssManagerService;->enableSLocation()V

    .line 544
    return-object v0
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 536
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/LocationManagerService;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public notifyNSFLP(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 549
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService;->notifyNSFLP(Landroid/os/Message;)V

    .line 550
    return-void
.end method
