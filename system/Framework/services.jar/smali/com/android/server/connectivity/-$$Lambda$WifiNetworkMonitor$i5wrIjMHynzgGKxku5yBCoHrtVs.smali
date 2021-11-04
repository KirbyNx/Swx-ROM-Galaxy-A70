.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$i5wrIjMHynzgGKxku5yBCoHrtVs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

.field public final synthetic f$1:Landroid/net/ProxyInfo;

.field public final synthetic f$2:Ljava/net/URL;

.field public final synthetic f$3:Ljava/net/URL;

.field public final synthetic f$4:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Landroid/net/Uri;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$i5wrIjMHynzgGKxku5yBCoHrtVs;->f$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iput-object p2, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$i5wrIjMHynzgGKxku5yBCoHrtVs;->f$1:Landroid/net/ProxyInfo;

    iput-object p3, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$i5wrIjMHynzgGKxku5yBCoHrtVs;->f$2:Ljava/net/URL;

    iput-object p4, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$i5wrIjMHynzgGKxku5yBCoHrtVs;->f$3:Ljava/net/URL;

    iput-object p5, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$i5wrIjMHynzgGKxku5yBCoHrtVs;->f$4:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$i5wrIjMHynzgGKxku5yBCoHrtVs;->f$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$i5wrIjMHynzgGKxku5yBCoHrtVs;->f$1:Landroid/net/ProxyInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$i5wrIjMHynzgGKxku5yBCoHrtVs;->f$2:Ljava/net/URL;

    iget-object v3, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$i5wrIjMHynzgGKxku5yBCoHrtVs;->f$3:Ljava/net/URL;

    iget-object v4, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$i5wrIjMHynzgGKxku5yBCoHrtVs;->f$4:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/WifiNetworkMonitor;->lambda$sendMultiParallelHttpAndHttpsProbes$0$WifiNetworkMonitor(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Landroid/net/Uri;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0
.end method
