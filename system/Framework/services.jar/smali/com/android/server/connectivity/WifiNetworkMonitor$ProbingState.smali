.class Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;
.super Lcom/android/internal/util/State;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProbingState"
.end annotation


# instance fields
.field private mThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V
    .registers 2

    .line 769
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/WifiNetworkMonitor$1;

    .line 769
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 774
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_11

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # ++operator for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mProbeToken:I
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4204(Lcom/android/server/connectivity/WifiNetworkMonitor;)I

    move-result v0

    .line 777
    .local v0, "token":I
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    new-instance v2, Lcom/android/server/connectivity/WifiNetworkMonitor$OneAddressPerFamilyNetwork;

    iget-object v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetwork:Landroid/net/Network;
    invoke-static {v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4300(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/net/Network;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$OneAddressPerFamilyNetwork;-><init>(Landroid/net/Network;)V

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mCleartextDnsNetwork:Landroid/net/Network;
    invoke-static {v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3202(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/Network;)Landroid/net/Network;

    .line 779
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mCurrentMode:I
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4400(Lcom/android/server/connectivity/WifiNetworkMonitor;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_46

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mWasChinaMode:Z
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4500(Lcom/android/server/connectivity/WifiNetworkMonitor;)Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_46

    .line 788
    :cond_39
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$ProbingState$rUX8vuHFIy206o4gOIJyezhUPjA;

    invoke-direct {v2, p0, v0}, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$ProbingState$rUX8vuHFIy206o4gOIJyezhUPjA;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->mThread:Ljava/lang/Thread;

    goto :goto_6f

    .line 780
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->getRoamEventfromWCM()Z
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4600(Lcom/android/server/connectivity/WifiNetworkMonitor;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 781
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mRunFullParallelCheck:Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4702(Lcom/android/server/connectivity/WifiNetworkMonitor;Z)Z

    .line 782
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wi-Fi Roam Event received from WCM. Run full parallel check"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->setRoamEventFromWCM(I)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4800(Lcom/android/server/connectivity/WifiNetworkMonitor;I)V

    .line 785
    :cond_63
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$ProbingState$LWnuE5N3W08Cq5hF_iBSEqp0cLA;

    invoke-direct {v2, p0, v0}, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$ProbingState$LWnuE5N3W08Cq5hF_iBSEqp0cLA;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->mThread:Ljava/lang/Thread;

    .line 792
    :goto_6f
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 793
    return-void
.end method

.method public exit()V
    .registers 1

    .line 798
    return-void
.end method

.method public synthetic lambda$enter$0$WifiNetworkMonitor$ProbingState(I)V
    .registers 6
    .param p1, "token"    # I

    .line 785
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 786
    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->isCaptivePortalForChinaWifi()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$5500(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    .line 785
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public synthetic lambda$enter$1$WifiNetworkMonitor$ProbingState(I)V
    .registers 6
    .param p1, "token"    # I

    .line 788
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 789
    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->isCaptivePortal()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$5400(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    .line 788
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 802
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-eq v0, v2, :cond_8

    .line 847
    return v1

    .line 805
    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mProbeToken:I
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4200(Lcom/android/server/connectivity/WifiNetworkMonitor;)I

    move-result v2

    if-eq v0, v2, :cond_13

    .line 806
    return v1

    .line 809
    :cond_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    .line 811
    .local v0, "probeResult":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mLastProbeTime:J
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4902(Lcom/android/server/connectivity/WifiNetworkMonitor;J)J

    .line 815
    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_64

    .line 818
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mUserWantAsIs:Z
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$5000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 819
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_3e

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CaptivePortal which user wanted, is now Authenticated"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_3e
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mUserWantAsIs:Z
    invoke-static {v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$5002(Lcom/android/server/connectivity/WifiNetworkMonitor;Z)Z

    .line 821
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 822
    .local v2, "cm":Landroid/net/ConnectivityManager;
    iget-object v4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4300(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/net/ConnectivityManager;->setWcmAcceptUnvalidated(Landroid/net/Network;Z)V

    .line 824
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_5a
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2100(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_c3

    .line 825
    :cond_64
    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 826
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->reportEvaluationResult(ILjava/lang/String;)V

    .line 828
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-static {v2, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3302(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    .line 829
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$5100(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_c3

    .line 830
    :cond_84
    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPartialConnectivity()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_b1

    .line 831
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->reportEvaluationResult(ILjava/lang/String;)V

    .line 834
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mAcceptPartialConnectivity:Z
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$5200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 835
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2100(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_c3

    .line 837
    :cond_a7
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mWaitingForNextProbeState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$5300(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_c3

    .line 841
    :cond_b1
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->reportEvaluationResult(ILjava/lang/String;)V

    .line 843
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mWaitingForNextProbeState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$5300(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 845
    :goto_c3
    return v1
.end method
