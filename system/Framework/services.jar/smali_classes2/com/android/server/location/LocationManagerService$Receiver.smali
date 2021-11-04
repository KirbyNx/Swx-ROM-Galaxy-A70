.class public final Lcom/android/server/location/LocationManagerService$Receiver;
.super Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Receiver"
.end annotation


# static fields
.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private final mHideFromAppOps:Z

.field protected mIsAllowed:Z

.field private final mKey:Ljava/lang/Object;

.field private final mListener:Landroid/location/ILocationListener;

.field protected mListenerId:Ljava/lang/String;

.field private mOpHighPowerMonitoring:Z

.field private mOpMonitoring:Z

.field private mPendingBroadcasts:I

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mUpdateRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)V
    .registers 10
    .param p1, "this$0"    # Lcom/android/server/location/LocationManagerService;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "identity"    # Lcom/android/server/location/CallerIdentity;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "hideFromAppOps"    # Z

    .line 1416
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1417
    invoke-direct {p0, p4}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;-><init>(Lcom/android/server/location/CallerIdentity;)V

    .line 1401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 1411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mIsAllowed:Z

    .line 1412
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListenerId:Ljava/lang/String;

    .line 1418
    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    .line 1419
    iput-object p3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1420
    if-eqz p2, :cond_1f

    .line 1421
    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    goto :goto_21

    .line 1423
    :cond_1f
    iput-object p3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    .line 1425
    :goto_21
    if-eqz p5, :cond_2a

    invoke-virtual {p5}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1426
    const/4 p5, 0x0

    .line 1428
    :cond_2a
    iput-object p5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    .line 1429
    iput-boolean p6, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mHideFromAppOps:Z

    .line 1431
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1434
    # getter for: Lcom/android/server/location/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$2300(Lcom/android/server/location/LocationManagerService;)Landroid/os/PowerManager;

    move-result-object v1

    const-string v2, "*location*"

    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1435
    if-nez p5, :cond_4d

    .line 1436
    new-instance v0, Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v1, v1, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v2, v2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    move-object p5, v0

    .line 1438
    :cond_4d
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1442
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1445
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListenerId:Ljava/lang/String;

    .line 1446
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;ZLcom/android/server/location/LocationManagerService$1;)V
    .registers 8
    .param p1, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p2, "x1"    # Landroid/location/ILocationListener;
    .param p3, "x2"    # Landroid/app/PendingIntent;
    .param p4, "x3"    # Lcom/android/server/location/CallerIdentity;
    .param p5, "x4"    # Landroid/os/WorkSource;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Lcom/android/server/location/LocationManagerService$1;

    .line 1391
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/LocationManagerService$Receiver;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/location/LocationManagerService$Receiver;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService$Receiver;

    .line 1391
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/location/LocationManagerService$Receiver;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService$Receiver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 1391
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/location/LocationManagerService$Receiver;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService$Receiver;

    .line 1391
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    return-object v0
.end method

.method private callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .registers 14
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1608
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1610
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 1612
    if-eqz p2, :cond_f

    .line 1613
    :try_start_b
    invoke-interface {v1, p1}, Landroid/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_12

    .line 1615
    :cond_f
    invoke-interface {v1, p1}, Landroid/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 1619
    :goto_12
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16

    .line 1622
    goto :goto_48

    .line 1620
    :catch_16
    move-exception v0

    .line 1621
    .local v0, "e":Landroid/os/RemoteException;
    return v2

    .line 1624
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1625
    .local v1, "providerIntent":Landroid/content/Intent;
    const-string/jumbo v3, "providerEnabled"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1627
    :try_start_23
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/location/LocationManagerService;->access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/location/LocationManagerService;->access$2100(Lcom/android/server/location/LocationManagerService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v6, v6, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    .line 1628
    invoke-static {v6}, Lcom/android/server/location/CallerIdentity;->asPermission(I)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    .line 1629
    invoke-static {v6}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1627
    move-object v6, v1

    move-object v7, p0

    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1632
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_47
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_23 .. :try_end_47} :catch_49

    .line 1635
    nop

    .line 1637
    .end local v1    # "providerIntent":Landroid/content/Intent;
    :goto_48
    return v0

    .line 1633
    .restart local v1    # "providerIntent":Landroid/content/Intent;
    :catch_49
    move-exception v0

    .line 1634
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    return v2
.end method

