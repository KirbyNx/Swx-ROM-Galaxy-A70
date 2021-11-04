.class Lcom/android/server/connectivity/WifiNetworkMonitor$ValidatedState;
.super Lcom/android/internal/util/State;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidatedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V
    .registers 2

    .line 1132
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/WifiNetworkMonitor$1;

    .line 1132
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 1135
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_11

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$ValidatedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_11
    const/4 v0, 0x1

    .line 1148
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$2200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->reportEvaluationResult(ILjava/lang/String;)V

    .line 1154
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mRunFullParallelCheck:Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$4702(Lcom/android/server/connectivity/WifiNetworkMonitor;Z)Z

    .line 1155
    return-void
.end method

.method public exit()V
    .registers 1

    .line 1160
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1164
    const/4 v0, 0x0

    return v0
.end method
