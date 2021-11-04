.class Lcom/android/server/location/LocationManagerService$5;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/android/server/location/NSLocationMonitor$ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
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

    .line 3527
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$5;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceDisconnected()V
    .registers 5

    .line 3530
    const-string v0, "LocationManagerService"

    const-string v1, "Got NSLocationMonitor is disconnected, so reset all values"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$5;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLocListenerBlocklist:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$4500(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0

    .line 3533
    :try_start_e
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$5;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLocListenerBlocklist:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$4500(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 3534
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_42

    .line 3536
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$5;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1800(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->clearThrottlingAllowListByNsflp()V

    .line 3538
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$5;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->clearListenerBlocklist()V

    .line 3541
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3542
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    const-string/jumbo v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3543
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$5;->this$0:Lcom/android/server/location/LocationManagerService;

    const-string/jumbo v2, "gps"

    const-string/jumbo v3, "motion_power_saving_mode"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/location/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 3544
    return-void

    .line 3534
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method