.method private decrementPendingBroadcastsLocked()V
    .registers 4

    .line 1680
    iget v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_22

    .line 1682
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1684
    .local v0, "identity":J
    :try_start_c
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1685
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    .line 1688
    :cond_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1689
    goto :goto_22

    .line 1688
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1689
    throw v2

    .line 1691
    .end local v0    # "identity":J
    :cond_22
    :goto_22
    return-void
.end method

.method private incrementPendingBroadcastsLocked()V
    .registers 6

    .line 1669
    iget v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1671
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1673
    .local v0, "identity":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    .line 1675
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1676
    nop

    .line 1677
    return-void

    .line 1675
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1676
    throw v2
.end method

.method private updateMonitoring(ZZZ)Z
    .registers 6
    .param p1, "allowMonitoring"    # Z
    .param p2, "currentlyMonitoring"    # Z
    .param p3, "highPower"    # Z

    .line 1540
    if-nez p2, :cond_20

    .line 1541
    if-eqz p1, :cond_31

    .line 1542
    if-nez p3, :cond_13

    .line 1543
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2700(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->startLocationMonitoring(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    return v0

    .line 1545
    :cond_13
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2700(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->startHighPowerLocationMonitoring(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    return v0

    .line 1549
    :cond_20
    if-eqz p1, :cond_32

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2700(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_32

    .line 1559
    :cond_31
    return p2

    .line 1550
    :cond_32
    :goto_32
    if-nez p3, :cond_40

    .line 1551
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2700(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->stopLocationMonitoring(Lcom/android/server/location/CallerIdentity;)V

    goto :goto_4b

    .line 1553
    :cond_40
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2700(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->stopHighPowerLocationMonitoring(Lcom/android/server/location/CallerIdentity;)V

    .line 1555
    :goto_4b
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1652
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1653
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    # invokes: Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V
    invoke-static {v1, p0}, Lcom/android/server/location/LocationManagerService;->access$2800(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$Receiver;)V

    .line 1654
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 1655
    monitor-exit v0

    .line 1656
    return-void

    .line 1655
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public callLocationChangedLocked(Landroid/location/Location;)Z
    .registers 12
    .param p1, "location"    # Landroid/location/Location;

    .line 1578
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1580
    :try_start_5
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v2}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 1583
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_11

    .line 1586
    goto :goto_48

    .line 1584
    :catch_11
    move-exception v0

    .line 1585
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 1588
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1589
    .local v0, "locationChanged":Landroid/content/Intent;
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const-string/jumbo v3, "location"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1592
    :try_start_23
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/location/LocationManagerService;->access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService;->access$2100(Lcom/android/server/location/LocationManagerService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    .line 1593
    invoke-static {v5}, Lcom/android/server/location/CallerIdentity;->asPermission(I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    .line 1594
    invoke-static {v5}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1592
    move-object v5, v0

    move-object v6, p0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1597
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_47
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_23 .. :try_end_47} :catch_4a

    .line 1600
    nop

    .line 1602
    .end local v0    # "locationChanged":Landroid/content/Intent;
    :goto_48
    const/4 v0, 0x1

    return v0

    .line 1598
    .restart local v0    # "locationChanged":Landroid/content/Intent;
    :catch_4a
    move-exception v2

    .line 1599
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    return v1
.end method

.method public callRemovedLocked()V
    .registers 2

    .line 1641
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_9

    .line 1643
    :try_start_4
    invoke-interface {v0}, Landroid/location/ILocationListener;->onRemoved()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1646
    goto :goto_9

    .line 1644
    :catch_8
    move-exception v0

    .line 1648
    :cond_9
    :goto_9
    return-void
.end method

.method public clearPendingBroadcastsLocked()V
    .registers 4

    .line 1694
    iget v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v0, :cond_21

    .line 1695
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1697
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1699
    .local v0, "identity":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1700
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    .line 1703
    :cond_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1704
    goto :goto_21

    .line 1703
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1704
    throw v2

    .line 1706
    .end local v0    # "identity":J
    :cond_21
    :goto_21
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 1450
    instance-of v0, p1, Lcom/android/server/location/LocationManagerService$Receiver;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public getListener()Landroid/location/ILocationListener;
    .registers 3

    .line 1571
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_5

    .line 1572
    return-object v0

    .line 1574
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 1455
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isListener()Z
    .registers 2

    .line 1563
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isPendingIntent()Z
    .registers 2

    .line 1567
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .line 1661
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1662
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    .line 1663
    monitor-exit v0

    .line 1664
    return-void

    .line 1663
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1461
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "Reciever["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_1f

    .line 1464
    const-string v1, " listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 1466
    :cond_1f
    const-string v1, " intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    :goto_24
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1469
    .local v2, "p":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    invoke-virtual {v3}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    .end local v2    # "p":Ljava/lang/String;
    goto :goto_2e

    .line 1471
    :cond_4f
    const-string v1, " monitoring location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpMonitoring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1472
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateMonitoring(Z)V
    .registers 12
    .param p1, "allow"    # Z

    .line 1482
    iget-boolean v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mHideFromAppOps:Z

    if-eqz v0, :cond_5

    .line 1483
    return-void

    .line 1486
    :cond_5
    const/4 v0, 0x0

    .line 1487
    .local v0, "requestingLocation":Z
    const/4 v1, 0x0

    .line 1488
    .local v1, "requestingHighPowerLocation":Z
    if-eqz p1, :cond_65

    .line 1491
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 1492
    .local v3, "updateRecord":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object v5, v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    # invokes: Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-static {v4, v5}, Lcom/android/server/location/LocationManagerService;->access$2400(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v4

    .line 1494
    .local v4, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v4, :cond_2a

    .line 1495
    goto :goto_13

    .line 1497
    :cond_2a
    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_49

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1498
    # invokes: Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z
    invoke-static {v5, v3}, Lcom/android/server/location/LocationManagerService;->access$2500(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-nez v5, :cond_49

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1499
    # invokes: Lcom/android/server/location/LocationManagerService;->isSLocationRequest(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z
    invoke-static {v5, v3}, Lcom/android/server/location/LocationManagerService;->access$2600(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 1500
    goto :goto_13

    .line 1503
    :cond_49
    const/4 v0, 0x1

    .line 1504
    invoke-virtual {v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v5

    .line 1505
    .local v5, "properties":Lcom/android/internal/location/ProviderProperties;
    if-eqz v5, :cond_64

    iget v6, v5, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_64

    iget-object v6, v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1507
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    cmp-long v6, v6, v8

    if-gez v6, :cond_64

    .line 1508
    const/4 v1, 0x1

    .line 1509
    goto :goto_65

    .line 1511
    .end local v3    # "updateRecord":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .end local v4    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local v5    # "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_64
    goto :goto_13

    .line 1515
    :cond_65
    :goto_65
    iget-boolean v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpMonitoring:Z

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(ZZZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpMonitoring:Z

    .line 1521
    iget-boolean v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 1522
    .local v2, "wasHighPowerMonitoring":Z
    iget-boolean v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(ZZZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 1526
    if-eq v3, v2, :cond_9a

    .line 1527
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1530
    .local v3, "identity":J
    :try_start_7f
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1531
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/location/LocationManagerService;->access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_91
    .catchall {:try_start_7f .. :try_end_91} :catchall_95

    .line 1533
    .end local v5    # "intent":Landroid/content/Intent;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1534
    goto :goto_9a

    .line 1533
    :catchall_95
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1534
    throw v5

    .line 1536
    .end local v3    # "identity":J
    :cond_9a
    :goto_9a
    return-void
.end method
