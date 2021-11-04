.class public Lcom/android/server/ConnectivityService$Dependencies;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;
    .registers 2

    .line 1328
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    return-object v0
.end method

.method public getIpConnectivityMetrics()Landroid/net/IIpConnectivityMetrics;
    .registers 2

    .line 1323
    nop

    .line 1324
    const-string v0, "connmetrics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1323
    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;
    .registers 3

    .line 1315
    const-class v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    const-string/jumbo v1, "no IpConnectivityMetrics service"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    return-object v0
.end method

.method public getNetworkStack()Landroid/net/NetworkStackClient;
    .registers 2

    .line 1271
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    return-object v0
.end method

.method public getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;
    .registers 2

    .line 1257
    new-instance v0, Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v0}, Lcom/android/server/connectivity/MockableSystemProperties;-><init>()V

    return-object v0
.end method

.method public hasService(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1308
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public makeHandlerThread()Landroid/os/HandlerThread;
    .registers 3

    .line 1264
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ConnectivityServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public makeMultinetworkPolicyTracker(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/net/util/MultinetworkPolicyTracker;
    .registers 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "r"    # Ljava/lang/Runnable;

    .line 1301
    new-instance v0, Landroid/net/util/MultinetworkPolicyTracker;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/util/MultinetworkPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public makeNetIdManager()Lcom/android/server/NetIdManager;
    .registers 2

    .line 1286
    new-instance v0, Lcom/android/server/NetIdManager;

    invoke-direct {v0}, Lcom/android/server/NetIdManager;-><init>()V

    return-object v0
.end method

.method public makeProxyTracker(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/connectivity/ProxyTracker;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connServiceHandler"    # Landroid/os/Handler;

    .line 1279
    new-instance v0, Lcom/android/server/connectivity/ProxyTracker;

    const/16 v1, 0x10

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/connectivity/ProxyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    return-object v0
.end method

.method public queryUserAccess(II)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "netId"    # I

    .line 1293
    invoke-static {p1, p2}, Landroid/net/NetworkUtils;->queryUserAccess(II)Z

    move-result v0

    return v0
.end method
