.class final Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
.super Ljava/lang/Thread;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;->sendParallelHttpProbesForChinaWifi(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Z)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProbeThread"
.end annotation


# instance fields
.field private volatile mResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

.field private final mType:I

.field final synthetic this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

.field final synthetic val$httpUrl:Ljava/net/URL;

.field final synthetic val$httpUrlCn:Ljava/net/URL;

.field final synthetic val$httpUrlCn2:Ljava/net/URL;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$latch2:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$proxy:Landroid/net/ProxyInfo;

.field final synthetic val$runFullParallelCheck:Z


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;ILandroid/net/ProxyInfo;Ljava/net/URL;ZLjava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .registers 10
    .param p1, "this$0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2030
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iput-object p3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iput-object p4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    iput-boolean p5, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$runFullParallelCheck:Z

    iput-object p6, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$httpUrlCn:Ljava/net/URL;

    iput-object p7, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$httpUrlCn2:Ljava/net/URL;

    iput-object p8, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p9, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$latch2:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2028
    const/4 p3, 0x0

    invoke-static {p3}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    .line 2031
    iput p2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->mType:I

    .line 2032
    return-void
.end method


# virtual methods
.method public result()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 2

    .line 2035
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    return-object v0
.end method

.method public run()V
    .registers 6

    .line 2040
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->mType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_13

    .line 2041
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget-object v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6500(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    goto :goto_64

    .line 2042
    :cond_13
    iget-boolean v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$runFullParallelCheck:Z

    if-eqz v3, :cond_26

    if-ne v0, v2, :cond_26

    .line 2043
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget-object v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$httpUrlCn:Ljava/net/URL;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6500(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    goto :goto_64

    .line 2044
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$runFullParallelCheck:Z

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->mType:I

    if-ne v0, v1, :cond_3b

    .line 2045
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget-object v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$httpUrlCn2:Ljava/net/URL;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6500(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    goto :goto_64

    .line 2046
    :cond_3b
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$runFullParallelCheck:Z

    if-nez v0, :cond_50

    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->mType:I

    if-ne v0, v2, :cond_50

    .line 2047
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget-object v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$httpUrlCn:Ljava/net/URL;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsAndCheckSocketSetup(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6600(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    goto :goto_64

    .line 2048
    :cond_50
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$runFullParallelCheck:Z

    if-nez v0, :cond_64

    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->mType:I

    if-ne v0, v1, :cond_64

    .line 2049
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget-object v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$httpUrlCn2:Ljava/net/URL;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsAndCheckSocketSetup(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6600(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    .line 2050
    :cond_64
    :goto_64
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->mType:I

    if-nez v0, :cond_6d

    .line 2051
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2053
    :cond_6d
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->mType:I

    if-eq v0, v2, :cond_73

    if-ne v0, v1, :cond_81

    .line 2054
    :cond_73
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$runFullParallelCheck:Z

    if-nez v0, :cond_7c

    .line 2055
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$latch2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2057
    :cond_7c
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->val$latch2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2059
    :cond_81
    return-void
.end method
