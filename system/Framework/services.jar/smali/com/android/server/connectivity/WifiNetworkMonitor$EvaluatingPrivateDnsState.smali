.class Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;
.super Lcom/android/internal/util/State;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvaluatingPrivateDnsState"
.end annotation


# instance fields
.field private mPrivateDnsConfig:Landroid/net/shared/PrivateDnsConfig;

.field private mPrivateDnsReevalDelayMs:I

.field final synthetic this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V
    .registers 2

    .line 970
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/WifiNetworkMonitor$1;

    .line 970
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V

    return-void
.end method

.method private handlePrivateDnsEvaluationFailure()V
    .registers 5

    .line 1071
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->noteProbeResult(IZ)V

    .line 1073
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->reportEvaluationResult(ILjava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    int-to-long v1, v1

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessageDelayed(IJ)V

    .line 1082
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    .line 1083
    const v1, 0x927c0

    if-le v0, v1, :cond_2d

    .line 1084
    iput v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    .line 1086
    :cond_2d
    return-void
.end method

.method private handlePrivateDnsEvaluationSuccess()V
    .registers 4

    .line 1066
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->noteProbeResult(IZ)V

    .line 1068
    return-void
.end method

.method private inStrictMode()Z
    .registers 2

    .line 1041
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2400(Lcom/android/server/connectivity/WifiNetworkMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isStrictModeHostnameResolved()Z
    .registers 3

    .line 1045
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Landroid/net/shared/PrivateDnsConfig;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 1046
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2400(Lcom/android/server/connectivity/WifiNetworkMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Landroid/net/shared/PrivateDnsConfig;

    iget-object v0, v0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    array-length v0, v0

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 1045
    :goto_1c
    return v0
.end method

.method private notifyPrivateDnsConfigResolved()V
    .registers 4

    .line 1062
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mCallbacks:Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Landroid/net/shared/PrivateDnsConfig;

    invoke-virtual {v1}, Landroid/net/shared/PrivateDnsConfig;->toParcel()Landroid/net/PrivateDnsConfigParcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;Z)V

    .line 1063
    return-void
.end method

.method private resolveStrictModeHostname()V
    .registers 5

    .line 1053
    :try_start_0
    invoke-static {}, Landroid/net/DnsResolver;->getInstance()Landroid/net/DnsResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 1054
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mCleartextDnsNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/net/Network;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2400(Lcom/android/server/connectivity/WifiNetworkMonitor;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->getDnsProbeTimeout()I
    invoke-static {v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$5900(Lcom/android/server/connectivity/WifiNetworkMonitor;)I

    move-result v3

    .line 1053
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils;->getAllByName(Landroid/net/DnsResolver;Landroid/net/Network;Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    .line 1055
    .local v0, "ips":[Ljava/net/InetAddress;
    new-instance v1, Landroid/net/shared/PrivateDnsConfig;

    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2400(Lcom/android/server/connectivity/WifiNetworkMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/net/shared/PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V

    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Landroid/net/shared/PrivateDnsConfig;
    :try_end_27
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_27} :catch_28

    .line 1058
    .end local v0    # "ips":[Ljava/net/InetAddress;
    goto :goto_2c

    .line 1056
    :catch_28
    move-exception v0

    .line 1057
    .local v0, "uhe":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Landroid/net/shared/PrivateDnsConfig;

    .line 1059
    .end local v0    # "uhe":Ljava/net/UnknownHostException;
    :goto_2c
    return-void
.end method

.method private sendPrivateDnsProbe()Z
    .registers 15

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-dnsotls-ds.metric.gstatic.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, "host":Ljava/lang/String;
    new-instance v1, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->start()Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    move-result-object v1

    .line 1092
    .local v1, "watch":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    const/4 v3, 0x0

    .line 1095
    .local v3, "success":Z
    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    :try_start_2e
    iget-object v7, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetwork:Landroid/net/Network;
    invoke-static {v7}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4300(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/net/Network;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v7

    .line 1096
    .local v7, "ips":[Ljava/net/InetAddress;
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->stop()J

    move-result-wide v8

    .line 1097
    .local v8, "time":J
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1098
    .local v10, "strIps":Ljava/lang/String;
    if-eqz v7, :cond_47

    array-length v11, v7

    if-lez v11, :cond_47

    move v11, v6

    goto :goto_48

    :cond_47
    move v11, v2

    :goto_48
    move v3, v11

    .line 1099
    const-string v11, "%dus: %s"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v2

    aput-object v10, v12, v6

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    invoke-static {v5, v0, v11}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6100(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/net/UnknownHostException; {:try_start_2e .. :try_end_5c} :catch_5d

    .line 1104
    .end local v7    # "ips":[Ljava/net/InetAddress;
    .end local v10    # "strIps":Ljava/lang/String;
    goto :goto_79

    .line 1100
    .end local v8    # "time":J
    :catch_5d
    move-exception v7

    .line 1101
    .local v7, "uhe":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->stop()J

    move-result-wide v8

    .line 1102
    .restart local v8    # "time":J
    new-array v4, v4, [Ljava/lang/Object;

    .line 1103
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v2

    invoke-virtual {v7}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    const-string v2, "%dus - Error: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1102
    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    invoke-static {v5, v0, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6100(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1106
    .end local v7    # "uhe":Ljava/net/UnknownHostException;
    :goto_79
    return v3
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 976
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_11

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_11
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    .line 978
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Landroid/net/shared/PrivateDnsConfig;

    .line 979
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(I)V

    .line 980
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 984
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    const/4 v2, 0x0

    if-eq v0, v1, :cond_60

    const/16 v1, 0xf

    if-eq v0, v1, :cond_c

    .line 1035
    return v2

    .line 986
    :cond_c
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->inStrictMode()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 987
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->isStrictModeHostnameResolved()Z

    move-result v0

    if-nez v0, :cond_29

    .line 988
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->resolveStrictModeHostname()V

    .line 990
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->isStrictModeHostnameResolved()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 991
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->notifyPrivateDnsConfigResolved()V

    goto :goto_29

    .line 993
    :cond_25
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->handlePrivateDnsEvaluationFailure()V

    .line 994
    goto :goto_5e

    .line 1006
    :cond_29
    :goto_29
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->sendPrivateDnsProbe()Z

    move-result v0

    if-nez v0, :cond_33

    .line 1007
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->handlePrivateDnsEvaluationFailure()V

    .line 1008
    goto :goto_5e

    .line 1010
    :cond_33
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->handlePrivateDnsEvaluationSuccess()V

    goto :goto_42

    .line 1012
    :cond_37
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->removeProbeResult(I)V

    .line 1023
    :goto_42
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mUserWantAsIs:Z
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$5000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 1024
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_5e

    .line 1026
    :cond_54
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mValidatedWaitAuthState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1800(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1028
    nop

    .line 1037
    :goto_5e
    const/4 v0, 0x1

    return v0

    .line 1031
    :cond_60
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    .line 1033
    return v2
.end method
