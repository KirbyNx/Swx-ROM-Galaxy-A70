.class public Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiNetworkMonitorCallbacks"
.end annotation


# instance fields
.field private final mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private final mNetId:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4282
    iput-object p1, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4283
    iget-object v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    iput v0, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->mNetId:I

    .line 4284
    iput-object p2, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4285
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/ConnectivityService;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "x2"    # Lcom/android/server/ConnectivityService$1;

    .line 4278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method


# virtual methods
.method public hideProvisioningNotification(Z)V
    .registers 7
    .param p1, "isNetworkMonitorResult"    # Z

    .line 4361
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCurrentWifiConnectionMode()I

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    .line 4362
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNetworkMonitor is enabled. Ignore NetworkMonitor\'s hideProvisioningNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4363
    return-void

    .line 4365
    :cond_18
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    const/16 v2, 0x2b

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->mNetId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4367
    return-void
.end method

.method public notifyCaptivePortalDataChanged(Landroid/net/CaptivePortalData;Z)V
    .registers 8
    .param p1, "data"    # Landroid/net/CaptivePortalData;
    .param p2, "isNetworkMonitorResult"    # Z

    .line 4326
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCurrentWifiConnectionMode()I

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p2, :cond_18

    .line 4327
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNetworkMonitor is enabled. Ignore NetworkMonitor\'s notifyCaptivePortalDataChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4328
    return-void

    .line 4330
    :cond_18
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    const/16 v2, 0x2e

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->mNetId:I

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4333
    return-void
.end method

.method public notifyNetworkTested(ILjava/lang/String;Z)V
    .registers 6
    .param p1, "testResult"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;
    .param p3, "isNetworkMonitorResult"    # Z

    .line 4289
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Deprecated notifyNetworkTested called: no action taken"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4290
    return-void
.end method

.method public notifyNetworkTestedWithExtras(Landroid/net/NetworkTestResultParcelable;Z)V
    .registers 13
    .param p1, "p"    # Landroid/net/NetworkTestResultParcelable;
    .param p2, "isNetworkMonitorResult"    # Z

    .line 4293
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCurrentWifiConnectionMode()I

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz p2, :cond_2e

    .line 4294
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isWifiNetworkMonitorActivated()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4295
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->notifyNetworkMonitorResult(Landroid/net/NetworkTestResultParcelable;)V

    .line 4296
    return-void

    .line 4298
    :cond_24
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNetworkMonitor is enabled. Ignore NetworkMonitor\'s notifyNetworkTested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4299
    return-void

    .line 4302
    :cond_2e
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    const/16 v1, 0x29

    new-instance v9, Lcom/android/server/ConnectivityService$NetworkTestedResults;

    iget v3, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->mNetId:I

    iget v4, p1, Landroid/net/NetworkTestResultParcelable;->result:I

    iget-wide v5, p1, Landroid/net/NetworkTestResultParcelable;->timestampMillis:J

    iget-object v7, p1, Landroid/net/NetworkTestResultParcelable;->redirectUrl:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/ConnectivityService$NetworkTestedResults;-><init>(IIJLjava/lang/String;Lcom/android/server/ConnectivityService$1;)V

    invoke-virtual {v0, v1, v9}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4306
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4307
    return-void
.end method

.method public notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;Z)V
    .registers 9
    .param p1, "config"    # Landroid/net/PrivateDnsConfigParcel;
    .param p2, "isNetworkMonitorResult"    # Z

    .line 4310
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->mNetId:I

    .line 4312
    invoke-static {p1}, Landroid/net/shared/PrivateDnsConfig;->fromParcel(Landroid/net/PrivateDnsConfigParcel;)Landroid/net/shared/PrivateDnsConfig;

    move-result-object v3

    .line 4310
    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4313
    return-void
.end method

.method public notifyProbeStatusChanged(IIZ)V
    .registers 9
    .param p1, "probesCompleted"    # I
    .param p2, "probesSucceeded"    # I
    .param p3, "isNetworkMonitorResult"    # Z

    .line 4316
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCurrentWifiConnectionMode()I

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p3, :cond_18

    .line 4317
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNetworkMonitor is enabled. Ignore NetworkMonitor\'s notifyProbeStatusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    return-void

    .line 4320
    :cond_18
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    const/16 v2, 0x2d

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->mNetId:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4323
    return-void
.end method

.method public showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isNetworkMonitorResult"    # Z

    .line 4336
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCurrentWifiConnectionMode()I

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p3, :cond_18

    .line 4337
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNetworkMonitor is enabled. Ignore NetworkMonitor\'s showProvisioningNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4338
    return-void

    .line 4340
    :cond_18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4341
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4347
    .local v1, "token":J
    :try_start_24
    iget-object v3, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    .line 4348
    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x4000000

    .line 4347
    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_4e

    .line 4353
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4354
    nop

    .line 4355
    iget-object v4, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v5

    const/16 v6, 0x2b

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->mNetId:I

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4358
    return-void

    .line 4353
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :catchall_4e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4354
    throw v3
.end method
