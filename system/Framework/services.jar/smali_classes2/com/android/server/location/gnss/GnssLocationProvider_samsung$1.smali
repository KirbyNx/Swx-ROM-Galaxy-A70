.class Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;
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

    .line 298
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive broadcast intent, action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-nez v0, :cond_1e

    .line 304
    return-void

    .line 307
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x4

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_45a

    :cond_2a
    goto/16 :goto_93

    :sswitch_2c
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move v1, v6

    goto/16 :goto_94

    :sswitch_37
    const-string v1, "com.sec.android.ISSUE_TRACKER_ONOFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 v1, 0x8

    goto :goto_94

    :sswitch_42
    const-string v1, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move v1, v5

    goto :goto_94

    :sswitch_4c
    const-string v1, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x5

    goto :goto_94

    :sswitch_56
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x6

    goto :goto_94

    :sswitch_60
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 v1, 0x9

    goto :goto_94

    :sswitch_6b
    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move v1, v7

    goto :goto_94

    :sswitch_75
    const-string v1, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move v1, v3

    goto :goto_94

    :sswitch_7f
    const-string v1, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x3

    goto :goto_94

    :sswitch_89
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x7

    goto :goto_94

    :goto_93
    move v1, v4

    :goto_94
    packed-switch v1, :pswitch_data_484

    goto/16 :goto_459

    .line 466
    :pswitch_99
    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 467
    .local v1, "mNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_f3

    .line 468
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWlanApConnected:Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2200()Z

    move-result v3

    if-nez v3, :cond_459

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI NetworkInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWlanApConnected:Z
    invoke-static {v7}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2202(Z)Z

    .line 471
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    iget-boolean v3, v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v3, :cond_459

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isLPPeforUSAMarket()Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2300()Z

    move-result v3

    if-eqz v3, :cond_459

    .line 473
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeWiFiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2400(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 474
    .local v3, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v4, "WIFI is CONNECTED. "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->convertStringToHexLong(Ljava/lang/String;)J

    move-result-wide v4

    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mServingWlanBssid:J
    invoke-static {v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2502(J)J

    .line 476
    .end local v3    # "mWifiInfo":Landroid/net/wifi/WifiInfo;
    goto/16 :goto_459

    .line 479
    :cond_f3
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWlanApConnected:Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2200()Z

    move-result v3

    if-eqz v3, :cond_459

    .line 480
    const-string v3, "WIFI is DISCONNECTED."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWlanApConnected:Z
    invoke-static {v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2202(Z)Z

    .line 482
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    iget-boolean v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v2, :cond_459

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isLPPeforUSAMarket()Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2300()Z

    move-result v2

    if-eqz v2, :cond_459

    .line 483
    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mServingWlanBssid:J
    invoke-static {v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2502(J)J

    goto/16 :goto_459

    .line 451
    .end local v1    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :pswitch_114
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 452
    .local v1, "issueTrackerBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isIssueTrackerIntentReceived:Z
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2100(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Z

    move-result v3

    if-nez v3, :cond_152

    if-eqz v1, :cond_152

    .line 453
    const-string v3, "ONOFF"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 454
    .local v3, "enabled":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INTENT_ISSUE_TRACKER_ONOFF enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v2, "dev.gnss.silentloggingIssueTracker"

    if-eqz v3, :cond_146

    .line 456
    const-string v4, "ON"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14b

    .line 458
    :cond_146
    const-string v4, "OFF"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :goto_14b
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isIssueTrackerIntentReceived:Z
    invoke-static {v2, v7}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2102(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Z)Z

    .line 461
    .end local v3    # "enabled":Z
    goto/16 :goto_459

    .line 462
    :cond_152
    const-string v3, "INTENT_ISSUE_TRACKER_ONOFF intent has been ignored because it\'s processed only once after booting."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    goto/16 :goto_459

    .line 426
    .end local v1    # "issueTrackerBundle":Landroid/os/Bundle;
    :pswitch_159
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1800(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_459

    .line 427
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 428
    .local v1, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v1, v5, v7}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    .line 429
    .local v4, "mNetworkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v4, :cond_239

    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    if-eqz v5, :cond_239

    .line 430
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v5

    const/16 v8, 0xd

    if-ne v5, v8, :cond_234

    .line 431
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellIdentityLte;

    .line 432
    .local v5, "mCellId":Landroid/telephony/CellIdentityLte;
    if-eqz v5, :cond_233

    .line 433
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isValidCellInfo:Z
    invoke-static {v6, v7}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1902(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Z)Z

    .line 434
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;
    invoke-static {v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    move-result-object v6

    iput v3, v6, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->networkType:I

    .line 435
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    move-result-object v3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v6

    iput v6, v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->mcc:I

    .line 436
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    move-result-object v3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v6

    iput v6, v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->mnc:I

    .line 437
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    move-result-object v3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    iput v6, v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->lac:I

    .line 438
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    move-result-object v3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->cid:J

    .line 439
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    move-result-object v3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v6

    iput v6, v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->pcid:I

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ServiceState changed. mcc = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;
    invoke-static {v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    move-result-object v6

    iget v6, v6, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->mcc:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mnc = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;
    invoke-static {v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    move-result-object v6

    iget v6, v6, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->mnc:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " lac = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;
    invoke-static {v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    move-result-object v6

    iget v6, v6, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->lac:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " cid = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;
    invoke-static {v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->cid:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " pcid = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;
    invoke-static {v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$2000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    move-result-object v6

    iget v6, v6, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->pcid:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v5    # "mCellId":Landroid/telephony/CellIdentityLte;
    :cond_233
    goto :goto_239

    .line 444
    :cond_234
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isValidCellInfo:Z
    invoke-static {v2, v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1902(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Z)Z

    .line 447
    .end local v1    # "serviceState":Landroid/telephony/ServiceState;
    .end local v4    # "mNetworkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    :cond_239
    :goto_239
    goto/16 :goto_459

    .line 361
    :pswitch_23b
    const-string/jumbo v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "simState":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_STATE_CHANGED received : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    iget-boolean v3, v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    const/16 v8, 0x18

    if-eqz v3, :cond_27a

    .line 365
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NMEA_ALLOWED="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsNmeaAllowed:I
    invoke-static {v10}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$800(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v3, v8, v6, v9}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$900(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;IILjava/lang/Object;)V

    .line 367
    :cond_27a
    const-string v3, "LOADED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_362

    .line 368
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getLppBitmask()I
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)I

    move-result v3

    .line 369
    .local v3, "mask":I
    iget-object v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    iget-boolean v9, v9, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v9, :cond_2f6

    .line 370
    const/4 v2, 0x0

    .line 371
    .local v2, "isConfigUpdateRequired":Z
    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isUSAMarket()Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1100()Z

    move-result v8

    if-nez v8, :cond_2a3

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isCaMarket()Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1200()Z

    move-result v8

    if-nez v8, :cond_2a3

    .line 372
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->ARG_UFN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v8, v9, :cond_2a9

    .line 373
    :cond_2a3
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-virtual {v8}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_set_supl_server()V

    .line 374
    const/4 v2, 0x1

    .line 376
    :cond_2a9
    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isKORMarket()Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1300()Z

    move-result v8

    if-eqz v8, :cond_2ee

    .line 377
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setSimOperator_KOR()V
    invoke-static {v8}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1400(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V

    .line 378
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->simOperatorKOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1500()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2ee

    .line 379
    const/4 v2, 0x1

    .line 380
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->simOperatorKOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1500()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    packed-switch v9, :pswitch_data_49c

    :cond_2c6
    :pswitch_2c6
    goto :goto_2e4

    :pswitch_2c7
    const-string v6, "45008"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c6

    move v4, v5

    goto :goto_2e4

    :pswitch_2d1
    const-string v6, "45006"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c6

    move v4, v7

    goto :goto_2e4

    :pswitch_2db
    const-string v9, "45005"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c6

    move v4, v6

    :goto_2e4
    if-eqz v4, :cond_2ed

    if-eq v4, v7, :cond_2ed

    if-eq v4, v5, :cond_2eb

    goto :goto_2ee

    .line 386
    :cond_2eb
    const/4 v3, 0x7

    .line 387
    goto :goto_2ee

    .line 383
    :cond_2ed
    const/4 v3, 0x0

    .line 393
    :cond_2ee
    :goto_2ee
    if-eqz v2, :cond_2f5

    .line 394
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendExtraConfigurationString()V

    .line 396
    .end local v2    # "isConfigUpdateRequired":Z
    :cond_2f5
    goto :goto_34c

    .line 397
    :cond_2f6
    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isKORMarket()Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1300()Z

    move-result v5

    if-eqz v5, :cond_301

    .line 398
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setSimOperator_KOR()V
    invoke-static {v5}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1400(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V

    .line 399
    :cond_301
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-virtual {v5}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_set_supl_server()V

    .line 402
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    iget-object v5, v5, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-class v7, Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputManager;

    .line 403
    .local v5, "mIm":Landroid/hardware/input/InputManager;
    if-eqz v5, :cond_34c

    .line 404
    invoke-virtual {v5}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result v7

    if-le v7, v4, :cond_34c

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Folderable phone - simstate change. lidstate"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LID_STATE="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v2, v8, v6, v4}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$900(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;IILjava/lang/Object;)V

    .line 410
    .end local v5    # "mIm":Landroid/hardware/input/InputManager;
    :cond_34c
    :goto_34c
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->prevLppMask:I
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1600(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)I

    move-result v2

    if-eq v3, v2, :cond_360

    if-ltz v3, :cond_360

    .line 411
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->prevLppMask:I
    invoke-static {v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1602(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;I)I

    .line 412
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setLppSupport(I)V
    invoke-static {v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1700(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;I)V

    .line 414
    .end local v3    # "mask":I
    :cond_360
    goto/16 :goto_459

    .line 416
    :cond_362
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    iget-boolean v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v2, :cond_459

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_VZW:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v2, v3, :cond_459

    .line 417
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getLppBitmask()I
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)I

    move-result v2

    .line 418
    .local v2, "mask":I
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->prevLppMask:I
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1600(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)I

    move-result v3

    if-eq v2, v3, :cond_38a

    if-ltz v2, :cond_38a

    .line 419
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->prevLppMask:I
    invoke-static {v3, v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1602(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;I)I

    .line 420
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setLppSupport(I)V
    invoke-static {v3, v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1700(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;I)V

    .line 422
    .end local v2    # "mask":I
    :cond_38a
    goto/16 :goto_459

    .line 355
    .end local v1    # "simState":Ljava/lang/String;
    :pswitch_38c
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_nativeInitForSuplNI()V

    .line 356
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-virtual {v1, v7}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->requestSetID(I)V

    .line 357
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "packet_data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 358
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "packet_length"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 357
    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_send_supl_ni_message([BI)V
    invoke-static {v1, v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$700(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;[BI)V

    .line 359
    goto/16 :goto_459

    .line 345
    :pswitch_3b3
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v1, v2, :cond_3c3

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v1, v2, :cond_459

    .line 346
    :cond_3c3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;
    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$600(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Ljava/util/Properties;

    move-result-object v1

    const-string v2, "SUPL_HOST"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "mSuplServerHost_cmcc":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$600(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Ljava/util/Properties;

    move-result-object v2

    const-string v3, "SUPL_PORT"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "portString_cmcc":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.AGPS_PROFILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v3, "getAgpsProfile":Landroid/content/Intent;
    const-string v4, "ServerAddr"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v4, "ServerPort"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    iget-object v4, v4, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 352
    .end local v1    # "mSuplServerHost_cmcc":Ljava/lang/String;
    .end local v2    # "portString_cmcc":Ljava/lang/String;
    .end local v3    # "getAgpsProfile":Landroid/content/Intent;
    goto :goto_459

    .line 340
    :pswitch_3f4
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v1, v2, :cond_404

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v1, v2, :cond_459

    .line 341
    :cond_404
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setCMCCSuplServer(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$500(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Landroid/content/Intent;)V

    goto :goto_459

    .line 335
    :pswitch_40a
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    iget-boolean v1, v1, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v1, :cond_459

    .line 336
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getImsState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$400(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Landroid/content/Intent;)V

    goto :goto_459

    .line 324
    :pswitch_416
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    iget-boolean v1, v1, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v1, :cond_42a

    .line 325
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mImsRegistered:Z
    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$100(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Z

    move-result v1

    if-eqz v1, :cond_459

    .line 326
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$300(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Landroid/content/Intent;)V

    goto :goto_459

    .line 329
    :cond_42a
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_checkWapPushMsg()Z

    move-result v1

    if-eqz v1, :cond_459

    .line 330
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$300(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Landroid/content/Intent;)V

    goto :goto_459

    .line 311
    :pswitch_438
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    iget-boolean v1, v1, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v1, :cond_44c

    .line 312
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mImsRegistered:Z
    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$100(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Z

    move-result v1

    if-eqz v1, :cond_459

    .line 313
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$200(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Landroid/content/Intent;)V

    goto :goto_459

    .line 316
    :cond_44c
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_checkWapPushMsg()Z

    move-result v1

    if-eqz v1, :cond_459

    .line 317
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$200(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Landroid/content/Intent;)V

    .line 489
    :cond_459
    :goto_459
    return-void

    :sswitch_data_45a
    .sparse-switch
        -0x7d6de25e -> :sswitch_89
        -0x4dd7bd45 -> :sswitch_7f
        -0x48901e51 -> :sswitch_75
        -0x34179f27 -> :sswitch_6b
        -0x147b62d9 -> :sswitch_60
        -0xdb21ee7 -> :sswitch_56
        0x47c22670 -> :sswitch_4c
        0x4e07a101 -> :sswitch_42
        0x7438879a -> :sswitch_37
        0x7fad5a77 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_484
    .packed-switch 0x0
        :pswitch_438
        :pswitch_416
        :pswitch_40a
        :pswitch_3f4
        :pswitch_3b3
        :pswitch_38c
        :pswitch_23b
        :pswitch_159
        :pswitch_114
        :pswitch_99
    .end packed-switch

    :pswitch_data_49c
    .packed-switch 0x2f59814
        :pswitch_2db
        :pswitch_2d1
        :pswitch_2c6
        :pswitch_2c7
    .end packed-switch
.end method
