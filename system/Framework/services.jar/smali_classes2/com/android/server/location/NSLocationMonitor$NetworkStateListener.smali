.class Lcom/android/server/location/NSLocationMonitor$NetworkStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "NSLocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/NSLocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkStateListener"
.end annotation


# direct methods
.method private constructor <init>(I)V
    .registers 4
    .param p1, "subId"    # I

    .line 908
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 909
    invoke-virtual {p0, p1}, Lcom/android/server/location/NSLocationMonitor$NetworkStateListener;->semSetSubscriptionId(I)V

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructor, NetworkStateListener subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NSLocationMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/location/NSLocationMonitor$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/android/server/location/NSLocationMonitor$1;

    .line 907
    invoke-direct {p0, p1}, Lcom/android/server/location/NSLocationMonitor$NetworkStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 13
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 915
    const-string v0, "NSLocationMonitor"

    if-nez p1, :cond_b

    .line 916
    const-string/jumbo v1, "onServiceStateChanged null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-void

    .line 920
    :cond_b
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 921
    .local v1, "state":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getChannelNumber()I

    move-result v2

    .line 922
    .local v2, "channelNumber":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceStateChanged, state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / channel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v3, 0x0

    .line 925
    .local v3, "isRegistered":Z
    const/4 v4, 0x0

    .line 926
    .local v4, "nrState":Z
    const/4 v5, -0x1

    .line 927
    .local v5, "networkType":I
    const-string/jumbo v6, "unknown"

    .line 929
    .local v6, "networkTypeName":Ljava/lang/String;
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v7

    .line 931
    .local v7, "nri":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v7, :cond_77

    .line 932
    const/4 v3, 0x1

    .line 933
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v5

    .line 934
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    .line 935
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v8, 0x0

    :goto_50
    move v4, v8

    .line 937
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "networkType["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " / nrState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 939
    :cond_77
    const-string v8, "Failed to get registration info from serviceState"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :goto_7c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 943
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "serviceState"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 944
    const-string/jumbo v8, "isRegistered"

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 945
    const-string/jumbo v8, "nrState"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 946
    const-string v8, "channelNumber"

    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 947
    const-string/jumbo v8, "networkType"

    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 948
    const-string/jumbo v8, "networkTypeName"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 951
    .local v8, "msg":Landroid/os/Message;
    sget-object v9, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->SERVICE_STATE_CHANGED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v9}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v9

    iput v9, v8, Landroid/os/Message;->what:I

    .line 952
    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 954
    invoke-static {v8}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 955
    return-void
.end method
