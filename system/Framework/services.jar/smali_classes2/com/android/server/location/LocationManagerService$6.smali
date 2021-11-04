.class Lcom/android/server/location/LocationManagerService$6;
.super Landroid/location/INSLocationCallback$Stub;
.source "LocationManagerService.java"


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

    .line 3550
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Landroid/location/INSLocationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveRequests(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 14
    .param p1, "provider"    # Ljava/lang/String;

    .line 3580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActiveRequestSync, provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3583
    .local v0, "activeRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationRequestInfo;>;"
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3584
    :try_start_23
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/location/LocationManagerService;->access$3300(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2e

    monitor-exit v1

    return-object v3

    .line 3585
    :cond_2e
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/location/LocationManagerService;->access$3300(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3586
    .local v2, "updateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    if-eqz v2, :cond_13f

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_44

    goto/16 :goto_13f

    .line 3588
    :cond_44
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 3589
    .local v5, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 3590
    .local v6, "identity":Lcom/android/server/location/CallerIdentity;
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3100(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v7

    invoke-virtual {v7}, Landroid/location/LocationRequest;->getQuality()I

    move-result v7

    .line 3593
    .local v7, "quality":I
    new-instance v8, Lcom/android/server/location/LocationRequestInfo$Builder;

    invoke-direct {v8}, Lcom/android/server/location/LocationRequestInfo$Builder;-><init>()V

    iget-object v9, v6, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    .line 3594
    invoke-virtual {v8, v9}, Lcom/android/server/location/LocationRequestInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/server/location/LocationRequestInfo$Builder;

    move-result-object v8

    iget v9, v6, Lcom/android/server/location/CallerIdentity;->uid:I

    .line 3595
    invoke-virtual {v8, v9}, Lcom/android/server/location/LocationRequestInfo$Builder;->setUid(I)Lcom/android/server/location/LocationRequestInfo$Builder;

    move-result-object v8

    iget v9, v6, Lcom/android/server/location/CallerIdentity;->pid:I

    .line 3596
    invoke-virtual {v8, v9}, Lcom/android/server/location/LocationRequestInfo$Builder;->setPid(I)Lcom/android/server/location/LocationRequestInfo$Builder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    .line 3597
    invoke-virtual {v8, v9}, Lcom/android/server/location/LocationRequestInfo$Builder;->setProvider(Ljava/lang/String;)Lcom/android/server/location/LocationRequestInfo$Builder;

    move-result-object v8

    .line 3598
    invoke-virtual {v8, v7}, Lcom/android/server/location/LocationRequestInfo$Builder;->setQuality(I)Lcom/android/server/location/LocationRequestInfo$Builder;

    move-result-object v8

    const/16 v9, 0x64

    if-eq v7, v9, :cond_8e

    const/16 v9, 0xcb

    if-ne v7, v9, :cond_8c

    goto :goto_8e

    :cond_8c
    const/4 v9, 0x0

    goto :goto_8f

    :cond_8e
    :goto_8e
    const/4 v9, 0x1

    .line 3599
    :goto_8f
    invoke-virtual {v8, v9}, Lcom/android/server/location/LocationRequestInfo$Builder;->setHighPowerRequest(Z)Lcom/android/server/location/LocationRequestInfo$Builder;

    move-result-object v8

    .line 3601
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/location/LocationRequestInfo$Builder;->setForeground(Z)Lcom/android/server/location/LocationRequestInfo$Builder;

    move-result-object v8

    .line 3602
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/location/LocationRequestInfo$Builder;->setListenerId(Ljava/lang/String;)Lcom/android/server/location/LocationRequestInfo$Builder;

    move-result-object v8

    .line 3603
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3100(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/android/server/location/LocationRequestInfo$Builder;->setInterval(J)Lcom/android/server/location/LocationRequestInfo$Builder;

    move-result-object v8

    .line 3604
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3100(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/android/server/location/LocationRequestInfo$Builder;->setMaxWaitTime(J)Lcom/android/server/location/LocationRequestInfo$Builder;

    move-result-object v8

    .line 3605
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/location/LocationManagerService$Receiver;->isListener()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/location/LocationRequestInfo$Builder;->setListenerType(Z)Lcom/android/server/location/LocationRequestInfo$Builder;

    move-result-object v8

    .line 3606
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/android/server/location/LocationRequestInfo$Builder;->setRequestTime(J)Lcom/android/server/location/LocationRequestInfo$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 3607
    # getter for: Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;
    invoke-static {v9}, Lcom/android/server/location/LocationManagerService;->access$2700(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/server/location/AppOpsHelper;->checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/location/LocationRequestInfo$Builder;->setAllowed(Z)Lcom/android/server/location/LocationRequestInfo$Builder;

    move-result-object v8

    .line 3608
    invoke-virtual {v8}, Lcom/android/server/location/LocationRequestInfo$Builder;->build()Lcom/android/server/location/LocationRequestInfo;

    move-result-object v8

    .line 3610
    .local v8, "requestInfo":Lcom/android/server/location/LocationRequestInfo;
    if-eqz v8, :cond_109

    .line 3611
    const-string v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onActiveRequestSync, added "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/location/LocationRequestInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3614
    .end local v5    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .end local v6    # "identity":Lcom/android/server/location/CallerIdentity;
    .end local v7    # "quality":I
    .end local v8    # "requestInfo":Lcom/android/server/location/LocationRequestInfo;
    :cond_109
    goto/16 :goto_48

    .line 3615
    .end local v2    # "updateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    :cond_10b
    monitor-exit v1
    :try_end_10c
    .catchall {:try_start_23 .. :try_end_10c} :catchall_141

    .line 3616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActiveRequestSync, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 3619
    return-object v3

    .line 3622
    :cond_12e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3623
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "provider"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3624
    const-string v2, "activeRequests"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3626
    return-object v1

    .line 3586
    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "updateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    :cond_13f
    :goto_13f
    :try_start_13f
    monitor-exit v1

    return-object v3

    .line 3615
    .end local v2    # "updateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    :catchall_141
    move-exception v2

    monitor-exit v1
    :try_end_143
    .catchall {:try_start_13f .. :try_end_143} :catchall_141

    throw v2
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .registers 2

    .line 3631
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKernelWakeLockInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 3653
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$4400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/NSLocationMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/NSLocationMonitor;->getKernelWakeLockInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public isLocationEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3642
    const-string v0, "LocationManagerService"

    const-string/jumbo v1, "isLocationEnabledForUser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result v0

    return v0
.end method

.method public isProviderEnabled(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "provider"    # Ljava/lang/String;

    .line 3636
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/location/LocationManagerService;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public noteGps(II)V
    .registers 4
    .param p1, "mode"    # I
    .param p2, "uid"    # I

    .line 3648
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$4400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/NSLocationMonitor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/NSLocationMonitor;->noteGpsOperation(II)V

    .line 3649
    return-void
.end method

.method public registerDeviceActivityDetector(IIZ)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "duration"    # I
    .param p3, "requestToUpdate"    # Z

    .line 3663
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$4400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/NSLocationMonitor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/NSLocationMonitor;->registerDeviceActivityDetector(IIZ)V

    .line 3664
    return-void
.end method

.method public requestToUpdateDeviceActivityDetector()V
    .registers 2

    .line 3673
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$4400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/NSLocationMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/NSLocationMonitor;->requestToUpdateDeviceActivityDetector()V

    .line 3674
    return-void
.end method

.method public sendLogToHqm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "devLogData"    # Ljava/lang/String;
    .param p3, "logData"    # Ljava/lang/String;

    .line 3658
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$4400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/NSLocationMonitor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/NSLocationMonitor;->sendLogToHqm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3659
    return-void
.end method

.method public setFeatureDeviceActivity(Z)Z
    .registers 3
    .param p1, "flag"    # Z

    .line 3678
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$4400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/NSLocationMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/NSLocationMonitor;->setFeatureDeviceActivity(Z)Z

    move-result v0

    return v0
.end method

.method public unregisterDeviceActivityDetector()V
    .registers 2

    .line 3668
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$4400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/NSLocationMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/NSLocationMonitor;->unregisterDeviceActivityDetector()V

    .line 3669
    return-void
.end method

.method public updateListenerBlocklist(ILjava/util/List;)V
    .registers 8
    .param p1, "ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3553
    .local p2, "listenerBlocklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mListenerType:[Landroid/location/LocationConstants$LISTENER_TYPE;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$4600(Lcom/android/server/location/LocationManagerService;)[Landroid/location/LocationConstants$LISTENER_TYPE;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_25

    .line 3554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid listener type ordinal["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    return-void

    .line 3557
    :cond_25
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mListenerType:[Landroid/location/LocationConstants$LISTENER_TYPE;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$4600(Lcom/android/server/location/LocationManagerService;)[Landroid/location/LocationConstants$LISTENER_TYPE;

    move-result-object v0

    aget-object v0, v0, p1

    .line 3558
    .local v0, "type":Landroid/location/LocationConstants$LISTENER_TYPE;
    sget-object v1, Landroid/location/LocationConstants$LISTENER_TYPE;->LOCATION:Landroid/location/LocationConstants$LISTENER_TYPE;

    if-ne v0, v1, :cond_6d

    .line 3559
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLocListenerBlocklist:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$4500(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 3560
    :try_start_38
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLocListenerBlocklist:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/server/location/LocationManagerService;->access$4500(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 3562
    if-eqz p2, :cond_68

    .line 3563
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLocListenerBlocklist:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/server/location/LocationManagerService;->access$4500(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 3564
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocListenerBlocklist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLocListenerBlocklist:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/location/LocationManagerService;->access$4500(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    :cond_68
    monitor-exit v1

    goto :goto_7e

    :catchall_6a
    move-exception v2

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_38 .. :try_end_6c} :catchall_6a

    throw v2

    .line 3568
    :cond_6d
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mListenerType:[Landroid/location/LocationConstants$LISTENER_TYPE;
    invoke-static {v2}, Lcom/android/server/location/LocationManagerService;->access$4600(Lcom/android/server/location/LocationManagerService;)[Landroid/location/LocationConstants$LISTENER_TYPE;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2, p2}, Lcom/android/server/location/gnss/GnssManagerService;->updateDataListenerBlocklist(Landroid/location/LocationConstants$LISTENER_TYPE;Ljava/util/List;)V

    .line 3570
    :goto_7e
    return-void
.end method

.method public updateThrottlingAllowlist(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3574
    .local p1, "throttlingAllowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateThrottlingAllowlist, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$6;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1800(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper;->updateThrottlingAllowListByNsflp(Ljava/util/List;)V

    .line 3576
    return-void
.end method
