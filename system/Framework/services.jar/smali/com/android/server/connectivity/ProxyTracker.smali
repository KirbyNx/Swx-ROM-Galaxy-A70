.class public Lcom/android/server/connectivity/ProxyTracker;
.super Ljava/lang/Object;
.source "ProxyTracker.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ENTERPRISE_PROXY_HAS_CHANGED:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private volatile mDefaultProxy:Landroid/net/ProxyInfo;

.field private mDefaultProxyEnabled:Z

.field private mGlobalProxy:Landroid/net/ProxyInfo;

.field private final mPacManager:Lcom/android/server/connectivity/PacManager;

.field private final mProxyLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    const-class v0, Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectivityServiceInternalHandler"    # Landroid/os/Handler;
    .param p3, "pacChangedEvent"    # I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 84
    iput-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxyEnabled:Z

    .line 103
    iput-object p1, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/server/connectivity/ProxyTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/android/server/connectivity/PacManager;

    const/16 v1, 0x64

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 114
    return-void
.end method

.method private static canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .registers 3
    .param p0, "proxy"    # Landroid/net/ProxyInfo;

    .line 133
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 134
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_1a
    return-object p0
.end method

.method private enforceSystemProcess()V
    .registers 3

    .line 449
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 452
    return-void

    .line 450
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getWifiEnterpriseProxy()Landroid/net/ProxyInfo;
    .registers 11

    .line 493
    const/4 v0, 0x0

    .line 495
    .local v0, "result":Landroid/net/ProxyInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 496
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_59

    .line 497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 499
    .local v2, "token":J
    :try_start_12
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 500
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_50

    .line 501
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_54

    .line 504
    .local v5, "ssid":Ljava/lang/String;
    :try_start_1c
    const-string/jumbo v6, "wifi_policy"

    .line 505
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 504
    invoke-static {v6}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v6

    .line 506
    .local v6, "wifiPolicyService":Lcom/samsung/android/knox/net/wifi/IWifiPolicy;
    if-eqz v6, :cond_34

    invoke-interface {v6, v5}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 507
    invoke-interface {v6, v5}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->retrieveEnterpriseProxy(Ljava/lang/String;)Landroid/net/ProxyInfo;

    move-result-object v7
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_33} :catch_35
    .catchall {:try_start_1c .. :try_end_33} :catchall_54

    move-object v0, v7

    .line 511
    .end local v6    # "wifiPolicyService":Lcom/samsung/android/knox/net/wifi/IWifiPolicy;
    :cond_34
    goto :goto_50

    .line 509
    :catch_35
    move-exception v6

    .line 510
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_36
    sget-object v7, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fail getting WifiPolicy: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_54

    .line 515
    .end local v4    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v5    # "ssid":Ljava/lang/String;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_50
    :goto_50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    goto :goto_59

    .line 515
    :catchall_54
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    throw v4

    .line 518
    .end local v2    # "token":J
    :cond_59
    :goto_59
    return-object v0
.end method

