.class abstract Lcom/android/server/connectivity/WifiNetworkMonitor$Probe;
.super Ljava/lang/Object;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Probe"
.end annotation


# instance fields
.field protected final mCaptivePortalApiUrl:Landroid/net/Uri;

.field protected final mProxy:Landroid/net/ProxyInfo;

.field protected final mUrl:Ljava/net/URL;


# direct methods
.method protected constructor <init>(Landroid/net/ProxyInfo;Ljava/net/URL;Landroid/net/Uri;)V
    .registers 4
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "captivePortalApiUrl"    # Landroid/net/Uri;

    .line 2556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2557
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$Probe;->mProxy:Landroid/net/ProxyInfo;

    .line 2558
    iput-object p2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$Probe;->mUrl:Ljava/net/URL;

    .line 2559
    iput-object p3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$Probe;->mCaptivePortalApiUrl:Landroid/net/Uri;

    .line 2560
    return-void
.end method


# virtual methods
.method protected abstract sendProbe()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
.end method
