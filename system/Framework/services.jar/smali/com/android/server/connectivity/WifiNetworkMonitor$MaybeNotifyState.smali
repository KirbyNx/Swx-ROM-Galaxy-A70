.class Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;
.super Lcom/android/internal/util/State;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaybeNotifyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V
    .registers 2

    .line 651
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/WifiNetworkMonitor$1;

    .line 651
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 654
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_11

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_11
    return-void
.end method

.method public exit()V
    .registers 3

    .line 659
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2900(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 660
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2900(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 661
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2902(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;

    .line 663
    :cond_1d
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->hideProvisioningNotification()V
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3100(Lcom/android/server/connectivity/WifiNetworkMonitor;)V

    .line 664
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 668
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_8

    .line 688
    const/4 v0, 0x0

    return v0

    .line 670
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 672
    .local v0, "appExtras":Landroid/os/Bundle;
    new-instance v1, Landroid/net/Network;

    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mCleartextDnsNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/net/Network;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/Network;-><init>(Landroid/net/Network;)V

    .line 673
    .local v1, "network":Landroid/net/Network;
    const-string v2, "android.net.extra.NETWORK"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 674
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3300(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v2

    .line 676
    .local v2, "probeRes":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    iget-object v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget-object v4, v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;
    invoke-static {v3, v4}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3400(Lcom/android/server/connectivity/WifiNetworkMonitor;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    if-eqz v3, :cond_30

    iget-object v3, v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    goto :goto_32

    :cond_30
    iget-object v3, v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    .line 677
    .local v3, "portalUrl":Ljava/lang/String;
    :goto_32
    const-string v4, "android.net.extra.CAPTIVE_PORTAL_URL"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v4, v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->probeSpec:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;

    if-eqz v4, :cond_46

    .line 679
    iget-object v4, v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->probeSpec:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;

    invoke-virtual {v4}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->getEncodedSpec()Ljava/lang/String;

    move-result-object v4

    .line 680
    .local v4, "encodedSpec":Ljava/lang/String;
    const-string v5, "android.net.extra.CAPTIVE_PORTAL_PROBE_SPEC"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .end local v4    # "encodedSpec":Ljava/lang/String;
    :cond_46
    iget-object v4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 683
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3500(Lcom/android/server/connectivity/WifiNetworkMonitor;)Ljava/lang/String;

    move-result-object v4

    .line 682
    const-string v5, "android.net.extra.CAPTIVE_PORTAL_USER_AGENT"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 685
    .local v4, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v4, v1, v0}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;Landroid/os/Bundle;)V

    .line 686
    const/4 v5, 0x1

    return v5
.end method
