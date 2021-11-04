.class Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;
.super Lcom/android/server/location/LocationManagerService$LocationProviderManager;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PassiveLocationProviderManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/location/LocationManagerService;

    .line 1355
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1356
    const-string/jumbo v0, "passive"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    .line 1357
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p2, "x1"    # Lcom/android/server/location/LocationManagerService$1;

    .line 1353
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public setMockProvider(Lcom/android/server/location/MockProvider;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/server/location/MockProvider;

    .line 1367
    if-nez p1, :cond_3

    .line 1370
    return-void

    .line 1368
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot mock the passive provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V
    .registers 3
    .param p1, "provider"    # Lcom/android/server/location/AbstractLocationProvider;

    .line 1361
    instance-of v0, p1, Lcom/android/server/location/PassiveProvider;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1362
    invoke-super {p0, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 1363
    return-void
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 7
    .param p1, "location"    # Landroid/location/Location;

    .line 1373
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1374
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/MockableLocationProvider;->getProvider()Lcom/android/server/location/AbstractLocationProvider;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/PassiveProvider;

    .line 1375
    .local v1, "passiveProvider":Lcom/android/server/location/PassiveProvider;
    if-eqz v1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1377
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_2a

    .line 1379
    .local v2, "identity":J
    :try_start_1b
    invoke-virtual {v1, p1}, Lcom/android/server/location/PassiveProvider;->updateLocation(Landroid/location/Location;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_24

    .line 1381
    :try_start_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1382
    nop

    .line 1383
    .end local v1    # "passiveProvider":Lcom/android/server/location/PassiveProvider;
    .end local v2    # "identity":J
    monitor-exit v0

    .line 1384
    return-void

    .line 1381
    .restart local v1    # "passiveProvider":Lcom/android/server/location/PassiveProvider;
    .restart local v2    # "identity":J
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1382
    nop

    .end local p0    # "this":Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;
    .end local p1    # "location":Landroid/location/Location;
    throw v4

    .line 1383
    .end local v1    # "passiveProvider":Lcom/android/server/location/PassiveProvider;
    .end local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;
    .restart local p1    # "location":Landroid/location/Location;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2a

    throw v1
.end method
