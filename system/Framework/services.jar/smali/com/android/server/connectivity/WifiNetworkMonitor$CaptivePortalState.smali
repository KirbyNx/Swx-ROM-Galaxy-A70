.class Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;
.super Lcom/android/internal/util/State;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalState"
.end annotation


# static fields
.field private static final ACTION_LAUNCH_CAPTIVE_PORTAL_APP:Ljava/lang/String; = "android.net.netmon.launchCaptivePortalApp"


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V
    .registers 2

    .line 916
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/WifiNetworkMonitor$1;

    .line 916
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 7

    .line 921
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_11

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mUserWantAsIs:Z
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$5000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 926
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_28

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User wanted this network as is. Skip the result and check it later"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_28
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mValidatedWaitAuthState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1800(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 928
    return-void

    .line 931
    :cond_32
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2900(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;

    move-result-object v0

    if-nez v0, :cond_60

    .line 933
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    new-instance v1, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;

    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 934
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    const/16 v4, 0xb

    const-string v5, "android.net.netmon.launchCaptivePortalApp"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Ljava/lang/String;II)V

    .line 933
    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2902(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;

    .line 938
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2900(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;

    move-result-object v1

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->access$5600(Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->showProvisioningNotification(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$5700(Lcom/android/server/connectivity/WifiNetworkMonitor;Ljava/lang/String;)V

    .line 941
    :cond_60
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const-wide/32 v3, 0x927c0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessageDelayed(IIJ)V

    .line 943
    return-void
.end method

.method public exit()V
    .registers 3

    .line 947
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    const/16 v1, 0xc

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$5800(Lcom/android/server/connectivity/WifiNetworkMonitor;I)V

    .line 948
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 952
    const/4 v0, 0x0

    return v0
.end method
