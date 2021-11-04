.class Lcom/android/server/location/gnss/GnssLocationProvider_samsung$2;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 727
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 731
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "LocationX"

    const/4 v4, 0x0

    if-eqz v2, :cond_ba

    .line 733
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeWiFiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2400(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 735
    .local v2, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/16 v5, 0x40

    .line 736
    .local v5, "sizeOfAPs":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x40

    if-ge v6, v7, :cond_29

    .line 737
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 739
    :cond_29
    new-array v6, v7, [J

    .line 740
    .local v6, "WLAN_BSSID_LIST":[J
    new-array v8, v7, [I

    .line 741
    .local v8, "WLAN_RSSI_LIST":[I
    new-array v7, v7, [I

    .line 743
    .local v7, "WLAN_Channel_LIST":[I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LPPeWiFiReceiver : the number of AP scaned : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " used number : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v9, 0x0

    .line 746
    .local v9, "indexOfServingAp":I
    const/4 v10, 0x0

    .line 747
    .local v10, "servingWlanRssi":I
    const/4 v11, 0x0

    .line 749
    .local v11, "servingWlanChannel":I
    const/4 v12, 0x0

    .end local v7    # "WLAN_Channel_LIST":[I
    .local v12, "index":I
    :goto_53
    if-ge v12, v5, :cond_8d

    .line 750
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    .line 751
    .local v13, "theAP":Landroid/net/wifi/ScanResult;
    iget-object v14, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->convertStringToHexLong(Ljava/lang/String;)J

    move-result-wide v14

    aput-wide v14, v6, v12

    .line 752
    iget v14, v13, Landroid/net/wifi/ScanResult;->level:I

    aput v14, v8, v12

    .line 753
    iget-object v14, v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    iget v15, v13, Landroid/net/wifi/ScanResult;->frequency:I

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->convertFrequencytoChannel(I)I
    invoke-static {v14, v15}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$3200(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;I)I

    move-result v14

    aput v14, v7, v12

    .line 767
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWlanApConnected:Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2200()Z

    move-result v14

    if-eqz v14, :cond_8a

    aget-wide v14, v6, v12

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mServingWlanBssid:J
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2500()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-nez v14, :cond_8a

    .line 768
    move v9, v12

    .line 769
    aget v10, v8, v12

    .line 770
    aget v11, v7, v12

    .line 749
    .end local v13    # "theAP":Landroid/net/wifi/ScanResult;
    :cond_8a
    add-int/lit8 v12, v12, 0x1

    goto :goto_53

    .line 774
    .end local v12    # "index":I
    :cond_8d
    if-lez v9, :cond_b3

    if-ge v9, v5, :cond_b3

    .line 775
    move v12, v9

    .restart local v12    # "index":I
    :goto_92
    if-lez v12, :cond_a9

    .line 776
    add-int/lit8 v13, v12, -0x1

    aget-wide v13, v6, v13

    aput-wide v13, v6, v12

    .line 777
    add-int/lit8 v13, v12, -0x1

    aget v13, v8, v13

    aput v13, v8, v12

    .line 778
    add-int/lit8 v13, v12, -0x1

    aget v13, v7, v13

    aput v13, v7, v12

    .line 775
    add-int/lit8 v12, v12, -0x1

    goto :goto_92

    .line 780
    .end local v12    # "index":I
    :cond_a9
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mServingWlanBssid:J
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2500()J

    move-result-wide v12

    aput-wide v12, v6, v4

    .line 781
    aput v10, v8, v4

    .line 782
    aput v11, v7, v4

    .line 785
    :cond_b3
    iget-object v12, v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->handleUpdateWLANScanInfo([J[I[II)V
    invoke-static {v12, v6, v8, v7, v5}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$3300(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;[J[I[II)V

    .line 787
    const/4 v6, 0x0

    .line 788
    const/4 v7, 0x0

    .line 791
    .end local v2    # "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v5    # "sizeOfAPs":I
    .end local v6    # "WLAN_BSSID_LIST":[J
    .end local v8    # "WLAN_RSSI_LIST":[I
    .end local v9    # "indexOfServingAp":I
    .end local v10    # "servingWlanRssi":I
    .end local v11    # "servingWlanChannel":I
    :cond_ba
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 792
    const-string/jumbo v2, "wifi_state"

    move-object/from16 v5, p2

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 793
    .local v2, "wifiState":I
    const/4 v6, 0x3

    if-ne v2, v6, :cond_e8

    .line 794
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWifiScanRequested:Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$3400()Z

    move-result v6

    if-eqz v6, :cond_e8

    .line 795
    const-string v6, "WIFI is on. Request to scan"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWifiScanRequested:Z
    invoke-static {v4}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$3402(Z)Z

    .line 797
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeWiFiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2400(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_e8

    .line 791
    .end local v2    # "wifiState":I
    :cond_e6
    move-object/from16 v5, p2

    .line 801
    :cond_e8
    :goto_e8
    return-void
.end method
