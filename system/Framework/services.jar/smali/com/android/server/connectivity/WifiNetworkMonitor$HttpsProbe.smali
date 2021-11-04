.class final Lcom/android/server/connectivity/WifiNetworkMonitor$HttpsProbe;
.super Lcom/android/server/connectivity/WifiNetworkMonitor$Probe;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HttpsProbe"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;Landroid/net/Uri;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p2, "proxy"    # Landroid/net/ProxyInfo;
    .param p3, "url"    # Ljava/net/URL;
    .param p4, "captivePortalApiUrl"    # Landroid/net/Uri;

    .line 2566
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$HttpsProbe;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 2567
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/connectivity/WifiNetworkMonitor$Probe;-><init>(Landroid/net/ProxyInfo;Ljava/net/URL;Landroid/net/Uri;)V

    .line 2568
    return-void
.end method


# virtual methods
.method protected sendProbe()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 5

    .line 2572
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$HttpsProbe;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$HttpsProbe;->mProxy:Landroid/net/ProxyInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$HttpsProbe;->mUrl:Ljava/net/URL;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6500(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0
.end method
