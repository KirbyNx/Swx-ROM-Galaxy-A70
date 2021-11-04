.class Lcom/android/server/location/NSLocationMonitor$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NSLocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/NSLocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/NSLocationMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/location/NSLocationMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 753
    iput-object p1, p0, Lcom/android/server/location/NSLocationMonitor$2;->this$0:Lcom/android/server/location/NSLocationMonitor;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 12

    .line 756
    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "onSubscriptionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$2;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$1300(Lcom/android/server/location/NSLocationMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 759
    const/4 v1, 0x0

    .line 760
    .local v1, "isInitialized":Z
    const/4 v2, 0x0

    .local v2, "simSlot":I
    :goto_11
    :try_start_11
    iget-object v3, p0, Lcom/android/server/location/NSLocationMonitor$2;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mSimCount:I
    invoke-static {v3}, Lcom/android/server/location/NSLocationMonitor;->access$1400(Lcom/android/server/location/NSLocationMonitor;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_10c

    .line 761
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 763
    .local v3, "subIdtemp":[I
    if-eqz v3, :cond_ec

    array-length v5, v3

    if-nez v5, :cond_25

    goto/16 :goto_ec

    .line 769
    :cond_25
    const/4 v5, 0x0

    aget v6, v3, v5

    .line 770
    .local v6, "subId":I
    iget-object v7, p0, Lcom/android/server/location/NSLocationMonitor$2;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mSimSubId:[I
    invoke-static {v7}, Lcom/android/server/location/NSLocationMonitor;->access$1500(Lcom/android/server/location/NSLocationMonitor;)[I

    move-result-object v7

    if-eqz v7, :cond_6e

    iget-object v7, p0, Lcom/android/server/location/NSLocationMonitor$2;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mSimSubId:[I
    invoke-static {v7}, Lcom/android/server/location/NSLocationMonitor;->access$1500(Lcom/android/server/location/NSLocationMonitor;)[I

    move-result-object v7

    array-length v7, v7

    iget-object v8, p0, Lcom/android/server/location/NSLocationMonitor$2;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mSimCount:I
    invoke-static {v8}, Lcom/android/server/location/NSLocationMonitor;->access$1400(Lcom/android/server/location/NSLocationMonitor;)I

    move-result v8

    if-ne v7, v8, :cond_6e

    iget-object v7, p0, Lcom/android/server/location/NSLocationMonitor$2;->this$0:Lcom/android/server/location/NSLocationMonitor;

    .line 771
    # getter for: Lcom/android/server/location/NSLocationMonitor;->mSimSubId:[I
    invoke-static {v7}, Lcom/android/server/location/NSLocationMonitor;->access$1500(Lcom/android/server/location/NSLocationMonitor;)[I

    move-result-object v7

    aget v7, v7, v2

    if-ne v6, v7, :cond_6e

    .line 772
    const-string v4, "NSLocationMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SubId["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] for sim["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] was not changed"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    goto/16 :goto_108

    .line 777
    :cond_6e
    const-string v7, "NSLocationMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SubId was changed for sim["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v7, p0, Lcom/android/server/location/NSLocationMonitor$2;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mSimSubId:[I
    invoke-static {v7}, Lcom/android/server/location/NSLocationMonitor;->access$1500(Lcom/android/server/location/NSLocationMonitor;)[I

    move-result-object v7

    aput v6, v7, v2

    .line 781
    iget-object v7, p0, Lcom/android/server/location/NSLocationMonitor$2;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/location/NSLocationMonitor;->access$800(Lcom/android/server/location/NSLocationMonitor;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 782
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_108

    .line 784
    iget-object v8, p0, Lcom/android/server/location/NSLocationMonitor$2;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;
    invoke-static {v8}, Lcom/android/server/location/NSLocationMonitor;->access$1600(Lcom/android/server/location/NSLocationMonitor;)[Landroid/telephony/PhoneStateListener;

    move-result-object v8

    aget-object v8, v8, v2

    if-eqz v8, :cond_d1

    .line 785
    const-string v8, "NSLocationMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unregister previous PhoneStateListener SimSlot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v8, p0, Lcom/android/server/location/NSLocationMonitor$2;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;
    invoke-static {v8}, Lcom/android/server/location/NSLocationMonitor;->access$1600(Lcom/android/server/location/NSLocationMonitor;)[Landroid/telephony/PhoneStateListener;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v7, v8, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 790
    :cond_d1
    iget-object v5, p0, Lcom/android/server/location/NSLocationMonitor$2;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;
    invoke-static {v5}, Lcom/android/server/location/NSLocationMonitor;->access$1600(Lcom/android/server/location/NSLocationMonitor;)[Landroid/telephony/PhoneStateListener;

    move-result-object v5

    new-instance v8, Lcom/android/server/location/NSLocationMonitor$NetworkStateListener;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9}, Lcom/android/server/location/NSLocationMonitor$NetworkStateListener;-><init>(ILcom/android/server/location/NSLocationMonitor$1;)V

    aput-object v8, v5, v2

    .line 791
    iget-object v5, p0, Lcom/android/server/location/NSLocationMonitor$2;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;
    invoke-static {v5}, Lcom/android/server/location/NSLocationMonitor;->access$1600(Lcom/android/server/location/NSLocationMonitor;)[Landroid/telephony/PhoneStateListener;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v7, v5, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 793
    const/4 v1, 0x1

    goto :goto_108

    .line 764
    .end local v6    # "subId":I
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    :cond_ec
    :goto_ec
    const-string v4, "NSLocationMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load subId for sim["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    nop

    .line 760
    .end local v3    # "subIdtemp":[I
    :cond_108
    :goto_108
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    .line 797
    .end local v2    # "simSlot":I
    :cond_10c
    if-eqz v1, :cond_12a

    .line 798
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 799
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "isInitialized"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 801
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 802
    .local v3, "msg":Landroid/os/Message;
    sget-object v4, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->SIM_STATE_CHANGED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v4}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v4

    iput v4, v3, Landroid/os/Message;->what:I

    .line 803
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 805
    invoke-static {v3}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 807
    .end local v1    # "isInitialized":Z
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_12a
    monitor-exit v0

    .line 808
    return-void

    .line 807
    :catchall_12c
    move-exception v1

    monitor-exit v0
    :try_end_12e
    .catchall {:try_start_11 .. :try_end_12e} :catchall_12c

    throw v1
.end method
