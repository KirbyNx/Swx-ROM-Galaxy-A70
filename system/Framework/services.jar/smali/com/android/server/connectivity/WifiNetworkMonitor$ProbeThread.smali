.class Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;
.super Ljava/lang/Thread;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProbeThread"
.end annotation


# instance fields
.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mProbe:Lcom/android/server/connectivity/WifiNetworkMonitor$Probe;

.field private volatile mResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

.field final synthetic this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Ljava/util/concurrent/CountDownLatch;Landroid/net/ProxyInfo;Ljava/net/URL;ILandroid/net/Uri;)V
    .registers 8
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "proxy"    # Landroid/net/ProxyInfo;
    .param p4, "url"    # Ljava/net/URL;
    .param p5, "probeType"    # I
    .param p6, "captivePortalApiUrl"    # Landroid/net/Uri;

    .line 2523
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2524
    iput-object p2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2525
    const/4 v0, 0x2

    if-ne p5, v0, :cond_10

    .line 2526
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$HttpsProbe;

    invoke-direct {v0, p1, p3, p4, p6}, Lcom/android/server/connectivity/WifiNetworkMonitor$HttpsProbe;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;Landroid/net/Uri;)V

    goto :goto_15

    .line 2527
    :cond_10
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$HttpProbe;

    invoke-direct {v0, p1, p3, p4, p6}, Lcom/android/server/connectivity/WifiNetworkMonitor$HttpProbe;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;Landroid/net/Uri;)V

    :goto_15
    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->mProbe:Lcom/android/server/connectivity/WifiNetworkMonitor$Probe;

    .line 2528
    invoke-static {p5}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->mResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    .line 2529
    return-void
.end method


# virtual methods
.method public result()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 2

    .line 2534
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->mResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    return-object v0
.end method

.method public run()V
    .registers 5

    .line 2539
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->mProbe:Lcom/android/server/connectivity/WifiNetworkMonitor$Probe;

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$Probe;->sendProbe()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->mResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    .line 2540
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->mResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->mProbe:Lcom/android/server/connectivity/WifiNetworkMonitor$Probe;

    iget-object v1, v1, Lcom/android/server/connectivity/WifiNetworkMonitor$Probe;->mCaptivePortalApiUrl:Landroid/net/Uri;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->isConclusiveResult(Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;Landroid/net/Uri;)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6700(Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2542
    :goto_14
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    .line 2543
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_14

    .line 2547
    :cond_26
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2548
    return-void
.end method
