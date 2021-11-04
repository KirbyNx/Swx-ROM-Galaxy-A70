.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 5453
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 5454
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5455
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 5459
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1dc

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1d4

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1be

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1b8

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1ae

    const/16 v1, 0x40c

    if-eq v0, v1, :cond_1a2

    const/16 v1, 0x40d

    if-eq v0, v1, :cond_192

    packed-switch v0, :pswitch_data_1e6

    packed-switch v0, :pswitch_data_20a

    packed-switch v0, :pswitch_data_21a

    packed-switch v0, :pswitch_data_226

    goto/16 :goto_1e4

    .line 5574
    :pswitch_2c
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 5575
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 5576
    .local v1, "slot":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 5577
    .local v2, "reason":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 5578
    goto/16 :goto_1e4

    .line 5569
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v1    # "slot":I
    .end local v2    # "reason":I
    :pswitch_45
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    .line 5570
    goto/16 :goto_1e4

    .line 5622
    :pswitch_50
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5623
    .local v0, "prefix":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 5624
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->recordBlockHistory(ILjava/lang/String;)V
    invoke-static {v2, v1, v0}, Lcom/android/server/ConnectivityService;->access$7800(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    .line 5625
    goto/16 :goto_1e4

    .line 5618
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "uid":I
    :pswitch_5d
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->removeDiaFile()V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$7700(Lcom/android/server/ConnectivityService;)V

    .line 5619
    goto/16 :goto_1e4

    .line 5614
    :pswitch_64
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->saveDiaFile()V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$7600(Lcom/android/server/ConnectivityService;)V

    .line 5615
    goto/16 :goto_1e4

    .line 5483
    :pswitch_6b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 5484
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "newProxy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/ProxyInfo;

    .line 5485
    .local v1, "newProxy":Landroid/net/ProxyInfo;
    const-string/jumbo v2, "oldProxy"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/ProxyInfo;

    .line 5488
    .local v2, "oldProxy":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_98

    iget-object v3, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v3, v3, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v3}, Lcom/android/server/connectivity/ProxyTracker;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 5489
    iget-object v3, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v3, v3, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v3, v1}, Lcom/android/server/connectivity/ProxyTracker;->updateGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 5492
    :cond_98
    if-eqz v2, :cond_1e4

    iget-object v3, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v3, v3, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v3}, Lcom/android/server/connectivity/ProxyTracker;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e4

    .line 5499
    iget-object v3, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleProxyHasChanged(Landroid/net/ProxyInfo;)V
    invoke-static {v3, v1}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto/16 :goto_1e4

    .line 5607
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "newProxy":Landroid/net/ProxyInfo;
    .end local v2    # "oldProxy":Landroid/net/ProxyInfo;
    :pswitch_af
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->toBool(I)Z
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2100(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->handleRestrictBackgroundChanged(Z)V

    .line 5608
    goto/16 :goto_1e4

    .line 5604
    :pswitch_bc
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleUidRulesChanged(II)V

    .line 5605
    goto/16 :goto_1e4

    .line 5600
    :pswitch_c7
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    # invokes: Lcom/android/server/ConnectivityService;->handlePrivateDnsValidationUpdate(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$7400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    .line 5602
    goto/16 :goto_1e4

    .line 5597
    :pswitch_d2
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handlePrivateDnsSettingsChanged()V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$7300(Lcom/android/server/ConnectivityService;)V

    .line 5598
    goto/16 :goto_1e4

    .line 5585
    :pswitch_d9
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/ConnectivityService;->toBool(I)Z
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2100(I)Z

    move-result v3

    # invokes: Lcom/android/server/ConnectivityService;->handleReportNetworkConnectivity(Landroid/net/Network;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$7000(Lcom/android/server/ConnectivityService;Landroid/net/Network;IZ)V

    .line 5586
    goto/16 :goto_1e4

    .line 5556
    :pswitch_ec
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetAvoidUnvalidated(Landroid/net/Network;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$6800(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    .line 5557
    goto/16 :goto_1e4

    .line 5564
    :pswitch_f7
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleConfigureAlwaysOnNetworks()V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)V

    .line 5565
    goto/16 :goto_1e4

    .line 5560
    :pswitch_fe
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    # invokes: Lcom/android/server/ConnectivityService;->handlePromptUnvalidated(Landroid/net/Network;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    .line 5561
    goto/16 :goto_1e4

    .line 5545
    :pswitch_109
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    .line 5546
    .local v0, "network":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->toBool(I)Z
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2100(I)Z

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/ConnectivityService;->toBool(I)Z
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2100(I)Z

    move-result v3

    # invokes: Lcom/android/server/ConnectivityService;->handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService;->access$6600(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    .line 5547
    goto/16 :goto_1e4

    .line 5536
    .end local v0    # "network":Landroid/net/Network;
    :pswitch_120
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    .line 5537
    goto/16 :goto_1e4

    .line 5527
    :pswitch_12d
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    .line 5528
    goto/16 :goto_1e4

    .line 5581
    :pswitch_134
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->start()V

    .line 5582
    goto/16 :goto_1e4

    .line 5511
    :pswitch_13d
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    # invokes: Lcom/android/server/ConnectivityService;->handleUnregisterNetworkProvider(Landroid/os/Messenger;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5900(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    .line 5512
    goto/16 :goto_1e4

    .line 5540
    :pswitch_148
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkRequest;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$6500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;IZ)V

    .line 5542
    goto/16 :goto_1e4

    .line 5531
    :pswitch_156
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 5532
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleTimedOutNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 5533
    goto/16 :goto_1e4

    .line 5522
    .end local v0    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :pswitch_161
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 5523
    goto/16 :goto_1e4

    .line 5515
    :pswitch_16c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 5517
    .local v0, "arg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;>;"
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/net/INetworkMonitor;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V

    .line 5518
    goto :goto_1e4

    .line 5507
    .end local v0    # "arg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;>;"
    :pswitch_17e
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkProviderInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkProvider(Lcom/android/server/ConnectivityService$NetworkProviderInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkProviderInfo;)V

    .line 5508
    goto :goto_1e4

    .line 5476
    :pswitch_188
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ProxyInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleProxyHasChanged(Landroid/net/ProxyInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    .line 5479
    goto :goto_1e4

    .line 5593
    :cond_192
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->toBool(I)Z
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2100(I)Z

    move-result v2

    # invokes: Lcom/android/server/ConnectivityService;->handleSetWcmAcceptUnvalidated(Landroid/net/Network;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$7200(Lcom/android/server/ConnectivityService;Landroid/net/Network;Z)V

    .line 5594
    goto :goto_1e4

    .line 5589
    :cond_1a2
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handleReportNetworkConnectivityForResult(Landroid/net/Network;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$7100(Lcom/android/server/ConnectivityService;Landroid/net/Network;I)V

    .line 5590
    goto :goto_1e4

    .line 5631
    :cond_1ae
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$7900(Lcom/android/server/ConnectivityService;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->systemReady()V

    goto :goto_1e4

    .line 5610
    :cond_1b8
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateMptcpDefaultRoute()V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$7500(Lcom/android/server/ConnectivityService;)V

    .line 5611
    goto :goto_1e4

    .line 5550
    :cond_1be
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    .line 5551
    .local v0, "network":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->toBool(I)Z
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2100(I)Z

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 5552
    # invokes: Lcom/android/server/ConnectivityService;->toBool(I)Z
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2100(I)Z

    move-result v3

    .line 5551
    # invokes: Lcom/android/server/ConnectivityService;->handleSetAcceptPartialConnectivity(Landroid/net/Network;ZZ)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService;->access$6700(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    .line 5553
    goto :goto_1e4

    .line 5466
    .end local v0    # "network":Landroid/net/Network;
    :cond_1d4
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/ProxyTracker;->loadDeprecatedGlobalHttpProxy()Z

    .line 5467
    goto :goto_1e4

    .line 5462
    :cond_1dc
    :pswitch_1dc
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/ConnectivityService;->handleReleaseNetworkTransitionWakelock(I)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;I)V

    .line 5463
    nop

    .line 5638
    :cond_1e4
    :goto_1e4
    return-void

    nop

    :pswitch_data_1e6
    .packed-switch 0x10
        :pswitch_188
        :pswitch_17e
        :pswitch_16c
        :pswitch_161
        :pswitch_156
        :pswitch_161
        :pswitch_148
        :pswitch_13d
        :pswitch_1dc
        :pswitch_134
        :pswitch_12d
        :pswitch_120
        :pswitch_109
        :pswitch_fe
        :pswitch_f7
        :pswitch_12d
    .end packed-switch

    :pswitch_data_20a
    .packed-switch 0x23
        :pswitch_ec
        :pswitch_d9
        :pswitch_d2
        :pswitch_c7
        :pswitch_bc
        :pswitch_af
    .end packed-switch

    :pswitch_data_21a
    .packed-switch 0x64
        :pswitch_6b
        :pswitch_64
        :pswitch_5d
        :pswitch_50
    .end packed-switch

    :pswitch_data_226
    .packed-switch 0x8100b
        :pswitch_45
        :pswitch_2c
    .end packed-switch
.end method