.method private isEnterpriseProxy(Landroid/net/ProxyInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/net/ProxyInfo;

    .line 526
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getEnterpriseProxy()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private isPacProxy(Landroid/net/ProxyInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/net/ProxyInfo;

    .line 522
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isPacProxy()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z
    .registers 6
    .param p0, "a"    # Landroid/net/ProxyInfo;
    .param p1, "b"    # Landroid/net/ProxyInfo;

    .line 150
    invoke-static {p0}, Lcom/android/server/connectivity/ProxyTracker;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 151
    .local v0, "pa":Landroid/net/ProxyInfo;
    invoke-static {p1}, Lcom/android/server/connectivity/ProxyTracker;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-result-object v1

    .line 154
    .local v1, "pb":Landroid/net/ProxyInfo;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1e
    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    return v2
.end method


# virtual methods
.method public fixupLinkProperties(Landroid/net/LinkProperties;)V
    .registers 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 544
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 545
    .local v0, "defaultProxy":Landroid/net/ProxyInfo;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/ProxyTracker;->isEnterpriseProxy(Landroid/net/ProxyInfo;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/ProxyTracker;->isPacProxy(Landroid/net/ProxyInfo;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/ProxyTracker;->isPacProxy(Landroid/net/ProxyInfo;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 549
    :cond_1a
    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 551
    :cond_1d
    return-void
.end method

.method public getDefaultProxy()Landroid/net/ProxyInfo;
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    monitor-exit v0

    return-object v1

    .line 172
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxyEnabled:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    monitor-exit v0

    return-object v1

    .line 173
    :cond_13
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 174
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    monitor-exit v0

    return-object v1

    .line 187
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getGlobalProxyFromSettings()Landroid/net/ProxyInfo;
    .registers 11

    .line 461
    const/4 v0, 0x0

    .line 463
    .local v0, "proxy":Landroid/net/ProxyInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 464
    .local v1, "res":Landroid/content/ContentResolver;
    const-string/jumbo v2, "global_http_proxy_host"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "host":Ljava/lang/String;
    const-string/jumbo v3, "global_http_proxy_port"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 466
    .local v3, "port":I
    const-string/jumbo v4, "global_http_proxy_exclusion_list"

    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 467
    .local v4, "exclList":Ljava/lang/String;
    const-string/jumbo v5, "global_proxy_pac_url"

    invoke-static {v1, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, "pacFileUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 471
    :cond_30
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 472
    new-instance v6, Landroid/net/ProxyInfo;

    invoke-direct {v6, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .local v6, "proxyProperties":Landroid/net/ProxyInfo;
    goto :goto_41

    .line 474
    .end local v6    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_3c
    new-instance v6, Landroid/net/ProxyInfo;

    invoke-direct {v6, v2, v3, v4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 476
    .restart local v6    # "proxyProperties":Landroid/net/ProxyInfo;
    :goto_41
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v7

    if-eqz v7, :cond_49

    .line 477
    move-object v0, v6

    goto :goto_63

    .line 479
    :cond_49
    sget-object v7, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid proxy properties, ignoring: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .end local v6    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_63
    :goto_63
    return-object v0
.end method

.method public synthetic lambda$loadGlobalProxy$0$ProxyTracker(Landroid/net/ProxyInfo;)V
    .registers 3
    .param p1, "proxyProperties"    # Landroid/net/ProxyInfo;

    .line 220
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mPacManager:Lcom/android/server/connectivity/PacManager;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z

    return-void
.end method

.method public loadDeprecatedGlobalHttpProxy()Z
    .registers 8

    .line 247
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "http_proxy"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "proxy":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3b

    .line 249
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "data":[Ljava/lang/String;
    array-length v3, v1

    if-nez v3, :cond_1e

    .line 251
    return v2

    .line 254
    :cond_1e
    aget-object v3, v1, v2

    .line 255
    .local v3, "proxyHost":Ljava/lang/String;
    const/16 v4, 0x1f90

    .line 256
    .local v4, "proxyPort":I
    array-length v5, v1

    const/4 v6, 0x1

    if-le v5, v6, :cond_30

    .line 258
    :try_start_26
    aget-object v5, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2c} :catch_2e

    move v4, v2

    .line 261
    goto :goto_30

    .line 259
    :catch_2e
    move-exception v5

    .line 260
    .local v5, "e":Ljava/lang/NumberFormatException;
    return v2

    .line 263
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_30
    :goto_30
    new-instance v2, Landroid/net/ProxyInfo;

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    .local v2, "p":Landroid/net/ProxyInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/ProxyTracker;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 265
    return v6

    .line 267
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "p":Landroid/net/ProxyInfo;
    .end local v3    # "proxyHost":Ljava/lang/String;
    .end local v4    # "proxyPort":I
    :cond_3b
    return v2
.end method

.method public loadGlobalProxy()V
    .registers 10

    .line 195
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->loadDeprecatedGlobalHttpProxy()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    return-void

    .line 198
    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 199
    .local v0, "res":Landroid/content/ContentResolver;
    const-string/jumbo v1, "global_http_proxy_host"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "global_http_proxy_port"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 201
    .local v2, "port":I
    const-string/jumbo v3, "global_http_proxy_exclusion_list"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "exclList":Ljava/lang/String;
    const-string/jumbo v4, "global_proxy_pac_url"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "pacFileUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7a

    .line 205
    :cond_36
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 206
    new-instance v5, Landroid/net/ProxyInfo;

    invoke-direct {v5, v4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .local v5, "proxyProperties":Landroid/net/ProxyInfo;
    goto :goto_47

    .line 208
    .end local v5    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_42
    new-instance v5, Landroid/net/ProxyInfo;

    invoke-direct {v5, v1, v2, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    .restart local v5    # "proxyProperties":Landroid/net/ProxyInfo;
    :goto_47
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v6

    if-nez v6, :cond_64

    .line 211
    sget-object v6, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid proxy properties, ignoring: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 215
    :cond_64
    iget-object v6, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 216
    :try_start_67
    iput-object v5, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 217
    monitor-exit v6
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_b6

    .line 218
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7a

    .line 219
    iget-object v6, p0, Lcom/android/server/connectivity/ProxyTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/connectivity/-$$Lambda$ProxyTracker$V8d5RR1I7NIjG1iRNqGCmLnqOb4;

    invoke-direct {v7, p0, v5}, Lcom/android/server/connectivity/-$$Lambda$ProxyTracker$V8d5RR1I7NIjG1iRNqGCmLnqOb4;-><init>(Lcom/android/server/connectivity/ProxyTracker;Landroid/net/ProxyInfo;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    .end local v5    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_7a
    :try_start_7a
    const-string/jumbo v5, "misc_policy"

    .line 227
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 226
    invoke-static {v5}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v5

    .line 229
    .local v5, "miscPolicyService":Lcom/samsung/android/knox/IMiscPolicy;
    if-eqz v5, :cond_96

    invoke-interface {v5}, Lcom/samsung/android/knox/IMiscPolicy;->isGlobalProxyAllowed()Z

    move-result v6

    if-nez v6, :cond_96

    .line 230
    iget-object v6, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/net/ProxyInfo;->setEnterpriseProxy(I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_96} :catch_97

    .line 236
    .end local v5    # "miscPolicyService":Lcom/samsung/android/knox/IMiscPolicy;
    :cond_96
    goto :goto_b2

    .line 234
    :catch_97
    move-exception v5

    .line 235
    .local v5, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail getting MiscPolicy : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_b2
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->loadDeprecatedGlobalHttpProxy()Z

    .line 241
    return-void

    .line 217
    .local v5, "proxyProperties":Landroid/net/ProxyInfo;
    :catchall_b6
    move-exception v7

    :try_start_b7
    monitor-exit v6
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v7
.end method

.method public retrieveEnterpriseProxy(Z)Landroid/net/ProxyInfo;
    .registers 5
    .param p1, "readDatabase"    # Z

    .line 432
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/server/connectivity/ProxyTracker;->enforceSystemProcess()V

    .line 434
    :cond_5
    const/4 v0, 0x0

    .line 435
    .local v0, "result":Landroid/net/ProxyInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    const/4 v2, 0x2

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getEnterpriseProxy()I

    move-result v1

    if-ne v1, v2, :cond_1c

    .line 437
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->getGlobalProxyFromSettings()Landroid/net/ProxyInfo;

    move-result-object v1

    goto :goto_1a

    :cond_18
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    :goto_1a
    move-object v0, v1

    goto :goto_32

    .line 438
    :cond_1c
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getEnterpriseProxy()I

    move-result v1

    if-ne v1, v2, :cond_32

    .line 440
    if-eqz p1, :cond_2f

    invoke-direct {p0}, Lcom/android/server/connectivity/ProxyTracker;->getWifiEnterpriseProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    goto :goto_31

    :cond_2f
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    :goto_31
    move-object v0, v1

    .line 442
    :cond_32
    :goto_32
    return-object v0
.end method

.method public sendEnterpriseProxyBroadcast(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 404
    const/4 v0, 0x0

    .line 406
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 408
    .local v1, "token":J
    const/4 v3, 0x1

    :try_start_6
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/ProxyTracker;->retrieveEnterpriseProxy(Z)Landroid/net/ProxyInfo;

    move-result-object v3

    move-object v0, v3

    .line 410
    if-eqz v0, :cond_28

    .line 411
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x24000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 414
    const-string v4, "android.intent.extra.PROXY_INFO"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 415
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    iget-object v4, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_2d

    .line 420
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 421
    nop

    .line 422
    return-void

    .line 420
    :catchall_2d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 421
    throw v3
.end method

.method public sendProxyBroadcast()V
    .registers 8

    .line 277
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 278
    .local v0, "defaultProxy":Landroid/net/ProxyInfo;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_10

    :cond_8
    new-instance v1, Landroid/net/ProxyInfo;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v1, v3, v2, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 279
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    :goto_10
    iget-object v2, p0, Lcom/android/server/connectivity/ProxyTracker;->mPacManager:Lcom/android/server/connectivity/PacManager;

    invoke-virtual {v2, v1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 280
    return-void

    .line 282
    :cond_19
    sget-object v2, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending Proxy Broadcast for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    const-string v3, "android.intent.extra.PROXY_INFO"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 287
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 289
    .local v3, "ident":J
    :try_start_45
    iget-object v5, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_67

    .line 291
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    nop

    .line 296
    sget-object v5, Landroid/sec/enterprise/proxy/EnterpriseProxyConstants;->LOCAL_ENTERPRISE_PROXY_WHITELIST:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_56
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 297
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/server/connectivity/ProxyTracker;->sendEnterpriseProxyBroadcast(Ljava/lang/String;)V

    .line 298
    .end local v6    # "packageName":Ljava/lang/String;
    goto :goto_56

    .line 301
    :cond_66
    return-void

    .line 291
    :catchall_67
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    throw v5
.end method

.method public setDefaultProxy(Landroid/net/ProxyInfo;)V
    .registers 6
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 361
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 362
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 363
    const/4 p1, 0x0

    .line 366
    :cond_19
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    monitor-exit v0

    return-void

    .line 368
    :cond_26
    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_46

    .line 369
    sget-object v1, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid proxy properties, ignoring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    monitor-exit v0

    return-void

    .line 378
    :cond_46
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_6f

    if-eqz p1, :cond_6f

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 379
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 380
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 381
    iput-object p1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 382
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    .line 383
    monitor-exit v0

    return-void

    .line 389
    :cond_6f
    if-eqz p1, :cond_7f

    invoke-direct {p0}, Lcom/android/server/connectivity/ProxyTracker;->getWifiEnterpriseProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 390
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/net/ProxyInfo;->setEnterpriseProxy(I)V

    .line 394
    :cond_7f
    iput-object p1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    .line 396
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_87

    monitor-exit v0

    return-void

    .line 397
    :cond_87
    iget-boolean v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxyEnabled:Z

    if-eqz v1, :cond_8e

    .line 398
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    .line 400
    :cond_8e
    monitor-exit v0

    .line 401
    return-void

    .line 400
    :catchall_90
    move-exception v1

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_1c .. :try_end_92} :catchall_90

    throw v1
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .registers 11
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 309
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-ne p1, v1, :cond_9

    monitor-exit v0

    return-void

    .line 312
    :cond_9
    if-eqz p1, :cond_15

    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    monitor-exit v0

    return-void

    .line 313
    :cond_15
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, p1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    monitor-exit v0

    return-void

    .line 319
    :cond_23
    if-eqz p1, :cond_88

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 320
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 321
    :cond_3b
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_59

    .line 322
    sget-object v1, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid proxy properties, ignoring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    monitor-exit v0

    return-void

    .line 325
    :cond_59
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, p1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    iput-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 326
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "host":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    .line 328
    .local v2, "port":I
    iget-object v3, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "exclList":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 330
    const-string v4, ""

    goto :goto_87

    :cond_7f
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "pacFileUrl":Ljava/lang/String;
    :goto_87
    goto :goto_92

    .line 332
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "exclList":Ljava/lang/String;
    .end local v4    # "pacFileUrl":Ljava/lang/String;
    :cond_88
    const-string v1, ""

    .line 333
    .restart local v1    # "host":Ljava/lang/String;
    const/4 v2, 0x0

    .line 334
    .restart local v2    # "port":I
    const-string v3, ""

    .line 335
    .restart local v3    # "exclList":Ljava/lang/String;
    const-string v4, ""

    .line 336
    .restart local v4    # "pacFileUrl":Ljava/lang/String;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 338
    :goto_92
    iget-object v5, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 339
    .local v5, "res":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_9c
    .catchall {:try_start_3 .. :try_end_9c} :catchall_c3

    .line 341
    .local v6, "token":J
    :try_start_9c
    const-string/jumbo v8, "global_http_proxy_host"

    invoke-static {v5, v8, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 342
    const-string/jumbo v8, "global_http_proxy_port"

    invoke-static {v5, v8, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    const-string/jumbo v8, "global_http_proxy_exclusion_list"

    invoke-static {v5, v8, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 344
    const-string/jumbo v8, "global_proxy_pac_url"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b4
    .catchall {:try_start_9c .. :try_end_b4} :catchall_bd

    .line 346
    :try_start_b4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    nop

    .line 349
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    .line 350
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "exclList":Ljava/lang/String;
    .end local v4    # "pacFileUrl":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/ContentResolver;
    .end local v6    # "token":J
    monitor-exit v0

    .line 351
    return-void

    .line 346
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v2    # "port":I
    .restart local v3    # "exclList":Ljava/lang/String;
    .restart local v4    # "pacFileUrl":Ljava/lang/String;
    .restart local v5    # "res":Landroid/content/ContentResolver;
    .restart local v6    # "token":J
    :catchall_bd
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    nop

    .end local p0    # "this":Lcom/android/server/connectivity/ProxyTracker;
    .end local p1    # "proxyInfo":Landroid/net/ProxyInfo;
    throw v8

    .line 350
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "exclList":Ljava/lang/String;
    .end local v4    # "pacFileUrl":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/ContentResolver;
    .end local v6    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/ProxyTracker;
    .restart local p1    # "proxyInfo":Landroid/net/ProxyInfo;
    :catchall_c3
    move-exception v1

    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_b4 .. :try_end_c5} :catchall_c3

    throw v1
.end method

.method public updateGlobalProxy(Landroid/net/ProxyInfo;)V
    .registers 2
    .param p1, "newProxy"    # Landroid/net/ProxyInfo;

    .line 123
    iput-object p1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 124
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    .line 125
    return-void
.end method
