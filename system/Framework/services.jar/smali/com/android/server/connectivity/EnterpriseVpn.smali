.class public Lcom/android/server/connectivity/EnterpriseVpn;
.super Ljava/lang/Object;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    }
.end annotation


# static fields
.field private static final ADD:Z = true

.field private static final BIND_VPN_SERVICE:Ljava/lang/String; = "android.permission.BIND_VPN_SERVICE"

.field private static final DBG:Z

.field private static final INVALID_PACKAGE_UID:I = -0x1

.field private static final META_MARK_ENABLED_PROPERTY:Ljava/lang/String; = "net.vpn.markbase"

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final NOTIFICATION_SIZE:I = 0x48

.field private static final PER_APP_VPN:Z = false

.field private static final REMOVE:Z = false

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "knoxEnterpriseVpn"

.field private static final VPN_NOTIFICATION_ID:I = 0x186a0


# instance fields
.field private isMetaDataEnabled:Z

.field private mAddress:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

.field private final mConnectivityService:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mInterface:Ljava/lang/String;

.field private mIsPackageTargetingAtLeastQ:Z

.field private mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

.field private mLabel:Ljava/lang/String;

.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mProfileName:Ljava/lang/String;

.field private mRouteInfo:Z

.field private mTun_type:I

.field private final mUserId:I

.field private mV6Address:Ljava/lang/String;

