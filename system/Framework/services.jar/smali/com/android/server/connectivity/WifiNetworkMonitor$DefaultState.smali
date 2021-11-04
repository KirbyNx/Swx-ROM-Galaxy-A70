.class Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V
    .registers 2

    .line 527
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/WifiNetworkMonitor$1;

    .line 527
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 530
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_11

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_11
    return-void
.end method

.method public exit()V
    .registers 1

    .line 536
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 540
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_110

    const/16 v2, 0x16

    if-eq v0, v2, :cond_101

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_f6

    const/4 v2, 0x7

    if-eq v0, v2, :cond_ec

    const/16 v2, 0x8

    if-eq v0, v2, :cond_c5

    const/16 v3, 0x9

    if-eq v0, v3, :cond_73

    const/16 v2, 0xc

    if-eq v0, v2, :cond_c5

    const/16 v2, 0xd

    if-eq v0, v2, :cond_40

    const/16 v2, 0x13

    if-eq v0, v2, :cond_35

    const/16 v2, 0x14

    if-eq v0, v2, :cond_2a

    goto/16 :goto_100

    .line 638
    :cond_2a
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkCapabilities;

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v0, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2702(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 639
    goto/16 :goto_100

    .line 635
    :cond_35
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/LinkProperties;

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2602(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 636
    goto/16 :goto_100

    .line 595
    :cond_40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/shared/PrivateDnsConfig;

    .line 596
    .local v0, "cfg":Landroid/net/shared/PrivateDnsConfig;
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->isPrivateDnsValidationRequired()Z
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2300(Lcom/android/server/connectivity/WifiNetworkMonitor;)Z

    move-result v2

    if-eqz v2, :cond_6a

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Landroid/net/shared/PrivateDnsConfig;->inStrictMode()Z

    move-result v2

    if-nez v2, :cond_55

    goto :goto_6a

    .line 608
    :cond_55
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget-object v3, v0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2402(Lcom/android/server/connectivity/WifiNetworkMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    const/16 v3, 0xf

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->removeMessages(I)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2500(Lcom/android/server/connectivity/WifiNetworkMonitor;I)V

    .line 631
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(I)V

    .line 632
    goto/16 :goto_100

    .line 604
    :cond_6a
    :goto_6a
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    const-string v3, ""

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2402(Lcom/android/server/connectivity/WifiNetworkMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    goto/16 :goto_100

    .line 560
    .end local v0    # "cfg":Landroid/net/shared/PrivateDnsConfig;
    :cond_73
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CaptivePortal App responded with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1900(Lcom/android/server/connectivity/WifiNetworkMonitor;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mUseHttps:Z
    invoke-static {v0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2002(Lcom/android/server/connectivity/WifiNetworkMonitor;Z)Z

    .line 576
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_be

    if-eq v0, v1, :cond_a5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9b

    goto :goto_c4

    .line 583
    :cond_9b
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2100(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 584
    goto :goto_c4

    .line 586
    :cond_a5
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->reportEvaluationResult(ILjava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1702(Lcom/android/server/connectivity/WifiNetworkMonitor;I)I

    .line 590
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1400(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_c4

    .line 578
    :cond_be
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-virtual {v0, v2, v3, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(III)V

    .line 579
    nop

    .line 593
    :goto_c4
    return v1

    .line 551
    :cond_c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forcing reevaluation for UID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1600(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1702(Lcom/android/server/connectivity/WifiNetworkMonitor;I)I

    .line 553
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1400(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 554
    return v1

    .line 547
    :cond_ec
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mNotEnabledState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1500(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 548
    return v1

    .line 641
    :cond_f6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkTestResultParcelable;

    .line 642
    .local v0, "p":Landroid/net/NetworkTestResultParcelable;
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->setNetworkMonitorResult(Landroid/net/NetworkTestResultParcelable;)V
    invoke-static {v2, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2800(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/NetworkTestResultParcelable;)V

    .line 643
    nop

    .line 647
    .end local v0    # "p":Landroid/net/NetworkTestResultParcelable;
    :goto_100
    return v1

    .line 556
    :cond_101
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->updateConnectedNetworkAttributes(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1300(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/os/Message;)V

    .line 557
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mValidatedWaitAuthState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1800(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 558
    return v1

    .line 542
    :cond_110
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->updateConnectedNetworkAttributes(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1300(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/os/Message;)V

    .line 543
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1400(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 544
    return v1
.end method
