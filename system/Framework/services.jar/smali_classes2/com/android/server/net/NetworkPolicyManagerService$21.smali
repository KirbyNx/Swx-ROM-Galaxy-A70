.class Lcom/android/server/net/NetworkPolicyManagerService$21;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 6453
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .registers 8
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .line 6455
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 6456
    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6458
    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string v1, "VZW-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    :cond_14
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 6459
    const-string v2, "ATT"

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5500(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string v2, "TMO"

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5500(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 6461
    :cond_28
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v1

    .line 6462
    .local v1, "hasVideoCall":Z
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v3, "activevideo"

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v2

    .line 6463
    .local v2, "hasActiveVideoCall":Z
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v5, "epdg"

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v4

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z
    invoke-static {v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5602(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 6465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneStateListenerVideoCall - hasVideoCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasActiveVideoCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mHasEpdgCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 6466
    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z
    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5600(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6465
    const-string v4, "NetworkPolicy"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6468
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5700(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v3

    if-eq v3, v1, :cond_d2

    .line 6469
    if-eqz v2, :cond_9b

    .line 6470
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z
    invoke-static {v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5702(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 6471
    const-string v3, "NetworkPolicy"

    const-string v4, "Video call start."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6472
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6473
    :try_start_91
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 6474
    monitor-exit v3

    goto :goto_d2

    :catchall_98
    move-exception v4

    monitor-exit v3
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_98

    throw v4

    .line 6475
    :cond_9b
    if-nez v1, :cond_d2

    .line 6476
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z
    invoke-static {v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5702(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 6477
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z
    invoke-static {v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5802(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 6478
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z
    invoke-static {v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5902(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 6479
    const-string v3, "NetworkPolicy"

    const-string v4, "Video call end."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6480
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6481
    :try_start_b9
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 6482
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 6483
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 6484
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 6485
    monitor-exit v3

    goto :goto_d2

    :catchall_cf
    move-exception v4

    monitor-exit v3
    :try_end_d1
    .catchall {:try_start_b9 .. :try_end_d1} :catchall_cf

    throw v4

    .line 6489
    .end local v1    # "hasVideoCall":Z
    .end local v2    # "hasActiveVideoCall":Z
    :cond_d2
    :goto_d2
    return-void
.end method
