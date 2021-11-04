.class Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
.super Ljava/lang/Object;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Stopwatch"
.end annotation


# instance fields
.field private mStartTimeMs:J

.field private mStopTimeMs:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor$1;

    .line 1762
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;-><init>()V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .registers 2

    .line 1775
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->isStopped()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isStarted()Z
    .registers 5

    .line 1767
    iget-wide v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->mStartTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isStopped()Z
    .registers 5

    .line 1771
    iget-wide v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->mStopTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public lap()J
    .registers 5

    .line 1806
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1807
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 1809
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->stop()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .line 1817
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->mStartTimeMs:J

    .line 1818
    iput-wide v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->mStopTimeMs:J

    .line 1819
    return-void
.end method

.method public start()Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .registers 3

    .line 1782
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->isStarted()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1783
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->mStartTimeMs:J

    .line 1785
    :cond_c
    return-object p0
.end method

.method public stop()J
    .registers 5

    .line 1793
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1794
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->mStopTimeMs:J

    .line 1797
    :cond_c
    iget-wide v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->mStopTimeMs:J

    iget-wide v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
