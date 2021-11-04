.class Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;
.super Lcom/android/internal/util/State;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitingForNextProbeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V
    .registers 2

    .line 852
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/WifiNetworkMonitor$1;

    .line 852
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V

    return-void
.end method

.method private isRfTestMode()Z
    .registers 4

    .line 865
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 866
    .local v0, "semWifiManager":Lcom/samsung/android/wifi/SemWifiManager;
    if-eqz v0, :cond_21

    .line 867
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getPsmInfo()Ljava/lang/String;

    move-result-object v1

    .line 868
    .local v1, "ret":Ljava/lang/String;
    if-eqz v1, :cond_21

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 869
    const/4 v2, 0x1

    return v2

    .line 872
    .end local v1    # "ret":Ljava/lang/String;
    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method private scheduleNextProbe()V
    .registers 5

    .line 876
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;->isRfTestMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 877
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_29

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "scheduleNextProbe - RF MODE ENABLED - skip!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_29
    return-void

    .line 880
    :cond_2a
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    const/4 v1, 0x6

    # ++operator for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateToken:I
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3704(Lcom/android/server/connectivity/WifiNetworkMonitor;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 881
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateDelayMs:I
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3800(Lcom/android/server/connectivity/WifiNetworkMonitor;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 882
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    const/4 v2, 0x2

    # *= operator for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateDelayMs:I
    invoke-static {v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3828(Lcom/android/server/connectivity/WifiNetworkMonitor;I)I

    .line 883
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateDelayMs:I
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3800(Lcom/android/server/connectivity/WifiNetworkMonitor;)I

    move-result v1

    const v2, 0x927c0

    if-le v1, v2, :cond_56

    .line 884
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateDelayMs:I
    invoke-static {v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3802(Lcom/android/server/connectivity/WifiNetworkMonitor;I)I

    .line 886
    :cond_56
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 855
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_11

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_11
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;->scheduleNextProbe()V

    .line 857
    return-void
.end method

.method public exit()V
    .registers 1

    .line 862
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 890
    const/4 v0, 0x0

    return v0
.end method
