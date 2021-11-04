.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3716
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 3717
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3718
    return-void
.end method

.method private getCaptivePortalMode()I
    .registers 4

    .line 4084
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "captive_portal_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleNetworkTested(Lcom/android/server/connectivity/NetworkAgentInfo;ILjava/lang/String;)V
    .registers 16
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "testResult"    # I
    .param p3, "redirectUrl"    # Ljava/lang/String;

    .line 3923
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    .line 3924
    .local v0, "wasPartial":Z
    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    iput-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    .line 3927
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v3, :cond_25

    .line 3928
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    if-eqz v1, :cond_25

    .line 3929
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "testResult has NETWORK_VALIDATION_RESULT_PARTIAL. We consider the partial to be invalid"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    iput-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    .line 3935
    :cond_25
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    if-eq v0, v1, :cond_2b

    move v1, v3

    goto :goto_2c

    :cond_2b
    move v1, v2

    .line 3938
    .local v1, "partialConnectivityChanged":Z
    :goto_2c
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_32

    move v4, v3

    goto :goto_33

    :cond_32
    move v4, v2

    .line 3939
    .local v4, "valid":Z
    :goto_33
    iget-boolean v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 3940
    .local v5, "wasValidated":Z
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v6, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v6

    .line 3945
    .local v6, "wasDefault":Z
    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v3, :cond_1ba

    .line 3946
    iget-object v7, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getUserWantAsIs()Z

    move-result v7

    if-eqz v7, :cond_57

    .line 3947
    if-nez v4, :cond_57

    .line 3948
    const-string v2, "User want the CaptivePortal network as is. Ignore reportNetworkConnectivity for Wi-Fi network"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$100(Ljava/lang/String;)V

    .line 3949
    return-void

    .line 3952
    :cond_57
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v3

    .line 3953
    .local v7, "captivePortalDetected":Z
    if-nez v4, :cond_94

    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v8, v8, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    if-eqz v8, :cond_68

    iget-boolean v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    if-nez v8, :cond_94

    :cond_68
    if-nez v7, :cond_94

    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 3954
    # invokes: Lcom/android/server/ConnectivityService;->skipValidationCapabilitiesUpdate(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    invoke-static {v8, p1}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 3955
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->createNetworkResultHolder(Lcom/android/server/connectivity/NetworkAgentInfo;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkTestedResults;
    invoke-static {v2, p1, p2, p3}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkTestedResults;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/ConnectivityService;->mNetworkResultHolder:Lcom/android/server/ConnectivityService$NetworkTestedResults;

    .line 3956
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skipValidationCapabilitiesUpdate - Ignored EVENT_NETWORK_TESTED result is not valid : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    return-void

    .line 3959
    :cond_94
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v8

    if-nez v8, :cond_b3

    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    const-string/jumbo v10, "sem_wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/wifi/SemWifiManager;

    # setter for: Lcom/android/server/ConnectivityService;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;
    invoke-static {v8, v9}, Lcom/android/server/ConnectivityService;->access$3502(Lcom/android/server/ConnectivityService;Lcom/samsung/android/wifi/SemWifiManager;)Lcom/samsung/android/wifi/SemWifiManager;

    .line 3961
    :cond_b3
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mIsMultiNetwork:Z
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;)Z

    move-result v8

    if-nez v8, :cond_d7

    if-nez v4, :cond_d7

    if-eqz v5, :cond_d7

    if-nez v7, :cond_d7

    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mIsRoamNetwork:Z
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;)Z

    move-result v8

    if-nez v8, :cond_d7

    .line 3962
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v8

    const-string v9, "VB enabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # setter for: Lcom/android/server/ConnectivityService;->mValidationBlock:Z
    invoke-static {v8, v3}, Lcom/android/server/ConnectivityService;->access$3902(Lcom/android/server/ConnectivityService;Z)Z

    .line 3965
    :cond_d7
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mValidationBlock:Z
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Z

    move-result v8

    if-eqz v8, :cond_122

    .line 3966
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mIsRoamNetwork:Z
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;)Z

    move-result v8

    if-nez v8, :cond_11d

    .line 3967
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mIsWCMQCRequsted:Z
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)Z

    move-result v8

    if-eqz v8, :cond_f9

    .line 3968
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/samsung/android/wifi/SemWifiManager;->sendValidationCheckModeResult(Z)V

    goto :goto_104

    .line 3970
    :cond_f9
    if-eqz v4, :cond_104

    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/wifi/SemWifiManager;->setValidationCheckStart()V

    .line 3972
    :cond_104
    :goto_104
    if-eqz v4, :cond_122

    .line 3973
    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mIsWCMQCRequsted:Z
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)Z

    move-result v3

    if-eqz v3, :cond_113

    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # setter for: Lcom/android/server/ConnectivityService;->mIsWCMQCRequsted:Z
    invoke-static {v3, v2}, Lcom/android/server/ConnectivityService;->access$4002(Lcom/android/server/ConnectivityService;Z)Z

    .line 3974
    :cond_113
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VB works"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3975
    return-void

    .line 3978
    :cond_11d
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # setter for: Lcom/android/server/ConnectivityService;->mValidationBlock:Z
    invoke-static {v8, v2}, Lcom/android/server/ConnectivityService;->access$3902(Lcom/android/server/ConnectivityService;Z)Z

    .line 3983
    :cond_122
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mIsWCMQCRequsted:Z
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)Z

    move-result v8

    const-string/jumbo v9, "mIsWCMQCRequsted/valid/captivePortalDetected: "

    const-string v10, " / "

    if-eqz v8, :cond_166

    .line 3984
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 3985
    # getter for: Lcom/android/server/ConnectivityService;->mIsWCMQCRequsted:Z
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)Z

    move-result v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3984
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3986
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # setter for: Lcom/android/server/ConnectivityService;->mIsWCMQCRequsted:Z
    invoke-static {v8, v2}, Lcom/android/server/ConnectivityService;->access$4002(Lcom/android/server/ConnectivityService;Z)Z

    .line 3987
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v8

    invoke-virtual {v8, v4, v3, v7}, Lcom/samsung/android/wifi/SemWifiManager;->sendQCResultToWCM(ZZZ)V

    goto :goto_1b5

    .line 3989
    :cond_166
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 3990
    # getter for: Lcom/android/server/ConnectivityService;->mIsWCMQCRequsted:Z
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)Z

    move-result v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3989
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v8

    invoke-virtual {v8, v4, v2, v7}, Lcom/samsung/android/wifi/SemWifiManager;->sendQCResultToWCM(ZZZ)V

    .line 3992
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mIsRoamNetwork:Z
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;)Z

    move-result v8

    if-eqz v8, :cond_1b5

    if-eqz v4, :cond_1a3

    if-eqz v5, :cond_1b5

    :cond_1a3
    iget-boolean v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-nez v8, :cond_1b5

    .line 3993
    const-string v2, "RoamNetwork. Ignore Network tested result for Wi-Fi network"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$100(Ljava/lang/String;)V

    .line 3994
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->createNetworkResultHolder(Lcom/android/server/connectivity/NetworkAgentInfo;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkTestedResults;
    invoke-static {v2, p1, p2, p3}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkTestedResults;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/ConnectivityService;->mNetworkResultHolder:Lcom/android/server/ConnectivityService$NetworkTestedResults;

    .line 3995
    return-void

    .line 3998
    :cond_1b5
    :goto_1b5
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/ConnectivityService;->mNetworkResultHolder:Lcom/android/server/ConnectivityService$NetworkTestedResults;

    .line 4004
    .end local v7    # "captivePortalDetected":Z
    :cond_1ba
    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v3, :cond_20e

    .line 4005
    if-eqz v4, :cond_1de

    .line 4006
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.action.NETWORK_VALIDATED_INTERNAL"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4007
    .local v7, "intent":Landroid/content/Intent;
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "sending mdm intent to notify about network validated state"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4010
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_1de
    if-eqz p3, :cond_20e

    .line 4011
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.action.CAPTIVE_PORTAL_DETECTED_INTERNAL"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4012
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v8, "com.samsung.android.knox.intent.extra.EXTRA_CAPTIVE_PORTAL_URL_INTERNAL"

    invoke-virtual {v7, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4013
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sending mdm captive intent with url "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4021
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_20e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_226

    .line 4022
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " with redirect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_228

    .line 4023
    :cond_226
    const-string v7, ""

    :goto_228
    nop

    .line 4024
    .local v7, "logMsg":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " validation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_240

    const-string/jumbo v9, "passed"

    goto :goto_242

    :cond_240
    const-string v9, "failed"

    :goto_242
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$100(Ljava/lang/String;)V

    .line 4026
    .end local v7    # "logMsg":Ljava/lang/String;
    iget-boolean v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eq v4, v7, :cond_2cf

    .line 4027
    if-eqz v6, :cond_26a

    .line 4028
    iget-object v7, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$Dependencies;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/ConnectivityService$Dependencies;->getMetricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    move-result-object v7

    .line 4029
    invoke-interface {v7}, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;->defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;

    move-result-object v7

    .line 4030
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 4029
    invoke-virtual {v7, v8, v9, v4}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkValidity(JZ)V

    .line 4032
    :cond_26a
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v7

    .line 4033
    .local v7, "oldScore":I
    iput-boolean v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 4034
    iget-boolean v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    or-int/2addr v8, v4

    iput-boolean v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    .line 4035
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    # invokes: Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    invoke-static {v8, v7, p1, v9}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 4037
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v8

    if-eq v7, v8, :cond_287

    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v8, p1}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4038
    :cond_287
    if-eqz v4, :cond_2dd

    .line 4039
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleFreshlyValidatedNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v8, p1}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4042
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v9, v9, Landroid/net/Network;->netId:I

    sget-object v10, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 4044
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v9, v9, Landroid/net/Network;->netId:I

    sget-object v10, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 4046
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v9, v9, Landroid/net/Network;->netId:I

    sget-object v10, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 4048
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v9, v9, Landroid/net/Network;->netId:I

    sget-object v10, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PRIVATE_DNS_BROKEN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 4053
    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean v2, v8, Landroid/net/NetworkAgentConfig;->hasShownBroken:Z

    goto :goto_2dd

    .line 4055
    .end local v7    # "oldScore":I
    :cond_2cf
    if-eqz v1, :cond_2dd

    .line 4056
    iget-object v7, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v8

    iget-object v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    # invokes: Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    invoke-static {v7, v8, p1, v9}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto :goto_2de

    .line 4055
    :cond_2dd
    :goto_2dd
    nop

    .line 4058
    :goto_2de
    iget-object v7, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v7, p1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4060
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 4061
    .local v7, "redirectUrlBundle":Landroid/os/Bundle;
    sget-object v8, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    invoke-virtual {v7, v8, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4063
    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v9, 0x81007

    .line 4065
    if-eqz v4, :cond_2f5

    goto :goto_2f6

    :cond_2f5
    const/4 v3, 0x2

    .line 4063
    :goto_2f6
    invoke-virtual {v8, v9, v3, v2, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 4072
    if-nez v0, :cond_313

    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    if-eqz v2, :cond_313

    .line 4074
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v2

    const/16 v3, 0x1d

    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v2, v3, v8}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4075
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    # invokes: Lcom/android/server/ConnectivityService;->handlePromptUnvalidated(Landroid/net/Network;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    .line 4078
    :cond_313
    if-eqz v5, :cond_31e

    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-nez v2, :cond_31e

    .line 4079
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleNetworkUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v2, p1}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4081
    :cond_31e
    return-void
