.class Lcom/android/server/wifioffload/WifiOffloadService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifioffload/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifioffload/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/wifioffload/WifiOffloadService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .line 657
    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 661
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 663
    return-void

    .line 666
    :cond_b
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "wifi_state"

    const-string v3, "WifiOffloadService"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5c

    .line 667
    const/4 v1, 0x4

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 670
    .local v1, "currentWifiState":I
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    const/4 v6, 0x2

    if-eq v1, v6, :cond_29

    const/4 v6, 0x3

    if-ne v1, v6, :cond_28

    goto :goto_29

    :cond_28
    move v4, v5

    :cond_29
    :goto_29
    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z
    invoke-static {v2, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$302(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 671
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifioffload/WifiOffloadService;->access$300(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 672
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z
    invoke-static {v2, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->access$402(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 674
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi status="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z
    invoke-static {v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$300(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " currentWifiState="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void

    .line 678
    .end local v1    # "currentWifiState":I
    :cond_5c
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 680
    nop

    .line 681
    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 683
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_93

    .line 684
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 686
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z
    invoke-static {v2, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$502(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    goto :goto_93

    .line 687
    :cond_82
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v4}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 689
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z
    invoke-static {v2, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->access$502(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 692
    :cond_93
    :goto_93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi network state change, connected ? = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    .line 693
    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z
    invoke-static {v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$500(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 692
    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void

    .line 697
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_ae
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 699
    const/16 v1, 0xe

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 702
    .local v1, "currentAPState":I
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    const/16 v6, 0xc

    if-eq v1, v6, :cond_c8

    const/16 v6, 0xd

    if-ne v1, v6, :cond_c7

    goto :goto_c8

    :cond_c7
    move v4, v5

    :cond_c8
    :goto_c8
    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z
    invoke-static {v2, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$602(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mobile Hotspot setting changed, Enabled ? = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    .line 704
    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z
    invoke-static {v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$600(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 703
    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .end local v1    # "currentAPState":I
    :cond_e5
    return-void
.end method
