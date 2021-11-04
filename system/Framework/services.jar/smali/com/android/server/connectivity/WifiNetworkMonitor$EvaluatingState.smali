.class Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;
.super Lcom/android/internal/util/State;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvaluatingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V
    .registers 2

    .line 693
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/WifiNetworkMonitor$1;

    .line 693
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 696
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_11

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationTimer:Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3600(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->isStarted()Z

    move-result v0

    if-nez v0, :cond_26

    .line 698
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationTimer:Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3600(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->start()Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    .line 700
    :cond_26
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    const/4 v1, 0x6

    # ++operator for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateToken:I
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3704(Lcom/android/server/connectivity/WifiNetworkMonitor;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(III)V

    .line 701
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1700(Lcom/android/server/connectivity/WifiNetworkMonitor;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_48

    .line 702
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1700(Lcom/android/server/connectivity/WifiNetworkMonitor;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 703
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1702(Lcom/android/server/connectivity/WifiNetworkMonitor;I)I

    .line 705
    :cond_48
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    const/16 v1, 0x3e8

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateDelayMs:I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3802(Lcom/android/server/connectivity/WifiNetworkMonitor;I)I

    .line 706
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluateAttempts:I
    invoke-static {v0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3902(Lcom/android/server/connectivity/WifiNetworkMonitor;I)I

    .line 710
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->clearProbeResults()V

    .line 711
    return-void
.end method

.method public exit()V
    .registers 1

    .line 716
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 720
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    .line 763
    const/4 v0, 0x0

    return v0

    .line 722
    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateToken:I
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3700(Lcom/android/server/connectivity/WifiNetworkMonitor;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_13

    .line 723
    return v2

    .line 746
    :cond_13
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2700(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isValidationRequired(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 747
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2700(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isPrivateDnsValidationRequired(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 748
    const-string v0, "Network would not satisfy default request, resolving private DNS"

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1600(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2100(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_48

    .line 752
    :cond_3a
    const-string v0, "Network would not satisfy default request, not validating"

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1600(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 756
    :goto_48
    return v2

    .line 758
    :cond_49
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # operator++ for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluateAttempts:I
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3908(Lcom/android/server/connectivity/WifiNetworkMonitor;)I

    .line 760
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mProbingState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4100(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 761
    return v2
.end method
