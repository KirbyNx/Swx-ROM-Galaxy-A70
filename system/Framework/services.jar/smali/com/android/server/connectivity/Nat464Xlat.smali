.class public Lcom/android/server/connectivity/Nat464Xlat;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Nat464Xlat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Nat464Xlat$State;
    }
.end annotation


# static fields
.field private static final CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field private static final NETWORK_STATES:[Landroid/net/NetworkInfo$State;

.field private static final NETWORK_TYPES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBaseIface:Ljava/lang/String;

.field private final mDnsResolver:Landroid/net/IDnsResolver;

.field private mIPv6Address:Ljava/net/Inet6Address;

.field private mIface:Ljava/lang/String;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNat64PrefixFromDns:Landroid/net/IpPrefix;

.field private mNat64PrefixFromRa:Landroid/net/IpPrefix;

.field private mNat64PrefixInUse:Landroid/net/IpPrefix;

.field private final mNetd:Landroid/net/INetd;

.field private final mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mPrefixDiscoveryRunning:Z

.field private mState:Lcom/android/server/connectivity/Nat464Xlat$State;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 55
    const-class v0, Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_TYPES:[I

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_STATES:[Landroid/net/NetworkInfo$State;

    return-void

    :array_20
    .array-data 4
        0x0
        0x1
        0x9
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetd;Landroid/net/IDnsResolver;Landroid/os/INetworkManagementService;)V
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "netd"    # Landroid/net/INetd;
    .param p3, "dnsResolver"    # Landroid/net/IDnsResolver;
    .param p4, "nmService"    # Landroid/os/INetworkManagementService;

    .line 106
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 101
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 107
    iput-object p3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 108
    iput-object p2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetd:Landroid/net/INetd;

    .line 109
    iput-object p4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    .line 110
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 111
    return-void
.end method

.method private enterRunningState()V
    .registers 2

    .line 215
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 216
    return-void
.end method

.method private enterStartingState(Ljava/lang/String;)V
    .registers 7
    .param p1, "baseIface"    # Ljava/lang/String;

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_89

    .line 185
    nop

    .line 187
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->selectNat64Prefix()Landroid/net/IpPrefix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64PrefixInUse:Landroid/net/IpPrefix;

    .line 188
    const/4 v1, 0x0

    .line 190
    .local v1, "addrStr":Ljava/lang/String;
    :try_start_d
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetd:Landroid/net/INetd;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Landroid/net/INetd;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_19
    .catch Landroid/os/ServiceSpecificException; {:try_start_d .. :try_end_17} :catch_19

    move-object v1, v0

    .line 193
    goto :goto_38

    .line 191
    :catch_19
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error starting clatd on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "v4-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    .line 196
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 198
    :try_start_52
    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIPv6Address:Ljava/net/Inet6Address;
    :try_end_5a
    .catch Ljava/lang/ClassCastException; {:try_start_52 .. :try_end_5a} :catch_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_52 .. :try_end_5a} :catch_5b
    .catch Ljava/lang/NullPointerException; {:try_start_52 .. :try_end_5a} :catch_5b

    .line 201
    goto :goto_72

    .line 199
    :catch_5b
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid IPv6 address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_72
    iget-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mPrefixDiscoveryRunning:Z

    if-eqz v0, :cond_7f

    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isPrefixDiscoveryNeeded()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 203
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stopPrefixDiscovery()V

    .line 205
    :cond_7f
    iget-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mPrefixDiscoveryRunning:Z

    if-nez v0, :cond_88

    .line 206
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64PrefixInUse:Landroid/net/IpPrefix;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Nat464Xlat;->setPrefix64(Landroid/net/IpPrefix;)V

    .line 208
    :cond_88
    return-void

    .line 182
    .end local v1    # "addrStr":Ljava/lang/String;
    :catch_89
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t register iface observer for clat on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method private getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 464
    .local v0, "config":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 465
    .end local v0    # "config":Landroid/net/InterfaceConfiguration;
    :catch_b
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting link properties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 489
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_88

    if-eqz p2, :cond_88

    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_88

    .line 493
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Nat464Xlat;->getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v0

    .line 494
    .local v0, "clatAddress":Landroid/net/LinkAddress;
    if-nez v0, :cond_2e

    .line 495
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clatAddress was null for stacked iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void

    .line 499
    :cond_2e
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string/jumbo v3, "interface %s is up, adding stacked link %s on top of %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :try_start_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ril.clatd.v4-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "up"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_64} :catch_65

    .line 507
    goto :goto_69

    .line 505
    :catch_65
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 510
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_69
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->enterRunningState()V

    .line 511
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 512
    .local v1, "lp":Landroid/net/LinkProperties;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Nat464Xlat;->makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 513
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 514
    return-void

    .line 490
    .end local v0    # "clatAddress":Landroid/net/LinkAddress;
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_88
    :goto_88
    return-void
.end method

.method private handleInterfaceRemoved(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 521
    return-void

    .line 523
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_10

    .line 524
    return-void

    .line 527
    :cond_10
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    .line 533
    return-void
.end method

.method private isPrefixDiscoveryNeeded()Z
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64PrefixFromRa:Landroid/net/IpPrefix;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private leaveStartedState()V
    .registers 5

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p0}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6

    .line 226
    goto :goto_27

    .line 224
    :catch_6
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unregistering clatd observer on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64PrefixInUse:Landroid/net/IpPrefix;

    .line 228
    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    .line 231
    iget-boolean v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mPrefixDiscoveryRunning:Z

    if-nez v1, :cond_35

    .line 232
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Nat464Xlat;->setPrefix64(Landroid/net/IpPrefix;)V

    .line 235
    :cond_35
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isPrefixDiscoveryNeeded()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 236
    iget-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mPrefixDiscoveryRunning:Z

    if-nez v0, :cond_42

    .line 237
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->startPrefixDiscovery()V

    .line 239
    :cond_42
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->DISCOVERING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    goto :goto_4e

    .line 241
    :cond_47
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stopPrefixDiscovery()V

    .line 242
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 244
    :goto_4e
    return-void
.end method

.method private makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;
    .registers 7
    .param p1, "clatAddress"    # Landroid/net/LinkAddress;

    .line 444
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 445
    .local v0, "stacked":Landroid/net/LinkProperties;
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 453
    new-instance v1, Landroid/net/RouteInfo;

    new-instance v2, Landroid/net/LinkAddress;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 455
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 456
    .local v1, "ipv4Default":Landroid/net/RouteInfo;
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 457
    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 458
    return-object v0
.end method

.method private maybeHandleNat64PrefixChange()V
    .registers 5

    .line 342
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->selectNat64Prefix()Landroid/net/IpPrefix;

    move-result-object v0

    .line 343
    .local v0, "newPrefix":Landroid/net/IpPrefix;
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64PrefixInUse:Landroid/net/IpPrefix;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 344
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NAT64 prefix changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64PrefixInUse:Landroid/net/IpPrefix;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    .line 350
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->update()V

    .line 352
    :cond_32
    return-void
.end method

.method protected static requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 8
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 124
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_TYPES:[I

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 125
    .local v0, "supported":Z
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_STATES:[Landroid/net/NetworkInfo$State;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 129
    .local v1, "connected":Z
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 130
    .local v2, "lp":Landroid/net/LinkProperties;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 131
    invoke-virtual {v2}, Landroid/net/LinkProperties;->hasIpv4Address()Z

    move-result v5

    if-nez v5, :cond_2c

    move v5, v3

    goto :goto_2d

    :cond_2c
    move v5, v4

    .line 134
    .local v5, "isIpv6OnlyNetwork":Z
    :goto_2d
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->netAgentConfig()Landroid/net/NetworkAgentConfig;

    move-result-object v6

    if-eqz v6, :cond_3d

    .line 135
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->netAgentConfig()Landroid/net/NetworkAgentConfig;

    move-result-object v6

    iget-boolean v6, v6, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    if-eqz v6, :cond_3d

    move v6, v3

    goto :goto_3e

    :cond_3d
    move v6, v4

    .line 137
    .local v6, "skip464xlat":Z
    :goto_3e
    if-eqz v0, :cond_47

    if-eqz v1, :cond_47

    if-eqz v5, :cond_47

    if-nez v6, :cond_47

    goto :goto_48

    :cond_47
    move v3, v4

    :goto_48
    return v3
.end method

.method private selectNat64Prefix()Landroid/net/IpPrefix;
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64PrefixFromRa:Landroid/net/IpPrefix;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64PrefixFromDns:Landroid/net/IpPrefix;

    :goto_7
    return-object v0
.end method

.method private setPrefix64(Landroid/net/IpPrefix;)V
    .registers 7
    .param p1, "prefix"    # Landroid/net/IpPrefix;

    .line 332
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, ""

    .line 334
    .local v0, "prefixString":Ljava/lang/String;
    :goto_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Landroid/net/IDnsResolver;->setPrefix64(ILjava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_12} :catch_13

    .line 338
    goto :goto_3e

    .line 335
    :catch_13
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting NAT64 prefix on netId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method protected static shouldStartClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 3
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 149
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 150
    .local v0, "lp":Landroid/net/LinkProperties;
    invoke-static {p0}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getNat64Prefix()Landroid/net/IpPrefix;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private startPrefixDiscovery()V
    .registers 5

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->startPrefix64Discovery(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_9} :catch_a

    .line 311
    goto :goto_2d

    .line 309
    :catch_a
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error starting prefix discovery on netId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mPrefixDiscoveryRunning:Z

    .line 313
    return-void
.end method

.method private stopPrefixDiscovery()V
    .registers 5

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->stopPrefix64Discovery(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_9} :catch_a

    .line 320
    goto :goto_2d

    .line 318
    :catch_a
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping prefix discovery on netId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mPrefixDiscoveryRunning:Z

    .line 322
    return-void
.end method


# virtual methods
.method public fixupLinkProperties(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .registers 7
    .param p1, "oldLp"    # Landroid/net/LinkProperties;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 425
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->selectNat64Prefix()Landroid/net/IpPrefix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->setNat64Prefix(Landroid/net/IpPrefix;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_e

    .line 428
    return-void

    .line 430
    :cond_e
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 431
    return-void

    .line 434
    :cond_1b
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clatd running, updating NAI for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 436
    .local v1, "stacked":Landroid/net/LinkProperties;
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 437
    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 438
    return-void

    .line 440
    .end local v1    # "stacked":Landroid/net/LinkProperties;
    :cond_57
    goto :goto_3b

    .line 441
    :cond_58
    return-void
.end method

.method protected getNetId()I
    .registers 2

    .line 552
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    return v0
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 537
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$40jKHQd7R0zgcegyEyc9zPHKXVA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$40jKHQd7R0zgcegyEyc9zPHKXVA;-><init>(Lcom/android/server/connectivity/Nat464Xlat;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$PACHOP9HoYvr_jzHtIwFDy31Ud4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$PACHOP9HoYvr_jzHtIwFDy31Ud4;-><init>(Lcom/android/server/connectivity/Nat464Xlat;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    return-void
.end method

.method public isRunning()Z
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isStarted()Z
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isStarting()Z
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public synthetic lambda$interfaceLinkStateChanged$0$Nat464Xlat(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 537
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Nat464Xlat;->handleInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$interfaceRemoved$1$Nat464Xlat(Ljava/lang/String;)V
    .registers 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 542
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Nat464Xlat;->handleInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public setNat64PrefixFromDns(Landroid/net/IpPrefix;)V
    .registers 2
    .param p1, "prefix"    # Landroid/net/IpPrefix;

    .line 414
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64PrefixFromDns:Landroid/net/IpPrefix;

    .line 415
    return-void
.end method

.method public setNat64PrefixFromRa(Landroid/net/IpPrefix;)V
    .registers 2
    .param p1, "prefix"    # Landroid/net/IpPrefix;

    .line 410
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64PrefixFromRa:Landroid/net/IpPrefix;

    .line 411
    return-void
.end method

.method protected start()V
    .registers 5

    .line 248
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 249
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startClat: already started"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 253
    :cond_f
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_1e

    .line 254
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startClat: Can\'t start clat with null LinkProperties"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 258
    :cond_1e
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "baseIface":Ljava/lang/String;
    if-nez v0, :cond_31

    .line 260
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startClat: Can\'t start clat on null interface"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 264
    :cond_31
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting clatd on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Nat464Xlat;->enterStartingState(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method protected stop()V
    .registers 6

    .line 270
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-nez v0, :cond_f

    .line 271
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopClat: already stopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 275
    :cond_f
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping clatd on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :try_start_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ril.clatd.v4-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "down"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_40} :catch_41

    .line 282
    goto :goto_45

    .line 280
    :catch_41
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_45
    :try_start_45
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetd:Landroid/net/INetd;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/net/INetd;->clatdStop(Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4c} :catch_4d
    .catch Landroid/os/ServiceSpecificException; {:try_start_45 .. :try_end_4c} :catch_4d

    .line 289
    goto :goto_6e

    .line 287
    :catch_4d
    move-exception v0

    .line 288
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping clatd on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6e
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    .line 292
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v1

    .line 297
    .local v1, "wasRunning":Z
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->leaveStartedState()V

    .line 299
    if-eqz v1, :cond_90

    .line 300
    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 301
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v2, v0}, Landroid/net/LinkProperties;->removeStackedLink(Ljava/lang/String;)Z

    .line 302
    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 304
    .end local v2    # "lp":Landroid/net/LinkProperties;
    :cond_90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseIface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .registers 3

    .line 359
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$1;->$SwitchMap$com$android$server$connectivity$Nat464Xlat$State:[I

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Nat464Xlat$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_43

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    const/4 v1, 0x4

    if-eq v0, v1, :cond_17

    goto :goto_5c

    .line 387
    :cond_17
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/Nat464Xlat;->shouldStartClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 388
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    .line 389
    goto :goto_5c

    .line 392
    :cond_23
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->maybeHandleNat64PrefixChange()V

    goto :goto_5c

    .line 370
    :cond_27
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/Nat464Xlat;->shouldStartClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 372
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->start()V

    .line 373
    return-void

    .line 375
    :cond_33
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 377
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stopPrefixDiscovery()V

    .line 378
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 379
    return-void

    .line 361
    :cond_43
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isPrefixDiscoveryNeeded()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 362
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->startPrefixDiscovery()V

    .line 363
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->DISCOVERING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    goto :goto_5c

    .line 364
    :cond_51
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 365
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->start()V

    .line 395
    :cond_5c
    :goto_5c
    return-void
.end method