.end method

.method private maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 3721
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 3723
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 3734
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleAsyncChannelDisconnected(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_29

    .line 3729
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3730
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_29

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_29

    .line 3725
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_23
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleAsyncChannelHalfConnect(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    .line 3726
    nop

    .line 3738
    :cond_29
    :goto_29
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x11000
        :pswitch_23
        :pswitch_5
        :pswitch_5
        :pswitch_d
        :pswitch_7
    .end packed-switch
.end method

.method private maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 4090
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_8

    .line 4092
    const/4 v0, 0x0

    return v0

    .line 4094
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4095
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    invoke-static {v1, v0, v2}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4096
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4101
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method private maybeHandleNetworkAgentMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 3742
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3743
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2c

    .line 3744
    # getter for: Lcom/android/server/ConnectivityService;->VDBG:Z
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 3745
    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/ConnectivityService;->eventName(I)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1500(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%s from unknown NetworkAgent"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$100(Ljava/lang/String;)V

    .line 3747
    :cond_2b
    return-void

    .line 3750
    :cond_2c
    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x81008

    if-eq v3, v4, :cond_ad

    const v1, 0x8100d

    if-eq v3, v1, :cond_a3

    packed-switch v3, :pswitch_data_e2

    goto/16 :goto_e0

    .line 3779
    :pswitch_3d
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    invoke-static {v1, v0, v2}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3780
    goto/16 :goto_e0

    .line 3768
    :pswitch_46
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    .line 3769
    .local v1, "newLp":Landroid/net/LinkProperties;
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->processLinkPropertiesFromAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    invoke-static {v2, v0, v1}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 3770
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 3771
    goto/16 :goto_e0

    .line 3752
    .end local v1    # "newLp":Landroid/net/LinkProperties;
    :pswitch_56
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 3753
    .local v1, "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->hasConnectivityManagedCapability()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 3754
    # getter for: Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has CS-managed capability."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    :cond_7d
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 3761
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object v1, v2

    .line 3762
    iget v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->creatorUid:I

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->restrictCapabilitesForTestNetwork(I)V

    .line 3764
    :cond_8f
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    # invokes: Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 3765
    goto :goto_e0

    .line 3774
    .end local v1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :pswitch_99
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 3775
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    invoke-static {v2, v0, v1}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    .line 3776
    goto :goto_e0

    .line 3799
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_a3
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleEventSocketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V

    goto :goto_e0

    .line 3783
    :cond_ad
    iget-boolean v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v3, :cond_b6

    .line 3784
    const-string v3, "ERROR: cannot call explicitlySelected on already-connected network"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 3786
    :cond_b6
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->toBool(I)Z
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2100(I)Z

    move-result v4

    iput-boolean v4, v3, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    .line 3787
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->toBool(I)Z
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2100(I)Z

    move-result v4

    if-eqz v4, :cond_d3

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/ConnectivityService;->toBool(I)Z
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2100(I)Z

    move-result v4

    if-eqz v4, :cond_d3

    move v1, v2

    :cond_d3
    iput-boolean v1, v3, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    .line 3795
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/ConnectivityService;->toBool(I)Z
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2100(I)Z

    move-result v2

    iput-boolean v2, v1, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    .line 3796
    nop

    .line 3803
    :goto_e0
    return-void

    nop

    :pswitch_data_e2
    .packed-switch 0x81001
        :pswitch_99
        :pswitch_56
        :pswitch_46
        :pswitch_3d
    .end packed-switch
.end method

.method private maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z
    .registers 19
    .param p1, "msg"    # Landroid/os/Message;

    .line 3806
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_1b0

    .line 3808
    :pswitch_b
    return v4

    .line 3912
    :pswitch_c
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v4, v1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v2, v4}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 3913
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v2, :cond_18

    goto/16 :goto_1ae

    .line 3914
    :cond_18
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/CaptivePortalData;

    # invokes: Lcom/android/server/ConnectivityService;->handleCaptivePortalDataUpdate(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/CaptivePortalData;)V
    invoke-static {v4, v2, v5}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/CaptivePortalData;)V

    .line 3915
    goto/16 :goto_1ae

    .line 3810
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_23
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 3811
    .local v2, "netId":Ljava/lang/Integer;
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    # invokes: Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 3812
    .local v5, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v5, :cond_35

    .line 3813
    goto/16 :goto_1ae

    .line 3815
    :cond_35
    iget v6, v1, Landroid/os/Message;->arg1:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_3d

    move v6, v3

    goto :goto_3e

    :cond_3d
    move v6, v4

    .line 3817
    .local v6, "probePrivateDnsCompleted":Z
    :goto_3e
    iget v7, v1, Landroid/os/Message;->arg2:I

    and-int/lit8 v7, v7, 0x40

    if-nez v7, :cond_46

    move v7, v3

    goto :goto_47

    :cond_46
    move v7, v4

    .line 3819
    .local v7, "privateDnsBroken":Z
    :goto_47
    if-eqz v6, :cond_76

    .line 3820
    iget-object v4, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result v4

    if-eq v4, v7, :cond_61

    .line 3821
    iget-object v4, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4, v7}, Landroid/net/NetworkCapabilities;->setPrivateDnsBroken(Z)V

    .line 3822
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v4

    .line 3823
    .local v4, "oldScore":I
    iget-object v8, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    # invokes: Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    invoke-static {v8, v4, v5, v9}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 3827
    .end local v4    # "oldScore":I
    :cond_61
    if-eqz v7, :cond_70

    iget-object v4, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v4, v4, Landroid/net/NetworkAgentConfig;->hasShownBroken:Z

    if-nez v4, :cond_70

    .line 3828
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    sget-object v8, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PRIVATE_DNS_BROKEN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    # invokes: Lcom/android/server/ConnectivityService;->showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    invoke-static {v4, v5, v8}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 3830
    :cond_70
    iget-object v4, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean v7, v4, Landroid/net/NetworkAgentConfig;->hasShownBroken:Z

    goto/16 :goto_1ae

    .line 3831
    :cond_76
    iget-object v8, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v8}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result v8

    if-eqz v8, :cond_1ae

    .line 3837
    iget-object v8, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v8, v4}, Landroid/net/NetworkCapabilities;->setPrivateDnsBroken(Z)V

    .line 3838
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v8

    .line 3839
    .local v8, "oldScore":I
    iget-object v9, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    # invokes: Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    invoke-static {v9, v8, v5, v10}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 3840
    iget-object v9, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean v4, v9, Landroid/net/NetworkAgentConfig;->hasShownBroken:Z

    .line 3841
    .end local v8    # "oldScore":I
    goto/16 :goto_1ae

    .line 3855
    .end local v2    # "netId":Ljava/lang/Integer;
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v6    # "probePrivateDnsCompleted":Z
    .end local v7    # "privateDnsBroken":Z
    :pswitch_94
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 3856
    .local v2, "netId":I
    iget v4, v1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->toBool(I)Z
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2100(I)Z

    move-result v4

    .line 3857
    .local v4, "visible":Z
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v5, v2}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 3859
    .restart local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v5, :cond_11b

    iget-boolean v6, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eq v4, v6, :cond_11b

    .line 3860
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v6

    .line 3861
    .local v6, "oldScore":I
    iput-boolean v4, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    .line 3862
    iget-boolean v7, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    or-int/2addr v7, v4

    iput-boolean v7, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    .line 3863
    iget-object v7, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v7, :cond_e2

    iget-object v7, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v3, :cond_e2

    .line 3864
    iget-object v7, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v7, v7, Lcom/android/server/ConnectivityService;->mNetworkResultHolder:Lcom/android/server/ConnectivityService$NetworkTestedResults;

    if-eqz v7, :cond_e2

    iget-boolean v7, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eqz v7, :cond_e2

    .line 3865
    iget-object v7, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v7

    const/16 v8, 0x29

    iget-object v9, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, v9, Lcom/android/server/ConnectivityService;->mNetworkResultHolder:Lcom/android/server/ConnectivityService$NetworkTestedResults;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 3866
    .local v7, "message":Landroid/os/Message;
    iget-object v8, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3869
    .end local v7    # "message":Landroid/os/Message;
    :cond_e2
    iget-boolean v7, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eqz v7, :cond_114

    const/4 v7, 0x2

    .line 3870
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->getCaptivePortalMode()I

    move-result v8

    if-ne v7, v8, :cond_114

    .line 3871
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Avoiding captive portal network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$100(Ljava/lang/String;)V

    .line 3872
    iget-object v7, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v8, 0x8100f

    invoke-virtual {v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3874
    iget-object v7, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v7, v5}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3875
    goto/16 :goto_1ae

    .line 3877
    :cond_114
    iget-object v7, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    # invokes: Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    invoke-static {v7, v6, v5, v8}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 3879
    .end local v6    # "oldScore":I
    :cond_11b
    if-nez v4, :cond_135

    .line 3882
    iget-object v6, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v6

    sget-object v7, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v6, v2, v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 3883
    iget-object v6, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v6

    sget-object v7, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v6, v2, v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    goto/16 :goto_1ae

    .line 3885
    :cond_135
    if-nez v5, :cond_13e

    .line 3886
    const-string v6, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 3887
    goto/16 :goto_1ae

    .line 3889
    :cond_13e
    iget-object v6, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v6, v6, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    if-nez v6, :cond_1ae

    .line 3890
    iget-object v6, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v3, :cond_159

    iget-object v6, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiNetworkMonitor:Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/WifiNetworkMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isSetupWizardSecurityBlockActivated()Z

    move-result v6

    if-eqz v6, :cond_159

    .line 3895
    goto :goto_1ae

    .line 3897
    :cond_159
    iget-object v6, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v10

    sget-object v12, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const/4 v14, 0x0

    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v15, v6

    check-cast v15, Landroid/app/PendingIntent;

    iget-object v6, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v6, v6, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    move v11, v2

    move-object v13, v5

    move/from16 v16, v6

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    goto :goto_1ae

    .line 3905
    .end local v2    # "netId":I
    .end local v4    # "visible":Z
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_173
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v4, v1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v2, v4}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 3906
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v2, :cond_17e

    goto :goto_1ae

    .line 3908
    :cond_17e
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/shared/PrivateDnsConfig;

    # invokes: Lcom/android/server/ConnectivityService;->updatePrivateDns(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V
    invoke-static {v4, v2, v5}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    .line 3909
    goto :goto_1ae

    .line 3845
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_188
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkTestedResults;

    .line 3847
    .local v2, "results":Lcom/android/server/ConnectivityService$NetworkTestedResults;
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService$NetworkTestedResults;->mNetId:I
    invoke-static {v2}, Lcom/android/server/ConnectivityService$NetworkTestedResults;->access$2400(Lcom/android/server/ConnectivityService$NetworkTestedResults;)I

    move-result v5

    # invokes: Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4, v5}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    .line 3848
    .local v4, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v4, :cond_199

    goto :goto_1ae

    .line 3850
    :cond_199
    # getter for: Lcom/android/server/ConnectivityService$NetworkTestedResults;->mTestResult:I
    invoke-static {v2}, Lcom/android/server/ConnectivityService$NetworkTestedResults;->access$2500(Lcom/android/server/ConnectivityService$NetworkTestedResults;)I

    move-result v5

    .line 3851
    # getter for: Lcom/android/server/ConnectivityService$NetworkTestedResults;->mRedirectUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$NetworkTestedResults;->access$2600(Lcom/android/server/ConnectivityService$NetworkTestedResults;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1a6

    const-string v6, ""

    goto :goto_1aa

    :cond_1a6
    # getter for: Lcom/android/server/ConnectivityService$NetworkTestedResults;->mRedirectUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$NetworkTestedResults;->access$2600(Lcom/android/server/ConnectivityService$NetworkTestedResults;)Ljava/lang/String;

    move-result-object v6

    .line 3850
    :goto_1aa
    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->handleNetworkTested(Lcom/android/server/connectivity/NetworkAgentInfo;ILjava/lang/String;)V

    .line 3852
    nop

    .line 3918
    .end local v2    # "results":Lcom/android/server/ConnectivityService$NetworkTestedResults;
    .end local v4    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1ae
    :goto_1ae
    return v3

    nop

    :pswitch_data_1b0
    .packed-switch 0x29
        :pswitch_188
        :pswitch_173
        :pswitch_94
        :pswitch_b
        :pswitch_23
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 4106
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 4107
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 4108
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 4109
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentMessage(Landroid/os/Message;)V

    .line 4111
    :cond_15
    return-void
.end method
