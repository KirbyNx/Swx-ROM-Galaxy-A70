.class Lcom/android/server/location/gnss/GnssLocationProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 541
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 544
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive broadcast intent, action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-nez v0, :cond_1e

    .line 547
    return-void

    .line 550
    :cond_1e
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_16a

    :cond_28
    goto :goto_78

    :sswitch_29
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v1, 0x3

    goto :goto_78

    :sswitch_33
    const-string v3, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v1, 0x2

    goto :goto_78

    :sswitch_3d
    const-string v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v1, 0x6

    goto :goto_78

    :sswitch_47
    const-string v3, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    move v1, v5

    goto :goto_78

    :sswitch_51
    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v1, 0x7

    goto :goto_78

    :sswitch_5b
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v1, 0x5

    goto :goto_78

    :sswitch_65
    const-string v3, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    move v1, v4

    goto :goto_78

    :sswitch_6f
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v1, 0x4

    :goto_78
    packed-switch v1, :pswitch_data_18c

    goto/16 :goto_168

    .line 575
    :pswitch_7d
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-boolean v1, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-eqz v1, :cond_127

    .line 576
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 577
    .local v1, "subId":I
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$600(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    if-ltz v1, :cond_91

    move v4, v1

    goto :goto_92

    :cond_91
    move v4, v5

    :goto_92
    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 578
    .local v3, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_b8

    .line 579
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    iput v6, v4, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 580
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get sim slot ID : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v6, v6, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_b8
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    if-ltz v2, :cond_c3

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    goto :goto_c4

    :cond_c3
    move v2, v5

    :goto_c4
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "persist.sys.gps.dds.subId"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    const/16 v4, 0x18

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM_SLOT_ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v7, v7, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v2, v4, v5, v6}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$700(Lcom/android/server/location/gnss/GnssLocationProvider;IILjava/lang/Object;)V

    .line 584
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x1e

    if-le v2, v4, :cond_fd

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 585
    :cond_fd
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->getTimestamp()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$800(Lcom/android/server/location/gnss/GnssLocationProvider;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": sim slot changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v5, v5, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    .end local v1    # "subId":I
    .end local v3    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    :cond_127
    :pswitch_127
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->subscriptionOrCarrierConfigChanged()V
    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$900(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    goto :goto_168

    .line 558
    :pswitch_12d
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    .line 560
    .local v1, "deviceIdleService":Lcom/android/server/DeviceIdleInternal;
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$400(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 561
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider;->mDeviceIdleStationaryListener:Lcom/android/server/DeviceIdleInternal$StationaryListener;
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$500(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/DeviceIdleInternal$StationaryListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/DeviceIdleInternal;->registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    goto :goto_154

    .line 563
    :cond_14b
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 564
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider;->mDeviceIdleStationaryListener:Lcom/android/server/DeviceIdleInternal$StationaryListener;
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$500(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/DeviceIdleInternal$StationaryListener;

    move-result-object v2

    .line 563
    invoke-interface {v1, v2}, Lcom/android/server/DeviceIdleInternal;->unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    .line 572
    .end local v1    # "deviceIdleService":Lcom/android/server/DeviceIdleInternal;
    :goto_154
    :pswitch_154
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 573
    goto :goto_168

    .line 555
    :pswitch_15c
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->hibernate()V
    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$300(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 556
    goto :goto_168

    .line 552
    :pswitch_162
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->startNavigating()V
    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$200(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 553
    nop

    .line 591
    :goto_168
    return-void

    nop

    :sswitch_data_16a
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_6f
        -0x76c1dde1 -> :sswitch_65
        -0x56ac2893 -> :sswitch_5b
        -0x43dd7a3f -> :sswitch_51
        -0x2872215f -> :sswitch_47
        -0x18365bb -> :sswitch_3d
        0x33e5d967 -> :sswitch_33
        0x6a0dd473 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_162
        :pswitch_15c
        :pswitch_12d
        :pswitch_154
        :pswitch_154
        :pswitch_154
        :pswitch_7d
        :pswitch_127
    .end packed-switch
.end method
