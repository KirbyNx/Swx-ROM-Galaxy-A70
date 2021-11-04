.class Lcom/android/server/location/NSLocationMonitor$1;
.super Ljava/lang/Object;
.source "NSLocationMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/NSLocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/NSLocationMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/location/NSLocationMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 617
    iput-object p1, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNullBinding is called, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NSLocationMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$800(Lcom/android/server/location/NSLocationMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 684
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MonitorService is connected, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NSLocationMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    # getter for: Lcom/android/server/location/NSLocationMonitor;->MONITOR_SERVICE_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/location/NSLocationMonitor;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 622
    :try_start_1b
    invoke-static {p2}, Landroid/location/INSLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/INSLocationManager;

    move-result-object v1

    # setter for: Lcom/android/server/location/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;
    invoke-static {v1}, Lcom/android/server/location/NSLocationMonitor;->access$302(Landroid/location/INSLocationManager;)Landroid/location/INSLocationManager;
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_a9

    .line 625
    :try_start_22
    # getter for: Lcom/android/server/location/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;
    invoke-static {}, Lcom/android/server/location/NSLocationMonitor;->access$300()Landroid/location/INSLocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mCallback:Landroid/location/INSLocationCallback;
    invoke-static {v2}, Lcom/android/server/location/NSLocationMonitor;->access$400(Lcom/android/server/location/NSLocationMonitor;)Landroid/location/INSLocationCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/location/INSLocationManager;->setCallback(Landroid/location/INSLocationCallback;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2f} :catch_30
    .catchall {:try_start_22 .. :try_end_2f} :catchall_a9

    .line 628
    goto :goto_38

    .line 626
    :catch_30
    move-exception v1

    .line 627
    .local v1, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v2, "NSLocationMonitor"

    const-string v3, "Failed to set callback"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_38
    iget-object v1, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # invokes: Lcom/android/server/location/NSLocationMonitor;->sendConnectionInfo()V
    invoke-static {v1}, Lcom/android/server/location/NSLocationMonitor;->access$500(Lcom/android/server/location/NSLocationMonitor;)V

    .line 630
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_a9

    .line 633
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mNotificationListener:Landroid/service/notification/NotificationListenerService;
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$600(Lcom/android/server/location/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;

    move-result-object v1

    monitor-enter v1

    .line 634
    :try_start_45
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mRegisteredNotificationListener:Z
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$700(Lcom/android/server/location/NSLocationMonitor;)Z

    move-result v0
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_a6

    if-nez v0, :cond_9f

    .line 636
    :try_start_4d
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mNotificationListener:Landroid/service/notification/NotificationListenerService;
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$600(Lcom/android/server/location/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/location/NSLocationMonitor;->access$800(Lcom/android/server/location/NSLocationMonitor;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/location/NSLocationMonitor;->access$800(Lcom/android/server/location/NSLocationMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    .line 637
    # getter for: Lcom/android/server/location/NSLocationMonitor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/location/NSLocationMonitor;->access$800(Lcom/android/server/location/NSLocationMonitor;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 636
    invoke-virtual {v0, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 638
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/location/NSLocationMonitor;->mRegisteredNotificationListener:Z
    invoke-static {v0, v2}, Lcom/android/server/location/NSLocationMonitor;->access$702(Lcom/android/server/location/NSLocationMonitor;Z)Z
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_83} :catch_84
    .catchall {:try_start_4d .. :try_end_83} :catchall_a6

    .line 641
    goto :goto_9f

    .line 639
    :catch_84
    move-exception v0

    .line 640
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_85
    const-string v2, "NSLocationMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register notification listener, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9f
    :goto_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_85 .. :try_end_a0} :catchall_a6

    .line 646
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # invokes: Lcom/android/server/location/NSLocationMonitor;->initNetworkStateListener()V
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$900(Lcom/android/server/location/NSLocationMonitor;)V

    .line 647
    return-void

    .line 643
    :catchall_a6
    move-exception v0

    :try_start_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v0

    .line 630
    :catchall_a9
    move-exception v1

    :try_start_aa
    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MonitorService has unexpectedly disconnected, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NSLocationMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    # getter for: Lcom/android/server/location/NSLocationMonitor;->MONITOR_SERVICE_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/location/NSLocationMonitor;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 654
    const/4 v1, 0x0

    :try_start_1c
    # setter for: Lcom/android/server/location/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;
    invoke-static {v1}, Lcom/android/server/location/NSLocationMonitor;->access$302(Landroid/location/INSLocationManager;)Landroid/location/INSLocationManager;

    .line 655
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_89

    .line 656
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mServiceCallback:Lcom/android/server/location/NSLocationMonitor$ServiceCallback;
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$1000(Lcom/android/server/location/NSLocationMonitor;)Lcom/android/server/location/NSLocationMonitor$ServiceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/NSLocationMonitor$ServiceCallback;->onServiceDisconnected()V

    .line 657
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$1100(Lcom/android/server/location/NSLocationMonitor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/NSLocationMonitor;->noteGpsOperation(II)V

    .line 663
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mNotificationListener:Landroid/service/notification/NotificationListenerService;
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$600(Lcom/android/server/location/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;

    move-result-object v1

    monitor-enter v1

    .line 664
    :try_start_48
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mRegisteredNotificationListener:Z
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$700(Lcom/android/server/location/NSLocationMonitor;)Z

    move-result v0
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_86

    if-eqz v0, :cond_7a

    .line 666
    :try_start_50
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mNotificationListener:Landroid/service/notification/NotificationListenerService;
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$600(Lcom/android/server/location/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    .line 667
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # setter for: Lcom/android/server/location/NSLocationMonitor;->mRegisteredNotificationListener:Z
    invoke-static {v0, v2}, Lcom/android/server/location/NSLocationMonitor;->access$702(Lcom/android/server/location/NSLocationMonitor;Z)Z
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_5e} :catch_5f
    .catchall {:try_start_50 .. :try_end_5e} :catchall_86

    .line 670
    goto :goto_7a

    .line 668
    :catch_5f
    move-exception v0

    .line 669
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_60
    const-string v3, "NSLocationMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unregister notification listener, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7a
    :goto_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_86

    .line 675
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # invokes: Lcom/android/server/location/NSLocationMonitor;->deinitNetworkStateListener()V
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$1200(Lcom/android/server/location/NSLocationMonitor;)V

    .line 677
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$1;->this$0:Lcom/android/server/location/NSLocationMonitor;

    invoke-virtual {v0, v2}, Lcom/android/server/location/NSLocationMonitor;->setFeatureDeviceActivity(Z)Z

    .line 678
    return-void

    .line 672
    :catchall_86
    move-exception v0

    :try_start_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v0

    .line 655
    :catchall_89
    move-exception v1

    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v1
.end method