.field private netId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 128
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V
    .registers 16
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "netService"    # Landroid/os/INetworkManagementService;
    .param p5, "connService"    # Landroid/net/IConnectivityManager;
    .param p6, "userId"    # I

    .line 166
    const-string/jumbo v0, "knoxEnterpriseVpn"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mTun_type:I

    .line 142
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 143
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    .line 145
    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    .line 146
    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    .line 147
    iput-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLabel:Ljava/lang/String;

    .line 149
    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    .line 150
    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 151
    iput-boolean v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    .line 152
    iput-boolean v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    .line 200
    new-instance v4, Lcom/android/server/connectivity/EnterpriseVpn$1;

    invoke-direct {v4, p0}, Lcom/android/server/connectivity/EnterpriseVpn$1;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    iput-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 596
    new-instance v4, Lcom/android/server/connectivity/EnterpriseVpn$3;

    invoke-direct {v4, p0}, Lcom/android/server/connectivity/EnterpriseVpn$3;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    iput-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 894
    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNotificationManager:Landroid/app/NotificationManager;

    .line 895
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->netId:I

    .line 168
    iput-object p2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 169
    iput-object p3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    .line 170
    iput-object p4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/os/INetworkManagementService;

    .line 171
    iput-object p5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 172
    iput p6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    .line 173
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLooper:Landroid/os/Looper;

    .line 174
    invoke-direct {p0, p3}, Lcom/android/server/connectivity/EnterpriseVpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mIsPackageTargetingAtLeastQ:Z

    .line 175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 177
    .local v5, "token":J
    :try_start_47
    iget-object v7, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 178
    iget-object v7, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v7, p6}, Lcom/android/server/connectivity/EnterpriseVpn;->getAppUid(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mOwnerUID value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget v7, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    if-eq v7, v4, :cond_82

    .line 181
    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    iget v7, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    invoke-interface {v4, v7}, Landroid/net/IConnectivityManager;->getChainingEnabledForProfile(I)Z

    move-result v4

    if-nez v4, :cond_82

    .line 182
    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v7, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    invoke-interface {v4, v7}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_82} :catch_85
    .catchall {:try_start_47 .. :try_end_82} :catchall_83

    .line 188
    :cond_82
    goto :goto_9f

    :catchall_83
    move-exception v0

    goto :goto_c7

    .line 185
    :catch_85
    move-exception v4

    .line 186
    .local v4, "e":Ljava/lang/Exception;
    :try_start_86
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to register mObserver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_86 .. :try_end_9e} :catchall_83

    .line 188
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    :goto_9f
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    nop

    .line 191
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->registerLocaleChangedReceiver()V

    .line 193
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v4, 0x11

    const-string v7, "VPN"

    invoke-direct {v0, v4, v1, v7, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 194
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 195
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 196
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 197
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->updateCapabilities(Landroid/net/Network;)V

    .line 198
    return-void

    .line 188
    :goto_c7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .line 122
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .line 122
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/os/INetworkManagementService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .line 122
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # Lcom/android/internal/net/VpnConfig;

    .line 122
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->dismissConnectingNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .line 122
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->unregisterLocaleChangedReceiver()V

    return-void
.end method

.method static synthetic access$1500()Z
    .registers 1

    .line 122
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .line 122
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/EnterpriseVpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .line 122
    iget-boolean v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .line 122
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/EnterpriseVpn;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .line 122
    iget v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .line 122
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/EnterpriseVpn;ILjava/lang/String;)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->getUIDForPackage(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .line 122
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method private agentConnect(Ljava/lang/String;)V
    .registers 23
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 488
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    move-object v14, v0

    .line 489
    .local v14, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v14, v13}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 491
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 492
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setOwnerUid(I)Landroid/net/NetworkCapabilities;

    .line 494
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v0, :cond_47

    .line 497
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 498
    .local v1, "dnsServer":Ljava/lang/String;
    invoke-static {v1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 499
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {v14, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 500
    .end local v1    # "dnsServer":Ljava/lang/String;
    .end local v2    # "address":Ljava/net/InetAddress;
    goto :goto_33

    .line 503
    :cond_47
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v0, :cond_b8

    .line 504
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 505
    .local v1, "address":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    const-string/jumbo v3, "knoxEnterpriseVpn"

    if-eqz v2, :cond_8c

    .line 506
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The ipv4 address added to the knox vpn interface is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_8c
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_b4

    .line 510
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The ipv6 address added to the knox vpn interface is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_b4
    invoke-virtual {v14, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 514
    .end local v1    # "address":Landroid/net/LinkAddress;
    goto :goto_55

    .line 517
    :cond_b8
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    const/4 v15, 0x1

    if-eqz v0, :cond_c5

    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    if-eqz v0, :cond_c5

    .line 518
    const/4 v0, 0x3

    iput v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mTun_type:I

    goto :goto_d3

    .line 519
    :cond_c5
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_cc

    .line 520
    iput v15, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mTun_type:I

    goto :goto_d3

    .line 521
    :cond_cc
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    if-eqz v0, :cond_d3

    .line 522
    const/4 v0, 0x2

    iput v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mTun_type:I

    .line 526
    :cond_d3
    :goto_d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v0

    .line 527
    .local v11, "buffer":Ljava/lang/StringBuilder;
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v0, :cond_fc

    .line 528
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 529
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 530
    .end local v1    # "domain":Ljava/lang/String;
    goto :goto_e7

    .line 532
    :cond_fc
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 533
    new-instance v0, Landroid/net/NetworkAgentConfig;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig;-><init>()V

    move-object v10, v0

    .line 535
    .local v10, "networkAgentConfig":Landroid/net/NetworkAgentConfig;
    iput-boolean v15, v10, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    .line 536
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v15}, Landroid/net/NetworkInfo;->setKnoxProfile(Z)V

    .line 537
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget v1, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mTun_type:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setInterfaceType(I)V

    .line 538
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setprofileName(Ljava/lang/String;)V

    .line 539
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setV4Address(Ljava/lang/String;)V

    .line 540
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setV6Address(Ljava/lang/String;)V

    .line 541
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v13}, Landroid/net/NetworkInfo;->setKnoxInterfaceName(Ljava/lang/String;)V

    .line 542
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setKnoxVpnClientType(I)V

    .line 543
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setKnoxVpnCallerUid(I)V

    .line 544
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v15}, Landroid/net/NetworkInfo;->setKnoxNetworkState(Z)V

    .line 546
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 548
    .local v16, "token":J
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    const-string v1, "Connecting"

    invoke-direct {v12, v1, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->showConnectingNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :try_start_154
    new-instance v0, Lcom/android/server/connectivity/EnterpriseVpn$2;

    iget-object v3, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mLooper:Landroid/os/Looper;

    iget-object v4, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v5, "VPN"

    iget-object v6, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v7, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_160
    .catchall {:try_start_154 .. :try_end_160} :catchall_186

    const/16 v9, 0x65

    const/16 v18, -0x2

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v8, v14

    move-object/from16 v19, v10

    .end local v10    # "networkAgentConfig":Landroid/net/NetworkAgentConfig;
    .local v19, "networkAgentConfig":Landroid/net/NetworkAgentConfig;
    move-object/from16 v20, v11

    .end local v11    # "buffer":Ljava/lang/StringBuilder;
    .local v20, "buffer":Ljava/lang/StringBuilder;
    move/from16 v11, v18

    :try_start_16e
    invoke-direct/range {v1 .. v11}, Lcom/android/server/connectivity/EnterpriseVpn$2;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;I)V

    iput-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_173
    .catchall {:try_start_16e .. :try_end_173} :catchall_184

    .line 561
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 562
    nop

    .line 564
    iget-object v0, v12, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v15}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 565
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentConnect"

    invoke-direct {v12, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 566
    return-void

    .line 561
    :catchall_184
    move-exception v0

    goto :goto_18b

    .end local v19    # "networkAgentConfig":Landroid/net/NetworkAgentConfig;
    .end local v20    # "buffer":Ljava/lang/StringBuilder;
    .restart local v10    # "networkAgentConfig":Landroid/net/NetworkAgentConfig;
    .restart local v11    # "buffer":Ljava/lang/StringBuilder;
    :catchall_186
    move-exception v0

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .end local v10    # "networkAgentConfig":Landroid/net/NetworkAgentConfig;
    .end local v11    # "buffer":Ljava/lang/StringBuilder;
    .restart local v19    # "networkAgentConfig":Landroid/net/NetworkAgentConfig;
    .restart local v20    # "buffer":Ljava/lang/StringBuilder;
    :goto_18b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 562
    throw v0
.end method

.method private applyUnderlyingCapabilities(Landroid/net/ConnectivityManager;[Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V
    .registers 23
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "underlyingNetworks"    # [Landroid/net/Network;
    .param p3, "caps"    # Landroid/net/NetworkCapabilities;
    .param p4, "isAlwaysMetered"    # Z

    .line 296
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    new-array v0, v3, [I

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v4, v0, v5

    .line 299
    .local v0, "transportTypes":[I
    move/from16 v4, p4

    .line 300
    .local v4, "metered":Z
    const/4 v6, 0x0

    .line 301
    .local v6, "roaming":Z
    const/4 v7, 0x0

    .line 302
    .local v7, "congested":Z
    const/4 v8, 0x1

    .line 304
    .local v8, "suspended":Z
    const/4 v9, 0x0

    .line 305
    .local v9, "hadUnderlyingNetworks":Z
    if-eqz v1, :cond_9e

    .line 306
    array-length v13, v1

    move v15, v5

    move v14, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v4

    move-object v4, v0

    .end local v0    # "transportTypes":[I
    .local v4, "transportTypes":[I
    .local v6, "metered":Z
    .local v7, "roaming":Z
    .local v8, "congested":Z
    .local v9, "suspended":Z
    .local v14, "hadUnderlyingNetworks":Z
    :goto_1b
    if-ge v15, v13, :cond_95

    aget-object v5, v1, v15

    .line 308
    .local v5, "underlying":Landroid/net/Network;
    move-object/from16 v3, p1

    :try_start_21
    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 309
    .local v0, "underlyingCaps":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_29

    const/4 v1, 0x1

    goto :goto_8e

    .line 310
    :cond_29
    const/4 v14, 0x1

    .line 311
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_30
    if-ge v12, v11, :cond_43

    aget v16, v10, v12

    move/from16 v17, v16

    .line 312
    .local v17, "underlyingType":I
    move/from16 v1, v17

    .end local v17    # "underlyingType":I
    .local v1, "underlyingType":I
    invoke-static {v4, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v16

    move-object/from16 v4, v16

    .line 311
    .end local v1    # "underlyingType":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p2

    goto :goto_30

    .line 314
    :cond_43
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_4d

    const/4 v1, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    or-int/2addr v6, v1

    .line 315
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-nez v10, :cond_59

    const/4 v1, 0x1

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    or-int/2addr v7, v1

    .line 316
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-nez v10, :cond_65

    const/4 v1, 0x1

    goto :goto_66

    :cond_65
    const/4 v1, 0x0

    :goto_66
    or-int/2addr v8, v1

    .line 317
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_6d} :catch_71

    const/4 v1, 0x1

    xor-int/2addr v10, v1

    and-int/2addr v9, v10

    .line 320
    .end local v0    # "underlyingCaps":Landroid/net/NetworkCapabilities;
    goto :goto_8e

    .line 318
    :catch_71
    move-exception v0

    const/4 v1, 0x1

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception at  applyUnderlyingCapabilities : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "knoxEnterpriseVpn"

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "underlying":Landroid/net/Network;
    :goto_8e
    add-int/lit8 v15, v15, 0x1

    move v3, v1

    const/4 v5, 0x0

    move-object/from16 v1, p2

    goto :goto_1b

    :cond_95
    move-object/from16 v3, p1

    move-object v0, v4

    move v4, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v14

    goto :goto_a0

    .line 305
    .end local v14    # "hadUnderlyingNetworks":Z
    .local v0, "transportTypes":[I
    .local v4, "metered":Z
    .local v6, "roaming":Z
    .local v7, "congested":Z
    .local v8, "suspended":Z
    .local v9, "hadUnderlyingNetworks":Z
    :cond_9e
    move-object/from16 v3, p1

    .line 323
    :goto_a0
    if-nez v9, :cond_a6

    .line 325
    const/4 v4, 0x1

    .line 326
    const/4 v6, 0x0

    .line 327
    const/4 v7, 0x0

    .line 328
    const/4 v8, 0x0

    .line 331
    :cond_a6
    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->setTransportTypes([I)V

    .line 333
    xor-int/lit8 v1, v6, 0x1

    const/16 v5, 0x12

    invoke-virtual {v2, v5, v1}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 334
    xor-int/lit8 v1, v7, 0x1

    const/16 v5, 0x14

    invoke-virtual {v2, v5, v1}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 335
    xor-int/lit8 v1, v8, 0x1

    const/16 v5, 0x15

    invoke-virtual {v2, v5, v1}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 336
    return-void
.end method

.method private closeInterface()V
    .registers 3

    .line 804
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "knoxEnterpriseVpn"

    const-string v1, "closeInterface()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_c
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 806
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 809
    :cond_16
    return-void
.end method

.method private dismissConnectingNotification()V
    .registers 1

    .line 922
    return-void
.end method

.method private dismissConnectingNotification(Ljava/lang/String;)V
    .registers 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 933
    return-void
.end method

.method private doesPackageTargetAtLeastQ(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 341
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_7
    iget v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    .line 342
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 343
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_15

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1

    .line 344
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_15
    move-exception v2

    .line 345
    .local v2, "unused":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "knoxEnterpriseVpn"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return v1
.end method

.method private enforceControlPermission()V
    .registers 7

    .line 675
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 676
    return-void

    .line 678
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 679
    .local v0, "appId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 682
    .local v1, "token":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 683
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "com.android.vpndialogs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 684
    .local v4, "app":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_36

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2a} :catch_35
    .catchall {:try_start_15 .. :try_end_2a} :catchall_30

    if-ne v0, v5, :cond_36

    .line 690
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 685
    return-void

    .line 690
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "app":Landroid/content/pm/ApplicationInfo;
    :catchall_30
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 691
    throw v3

    .line 687
    :catch_35
    move-exception v3

    .line 690
    :cond_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 691
    nop

    .line 693
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Unauthorized Caller"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .registers 6
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 883
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 886
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    .line 889
    .local v1, "result":I
    goto :goto_e

    .line 887
    .end local v1    # "result":I
    :catch_b
    move-exception v1

    .line 888
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    move v1, v2

    .line 890
    .local v1, "result":I
    :goto_e
    return v1
.end method

.method private declared-synchronized getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 873
    :try_start_1
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "knoxEnterpriseVpn"

    const-string/jumbo v1, "getDomainsByProfileName()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_38

    .line 875
    .end local p0    # "this":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_18
    .catchall {:try_start_e .. :try_end_16} :catchall_38

    monitor-exit p0

    return-object v0

    .line 876
    :catch_18
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/Exception;
    :try_start_19
    const-string/jumbo v1, "knoxEnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_38

    .line 879
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 872
    .end local p1    # "profileName":Ljava/lang/String;
    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    if-nez v0, :cond_11

    .line 352
    const-string/jumbo v0, "knox_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 354
    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    return-object v0
.end method

.method private getNetIdForInterface(Ljava/lang/String;)I
    .registers 4
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 936
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_15

    .line 938
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x65

    return v0

    .line 937
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_11

    .line 369
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNotificationManager:Landroid/app/NotificationManager;

    .line 371
    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPackageManagerForQueryUid()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 654
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    .line 360
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 361
    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 364
    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getUIDForPackage(ILjava/lang/String;)I
    .registers 11
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 634
    const-string/jumbo v0, "knoxEnterpriseVpn"

    const/4 v1, -0x1

    .line 636
    .local v1, "uid":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPackageManagerForQueryUid()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 637
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 638
    .local v3, "token":J
    const/16 v5, 0x2080

    invoke-interface {v2, p2, v5, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 639
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_2a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "application uid for info :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_2a
    if-eqz v5, :cond_38

    .line 641
    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_35

    const-string v6, "application uid for info : null"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_35
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move v1, v6

    .line 644
    :cond_38
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 645
    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_5b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "application uid for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5b} :catch_5c

    .line 649
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "token":J
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_5b
    goto :goto_76

    .line 646
    :catch_5c
    move-exception v2

    .line 647
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getUIDForPackage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v1, -0x1

    .line 650
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_76
    return v1
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreateknoxvpn(IZ)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private registerLocaleChangedReceiver()V
    .registers 9

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 220
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 221
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    return-void
.end method

.method private showConnectingNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "pname"    # Ljava/lang/String;

    .line 912
    return-void
.end method

.method private unregisterLocaleChangedReceiver()V
    .registers 5

    .line 225
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_12

    .line 226
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 227
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    .end local v0    # "token":J
    :cond_12
    return-void
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 5
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .line 248
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "knoxEnterpriseVpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_24
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_33

    .line 251
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 253
    :cond_33
    return-void
.end method


# virtual methods
.method public agentDisconnect()V
    .registers 3

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "agentDisconnect() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "knoxEnterpriseVpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 571
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 572
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setKnoxNetworkState(Z)V

    .line 573
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentDisconnect"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 576
    :cond_36
    return-void
.end method

.method public declared-synchronized clearConnection()V
    .registers 3

    monitor-enter p0

    .line 375
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->enforceControlPermission()V

    .line 376
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 377
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    if-eqz v0, :cond_16

    .line 378
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 381
    .end local p0    # "this":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_16
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->closeInterface()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 383
    :cond_19
    monitor-exit p0

    return-void

    .line 374
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 7
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 697
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v1, 0x10405c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v2, 0x10405c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "text":Ljava/lang/String;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 701
    const v3, 0x1080b92

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    .line 702
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 703
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 704
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 705
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 706
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 707
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 708
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 709
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 710
    .local v2, "notification":Landroid/app/Notification;
    return-object v2
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    monitor-enter p0

    .line 395
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 396
    .local v0, "mgr":Landroid/os/UserManager;
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_207

    .line 397
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 399
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    :try_start_f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    const/4 v7, 0x0

    invoke-interface {v4, v5, v7, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object v2, v4

    .line 400
    if-eqz v2, :cond_202

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_204
    .catchall {:try_start_f .. :try_end_25} :catchall_207

    if-eq v4, v5, :cond_29

    goto/16 :goto_202

    .line 405
    :cond_29
    nop

    .line 408
    :try_start_2a
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.VpnService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_207

    .line 413
    .local v5, "token":J
    :try_start_3c
    iget v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v0, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 414
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v9

    if-nez v9, :cond_1da

    const-string/jumbo v9, "no_config_vpn"

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1da

    .line 418
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    iget v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-interface {v9, v4, v3, v7, v10}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 419
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_1c1

    .line 423
    const-string v9, "android.permission.BIND_VPN_SERVICE"

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_67} :catch_1e4
    .catchall {:try_start_3c .. :try_end_67} :catchall_1e2

    if-eqz v9, :cond_1a3

    .line 430
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :try_start_69
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    nop

    .line 433
    iget-object v7, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    .line 436
    iget v7, p1, Lcom/android/internal/net/VpnConfig;->mtu:I

    iget-boolean v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    invoke-direct {p0, v7, v8}, Lcom/android/server/connectivity/EnterpriseVpn;->jniCreateknoxvpn(IZ)I

    move-result v7

    invoke-static {v7}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7
    :try_end_7d
    .catchall {:try_start_69 .. :try_end_7d} :catchall_207

    .line 439
    .local v7, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_7d
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    iget-boolean v9, p1, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-static {v8, v9}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_86} :catch_164
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_86} :catch_162
    .catchall {:try_start_7d .. :try_end_86} :catchall_207

    .line 443
    nop

    .line 444
    :try_start_87
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v9, "establish"

    invoke-direct {p0, v8, v9}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/connectivity/EnterpriseVpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v8

    .line 446
    .local v8, "interfaze":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .local v9, "builder":Ljava/lang/StringBuilder;
    iget-object v10, p1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/LinkAddress;

    .line 449
    .local v11, "address":Landroid/net/LinkAddress;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    nop

    .end local v11    # "address":Landroid/net/LinkAddress;
    goto :goto_a1

    .line 451
    .end local p0    # "this":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_c3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_15a

    .line 454
    new-instance v10, Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    invoke-direct {v10, p0, v3}, Lcom/android/server/connectivity/EnterpriseVpn$Connection;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$1;)V

    move-object v3, v10

    .line 455
    .local v3, "connection":Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v11, 0x4000001

    new-instance v12, Landroid/os/UserHandle;

    iget v13, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v4, v3, v11, v12}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v10

    if-eqz v10, :cond_141

    .line 459
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    if-eqz v10, :cond_f1

    .line 460
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    invoke-virtual {v10, v11}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 462
    :cond_f1
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v10, :cond_102

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_102

    .line 463
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    .line 466
    :cond_102
    iput-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 467
    iput-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 468
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    iput-object v10, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 469
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    iput-object v10, p1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 470
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 471
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 473
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->agentConnect(Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/RuntimeException; {:try_start_87 .. :try_end_11b} :catch_162
    .catchall {:try_start_87 .. :try_end_11b} :catchall_207

    .line 481
    .end local v3    # "connection":Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    .end local v8    # "interfaze":Ljava/lang/String;
    .end local v9    # "builder":Ljava/lang/StringBuilder;
    nop

    .line 482
    :try_start_11c
    const-string/jumbo v3, "knoxEnterpriseVpn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Established by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catchall {:try_start_11c .. :try_end_13f} :catchall_207

    .line 483
    monitor-exit p0

    return-object v7

    .line 457
    .restart local v3    # "connection":Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    .restart local v8    # "interfaze":Ljava/lang/String;
    .restart local v9    # "builder":Ljava/lang/StringBuilder;
    :cond_141
    :try_start_141
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot bind "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mgr":Landroid/os/UserManager;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local v7    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v10

    .line 452
    .end local v3    # "connection":Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    .restart local v0    # "mgr":Landroid/os/UserManager;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local v7    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_15a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v10, "At least one address must be specified"

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mgr":Landroid/os/UserManager;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local v7    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3

    .line 475
    .end local v8    # "interfaze":Ljava/lang/String;
    .end local v9    # "builder":Ljava/lang/StringBuilder;
    .restart local v0    # "mgr":Landroid/os/UserManager;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local v7    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catch_162
    move-exception v3

    goto :goto_17e

    .line 440
    :catch_164
    move-exception v3

    .line 441
    .local v3, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p1, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "mgr":Landroid/os/UserManager;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local v7    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v8
    :try_end_17e
    .catch Ljava/lang/RuntimeException; {:try_start_141 .. :try_end_17e} :catch_162
    .catchall {:try_start_141 .. :try_end_17e} :catchall_207

    .line 476
    .restart local v0    # "mgr":Landroid/os/UserManager;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .local v3, "e":Ljava/lang/RuntimeException;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local v7    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :goto_17e
    :try_start_17e
    const-string/jumbo v8, "knoxEnterpriseVpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in creating tun interface"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->dismissConnectingNotification()V

    .line 478
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 479
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->agentDisconnect()V

    .line 480
    throw v3
    :try_end_1a3
    .catchall {:try_start_17e .. :try_end_1a3} :catchall_207

    .line 424
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    .local v8, "user":Landroid/content/pm/UserInfo;
    :cond_1a3
    :try_start_1a3
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " does not require "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mgr":Landroid/os/UserManager;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3

    .line 420
    .restart local v0    # "mgr":Landroid/os/UserManager;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_1c1
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mgr":Landroid/os/UserManager;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local p0    # "this":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3

    .line 415
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "mgr":Landroid/os/UserManager;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_1da
    new-instance v3, Ljava/lang/SecurityException;

    const-string v7, "Restricted users cannot establish VPNs"

    invoke-direct {v3, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mgr":Landroid/os/UserManager;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local p0    # "this":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3
    :try_end_1e2
    .catch Landroid/os/RemoteException; {:try_start_1a3 .. :try_end_1e2} :catch_1e4
    .catchall {:try_start_1a3 .. :try_end_1e2} :catchall_1e2

    .line 430
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .restart local v0    # "mgr":Landroid/os/UserManager;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catchall_1e2
    move-exception v3

    goto :goto_1fe

    .line 427
    :catch_1e4
    move-exception v3

    .line 428
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1e5
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot find "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mgr":Landroid/os/UserManager;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local p0    # "this":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v7
    :try_end_1fe
    .catchall {:try_start_1e5 .. :try_end_1fe} :catchall_1e2

    .line 430
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "mgr":Landroid/os/UserManager;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :goto_1fe
    :try_start_1fe
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    throw v3
    :try_end_202
    .catchall {:try_start_1fe .. :try_end_202} :catchall_207

    .line 401
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local p0    # "this":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_202
    :goto_202
    monitor-exit p0

    return-object v3

    .line 403
    :catch_204
    move-exception v4

    .line 404
    .local v4, "e":Ljava/lang/Exception;
    monitor-exit p0

    return-object v3

    .line 394
    .end local v0    # "mgr":Landroid/os/UserManager;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catchall_207
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .registers 2

    .line 592
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .line 584
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataStateInIP()Z
    .registers 2

    .line 239
    iget-boolean v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 588
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaUserIds()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 854
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    const-string/jumbo v1, "knoxEnterpriseVpn"

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPersonaUserIds > mUserId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v0, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 857
    .local v2, "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 858
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    .line 861
    :cond_33
    if-eqz v2, :cond_75

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_75

    .line 862
    sget-boolean v3, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v3, :cond_58

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPersonaUserIds > persona size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_58
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 864
    .local v3, "i":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    .end local v3    # "i":I
    goto :goto_5c

    :cond_74
    goto :goto_7f

    .line 867
    :cond_75
    sget-boolean v3, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v3, :cond_7f

    const-string/jumbo v3, "getPersonaUserIds > Does not created any persona!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_7f
    :goto_7f
    return-object v0
.end method

.method public hideNotification()V
    .registers 11

    .line 812
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    const-string/jumbo v1, "knoxEnterpriseVpn"

    if-eqz v0, :cond_d

    const-string/jumbo v0, "hideNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_d
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 814
    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 815
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_68

    .line 816
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 817
    .local v2, "identity":J
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v4

    .line 818
    .local v4, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 821
    .local v6, "domain":I
    sget-boolean v7, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v7, :cond_57

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hideNotification > domain : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_57
    const/4 v7, 0x0

    const v8, 0x186a0

    add-int/2addr v8, v6

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v7, v8, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 823
    .end local v6    # "domain":I
    goto :goto_2e

    .line 824
    :cond_65
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 826
    .end local v2    # "identity":J
    .end local v4    # "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_68
    return-void
.end method

.method public hideNotification(I)V
    .registers 8
    .param p1, "domain"    # I

    .line 829
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hideNotification > domain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "knoxEnterpriseVpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_1c
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 831
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 832
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_3d

    .line 833
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 834
    .local v1, "identity":J
    const/4 v3, 0x0

    const v4, 0x186a0

    add-int/2addr v4, p1

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 835
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 837
    .end local v1    # "identity":J
    :cond_3d
    return-void
.end method

.method public refreshNotification(ZI)V
    .registers 11
    .param p1, "optionAdd"    # Z
    .param p2, "domain"    # I

    .line 840
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    const-string/jumbo v1, "knoxEnterpriseVpn"

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshNotification > domain : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", optionAdd : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 843
    .local v2, "identity":J
    :try_start_28
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    .line 844
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 845
    .local v0, "nm":Landroid/app/NotificationManager;
    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {v4, v5, p1, p2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v4

    .line 846
    .local v4, "notification":Landroid/app/Notification;
    const/4 v5, 0x0

    const v6, 0x186a0

    add-int/2addr v6, p2

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4c} :catch_4d

    .line 849
    .end local v0    # "nm":Landroid/app/NotificationManager;
    .end local v4    # "notification":Landroid/app/Notification;
    goto :goto_66

    .line 847
    :catch_4d
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_66
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 851
    return-void
.end method

.method public setMetaDataStateInIP(Z)V
    .registers 2
    .param p1, "metaState"    # Z

    .line 235
    iput-boolean p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    .line 236
    return-void
.end method

.method public showNotification(Ljava/lang/String;Z)V
    .registers 20
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "update"    # Z

    .line 714
    move-object/from16 v1, p0

    move/from16 v2, p2

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    const-string/jumbo v3, "knoxEnterpriseVpn"

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showNotification > profileName : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , optionAdd : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_2b
    move-object/from16 v4, p1

    .line 715
    :goto_2d
    if-eqz v2, :cond_32

    .line 716
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/EnterpriseVpn;->dismissConnectingNotification()V

    .line 717
    :cond_32
    iget-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/NotificationManager;

    .line 718
    .local v5, "nm":Landroid/app/NotificationManager;
    iget-object v6, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 719
    .local v6, "config":Lcom/android/internal/net/VpnConfig;
    if-eqz v6, :cond_17d

    if-nez v5, :cond_46

    goto/16 :goto_17d

    .line 723
    :cond_46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 724
    if-eqz v5, :cond_17c

    if-eqz v6, :cond_17c

    .line 725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 726
    .local v7, "identity":J
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_5e

    const-string/jumbo v0, "showNotification > KNOX 2.0 enabled"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_5e
    iget-boolean v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    const/4 v9, 0x1

    const v10, 0x186a0

    const/4 v11, 0x0

    if-ne v0, v9, :cond_a7

    .line 728
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_71

    const-string/jumbo v0, "showNotification > vpn type is system"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_71
    iget-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget v9, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-static {v0, v6, v2, v9}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 730
    .local v0, "notification":Landroid/app/Notification;
    iget v9, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    add-int/2addr v9, v10

    new-instance v10, Landroid/os/UserHandle;

    iget v12, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-direct {v10, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v11, v9, v0, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 731
    sget-boolean v9, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v9, :cond_a5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showNotification > domain : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .end local v0    # "notification":Landroid/app/Notification;
    :cond_a5
    goto/16 :goto_179

    .line 733
    :cond_a7
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_b1

    const-string/jumbo v0, "showNotification > vpn type is per-app"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_b1
    :try_start_b1
    iget-object v0, v6, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b7} :catch_160

    .line 736
    .local v0, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v9, "showNotification > keyicon notified to user "

    if-eqz v0, :cond_10d

    :try_start_bc
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_10d

    .line 737
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 738
    .local v13, "item":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 739
    .local v14, "domain":I
    iget-object v15, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v15, v6, v2, v14}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v15

    .line 740
    .local v15, "notification":Landroid/app/Notification;
    add-int v11, v14, v10

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v14}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5, v0, v11, v15, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 741
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_103

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v13    # "item":Ljava/lang/String;
    .end local v14    # "domain":I
    .end local v15    # "notification":Landroid/app/Notification;
    :cond_103
    move-object/from16 v0, v16

    const v10, 0x186a0

    const/4 v11, 0x0

    goto :goto_c6

    .end local v16    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10a
    move-object/from16 v16, v0

    .end local v0    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_15f

    .line 736
    .end local v16    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10d
    move-object/from16 v16, v0

    .line 750
    .end local v0    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 751
    .local v0, "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_11f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 753
    .local v12, "item":I
    iget-object v13, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v13, v6, v10, v12}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v13

    .line 754
    .local v13, "notification":Landroid/app/Notification;
    const v14, 0x186a0

    add-int v15, v12, v14

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v12}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v15, v13, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 755
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_15d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_15d} :catch_160

    .line 756
    .end local v12    # "item":I
    .end local v13    # "notification":Landroid/app/Notification;
    :cond_15d
    const/4 v10, 0x0

    goto :goto_11f

    .line 760
    .end local v0    # "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15f
    :goto_15f
    goto :goto_179

    .line 758
    :catch_160
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_179
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 764
    .end local v7    # "identity":J
    :cond_17c
    return-void

    .line 720
    :cond_17d
    :goto_17d
    const-string v0, "Error : can not init"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void
.end method

.method public updateCapabilities(Landroid/net/Network;)V
    .registers 6
    .param p1, "defaultNetwork"    # Landroid/net/Network;

    .line 266
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    if-nez v0, :cond_5

    .line 268
    return-void

    .line 271
    :cond_5
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 272
    .local v0, "underlyingNetworks":[Landroid/net/Network;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    if-eqz p1, :cond_12

    .line 274
    new-array v3, v1, [Landroid/net/Network;

    aput-object p1, v3, v2

    move-object v0, v3

    .line 277
    :cond_12
    iget-boolean v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mIsPackageTargetingAtLeastQ:Z

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 279
    .local v1, "isAlwaysMetered":Z
    :goto_1e
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    .line 280
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 279
    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->applyUnderlyingCapabilities(Landroid/net/ConnectivityManager;[Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V

    .line 285
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v2, :cond_45

    .line 286
    sget-boolean v2, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "knoxEnterpriseVpn"

    const-string/jumbo v3, "sending new network capabilities"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_3e
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 289
    :cond_45
    return-void
.end method

.method public declared-synchronized updateNotification()V
    .registers 15

    monitor-enter p0

    .line 769
    :try_start_1
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "knoxEnterpriseVpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotification > user : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .end local p0    # "this":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_1f
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 771
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 772
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_e0

    .line 773
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 774
    .local v1, "identity":J
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v4, 0x10405c7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 775
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v5, 0x10405c6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 777
    .local v4, "text":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v5, :cond_4f

    const-string/jumbo v5, "knoxEnterpriseVpn"

    const-string/jumbo v6, "updateNotification > KNOX 2.0 enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_4f
    iget-boolean v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    const/4 v6, 0x1

    const v7, 0x186a0

    const/4 v8, 0x0

    if-ne v5, v6, :cond_9d

    .line 779
    sget-boolean v5, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v5, :cond_65

    const-string/jumbo v5, "knoxEnterpriseVpn"

    const-string/jumbo v6, "updateNotification > vpn type is system"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_65
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-static {v5, v6}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v5

    .line 781
    .local v5, "notification":Landroid/app/Notification;
    iget v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    add-int/2addr v6, v7

    new-instance v7, Landroid/os/UserHandle;

    iget v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-direct {v7, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8, v6, v5, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 782
    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_9c

    const-string/jumbo v6, "knoxEnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateNotification > domain : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v5    # "notification":Landroid/app/Notification;
    :cond_9c
    goto :goto_dd

    .line 784
    :cond_9d
    sget-boolean v5, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v5, :cond_aa

    const-string/jumbo v5, "knoxEnterpriseVpn"

    const-string/jumbo v6, "updateNotification > vpn type is per-app"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_aa
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 786
    .local v5, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_dd

    .line 787
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_dd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 788
    .local v9, "item":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 789
    .local v10, "domain":I
    iget-object v11, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v11, v10}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v11

    .line 790
    .local v11, "notification":Landroid/app/Notification;
    add-int v12, v10, v7

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8, v12, v11, v13}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 791
    .end local v9    # "item":Ljava/lang/String;
    .end local v10    # "domain":I
    .end local v11    # "notification":Landroid/app/Notification;
    goto :goto_b8

    .line 794
    .end local v5    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_dd
    :goto_dd
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e0
    .catchall {:try_start_1 .. :try_end_e0} :catchall_e2

    .line 796
    .end local v1    # "identity":J
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_e0
    monitor-exit p0

    return-void

    .line 768
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :catchall_e2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
