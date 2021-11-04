.class public Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;
.super Ljava/lang/Object;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EvaluationState"
.end annotation


# instance fields
.field private mEvaluationResult:I

.field private mProbeCompleted:I

.field private mProbeResults:I

.field private mRedirectUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;


# direct methods
.method protected constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 1675
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1678
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mEvaluationResult:I

    .line 1681
    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeResults:I

    .line 1683
    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeCompleted:I

    return-void
.end method

.method private maybeNotifyProbeResults(Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "modif"    # Ljava/lang/Runnable;

    .line 1693
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeCompleted:I

    .line 1694
    .local v0, "oldCompleted":I
    iget v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeResults:I

    .line 1695
    .local v1, "oldResults":I
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1696
    iget v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeCompleted:I

    if-ne v0, v2, :cond_f

    iget v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeResults:I

    if-eq v1, v2, :cond_18

    .line 1697
    :cond_f
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeCompleted:I

    iget v4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeResults:I

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->notifyProbeStatusChanged(II)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6300(Lcom/android/server/connectivity/WifiNetworkMonitor;II)V

    .line 1699
    :cond_18
    return-void
.end method


# virtual methods
.method protected clearProbeResults()V
    .registers 2

    .line 1688
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeResults:I

    .line 1689
    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeCompleted:I

    .line 1690
    return-void
.end method

.method protected getEvaluationResult()I
    .registers 2

    .line 1733
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mEvaluationResult:I

    return v0
.end method

.method protected getProbeCompletedResult()I
    .registers 2

    .line 1743
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeCompleted:I

    return v0
.end method

.method protected getProbeResults()I
    .registers 2

    .line 1738
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeResults:I

    return v0
.end method

.method public synthetic lambda$noteProbeResult$1$WifiNetworkMonitor$EvaluationState(IZ)V
    .registers 5
    .param p1, "probeResult"    # I
    .param p2, "succeeded"    # Z

    .line 1710
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeCompleted:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeCompleted:I

    .line 1711
    if-eqz p2, :cond_d

    .line 1712
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeResults:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeResults:I

    goto :goto_13

    .line 1714
    :cond_d
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeResults:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeResults:I

    .line 1716
    :goto_13
    return-void
.end method

.method public synthetic lambda$removeProbeResult$0$WifiNetworkMonitor$EvaluationState(I)V
    .registers 4
    .param p1, "probeResult"    # I

    .line 1703
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeCompleted:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeCompleted:I

    .line 1704
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeResults:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeResults:I

    .line 1705
    return-void
.end method

.method protected noteProbeResult(IZ)V
    .registers 4
    .param p1, "probeResult"    # I
    .param p2, "succeeded"    # Z

    .line 1709
    new-instance v0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$EvaluationState$Um2BZZ0xHoXF6jTd7ER2rUoVtVo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$EvaluationState$Um2BZZ0xHoXF6jTd7ER2rUoVtVo;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;IZ)V

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->maybeNotifyProbeResults(Ljava/lang/Runnable;)V

    .line 1717
    return-void
.end method

.method protected removeProbeResult(I)V
    .registers 3
    .param p1, "probeResult"    # I

    .line 1702
    new-instance v0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$EvaluationState$78nCd8cqTjJnFc17frR8JNTsW3o;

    invoke-direct {v0, p0, p1}, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$EvaluationState$78nCd8cqTjJnFc17frR8JNTsW3o;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;I)V

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->maybeNotifyProbeResults(Ljava/lang/Runnable;)V

    .line 1706
    return-void
.end method

.method protected reportEvaluationResult(ILjava/lang/String;)V
    .registers 6
    .param p1, "result"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;

    .line 1720
    iput p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mEvaluationResult:I

    .line 1721
    iput-object p2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mRedirectUrl:Ljava/lang/String;

    .line 1722
    new-instance v0, Landroid/net/NetworkTestResultParcelable;

    invoke-direct {v0}, Landroid/net/NetworkTestResultParcelable;-><init>()V

    .line 1723
    .local v0, "p":Landroid/net/NetworkTestResultParcelable;
    iput p1, v0, Landroid/net/NetworkTestResultParcelable;->result:I

    .line 1724
    iget v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeResults:I

    iput v1, v0, Landroid/net/NetworkTestResultParcelable;->probesSucceeded:I

    .line 1725
    iget v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->mProbeCompleted:I

    iput v1, v0, Landroid/net/NetworkTestResultParcelable;->probesAttempted:I

    .line 1726
    iput-object p2, v0, Landroid/net/NetworkTestResultParcelable;->redirectUrl:Ljava/lang/String;

    .line 1727
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkTestResultParcelable;->timestampMillis:J

    .line 1728
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->notifyNetworkTested(Landroid/net/NetworkTestResultParcelable;)V
    invoke-static {v1, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6400(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/NetworkTestResultParcelable;)V

    .line 1729
    return-void
.end method
