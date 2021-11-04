.class Lcom/android/server/ConnectivityService$CaptivePortalImpl;
.super Landroid/net/ICaptivePortal$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalImpl"
.end annotation


# instance fields
.field private final mNetwork:Landroid/net/Network;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .registers 3
    .param p2, "network"    # Landroid/net/Network;

    .line 5163
    iput-object p1, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/ICaptivePortal$Stub;-><init>()V

    .line 5164
    iput-object p2, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    .line 5165
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;Lcom/android/server/ConnectivityService$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/ConnectivityService;
    .param p2, "x1"    # Landroid/net/Network;
    .param p3, "x2"    # Lcom/android/server/ConnectivityService$1;

    .line 5160
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    return-void
.end method

.method private getNetworkMonitorManager(Landroid/net/Network;)Landroid/net/NetworkMonitorManager;
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 5216
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 5217
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return-object v1

    .line 5220
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public appRequest(I)V
    .registers 6
    .param p1, "request"    # I

    .line 5199
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->getNetworkMonitorManager(Landroid/net/Network;)Landroid/net/NetworkMonitorManager;

    move-result-object v0

    .line 5200
    .local v0, "nm":Landroid/net/NetworkMonitorManager;
    if-nez v0, :cond_9

    return-void

    .line 5202
    :cond_9
    const/16 v1, 0x64

    if-ne p1, v1, :cond_4d

    .line 5203
    iget-object v1, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->checkNetworkStackPermission()Z
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;)Z

    .line 5204
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkMonitorManager;->forceReevaluation(I)Z

    .line 5205
    iget-object v1, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2}, Landroid/net/Network;->getNetId()I

    move-result v2

    # invokes: Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 5206
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_4d

    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_4d

    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4d

    iget-object v2, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    .line 5207
    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCurrentWifiConnectionMode()I

    move-result v2

    if-eqz v2, :cond_4d

    .line 5208
    iget-object v2, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->forceReevaluation(I)V

    .line 5211
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_4d
    return-void
.end method

.method public appResponse(I)V
    .registers 8
    .param p1, "response"    # I

    .line 5169
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_11

    .line 5170
    iget-object v3, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->enforceSettingsPermission()V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)V

    .line 5171
    iget-object v3, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/server/ConnectivityService;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 5174
    :cond_11
    iget-object v3, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->getNetworkMonitorManager(Landroid/net/Network;)Landroid/net/NetworkMonitorManager;

    move-result-object v3

    .line 5175
    .local v3, "nm":Landroid/net/NetworkMonitorManager;
    if-nez v3, :cond_1a

    return-void

    .line 5176
    :cond_1a
    invoke-virtual {v3, p1}, Landroid/net/NetworkMonitorManager;->notifyCaptivePortalAppFinished(I)Z

    .line 5178
    iget-object v4, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4, v5}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    .line 5179
    .local v4, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v4, :cond_80

    iget-object v5, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v5, :cond_80

    iget-object v5, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v2, :cond_80

    .line 5180
    iget-object v5, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCurrentWifiConnectionMode()I

    move-result v5

    if-eqz v5, :cond_48

    .line 5181
    iget-object v5, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->notifyCaptivePortalAppFinished(I)V

    .line 5183
    :cond_48
    if-ne p1, v1, :cond_6b

    .line 5184
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->setUserWantAsIs(Z)V

    .line 5185
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->setCurrentWifiConnectionMode(I)V

    .line 5186
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v0

    iget-object v1, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    iget-object v5, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1, v5}, Lcom/android/server/connectivity/WifiNetworkMonitor;->notifyWantAsIsCalled(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    goto :goto_74

    .line 5188
    :cond_6b
    iget-object v1, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->setUserWantAsIs(Z)V

    .line 5190
    :goto_74
    if-ne p1, v2, :cond_80

    .line 5191
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->enforceSettingsPermission()V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)V

    .line 5192
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v0, v4}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5195
    :cond_80
    return-void
.end method

.method public logEvent(ILjava/lang/String;)V
    .registers 4
    .param p1, "eventId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5225
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->enforceSettingsPermission()V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)V

    .line 5227
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    .line 5228
    return-void
.end method
