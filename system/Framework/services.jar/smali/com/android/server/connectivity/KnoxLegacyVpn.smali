.class public Lcom/android/server/connectivity/KnoxLegacyVpn;
.super Ljava/lang/Object;
.source "KnoxLegacyVpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;,
        Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    }
.end annotation


# static fields
.field private static final CC_PROPERTY:Ljava/lang/String; = "security.mdf"

.field private static final DBG:Z

.field private static final FAST_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.fast"

.field private static final KNOX_TAG:Ljava/lang/String; = " [Knox]"

.field private static final LOGD:Z = true

.field private static final MAX_ROUTES_TO_EVALUATE:I = 0x96

.field private static final MOST_IPV4_ADDRESSES_COUNT:J

.field private static final MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final PEM_CERT_FOOTER:Ljava/lang/String; = "-----END CERTIFICATE-----"

.field private static final PEM_CERT_HEADER:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\n"

.field private static final PEM_CERT_LINE_CHARS:I = 0x40

.field private static final PER_APP_VPN:Z = false

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "KnoxLegacyVpn"

.field private static final VPN_LAUNCH_IDLE_WHITELIST_DURATION_MS:J = 0xea60L


# instance fields
.field private final KNOXVPN_CONTAINER_ENABLED:I

.field private KNOXVPN_FEATURE:I

.field private final KNOXVPN_MDM_ENABLED:I

.field private mAddress:Ljava/lang/String;

.field private mAlwaysOn:Z

.field private mBlockedUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field protected mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEgressIface:Ljava/lang/String;

.field private volatile mEnableLockdownVpn:Z

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mIsLocaleChangedReceiverRegistered:Z

.field private mIsPackageTargetingAtLeastQ:Z

.field private mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

.field private mLegacyAddress:Ljava/lang/String;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mLockdown:Z

.field private volatile mLockdownNotiIconRes:I

.field private volatile mLockdownNotiTitleRes:I

.field private mLockdownWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field protected mNetworkAgent:Landroid/net/NetworkAgent;

.field protected final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private mProfileName:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mSystemServices:Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;

.field private mTun_type:I

.field private final mUserHandle:I

.field private mV6Address:Ljava/lang/String;

.field private mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

.field private mVpnRules:Lcom/android/server/connectivity/VpnRules;

.field private netId:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 198
    const/16 v0, 0x55

    .line 200
    .local v0, "howManyPercentIsMost":I
    const-wide v1, 0x100000000L

    .line 201
    .local v1, "twoPower32":J
    const-wide v3, 0xd9999999L

    sput-wide v3, Lcom/android/server/connectivity/KnoxLegacyVpn;->MOST_IPV4_ADDRESSES_COUNT:J

    .line 202
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 203
    .local v3, "twoPower128":Ljava/math/BigInteger;
    nop

    .line 204
    const-wide/16 v4, 0x55

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 205
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sput-object v4, Lcom/android/server/connectivity/KnoxLegacyVpn;->MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

    .line 335
    .end local v0    # "howManyPercentIsMost":I
    .end local v1    # "twoPower32":J
    .end local v3    # "twoPower128":Ljava/math/BigInteger;
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/connectivity/KnoxLegacyVpn;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V
    .registers 11
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"    # I

    .line 350
    new-instance v5, Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;

    invoke-direct {v5, p2}, Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/KnoxLegacyVpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;)V

    .line 351
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;)V
    .registers 12
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"    # I
    .param p5, "systemServices"    # Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableLockdownVpn:Z

    .line 229
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableTeardown:Z

    .line 244
    iput-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z

    .line 251
    iput-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdown:Z

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdownWhitelist:Ljava/util/List;

    .line 264
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mBlockedUsers:Ljava/util/Set;

    .line 291
    iput-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mIsLocaleChangedReceiverRegistered:Z

    .line 292
    new-instance v2, Lcom/android/server/connectivity/KnoxLegacyVpn$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/KnoxLegacyVpn$1;-><init>(Lcom/android/server/connectivity/KnoxLegacyVpn;)V

    iput-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 338
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mProfileName:Ljava/lang/String;

    .line 339
    iput-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAddress:Ljava/lang/String;

    .line 340
    iput-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mV6Address:Ljava/lang/String;

    .line 341
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->KNOXVPN_FEATURE:I

    .line 342
    iput v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mTun_type:I

    .line 343
    iput v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->KNOXVPN_MDM_ENABLED:I

    .line 344
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->KNOXVPN_CONTAINER_ENABLED:I

    .line 1666
    new-instance v1, Lcom/android/server/connectivity/KnoxLegacyVpn$4;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/KnoxLegacyVpn$4;-><init>(Lcom/android/server/connectivity/KnoxLegacyVpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 3366
    iput-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3367
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->netId:I

    .line 356
    iput-object p2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    .line 357
    iput-object p3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetd:Landroid/os/INetworkManagementService;

    .line 358
    iput p4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    .line 359
    iput-object p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLooper:Landroid/os/Looper;

    .line 360
    iput-object p5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mSystemServices:Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;

    .line 362
    const-string v1, "[Legacy VPN]"

    iput-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mPackage:Ljava/lang/String;

    .line 363
    invoke-direct {p0, v1, p4}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mOwnerUID:I

    .line 364
    new-instance v1, Lcom/android/server/connectivity/VpnRules;

    invoke-direct {v1}, Lcom/android/server/connectivity/VpnRules;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 365
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mIsPackageTargetingAtLeastQ:Z

    .line 368
    :try_start_64
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_69} :catch_6a

    .line 371
    goto :goto_72

    .line 369
    :catch_6a
    move-exception v1

    .line 370
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "KnoxLegacyVpn"

    const-string v4, "Problem registering observer"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_72
    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v3, 0x11

    const-string v4, "VPN"

    const-string v5, ""

    invoke-direct {v1, v3, v0, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 375
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 376
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 377
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 378
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->updateCapabilities(Landroid/net/Network;)V

    .line 381
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    iget-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableLockdownVpn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/KnoxLegacyVpn;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    iget v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdownNotiTitleRes:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/KnoxLegacyVpn;)Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/KnoxLegacyVpn;Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;)Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    .line 176
    iput-object p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/KnoxLegacyVpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/KnoxLegacyVpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;
    .param p1, "x1"    # Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/KnoxLegacyVpn;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;
    .param p1, "x1"    # Ljava/lang/String;

    .line 176
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/KnoxLegacyVpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;
    .param p1, "x1"    # I

    .line 176
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->hideNotification(I)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/connectivity/KnoxLegacyVpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 176
    iput-object p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mStatusIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/KnoxLegacyVpn;)Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConnection:Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/connectivity/KnoxLegacyVpn;Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;)Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

    .line 176
    iput-object p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConnection:Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/KnoxLegacyVpn;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/KnoxLegacyVpn;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->agentDisconnect()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    iget-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/KnoxLegacyVpn;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    iget v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdownNotiIconRes:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/KnoxLegacyVpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/KnoxLegacyVpn;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getKnoxVpnFeature()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getknoxVpnTypeForStrongswanProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/KnoxLegacyVpn;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->setupIpRulesForCcMode(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/KnoxLegacyVpn;)Lcom/android/server/connectivity/VpnRules;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->testStrongSwanIntegrity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/connectivity/KnoxLegacyVpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;
    .param p1, "x1"    # Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/KnoxLegacyVpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;
    .param p1, "x1"    # I

    .line 176
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->prepareStatusIntent(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/KnoxLegacyVpn;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->agentConnectForKnoxInterface()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    iget-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/KnoxLegacyVpn;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->agentConnect()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/KnoxLegacyVpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;
    .param p1, "x1"    # I

    .line 176
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->sendBroadcastToClearConnectingNotification(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/KnoxLegacyVpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mEgressIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/KnoxLegacyVpn;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/KnoxLegacyVpn;Landroid/net/NetworkInfo$DetailedState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .line 176
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/KnoxLegacyVpn;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 176
    iget v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/KnoxLegacyVpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;
    .param p1, "x1"    # I

    .line 176
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->showNotificationForLegacy(I)V

    return-void
.end method

.method private agentConnect()V
    .registers 19

    .line 1143
    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v13

    .line 1152
    .local v13, "lp":Landroid/net/LinkProperties;
    iget-object v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1154
    iget-object v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    new-instance v0, Landroid/net/NetworkAgentConfig;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig;-><init>()V

    move-object v14, v0

    .line 1157
    .local v14, "networkMisc":Landroid/net/NetworkAgentConfig;
    iget-object v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v15, 0x1

    if-eqz v0, :cond_28

    iget-boolean v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdown:Z

    if-nez v0, :cond_28

    move v0, v15

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iput-boolean v0, v14, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    .line 1159
    iget-object v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setOwnerUid(I)Landroid/net/NetworkCapabilities;

    .line 1160
    iget-object v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    iget-object v2, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v3, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {v12, v1, v2, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1163
    iget-object v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-direct {v12, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isSecureWifiPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1164
    iget-object v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    .line 1165
    .local v0, "secureFolderId":I
    if-lez v0, :cond_74

    .line 1166
    const-string v1, "KnoxLegacyVpn"

    const-string v2, "Apply Secure Wi-Fi to Secure Folder"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1

    .line 1168
    .local v1, "vpnUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    iget-object v2, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->allowedSecureFolderApps:Ljava/util/List;

    iget-object v3, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedSecureFolderApps:Ljava/util/List;

    invoke-virtual {v12, v1, v0, v2, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1169
    iget-object v2, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1173
    .end local v0    # "secureFolderId":I
    .end local v1    # "vpnUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :cond_74
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1175
    .local v16, "token":J
    :try_start_78
    new-instance v0, Lcom/android/server/connectivity/KnoxLegacyVpn$3;

    iget-object v3, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLooper:Landroid/os/Looper;

    iget-object v4, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const-string v5, "VPN"

    iget-object v6, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v7, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v9, 0x65

    const/4 v11, -0x2

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v8, v13

    move-object v10, v14

    invoke-direct/range {v1 .. v11}, Lcom/android/server/connectivity/KnoxLegacyVpn$3;-><init>(Lcom/android/server/connectivity/KnoxLegacyVpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;I)V

    iput-object v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_91
    .catchall {:try_start_78 .. :try_end_91} :catchall_a2

    .line 1185
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1186
    nop

    .line 1187
    iget-object v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v15}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1188
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentConnect"

    invoke-virtual {v12, v0, v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1189
    return-void

    .line 1185
    :catchall_a2
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1186
    throw v0
.end method

.method private agentConnectForKnoxInterface()V
    .registers 21

    .line 3209
    move-object/from16 v12, p0

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    move-object v13, v0

    .line 3210
    .local v13, "lp":Landroid/net/LinkProperties;
    iget-object v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 3212
    const/4 v0, 0x0

    invoke-direct {v12, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->updateCapabilities(Landroid/net/Network;)V

    .line 3214
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 3215
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->setOwnerUid(I)Landroid/net/NetworkCapabilities;

    .line 3217
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v0, v0}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v1, :cond_4a

    .line 3220
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3221
    .local v2, "dnsServer":Ljava/lang/String;
    invoke-static {v2}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 3222
    .local v3, "address":Ljava/net/InetAddress;
    invoke-virtual {v13, v3}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 3223
    .end local v2    # "dnsServer":Ljava/lang/String;
    .end local v3    # "address":Ljava/net/InetAddress;
    goto :goto_36

    .line 3226
    :cond_4a
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v1, :cond_ba

    .line 3227
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 3228
    .local v2, "address":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    const-string v4, "KnoxLegacyVpn"

    if-eqz v3, :cond_8e

    .line 3229
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAddress:Ljava/lang/String;

    .line 3230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The ipv4 address added to the knox vpn interface is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    :cond_8e
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_b6

    .line 3233
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mV6Address:Ljava/lang/String;

    .line 3234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The ipv6 address added to the knox vpn interface is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mV6Address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    :cond_b6
    invoke-virtual {v13, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 3237
    .end local v2    # "address":Landroid/net/LinkAddress;
    goto :goto_58

    .line 3240
    :cond_ba
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAddress:Ljava/lang/String;

    const/4 v14, 0x1

    if-eqz v1, :cond_c7

    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mV6Address:Ljava/lang/String;

    if-eqz v1, :cond_c7

    .line 3241
    const/4 v1, 0x3

    iput v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mTun_type:I

    goto :goto_d5

    .line 3242
    :cond_c7
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_ce

    .line 3243
    iput v14, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mTun_type:I

    goto :goto_d5

    .line 3244
    :cond_ce
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mV6Address:Ljava/lang/String;

    if-eqz v1, :cond_d5

    .line 3245
    const/4 v1, 0x2

    iput v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mTun_type:I

    .line 3249
    :cond_d5
    :goto_d5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v1

    .line 3250
    .local v15, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v1, :cond_fe

    .line 3251
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fe

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3252
    .local v2, "domain":Ljava/lang/String;
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3253
    .end local v2    # "domain":Ljava/lang/String;
    goto :goto_e9

    .line 3255
    :cond_fe
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 3257
    new-instance v1, Landroid/net/NetworkAgentConfig;

    invoke-direct {v1}, Landroid/net/NetworkAgentConfig;-><init>()V

    move-object v11, v1

    .line 3259
    .local v11, "networkMisc":Landroid/net/NetworkAgentConfig;
    iput-boolean v14, v11, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    .line 3261
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v14}, Landroid/net/NetworkInfo;->setKnoxProfile(Z)V

    .line 3262
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget v2, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mTun_type:I

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setInterfaceType(I)V

    .line 3263
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setprofileName(Ljava/lang/String;)V

    .line 3264
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setV4Address(Ljava/lang/String;)V

    .line 3265
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mV6Address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setV6Address(Ljava/lang/String;)V

    .line 3266
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setKnoxInterfaceName(Ljava/lang/String;)V

    .line 3267
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v14}, Landroid/net/NetworkInfo;->setKnoxVpnClientType(I)V

    .line 3268
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget v2, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setKnoxVpnCallerUid(I)V

    .line 3269
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v14}, Landroid/net/NetworkInfo;->setKnoxNetworkState(Z)V

    .line 3271
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3273
    .local v16, "token":J
    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mProfileName:Ljava/lang/String;

    const-string v2, "Connecting"

    invoke-direct {v12, v2, v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->showConnectingNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    :try_start_15b
    new-instance v10, Lcom/android/server/connectivity/KnoxLegacyVpn$5;

    iget-object v3, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLooper:Landroid/os/Looper;

    iget-object v4, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const-string v5, "VPN"

    iget-object v6, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v7, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_167
    .catchall {:try_start_15b .. :try_end_167} :catchall_19a

    const/16 v9, 0x65

    const/16 v18, -0x2

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v8, v13

    move-object v0, v10

    move-object v10, v11

    move-object/from16 v19, v11

    .end local v11    # "networkMisc":Landroid/net/NetworkAgentConfig;
    .local v19, "networkMisc":Landroid/net/NetworkAgentConfig;
    move/from16 v11, v18

    :try_start_175
    invoke-direct/range {v1 .. v11}, Lcom/android/server/connectivity/KnoxLegacyVpn$5;-><init>(Lcom/android/server/connectivity/KnoxLegacyVpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;I)V

    iput-object v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_17a
    .catchall {:try_start_175 .. :try_end_17a} :catchall_198

    .line 3285
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3286
    nop

    .line 3287
    iget-object v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v14}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 3288
    iget-object v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v2, "agentConnect"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 3289
    invoke-direct {v12, v14}, Lcom/android/server/connectivity/KnoxLegacyVpn;->sendStrongSwanInterfaceToKnoxVpn(I)V

    .line 3290
    iget-object v0, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, v12, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 3291
    return-void

    .line 3285
    :catchall_198
    move-exception v0

    goto :goto_19d

    .end local v19    # "networkMisc":Landroid/net/NetworkAgentConfig;
    .restart local v11    # "networkMisc":Landroid/net/NetworkAgentConfig;
    :catchall_19a
    move-exception v0

    move-object/from16 v19, v11

    .end local v11    # "networkMisc":Landroid/net/NetworkAgentConfig;
    .restart local v19    # "networkMisc":Landroid/net/NetworkAgentConfig;
    :goto_19d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3286
    throw v0
.end method

.method private agentDisconnect()V
    .registers 3

    .line 1210
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1211
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1212
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentDisconnect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1215
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getKnoxVpnFeature()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_27

    .line 1216
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getknoxVpnTypeForStrongswanProfile()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1217
    iget v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->hideNotification(I)V

    .line 1222
    :cond_27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1224
    :cond_2a
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .registers 5
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;

    .line 1201
    if-eqz p1, :cond_16

    .line 1202
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1203
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1204
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1207
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_16
    return-void
.end method

.method private applyUnderlyingCapabilities(Landroid/net/ConnectivityManager;[Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V
    .registers 23
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "underlyingNetworks"    # [Landroid/net/Network;
    .param p3, "caps"    # Landroid/net/NetworkCapabilities;
    .param p4, "isAlwaysMetered"    # Z

    .line 463
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    new-array v0, v3, [I

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v4, v0, v5

    .line 466
    .local v0, "transportTypes":[I
    move/from16 v4, p4

    .line 467
    .local v4, "metered":Z
    const/4 v6, 0x0

    .line 468
    .local v6, "roaming":Z
    const/4 v7, 0x0

    .line 469
    .local v7, "congested":Z
    const/4 v8, 0x1

    .line 471
    .local v8, "suspended":Z
    const/4 v9, 0x0

    .line 472
    .local v9, "hadUnderlyingNetworks":Z
    if-eqz v1, :cond_9d

    .line 473
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
    if-ge v15, v13, :cond_94

    aget-object v5, v1, v15

    .line 475
    .local v5, "underlying":Landroid/net/Network;
    move-object/from16 v3, p1

    :try_start_21
    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 476
    .local v0, "underlyingCaps":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_29

    const/4 v1, 0x1

    goto :goto_8d

    .line 477
    :cond_29
    const/4 v14, 0x1

    .line 478
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_30
    if-ge v12, v11, :cond_43

    aget v16, v10, v12

    move/from16 v17, v16

    .line 479
    .local v17, "underlyingType":I
    move/from16 v1, v17

    .end local v17    # "underlyingType":I
    .local v1, "underlyingType":I
    invoke-static {v4, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v16

    move-object/from16 v4, v16

    .line 478
    .end local v1    # "underlyingType":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p2

    goto :goto_30

    .line 481
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

    .line 482
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

    .line 483
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

    .line 484
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_6d} :catch_71

    const/4 v1, 0x1

    xor-int/2addr v10, v1

    and-int/2addr v9, v10

    .line 487
    .end local v0    # "underlyingCaps":Landroid/net/NetworkCapabilities;
    goto :goto_8d

    .line 485
    :catch_71
    move-exception v0

    const/4 v1, 0x1

    .line 486
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

    const-string v11, "KnoxLegacyVpn"

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "underlying":Landroid/net/Network;
    :goto_8d
    add-int/lit8 v15, v15, 0x1

    move v3, v1

    const/4 v5, 0x0

    move-object/from16 v1, p2

    goto :goto_1b

    :cond_94
    move-object/from16 v3, p1

    move-object v0, v4

    move v4, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v14

    goto :goto_9f

    .line 472
    .end local v14    # "hadUnderlyingNetworks":Z
    .local v0, "transportTypes":[I
    .local v4, "metered":Z
    .local v6, "roaming":Z
    .local v7, "congested":Z
    .local v8, "suspended":Z
    .local v9, "hadUnderlyingNetworks":Z
    :cond_9d
    move-object/from16 v3, p1

    .line 490
    :goto_9f
    if-nez v9, :cond_a5

    .line 492
    const/4 v4, 0x1

    .line 493
    const/4 v6, 0x0

    .line 494
    const/4 v7, 0x0

    .line 495
    const/4 v8, 0x0

    .line 498
    :cond_a5
    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->setTransportTypes([I)V

    .line 500
    xor-int/lit8 v1, v6, 0x1

    const/16 v5, 0x12

    invoke-virtual {v2, v5, v1}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 501
    xor-int/lit8 v1, v7, 0x1

    const/16 v5, 0x14

    invoke-virtual {v2, v5, v1}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 502
    xor-int/lit8 v1, v8, 0x1

    const/16 v5, 0x15

    invoke-virtual {v2, v5, v1}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 503
    return-void
.end method

.method private canHaveRestrictedProfile(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 1192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1194
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->canHaveRestrictedProfile(I)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1196
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1194
    return v2

    .line 1196
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1197
    throw v2
.end method

.method private containsKnoxTag(Ljava/lang/String;)Z
    .registers 3
    .param p1, "aliasWithKnoxTag"    # Ljava/lang/String;

    .line 3049
    if-eqz p1, :cond_d

    const-string v0, " [Knox]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    .line 3052
    :cond_b
    const/4 v0, 0x1

    return v0

    .line 3050
    :cond_d
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method private convertToPemCert(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 5
    .param p1, "x509Cert"    # Ljava/security/cert/X509Certificate;

    .line 3090
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 3091
    .local v0, "encoded":[B
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 3092
    .local v1, "pemStr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->formatPemCert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-object v1, v2

    .line 3093
    return-object v1

    .line 3094
    .end local v0    # "encoded":[B
    .end local v1    # "pemStr":Ljava/lang/String;
    :catch_f
    move-exception v0

    .line 3095
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convertToPemCert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxLegacyVpn"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private dismissConnectingNotification()V
    .registers 1

    .line 3397
    return-void
.end method

.method private doesPackageTargetAtLeastQ(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 990
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 991
    return v1

    .line 993
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 995
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_11
    iget v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    .line 996
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 997
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_19} :catch_20

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    return v1

    .line 998
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_20
    move-exception v1

    .line 999
    .local v1, "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KnoxLegacyVpn"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return v2
.end method

.method private enforceControlPermission()V
    .registers 4

    .line 1704
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    return-void
.end method

.method private enforceControlPermissionOrInternalCaller()V
    .registers 4

    .line 1710
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    return-void
.end method

.method private enforceSettingsPermission()V
    .registers 4

    .line 1715
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .registers 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .line 2052
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 2054
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_23

    .line 2055
    return-object v1

    .line 2057
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_23
    goto :goto_8

    .line 2059
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find IPv4 default gateway"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private formatPemCert(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "noWrapBase64"    # Ljava/lang/String;

    .line 3076
    const-string v0, ""

    .line 3077
    .local v0, "wrapBase64":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 3078
    .local v1, "totalLen":I
    const/4 v2, 0x0

    .line 3080
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_31

    .line 3081
    sub-int v4, v1, v2

    const/16 v5, 0x40

    if-ge v4, v5, :cond_12

    sub-int v5, v1, v2

    :cond_12
    move v4, v5

    .line 3082
    .local v4, "nextLineLen":I
    add-int/2addr v2, v4

    .line 3083
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v6, v3, v4

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3080
    add-int/lit8 v3, v3, 0x40

    goto :goto_8

    .line 3085
    .end local v3    # "i":I
    .end local v4    # "nextLineLen":I
    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-----END CERTIFICATE-----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .registers 6
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 976
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 977
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    return v0

    .line 979
    :cond_d
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 982
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_13
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_17} :catch_18

    .line 985
    .local v1, "result":I
    goto :goto_1b

    .line 983
    .end local v1    # "result":I
    :catch_18
    move-exception v1

    .line 984
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    move v1, v2

    .line 986
    .local v1, "result":I
    :goto_1b
    return v1
.end method

.method private getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .registers 8
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1377
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1378
    .local v0, "uids":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1379
    .local v2, "app":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getAppUid(Ljava/lang/String;I)I

    move-result v3

    .line 1380
    .local v3, "uid":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1381
    .end local v2    # "app":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_23
    goto :goto_9

    .line 1382
    :cond_24
    return-object v0
.end method

.method private getCcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "displayAlias"    # Ljava/lang/String;

    .line 3101
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/sec/tima_keychain/TimaKeychain;->display2KeyChainAlias(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3102
    .local v1, "ccmAlias":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCcmCertificate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KnoxLegacyVpn"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    iget v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    if-lez v2, :cond_38

    .line 3105
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getCertificateChainFromTimaKeystoreForUKSByUserId(Ljava/lang/String;I)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .local v2, "ccmCertList":[Ljava/security/cert/X509Certificate;
    goto :goto_3c

    .line 3107
    .end local v2    # "ccmCertList":[Ljava/security/cert/X509Certificate;
    :cond_38
    invoke-static {v1}, Lcom/sec/tima_keychain/TimaKeychain;->getCertificateChainFromTimaKeystore(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 3109
    .restart local v2    # "ccmCertList":[Ljava/security/cert/X509Certificate;
    :goto_3c
    if-eqz v2, :cond_7e

    .line 3110
    array-length v4, v2

    :goto_3f
    if-ge v0, v4, :cond_7e

    aget-object v5, v2, v0

    .line 3111
    .local v5, "x509Cert":Ljava/security/cert/X509Certificate;
    if-eqz v5, :cond_7b

    .line 3113
    :try_start_45
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v6

    if-lez v6, :cond_58

    .line 3114
    const-string v6, "CACERT_"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 3115
    invoke-direct {p0, v5}, Lcom/android/server/connectivity/KnoxLegacyVpn;->convertToPemCert(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3118
    :cond_58
    const-string v6, "USRCERT_"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 3119
    invoke-direct {p0, v5}, Lcom/android/server/connectivity/KnoxLegacyVpn;->convertToPemCert(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_64} :catch_66

    return-object v0

    .line 3124
    :cond_65
    goto :goto_7b

    .line 3122
    :catch_66
    move-exception v6

    .line 3123
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to convertToPemCert, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    .end local v5    # "x509Cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7b
    :goto_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 3128
    :cond_7e
    const-string v0, "Failed to getCcmCertificate"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCcmContainerAlias(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p1, "aliasWithKnoxTag"    # Ljava/lang/String;
    .param p2, "checkKnoxTag"    # Z

    .line 3065
    move-object v0, p1

    .line 3066
    .local v0, "ret":Ljava/lang/String;
    if-eqz p2, :cond_23

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->containsKnoxTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-static {v2}, Lcom/sec/tima_keychain/TimaKeychain;->getCcmInstallerPrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->removeKnoxTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 3069
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-static {v2}, Lcom/sec/tima_keychain/TimaKeychain;->getCcmInstallerPrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3071
    :goto_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCcmContainerAlias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxLegacyVpn"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    return-object v0
.end method

.method private getCertificateChainFromTimaKeystoreForUKSByUserId(Ljava/lang/String;I)[Ljava/security/cert/X509Certificate;
    .registers 10
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3408
    const/4 v0, 0x0

    .line 3411
    .local v0, "x509CertChain":[Ljava/security/cert/X509Certificate;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "KnoxLegacyVpn"

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_12

    .line 3412
    const-string/jumbo v1, "getCertificateChainFromTimaKeystoreForUKSByUserId no permission"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    return-object v0

    .line 3416
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCertificateChainFromTimaKeystoreForUKSByUserId called for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    if-eqz p1, :cond_ad

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto/16 :goto_ad

    .line 3421
    :cond_33
    :try_start_33
    const-string v1, "KnoxAndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 3422
    .local v1, "keyStore":Ljava/security/KeyStore;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 3424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/sec/tima_keychain/TimaKeychain;->getCcmInstallerPrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3425
    .local v3, "ccmContainerAlias":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trying alias "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 3427
    .local v4, "certChain":[Ljava/security/cert/Certificate;
    if-eqz v4, :cond_90

    .line 3428
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "certChain is not null for alias "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    array-length v5, v4

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    move-object v0, v5

    .line 3430
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_84
    array-length v6, v4

    if-ge v5, v6, :cond_90

    .line 3431
    aget-object v6, v4, v5

    check-cast v6, Ljava/security/cert/X509Certificate;

    aput-object v6, v0, v5
    :try_end_8d
    .catch Ljava/security/KeyStoreException; {:try_start_33 .. :try_end_8d} :catch_a6
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_8d} :catch_9f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_8d} :catch_98
    .catch Ljava/security/cert/CertificateException; {:try_start_33 .. :try_end_8d} :catch_91

    .line 3430
    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    .line 3442
    .end local v3    # "ccmContainerAlias":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_90
    goto :goto_b3

    .line 3440
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    .end local v4    # "certChain":[Ljava/security/cert/Certificate;
    :catch_91
    move-exception v1

    .line 3441
    .local v1, "ce":Ljava/security/cert/CertificateException;
    const-string v3, "CertificateException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b3

    .line 3438
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    :catch_98
    move-exception v1

    .line 3439
    .local v1, "ae":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "NoSuchAlgorithmException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3442
    .end local v1    # "ae":Ljava/security/NoSuchAlgorithmException;
    goto :goto_b3

    .line 3436
    :catch_9f
    move-exception v1

    .line 3437
    .local v1, "ioe":Ljava/io/IOException;
    const-string v3, "IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3442
    .end local v1    # "ioe":Ljava/io/IOException;
    goto :goto_b3

    .line 3434
    :catch_a6
    move-exception v1

    .line 3435
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v3, "KeyStoreException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3442
    .end local v1    # "e":Ljava/security/KeyStoreException;
    goto :goto_b3

    .line 3418
    :cond_ad
    :goto_ad
    const-string/jumbo v1, "getCertificateChainFromTimaKeystoreForUKSByUserId received empty/null alias"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    :goto_b3
    return-object v0
.end method

.method private getKnoxVpnFeature()I
    .registers 2

    .line 3186
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->KNOXVPN_FEATURE:I

    .line 3187
    return v0
.end method

.method private getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .registers 3

    .line 3194
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getKnoxVpnFeature()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1a

    .line 3195
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    if-nez v0, :cond_1d

    .line 3196
    nop

    .line 3197
    const-string/jumbo v0, "knox_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3196
    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    goto :goto_1d

    .line 3200
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3202
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    return-object v0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .registers 3

    .line 3400
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_11

    .line 3401
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3403
    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getVpnTypeString(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .line 2096
    packed-switch p1, :pswitch_data_1e

    .line 2114
    const-string v0, ""

    return-object v0

    .line 2108
    :pswitch_6
    const-string v0, "IPSEC_IKEV2_RSA"

    return-object v0

    .line 2110
    :pswitch_9
    const-string v0, "IPSEC_IKEV2_PSK"

    return-object v0

    .line 2104
    :pswitch_c
    const-string v0, "IPSEC_XAUTH_RSA"

    return-object v0

    .line 2106
    :pswitch_f
    const-string v0, "IPSEC_XAUTH_PSK"

    return-object v0

    .line 2112
    :pswitch_12
    const-string v0, "IPSEC_HYBRID_RSA"

    return-object v0

    .line 2100
    :pswitch_15
    const-string v0, "L2TP_IPSEC_RSA"

    return-object v0

    .line 2102
    :pswitch_18
    const-string v0, "L2TP_IPSEC_PSK"

    return-object v0

    .line 2098
    :pswitch_1b
    const-string v0, "PPTP"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private getknoxVpnTypeForStrongswanProfile()Z
    .registers 9

    .line 3151
    const/4 v0, 0x1

    .line 3152
    .local v0, "profileType":Z
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getKnoxVpnFeature()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "KnoxLegacyVpn"

    if-lt v1, v2, :cond_a9

    .line 3153
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3155
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v4

    if-eqz v4, :cond_8b

    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mProfileName:Ljava/lang/String;

    if-eqz v4, :cond_8b

    .line 3156
    sget-boolean v4, Lcom/android/server/connectivity/KnoxLegacyVpn;->DBG:Z

    if-eqz v4, :cond_35

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getknoxVpnTypeForStrongswanProfile: profile name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    :cond_35
    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mProfileName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getVendorNameForProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3158
    .local v4, "vendorOwningProfile":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/connectivity/KnoxLegacyVpn;->DBG:Z

    if-eqz v5, :cond_56

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getknoxVpnTypeForStrongswanProfile vendorOwningProfile value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    :cond_56
    if-eqz v4, :cond_8b

    .line 3160
    const-string v5, "com.android.vpndialogs"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    .line 3161
    .local v5, "vpnDialogUid":I
    const-string v6, "com.samsung.sVpn"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_71

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v5, v6, :cond_8b

    .line 3162
    :cond_71
    sget-boolean v6, Lcom/android/server/connectivity/KnoxLegacyVpn;->DBG:Z

    if-eqz v6, :cond_7a

    const-string v6, "Caller is either the strongswan proxy or the vpn dialog app"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    :cond_7a
    iget-object v6, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v7, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mProfileName:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getKnoxVpnProfileType(Ljava/lang/String;)I

    move-result v6
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_82} :catch_8c

    .line 3164
    .local v6, "type":I
    if-nez v6, :cond_86

    .line 3165
    const/4 v0, 0x1

    goto :goto_8b

    .line 3166
    :cond_86
    if-ne v6, v2, :cond_8a

    .line 3167
    const/4 v0, 0x0

    goto :goto_8b

    .line 3169
    :cond_8a
    const/4 v0, 0x1

    .line 3176
    .end local v4    # "vendorOwningProfile":Ljava/lang/String;
    .end local v5    # "vpnDialogUid":I
    .end local v6    # "type":I
    :cond_8b
    :goto_8b
    goto :goto_a9

    .line 3174
    :catch_8c
    move-exception v2

    .line 3175
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/connectivity/KnoxLegacyVpn;->DBG:Z

    if-eqz v4, :cond_a9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at checkIfStrongswanProfileIsKnoxBased "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a9
    :goto_a9
    sget-boolean v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->DBG:Z

    if-eqz v1, :cond_c2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getknoxVpnTypeForStrongswanProfile profileType value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    :cond_c2
    return v0
.end method

.method private hideNotification(I)V
    .registers 8
    .param p1, "user"    # I

    .line 1770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 1771
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    .line 1772
    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1774
    .local v1, "nm":Landroid/app/NotificationManager;
    if-eqz v1, :cond_28

    .line 1775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1777
    .local v2, "token":J
    const v4, 0x1080b90

    :try_start_17
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_23

    .line 1779
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1780
    goto :goto_28

    .line 1779
    :catchall_23
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1780
    throw v0

    .line 1782
    .end local v2    # "token":J
    :cond_28
    :goto_28
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->unregisterLocaleChangedReceiver()V

    .line 1783
    return-void
.end method

.method private isCcmEnabled()Z
    .registers 2

    .line 3044
    nop

    .line 3045
    const-string v0, "com.android.settings"

    invoke-static {v0}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForPackage(Ljava/lang/String;)Z

    move-result v0

    .line 3044
    return v0
.end method

.method private isCurrentPreparedPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 876
    iget v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mOwnerUID:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isNullOrLegacyVpn(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 681
    if-eqz p0, :cond_d

    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private isRunningLocked()Z
    .registers 2

    .line 1365
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isSecureWifiPackage(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 3135
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mPackage:Ljava/lang/String;

    const-string v1, "com.samsung.android.fast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3137
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18

    .line 3138
    const/4 v1, 0x1

    return v1

    .line 3140
    :cond_18
    const-string v1, "KnoxLegacyVpn"

    const-string v2, "Secure Wi-Fi signature mismatched"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private isVpnConnectionSecure([Ljava/lang/String;)Z
    .registers 6
    .param p1, "racoon"    # [Ljava/lang/String;

    .line 2082
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2083
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2084
    const/4 v3, 0x1

    .line 2085
    .local v3, "result":Z
    if-eqz v2, :cond_15

    .line 2086
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getVpnPolicy()Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    .line 2088
    :cond_15
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    if-eqz v2, :cond_1d

    .line 2089
    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->checkRacoonSecurity([Ljava/lang/String;)Z

    move-result v3

    .line 2091
    :cond_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2092
    return v3
.end method

.method private isVpnUserPreConsented(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 967
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    .line 968
    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 971
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniCreateSecureWifi(I)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadAlwaysOnPackage()V
    .registers 8

    .line 725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 727
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mSystemServices:Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    iget v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "alwaysOnPackage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mSystemServices:Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;

    const-string v4, "always_on_vpn_lockdown"

    iget v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;->settingsSecureGetIntForUser(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v6, 0x1

    :cond_1c
    move v3, v6

    .line 731
    .local v3, "alwaysOnLockdown":Z
    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mSystemServices:Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;

    const-string v5, "always_on_vpn_lockdown_whitelist"

    iget v6, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 733
    .local v4, "whitelistString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 734
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_3c

    :cond_32
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 735
    .local v5, "whitelistedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3c
    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/connectivity/KnoxLegacyVpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_45

    .line 737
    nop

    .end local v2    # "alwaysOnPackage":Ljava/lang/String;
    .end local v3    # "alwaysOnLockdown":Z
    .end local v4    # "whitelistString":Ljava/lang/String;
    .end local v5    # "whitelistedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 738
    nop

    .line 739
    return-void

    .line 737
    :catchall_45
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 738
    throw v2
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .registers 9

    .line 1017
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 1018
    .local v0, "allowIPv4":Z
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 1020
    .local v1, "allowIPv6":Z
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .line 1022
    .local v2, "lp":Landroid/net/LinkProperties;
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1024
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v3, :cond_3e

    .line 1025
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 1026
    .local v4, "address":Landroid/net/LinkAddress;
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1027
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v5

    .line 1028
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v5

    .line 1029
    .end local v4    # "address":Landroid/net/LinkAddress;
    goto :goto_20

    .line 1032
    :cond_3e
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v3, :cond_6a

    .line 1033
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 1034
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1035
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 1036
    .local v5, "address":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v6

    .line 1037
    instance-of v6, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v6

    .line 1038
    .end local v4    # "route":Landroid/net/RouteInfo;
    .end local v5    # "address":Ljava/net/InetAddress;
    goto :goto_4c

    .line 1041
    :cond_6a
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v3, :cond_92

    .line 1042
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1043
    .local v4, "dnsServer":Ljava/lang/String;
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 1044
    .restart local v5    # "address":Ljava/net/InetAddress;
    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 1045
    instance-of v6, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v6

    .line 1046
    instance-of v6, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v6

    .line 1047
    .end local v4    # "dnsServer":Ljava/lang/String;
    .end local v5    # "address":Ljava/net/InetAddress;
    goto :goto_78

    .line 1050
    :cond_92
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1052
    const/4 v3, 0x7

    const/4 v4, 0x0

    if-nez v0, :cond_ac

    .line 1053
    new-instance v5, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v6, v7, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1055
    :cond_ac
    if-nez v1, :cond_bd

    .line 1056
    new-instance v5, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v6, v7, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1060
    :cond_bd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1061
    .local v3, "buffer":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v4, :cond_e5

    .line 1062
    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1063
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1064
    .end local v5    # "domain":Ljava/lang/String;
    goto :goto_d0

    .line 1066
    :cond_e5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 1070
    return-object v2
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .registers 11
    .param p1, "newPackage"    # Ljava/lang/String;

    .line 881
    const-string v0, " to call protect() "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 884
    .local v1, "token":J
    :try_start_6
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_3c

    .line 885
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v3

    .line 886
    .local v3, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz v3, :cond_2b

    .line 887
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/UidRange;

    .line 888
    .local v6, "uidRange":Landroid/net/UidRange;
    invoke-virtual {v6}, Landroid/net/UidRange;->getStartUser()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/connectivity/KnoxLegacyVpn;->hideNotification(I)V

    .line 889
    .end local v6    # "uidRange":Landroid/net/UidRange;
    goto :goto_17

    .line 891
    :cond_2b
    iput-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 892
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->agentDisconnect()V

    .line 893
    iget-object v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/KnoxLegacyVpn;->jniReset(Ljava/lang/String;)V

    .line 894
    iput-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    .line 895
    iget-object v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v5, v4}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 899
    .end local v3    # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :cond_3c
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConnection:Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_100

    const-string v5, "KnoxLegacyVpn"

    if-eqz v3, :cond_69

    .line 901
    :try_start_42
    const-string v3, "Revoke the connection or stop LegacyVpnRunner."

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConnection:Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;->access$800(Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;)Landroid/os/IBinder;

    move-result-object v3

    const v6, 0xffffff

    .line 903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    const/4 v8, 0x1

    .line 902
    invoke-interface {v3, v6, v7, v4, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_58} :catch_59
    .catchall {:try_start_42 .. :try_end_58} :catchall_100

    .line 906
    goto :goto_5f

    .line 904
    :catch_59
    move-exception v3

    .line 905
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5a
    const-string v6, "Failed to revoke the connection or stop LegacyVpnRunner."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_5f
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConnection:Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

    invoke-virtual {v3, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 908
    iput-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConnection:Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

    goto :goto_74

    .line 909
    :cond_69
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    if-eqz v3, :cond_74

    .line 910
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    invoke-virtual {v3}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->exit()V

    .line 911
    iput-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_100

    .line 915
    :cond_74
    :goto_74
    :try_start_74
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v6, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mOwnerUID:I

    invoke-interface {v3, v6}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7b} :catch_7c
    .catchall {:try_start_74 .. :try_end_7b} :catchall_100

    .line 918
    goto :goto_99

    .line 916
    :catch_7c
    move-exception v3

    .line 917
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_7d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to disallow UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mOwnerUID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switched from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iput-object p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mPackage:Ljava/lang/String;

    .line 922
    iget v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getAppUid(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mOwnerUID:I

    .line 923
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mIsPackageTargetingAtLeastQ:Z
    :try_end_c7
    .catchall {:try_start_7d .. :try_end_c7} :catchall_100

    .line 925
    :try_start_c7
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v6, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mOwnerUID:I

    invoke-interface {v3, v6}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ce} :catch_cf
    .catchall {:try_start_c7 .. :try_end_ce} :catchall_100

    .line 928
    goto :goto_ec

    .line 926
    :catch_cf
    move-exception v3

    .line 927
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_d0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to allow UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mOwnerUID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_ec
    iput-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 931
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v3, "prepare"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 932
    iget-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdown:Z

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->setVpnForcedLocked(Z)V
    :try_end_fb
    .catchall {:try_start_d0 .. :try_end_fb} :catchall_100

    .line 934
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    nop

    .line 936
    return-void

    .line 934
    :catchall_100
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    throw v0
.end method

.method private prepareStatusIntent(I)V
    .registers 6
    .param p1, "user"    # I

    .line 1734
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1735
    .local v0, "callinguid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1737
    .local v1, "token":J
    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_15

    .line 1738
    :try_start_c
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mStatusIntent:Landroid/app/PendingIntent;

    goto :goto_1d

    .line 1740
    :cond_15
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_22

    .line 1743
    :goto_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1744
    nop

    .line 1745
    return-void

    .line 1743
    :catchall_22
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1744
    throw v3
.end method

.method static providesRoutesToMostDestinations(Landroid/net/LinkProperties;)Z
    .registers 10
    .param p0, "lp"    # Landroid/net/LinkProperties;

    .line 1084
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    .line 1085
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x96

    if-le v1, v3, :cond_e

    return v2

    .line 1086
    :cond_e
    invoke-static {}, Landroid/net/IpPrefix;->lengthComparator()Ljava/util/Comparator;

    move-result-object v1

    .line 1087
    .local v1, "prefixLengthComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/net/IpPrefix;>;"
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1088
    .local v3, "ipv4Prefixes":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1089
    .local v4, "ipv6Prefixes":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 1090
    .local v6, "route":Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getType()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_34

    goto :goto_20

    .line 1091
    :cond_34
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v7

    .line 1092
    .local v7, "destination":Landroid/net/IpPrefix;
    invoke-virtual {v7}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v8

    if-eqz v8, :cond_42

    .line 1093
    invoke-virtual {v3, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 1095
    :cond_42
    invoke-virtual {v4, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1097
    .end local v6    # "route":Landroid/net/RouteInfo;
    .end local v7    # "destination":Landroid/net/IpPrefix;
    :goto_45
    goto :goto_20

    .line 1098
    :cond_46
    invoke-static {v3}, Landroid/net/NetworkUtils;->routedIPv4AddressCount(Ljava/util/TreeSet;)J

    move-result-wide v5

    sget-wide v7, Lcom/android/server/connectivity/KnoxLegacyVpn;->MOST_IPV4_ADDRESSES_COUNT:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_51

    .line 1099
    return v2

    .line 1101
    :cond_51
    invoke-static {v4}, Landroid/net/NetworkUtils;->routedIPv6AddressCount(Ljava/util/TreeSet;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lcom/android/server/connectivity/KnoxLegacyVpn;->MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

    .line 1102
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v2, 0x0

    .line 1101
    :goto_5f
    return v2
.end method

.method private registerLocaleChangedReceiver()V
    .registers 5

    .line 317
    iget-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mIsLocaleChangedReceiverRegistered:Z

    if-nez v0, :cond_15

    .line 318
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mIsLocaleChangedReceiverRegistered:Z

    .line 321
    :cond_15
    return-void
.end method

.method private removeKnoxTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "aliasWithKnoxTag"    # Ljava/lang/String;

    .line 3056
    move-object v0, p1

    .line 3057
    .local v0, "ret":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->containsKnoxTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3058
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " [Knox]"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3060
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeKnoxTag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxLegacyVpn"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    return-object v0
.end method

.method private saveAlwaysOnPackage()V
    .registers 7

    .line 706
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 708
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mSystemServices:Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    .line 709
    invoke-virtual {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    .line 708
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 710
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mSystemServices:Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown"

    .line 711
    iget-boolean v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z

    if-eqz v4, :cond_1f

    iget-boolean v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdown:Z

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    iget v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    .line 710
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;->settingsSecurePutIntForUser(Ljava/lang/String;II)V

    .line 712
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mSystemServices:Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown_whitelist"

    const-string v4, ","

    iget-object v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdownWhitelist:Ljava/util/List;

    .line 714
    invoke-static {v4, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    .line 712
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3b

    .line 716
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 717
    nop

    .line 718
    return-void

    .line 716
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 717
    throw v2
.end method

.method private sendBroadcastToClearConnectingNotification(I)V
    .registers 9
    .param p1, "state"    # I

    .line 3329
    const-string v0, "KnoxLegacyVpn"

    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getKnoxVpnFeature()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5c

    .line 3330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3333
    .local v1, "token":J
    :try_start_d
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mProfileName:Ljava/lang/String;

    if-eqz v3, :cond_48

    .line 3334
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3335
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3336
    const-string v4, "com.samsung.sVpn"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3337
    const-string v4, "com.samsung.android.knox.intent.extra.PROFILE_NAME_INTERNAL"

    iget-object v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3338
    const-string v4, "com.samsung.android.knox.intent.extra.TUN_ID_INTERNAL"

    const-string/jumbo v5, "ipsec0"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3339
    const-string v4, "com.samsung.android.knox.intent.extra.STATE_INTERNAL"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3340
    const-string/jumbo v4, "send message to clear connecting notificiation due to some error while connecting to server"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "com.samsung.android.knox.permission.KNOX_VPN_SOLUTION"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_48} :catch_4f
    .catchall {:try_start_d .. :try_end_48} :catchall_4d

    .line 3346
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_48
    nop

    :goto_49
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3347
    goto :goto_5c

    .line 3346
    :catchall_4d
    move-exception v0

    goto :goto_58

    .line 3343
    :catch_4f
    move-exception v3

    .line 3344
    .local v3, "e":Ljava/lang/Exception;
    :try_start_50
    const-string/jumbo v4, "unable to send message to clear connecting notification"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_4d

    .line 3346
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_49

    :goto_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3347
    throw v0

    .line 3349
    .end local v1    # "token":J
    :cond_5c
    :goto_5c
    return-void
.end method

.method private sendStrongSwanInterfaceToKnoxVpn(I)V
    .registers 8
    .param p1, "state"    # I

    .line 3297
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getKnoxVpnFeature()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7b

    .line 3298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3301
    .local v2, "token":J
    :try_start_b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3302
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3303
    const-string v4, "com.samsung.sVpn"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3304
    const-string v4, "com.samsung.android.knox.intent.extra.ACTION_INTERNAL"

    const-string/jumbo v5, "tun_info"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3305
    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mProfileName:Ljava/lang/String;

    if-eqz v4, :cond_2d

    .line 3306
    const-string v4, "com.samsung.android.knox.intent.extra.PROFILE_NAME_INTERNAL"

    iget-object v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3308
    :cond_2d
    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    if-eqz v4, :cond_38

    .line 3309
    const-string v4, "com.samsung.android.knox.intent.extra.TUN_ID_INTERNAL"

    iget-object v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3311
    :cond_38
    const-string v4, "com.samsung.android.knox.intent.extra.STATE_INTERNAL"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3312
    const-string v4, "com.samsung.android.knox.intent.extra.TUN_ADDRESS_INTERNAL"

    iget-object v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3313
    const-string v4, "com.samsung.android.knox.intent.extra.TUNV6_ADDRESS_INTERNAL"

    iget-object v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mV6Address:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3314
    const-string v4, "com.samsung.android.knox.intent.extra.VPN_CLIENT_TYPE_INTERNAL"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3315
    const-string/jumbo v1, "virtual_address_type"

    iget v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mTun_type:I

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3316
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.samsung.android.knox.permission.KNOX_VPN_SOLUTION"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_66} :catch_69
    .catchall {:try_start_b .. :try_end_66} :catchall_67

    .line 3320
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_73

    :catchall_67
    move-exception v0

    goto :goto_77

    .line 3317
    :catch_69
    move-exception v0

    .line 3318
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6a
    const-string v1, "KnoxLegacyVpn"

    const-string/jumbo v4, "unable to send interface details"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_67

    .line 3320
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_73
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3321
    goto :goto_7b

    .line 3320
    :goto_77
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3321
    throw v0

    .line 3323
    .end local v2    # "token":J
    :cond_7b
    :goto_7b
    return-void
.end method

.method private setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z
    .registers 7
    .param p1, "enforce"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/UidRange;",
            ">;)Z"
        }
    .end annotation

    .line 1630
    .local p2, "ranges":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/UidRange;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1631
    return v1

    .line 1633
    :cond_8
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/UidRange;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    .line 1635
    .local v0, "rangesArray":[Landroid/net/UidRange;
    :try_start_14
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v0}, Landroid/os/INetworkManagementService;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_28
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_19} :catch_28

    .line 1640
    nop

    .line 1641
    if-eqz p1, :cond_22

    .line 1642
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_27

    .line 1644
    :cond_22
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1646
    :goto_27
    return v1

    .line 1636
    :catch_28
    move-exception v1

    .line 1637
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating blocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for UIDs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1637
    const-string v3, "KnoxLegacyVpn"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1639
    const/4 v2, 0x0

    return v2
.end method

.method private setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 638
    .local p3, "lockdownWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "KnoxLegacyVpn"

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not setting legacy VPN \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" as always-on."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return v2

    .line 643
    :cond_25
    if-eqz p3, :cond_55

    .line 644
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 645
    .local v3, "pkg":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not setting always-on vpn, invalid whitelisted package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return v2

    .line 649
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_54
    goto :goto_2b

    .line 652
    :cond_55
    const/4 v0, 0x1

    if-eqz p1, :cond_62

    .line 654
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->setPackageAuthorization(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 655
    return v2

    .line 657
    :cond_5f
    iput-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z

    goto :goto_66

    .line 659
    :cond_62
    const-string p1, "[Legacy VPN]"

    .line 660
    iput-boolean v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z

    .line 663
    :goto_66
    iget-boolean v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z

    if-eqz v3, :cond_6d

    if-eqz p2, :cond_6d

    move v2, v0

    :cond_6d
    iput-boolean v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdown:Z

    .line 664
    if-eqz v2, :cond_7d

    if-eqz p3, :cond_7d

    .line 665
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_81

    .line 666
    :cond_7d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_81
    iput-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdownWhitelist:Ljava/util/List;

    .line 668
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 669
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 670
    iget-boolean v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdown:Z

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->setVpnForcedLocked(Z)V

    goto :goto_b4

    .line 674
    :cond_98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepare Internal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as always-on."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->prepareInternal(Ljava/lang/String;)V

    .line 677
    :goto_b4
    return v0
.end method

.method private setVpnForcedLocked(Z)V
    .registers 10
    .param p1, "enforce"    # Z

    .line 1584
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1585
    const/4 v0, 0x0

    .local v0, "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_16

    .line 1587
    .end local v0    # "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdownWhitelist:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1588
    .restart local v0    # "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    :goto_16
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mBlockedUsers:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1592
    .local v1, "removedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 1593
    .local v2, "addedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    const/4 v3, 0x1

    if-eqz p1, :cond_59

    .line 1594
    iget v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 1601
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/UidRange;

    .line 1602
    .local v5, "range":Landroid/net/UidRange;
    iget v6, v5, Landroid/net/UidRange;->start:I

    if-nez v6, :cond_50

    .line 1603
    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1604
    iget v6, v5, Landroid/net/UidRange;->stop:I

    if-eqz v6, :cond_50

    .line 1605
    new-instance v6, Landroid/net/UidRange;

    iget v7, v5, Landroid/net/UidRange;->stop:I

    invoke-direct {v6, v3, v7}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1608
    .end local v5    # "range":Landroid/net/UidRange;
    :cond_50
    goto :goto_2f

    .line 1610
    :cond_51
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1611
    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1614
    :cond_59
    const/4 v4, 0x0

    invoke-direct {p0, v4, v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1615
    invoke-direct {p0, v3, v2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1616
    return-void
.end method

.method private setupIpRulesForCcMode(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "serverIP"    # Ljava/lang/String;
    .param p2, "block"    # Z

    .line 2981
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 2982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setupIpRulesForCcMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxLegacyVpn"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEnabled(Z)V

    .line 2986
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    const/16 v2, 0x1f4

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2987
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    const/16 v3, 0x1194

    invoke-virtual {v0, p1, v3, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2988
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    const/16 v4, 0x6a5

    invoke-virtual {v0, p1, v4, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2989
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    const-string/jumbo v5, "ipsec0"

    invoke-virtual {v0, v5, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 2990
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    iget-object v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyAddress:Ljava/lang/String;

    invoke-virtual {v0, v5, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 2991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupIpRulesForCcMode: v4="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2994
    .local v0, "clatIpv6addr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    invoke-virtual {v5, v0, v2, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2995
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    invoke-virtual {v2, v0, v3, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2996
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    invoke-virtual {v2, v0, v4, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2997
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    const-string v3, "fe80::/64"

    invoke-virtual {v2, v3, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 2998
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    const-string v3, "2000::/4"

    invoke-virtual {v2, v3, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 2999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupIpRulesForCcMode: v6="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_a1} :catch_a3

    .line 3002
    nop

    .end local v0    # "clatIpv6addr":Ljava/lang/String;
    goto :goto_b8

    .line 3000
    :catch_a3
    move-exception v0

    .line 3001
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set firewall rule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b8
    :goto_b8
    return-void
.end method

.method private showConnectingNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "pname"    # Ljava/lang/String;

    .line 3385
    return-void
.end method

.method private showNotificationForLegacy(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 1833
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mPackage:Ljava/lang/String;

    const-string v1, "[Legacy VPN]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "KnoxLegacyVpn"

    if-nez v0, :cond_13

    .line 1834
    const-string/jumbo v0, "showNotificationForLegacy: not LEGACY_VPN"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    return-void

    .line 1837
    :cond_13
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v2, "LOCKDOWN_VPN"

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1838
    const-string/jumbo v0, "showNotificationForLegacy: exist LOCKDOWN_VPN"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    return-void

    .line 1841
    :cond_26
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1842
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_56

    .line 1843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1845
    .local v1, "token":J
    :try_start_37
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mStatusIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v3

    .line 1846
    .local v3, "notification":Landroid/app/Notification;
    const v5, 0x1080b90

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_51

    .line 1848
    .end local v3    # "notification":Landroid/app/Notification;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1849
    nop

    .line 1850
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->registerLocaleChangedReceiver()V

    goto :goto_56

    .line 1848
    :catchall_51
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1849
    throw v3

    .line 1852
    .end local v1    # "token":J
    :cond_56
    :goto_56
    return-void
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/KnoxVpnProfile;)V
    .registers 13
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;
    .param p4, "profile"    # Lcom/android/internal/net/KnoxVpnProfile;

    monitor-enter p0

    .line 2327
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->stopLegacyVpnPrivileged()V

    .line 2330
    const-string v0, "KnoxLegacyVpn"

    const-string v1, "Prepare internal LEGACY_VPN"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->prepareInternal(Ljava/lang/String;)V

    .line 2332
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2335
    new-instance v0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/KnoxLegacyVpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/KnoxVpnProfile;)V

    iput-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    .line 2336
    invoke-virtual {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->start()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 2337
    monitor-exit p0

    return-void

    .line 2326
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    .end local p2    # "racoon":[Ljava/lang/String;
    .end local p3    # "mtpd":[Ljava/lang/String;
    .end local p4    # "profile":Lcom/android/internal/net/KnoxVpnProfile;
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private testStrongSwanIntegrity()Z
    .registers 2

    .line 3023
    const/4 v0, 0x0

    .line 3039
    .local v0, "integrityTestPassed":Z
    return v0
.end method

.method private static uidRangesForUser(ILjava/util/Set;)Ljava/util/List;
    .registers 7
    .param p0, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .line 1486
    .local p1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-static {p0}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    .line 1487
    .local v0, "userRange":Landroid/net/UidRange;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    .local v1, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UidRange;

    .line 1489
    .local v3, "range":Landroid/net/UidRange;
    invoke-virtual {v0, v3}, Landroid/net/UidRange;->containsRange(Landroid/net/UidRange;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1490
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1492
    .end local v3    # "range":Landroid/net/UidRange;
    :cond_22
    goto :goto_d

    .line 1493
    :cond_23
    return-object v1
.end method

.method private unregisterLocaleChangedReceiver()V
    .registers 4

    .line 323
    iget-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mIsLocaleChangedReceiverRegistered:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_19

    .line 325
    :try_start_8
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_d} :catch_e

    .line 328
    goto :goto_16

    .line 326
    :catch_e
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "KnoxLegacyVpn"

    const-string v2, "Failed to unregister LocaleChangedReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mIsLocaleChangedReceiverRegistered:Z

    .line 331
    :cond_19
    return-void
.end method

.method private updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 15
    .param p1, "networkState"    # Landroid/net/NetworkInfo$DetailedState;

    .line 1945
    iget-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1947
    .local v0, "visible":Z
    :goto_c
    iget v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1948
    .local v2, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1950
    .local v3, "token":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_bc

    .line 1951
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    const/16 v6, 0x11

    const-string v7, "KnoxLegacyVpn"

    if-nez v0, :cond_38

    .line 1952
    :try_start_22
    invoke-virtual {v5, v7, v6, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1954
    iget-boolean v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z

    if-nez v1, :cond_34

    iget-boolean v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableLockdownVpn:Z

    if-nez v1, :cond_34

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_34

    .line 1956
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->unregisterLocaleChangedReceiver()V
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_bc

    .line 1984
    :cond_34
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1959
    return-void

    .line 1961
    :cond_38
    :try_start_38
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1962
    .local v8, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const v10, 0x10402ba

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1964
    const-string/jumbo v9, "lockdown"

    iget-boolean v10, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdown:Z

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1965
    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1966
    iget-object v9, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mSystemServices:Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;

    const/high16 v10, 0xc000000

    invoke-virtual {v9, v8, v10, v2}, Lcom/android/server/connectivity/KnoxLegacyVpn$SystemServices;->pendingIntentGetActivityAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1968
    .local v9, "configIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v11, 0x1080b90

    .line 1970
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const v12, 0x1040d0d

    .line 1971
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const v12, 0x1040d0a

    .line 1972
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1973
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    const-string/jumbo v11, "sys"

    .line 1974
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1975
    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1976
    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v10, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const v11, 0x106001c

    .line 1977
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1978
    .local v1, "builder":Landroid/app/Notification$Builder;
    nop

    .line 1979
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 1978
    invoke-virtual {v5, v7, v6, v10, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1981
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->registerLocaleChangedReceiver()V
    :try_end_b7
    .catchall {:try_start_38 .. :try_end_b7} :catchall_bc

    .line 1984
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "configIntent":Landroid/app/PendingIntent;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1985
    nop

    .line 1986
    return-void

    .line 1984
    :catchall_bc
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1985
    throw v1
.end method

.method private updateCapabilities(Landroid/net/Network;)V
    .registers 6
    .param p1, "defaultNetwork"    # Landroid/net/Network;

    .line 438
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    if-nez v0, :cond_5

    .line 440
    return-void

    .line 443
    :cond_5
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 444
    .local v0, "underlyingNetworks":[Landroid/net/Network;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    if-eqz p1, :cond_12

    .line 446
    new-array v3, v1, [Landroid/net/Network;

    aput-object p1, v3, v2

    move-object v0, v3

    .line 449
    :cond_12
    iget-boolean v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mIsPackageTargetingAtLeastQ:Z

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 451
    .local v1, "isAlwaysMetered":Z
    :goto_1e
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    .line 452
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 451
    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->applyUnderlyingCapabilities(Landroid/net/ConnectivityManager;[Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V

    .line 456
    return-void
.end method

.method private updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z
    .registers 8
    .param p1, "agent"    # Landroid/net/NetworkAgent;
    .param p2, "oldConfig"    # Lcom/android/internal/net/VpnConfig;

    .line 1112
    iget-boolean v0, p2, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v2, 0x0

    const-string v3, "KnoxLegacyVpn"

    if-eq v0, v1, :cond_11

    .line 1113
    const-string v0, "Handover not possible due to changes to allowBypass"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    return v2

    .line 1119
    :cond_11
    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 1120
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_6a

    .line 1126
    :cond_2a
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isSecureWifiPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1127
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    .line 1128
    .local v0, "secureFolderId":I
    if-lez v0, :cond_61

    .line 1129
    iget-object v1, p2, Lcom/android/internal/net/VpnConfig;->allowedSecureFolderApps:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->allowedSecureFolderApps:Ljava/util/List;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p2, Lcom/android/internal/net/VpnConfig;->disallowedSecureFolderApps:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->disallowedSecureFolderApps:Ljava/util/List;

    .line 1130
    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    goto :goto_5a

    .line 1134
    :cond_53
    const-string/jumbo v1, "secureFolder\'s config is not changed"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 1131
    :cond_5a
    :goto_5a
    const-string/jumbo v1, "secureFolder\'s config is changed. return false"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return v2

    .line 1138
    .end local v0    # "secureFolderId":I
    :cond_61
    :goto_61
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 1139
    const/4 v0, 0x1

    return v0

    .line 1121
    :cond_6a
    :goto_6a
    const-string v0, "Handover not possible due to changes to whitelisted/blacklisted apps"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return v2
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    monitor-enter p0

    .line 1856
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    .line 1857
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1859
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1860
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 1861
    monitor-exit p0

    return v0

    .line 1855
    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    .end local p1    # "address":Ljava/lang/String;
    .end local p2    # "prefixLength":I
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .registers 11
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1442
    .local p1, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .local p3, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_3b

    .line 1444
    const/4 v0, -0x1

    .local v0, "start":I
    const/4 v1, -0x1

    .line 1445
    .local v1, "stop":I
    invoke-direct {p0, p3, p2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1446
    .local v3, "uid":I
    if-ne v0, v4, :cond_21

    .line 1447
    move v0, v3

    goto :goto_2e

    .line 1448
    :cond_21
    add-int/lit8 v4, v1, 0x1

    if-eq v3, v4, :cond_2e

    .line 1449
    new-instance v4, Landroid/net/UidRange;

    invoke-direct {v4, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1450
    move v0, v3

    .line 1452
    :cond_2e
    :goto_2e
    move v1, v3

    .line 1453
    .end local v3    # "uid":I
    goto :goto_c

    .line 1454
    :cond_30
    if-eq v0, v4, :cond_3a

    new-instance v2, Landroid/net/UidRange;

    invoke-direct {v2, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1455
    .end local v0    # "start":I
    .end local v1    # "stop":I
    :cond_3a
    goto :goto_83

    :cond_3b
    if-eqz p4, :cond_7c

    .line 1457
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    .line 1458
    .local v0, "userRange":Landroid/net/UidRange;
    iget v1, v0, Landroid/net/UidRange;->start:I

    .line 1459
    .local v1, "start":I
    invoke-direct {p0, p4, p2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1460
    .restart local v3    # "uid":I
    if-ne v3, v1, :cond_60

    .line 1461
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 1463
    :cond_60
    new-instance v4, Landroid/net/UidRange;

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v4, v1, v5}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1464
    add-int/lit8 v1, v3, 0x1

    .line 1466
    .end local v3    # "uid":I
    :goto_6c
    goto :goto_4b

    .line 1467
    :cond_6d
    iget v2, v0, Landroid/net/UidRange;->stop:I

    if-gt v1, v2, :cond_7b

    new-instance v2, Landroid/net/UidRange;

    iget v3, v0, Landroid/net/UidRange;->stop:I

    invoke-direct {v2, v1, v3}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1468
    .end local v0    # "userRange":Landroid/net/UidRange;
    .end local v1    # "start":I
    :cond_7b
    goto :goto_83

    .line 1470
    :cond_7c
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1474
    :goto_83
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->prepareStatusIntent(I)V

    .line 1475
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz v0, :cond_8d

    .line 1476
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->showNotificationForLegacy(I)V

    .line 1479
    :cond_8d
    return-void
.end method

.method public declared-synchronized appliesToUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    monitor-enter p0

    .line 1921
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_12

    if-nez v0, :cond_a

    .line 1922
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1924
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->appliesToUid(I)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_12

    monitor-exit p0

    return v0

    .line 1920
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    .end local p1    # "uid":I
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "ip"    # Ljava/lang/String;

    .line 3007
    if-nez p1, :cond_4

    .line 3008
    const/4 v0, 0x0

    return-object v0

    .line 3011
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "64:ff9b::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3012
    .local v0, "clatIpv6addr":Ljava/lang/StringBuffer;
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3014
    .local v1, "octets":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2d

    .line 3015
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3016
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3014
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 3018
    .end local v2    # "i":I
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 11
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 1749
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_e

    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const v3, 0x1040d11

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    .line 1750
    :cond_e
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const v3, 0x1040d12

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1b
    nop

    .line 1751
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v3, :cond_2c

    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const v4, 0x1040d0f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3d

    .line 1752
    :cond_2c
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const v4, 0x1040d10

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_3d
    nop

    .line 1754
    .local v3, "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x1080b90

    .line 1755
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1756
    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1757
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1758
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1759
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1760
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1761
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1762
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1763
    .local v0, "notification":Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x62

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1766
    return-object v0
.end method

.method createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 11
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .line 1402
    .local p2, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1405
    .local v0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1408
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->canHaveRestrictedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1409
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1412
    .local v1, "token":J
    :try_start_12
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_41

    .line 1414
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1415
    nop

    .line 1416
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1417
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_40

    iget v6, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v6, p1, :cond_40

    .line 1418
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v6, p2, p3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1420
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_40
    goto :goto_25

    .line 1414
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_41
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1415
    throw v3

    .line 1422
    .end local v1    # "token":J
    :cond_46
    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 22
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 1235
    :try_start_5
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    move-object v3, v0

    .line 1236
    .local v3, "mgr":Landroid/os/UserManager;
    const-string v0, "KnoxLegacyVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binder.getCallingUid(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mOwnerUID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mOwnerUID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v4, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mOwnerUID:I
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_28b

    const/4 v5, 0x0

    if-eq v0, v4, :cond_3b

    .line 1238
    monitor-exit p0

    return-object v5

    .line 1241
    :cond_3b
    :try_start_3b
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mPackage:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1242
    const-string v0, "KnoxLegacyVpn"

    const-string/jumbo v4, "isVpnUserPreConsented(mPackage): false"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_28b

    .line 1243
    monitor-exit p0

    return-object v5

    .line 1246
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :cond_4d
    :try_start_4d
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.net.VpnService"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 1247
    .local v4, "intent":Landroid/content/Intent;
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mPackage:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_60
    .catchall {:try_start_4d .. :try_end_60} :catchall_28b

    .line 1251
    .local v6, "token":J
    :try_start_60
    iget v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1252
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v8

    if-nez v8, :cond_248

    .line 1257
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const/4 v9, 0x0

    iget v10, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-interface {v8, v4, v5, v9, v10}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 1259
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_224

    .line 1263
    const-string v9, "android.permission.BIND_VPN_SERVICE"

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_83} :catch_262
    .catchall {:try_start_60 .. :try_end_83} :catchall_25d

    if-eqz v9, :cond_1fb

    .line 1271
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    :try_start_85
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1272
    nop

    .line 1275
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object v8, v0

    .line 1276
    .local v8, "oldConfig":Lcom/android/internal/net/VpnConfig;
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    move-object v9, v0

    .line 1277
    .local v9, "oldInterface":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConnection:Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

    move-object v10, v0

    .line 1278
    .local v10, "oldConnection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object v11, v0

    .line 1279
    .local v11, "oldNetworkAgent":Landroid/net/NetworkAgent;
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0

    move-object v12, v0

    .line 1284
    .local v12, "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isSecureWifiPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1285
    iget v0, v2, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->jniCreateSecureWifi(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v13, v0

    .local v0, "tun":Landroid/os/ParcelFileDescriptor;
    goto :goto_bb

    .line 1289
    .end local v0    # "tun":Landroid/os/ParcelFileDescriptor;
    :cond_b0
    iget v0, v2, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->jniCreate(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_ba
    .catchall {:try_start_85 .. :try_end_ba} :catchall_28b

    move-object v13, v0

    .line 1292
    .local v13, "tun":Landroid/os/ParcelFileDescriptor;
    :goto_bb
    :try_start_bb
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 1295
    .local v14, "interfaze":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    .line 1296
    .local v15, "builder":Ljava/lang/StringBuilder;
    iget-object v0, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_d4
    .catch Ljava/lang/RuntimeException; {:try_start_bb .. :try_end_d4} :catch_1e3
    .catchall {:try_start_bb .. :try_end_d4} :catchall_28b

    if-eqz v16, :cond_100

    :try_start_d6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/LinkAddress;

    move-object/from16 v17, v16

    .line 1297
    .local v17, "address":Landroid/net/LinkAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    .end local v17    # "address":Landroid/net/LinkAddress;
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f6
    .catch Ljava/lang/RuntimeException; {:try_start_d6 .. :try_end_f6} :catch_fa
    .catchall {:try_start_d6 .. :try_end_f6} :catchall_28b

    .line 1298
    move-object/from16 v0, v18

    const/4 v5, 0x0

    .end local v0    # "address":Landroid/net/LinkAddress;
    goto :goto_d0

    .line 1349
    .end local v14    # "interfaze":Ljava/lang/String;
    .end local v15    # "builder":Ljava/lang/StringBuilder;
    :catch_fa
    move-exception v0

    move-object/from16 v17, v3

    move-object v15, v4

    goto/16 :goto_1e7

    .line 1299
    .restart local v14    # "interfaze":Ljava/lang/String;
    .restart local v15    # "builder":Ljava/lang/StringBuilder;
    :cond_100
    :try_start_100
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v14, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x1

    if-lt v0, v5, :cond_1d4

    .line 1302
    new-instance v0, Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;-><init>(Lcom/android/server/connectivity/KnoxLegacyVpn;Lcom/android/server/connectivity/KnoxLegacyVpn$1;)V

    move-object v5, v0

    .line 1303
    .local v5, "connection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;
    :try_end_114
    .catch Ljava/lang/RuntimeException; {:try_start_100 .. :try_end_114} :catch_1e3
    .catchall {:try_start_100 .. :try_end_114} :catchall_28b

    move-object/from16 v17, v3

    .end local v3    # "mgr":Landroid/os/UserManager;
    .local v17, "mgr":Landroid/os/UserManager;
    :try_start_116
    new-instance v3, Landroid/os/UserHandle;

    move-object/from16 v19, v15

    .end local v15    # "builder":Ljava/lang/StringBuilder;
    .local v19, "builder":Ljava/lang/StringBuilder;
    iget v15, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-direct {v3, v15}, Landroid/os/UserHandle;-><init>(I)V

    const v15, 0x4000001

    invoke-virtual {v0, v4, v5, v15, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 1309
    iput-object v5, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConnection:Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

    .line 1310
    iput-object v14, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    .line 1313
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mPackage:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1314
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;
    :try_end_134
    .catch Ljava/lang/RuntimeException; {:try_start_116 .. :try_end_134} :catch_1d1
    .catchall {:try_start_116 .. :try_end_134} :catchall_28b

    .line 1315
    move-object v15, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    :try_start_135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1316
    iput-object v2, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1321
    if-eqz v8, :cond_148

    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1322
    invoke-direct {v1, v0, v8}, Lcom/android/server/connectivity/KnoxLegacyVpn;->updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z

    move-result v0

    if-eqz v0, :cond_148

    goto :goto_158

    .line 1325
    :cond_148
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1326
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v3, "establish"

    invoke-virtual {v1, v0, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1328
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->agentConnect()V

    .line 1332
    invoke-direct {v1, v11}, Lcom/android/server/connectivity/KnoxLegacyVpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    .line 1335
    :goto_158
    if-eqz v10, :cond_15f

    .line 1336
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1339
    :cond_15f
    if-eqz v9, :cond_16a

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    .line 1340
    invoke-direct {v1, v9}, Lcom/android/server/connectivity/KnoxLegacyVpn;->jniReset(Ljava/lang/String;)V
    :try_end_16a
    .catch Ljava/lang/RuntimeException; {:try_start_135 .. :try_end_16a} :catch_1e1
    .catchall {:try_start_135 .. :try_end_16a} :catchall_28b

    .line 1344
    :cond_16a
    :try_start_16a
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-boolean v3, v2, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-static {v0, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_173} :catch_199
    .catch Ljava/lang/RuntimeException; {:try_start_16a .. :try_end_173} :catch_1e1
    .catchall {:try_start_16a .. :try_end_173} :catchall_28b

    .line 1348
    nop

    .line 1359
    .end local v5    # "connection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .end local v14    # "interfaze":Ljava/lang/String;
    .end local v19    # "builder":Ljava/lang/StringBuilder;
    nop

    .line 1360
    :try_start_175
    const-string v0, "KnoxLegacyVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Established by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_197
    .catchall {:try_start_175 .. :try_end_197} :catchall_28b

    .line 1361
    monitor-exit p0

    return-object v13

    .line 1345
    .restart local v5    # "connection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .restart local v14    # "interfaze":Ljava/lang/String;
    .restart local v19    # "builder":Ljava/lang/StringBuilder;
    :catch_199
    move-exception v0

    .line 1346
    .local v0, "e":Ljava/io/IOException;
    :try_start_19a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    .end local v5    # "connection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .local v16, "connection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    const-string v5, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "token":J
    .end local v8    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v9    # "oldInterface":Ljava/lang/String;
    .end local v10    # "oldConnection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .end local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3

    .line 1306
    .end local v0    # "e":Ljava/io/IOException;
    .end local v16    # "connection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "connection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .restart local v6    # "token":J
    .restart local v8    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .restart local v9    # "oldInterface":Ljava/lang/String;
    .restart local v10    # "oldConnection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .restart local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .restart local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .restart local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_1b5
    move-object v15, v4

    move-object/from16 v16, v5

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "connection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v16    # "connection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot bind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "token":J
    .end local v8    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v9    # "oldInterface":Ljava/lang/String;
    .end local v10    # "oldConnection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .end local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v0

    .line 1349
    .end local v14    # "interfaze":Ljava/lang/String;
    .end local v16    # "connection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .end local v19    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "token":J
    .restart local v8    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .restart local v9    # "oldInterface":Ljava/lang/String;
    .restart local v10    # "oldConnection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .restart local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .restart local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .restart local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catch_1d1
    move-exception v0

    move-object v15, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    goto :goto_1e7

    .line 1300
    .end local v17    # "mgr":Landroid/os/UserManager;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v14    # "interfaze":Ljava/lang/String;
    .local v15, "builder":Ljava/lang/StringBuilder;
    :cond_1d4
    move-object/from16 v17, v3

    move-object/from16 v19, v15

    move-object v15, v4

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local v19    # "builder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "At least one address must be specified"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "token":J
    .end local v8    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v9    # "oldInterface":Ljava/lang/String;
    .end local v10    # "oldConnection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .end local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v0
    :try_end_1e1
    .catch Ljava/lang/RuntimeException; {:try_start_19a .. :try_end_1e1} :catch_1e1
    .catchall {:try_start_19a .. :try_end_1e1} :catchall_28b

    .line 1349
    .end local v14    # "interfaze":Ljava/lang/String;
    .end local v19    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "token":J
    .restart local v8    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .restart local v9    # "oldInterface":Ljava/lang/String;
    .restart local v10    # "oldConnection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .restart local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .restart local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .restart local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catch_1e1
    move-exception v0

    goto :goto_1e7

    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_1e3
    move-exception v0

    move-object/from16 v17, v3

    move-object v15, v4

    .line 1350
    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    :goto_1e7
    :try_start_1e7
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1351
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->agentDisconnect()V

    .line 1353
    iput-object v8, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1354
    iput-object v10, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConnection:Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

    .line 1355
    iget-object v3, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v12}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1356
    iput-object v11, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1357
    iput-object v9, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    .line 1358
    throw v0
    :try_end_1fb
    .catchall {:try_start_1e7 .. :try_end_1fb} :catchall_28b

    .line 1264
    .end local v9    # "oldInterface":Ljava/lang/String;
    .end local v10    # "oldConnection":Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    .end local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .local v0, "user":Landroid/content/pm/UserInfo;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    :cond_1fb
    move-object/from16 v17, v3

    move-object v15, v4

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    :try_start_1fe
    const-string v3, "KnoxLegacyVpn"

    const-string/jumbo v4, "throw SecurityException: user does not require BIND_VPN_SERVICE"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not require "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "token":J
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3

    .line 1260
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_224
    move-object/from16 v17, v3

    move-object v15, v4

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    const-string v3, "KnoxLegacyVpn"

    const-string/jumbo v4, "throw SecurityException: Cannot find user"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "token":J
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3

    .line 1253
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_248
    move-object/from16 v17, v3

    move-object v15, v4

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    const-string v3, "KnoxLegacyVpn"

    const-string/jumbo v4, "throw SecurityException: Restricted users cannot establish VPNs"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Restricted users cannot establish VPNs"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "token":J
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3
    :try_end_25b
    .catch Landroid/os/RemoteException; {:try_start_1fe .. :try_end_25b} :catch_25b
    .catchall {:try_start_1fe .. :try_end_25b} :catchall_286

    .line 1267
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    .restart local v6    # "token":J
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catch_25b
    move-exception v0

    goto :goto_266

    .line 1271
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catchall_25d
    move-exception v0

    move-object/from16 v17, v3

    move-object v15, v4

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    goto :goto_287

    .line 1267
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_262
    move-exception v0

    move-object/from16 v17, v3

    move-object v15, v4

    .line 1268
    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    :goto_266
    :try_start_266
    const-string v3, "KnoxLegacyVpn"

    const-string v4, "RemoteException: Cannot find user"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "token":J
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3
    :try_end_286
    .catchall {:try_start_266 .. :try_end_286} :catchall_286

    .line 1271
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v6    # "token":J
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catchall_286
    move-exception v0

    :goto_287
    :try_start_287
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1272
    throw v0
    :try_end_28b
    .catchall {:try_start_287 .. :try_end_28b} :catchall_28b

    .line 1234
    .end local v6    # "token":J
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catchall_28b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysOn()Z
    .registers 2

    monitor-enter p0

    .line 542
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 542
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 690
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->enforceControlPermissionOrInternalCaller()V

    .line 691
    iget-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mPackage:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    goto :goto_c

    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return-object v0

    .line 689
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .line 2378
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    if-eqz v0, :cond_7

    .line 2379
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0

    .line 2381
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 2

    monitor-enter p0

    .line 2357
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->enforceControlPermissionOrInternalCaller()V

    .line 2358
    invoke-virtual {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 2356
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    monitor-enter p0

    .line 2366
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    if-nez v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2368
    :cond_8
    :try_start_8
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 2369
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 2370
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 2371
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2372
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_29

    .line 2374
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :cond_27
    monitor-exit p0

    return-object v0

    .line 2365
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLockdown()Z
    .registers 2

    monitor-enter p0

    .line 535
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdown:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 535
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLockdownWhitelist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 698
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdown:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdownWhitelist:Ljava/util/List;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    goto :goto_9

    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return-object v0

    .line 698
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNetId()I
    .registers 4

    .line 1009
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1010
    .local v0, "agent":Landroid/net/NetworkAgent;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1011
    :cond_6
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v2

    .line 1012
    .local v2, "network":Landroid/net/Network;
    if-nez v2, :cond_d

    return v1

    .line 1013
    :cond_d
    iget v1, v2, Landroid/net/Network;->netId:I

    return v1
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .line 1005
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public declared-synchronized getUnderlyingNetworks()[Landroid/net/Network;
    .registers 2

    monitor-enter p0

    .line 1899
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    if-nez v0, :cond_a

    .line 1900
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1902
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 1898
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .line 1653
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->enforceControlPermission()V

    .line 1654
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized getVpnInfo()Lcom/android/internal/net/VpnInfo;
    .registers 3

    monitor-enter p0

    .line 1910
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_19

    if-nez v0, :cond_a

    .line 1911
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1914
    :cond_a
    :try_start_a
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    .line 1915
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    iget v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mOwnerUID:I

    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    .line 1916
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_19

    .line 1917
    monitor-exit p0

    return-object v0

    .line 1909
    .end local v0    # "info":Lcom/android/internal/net/VpnInfo;
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hideNotificationForLockdown()V
    .registers 3

    .line 1828
    const-string v0, "KnoxLegacyVpn"

    const-string/jumbo v1, "hideNotificationForLockdown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    iget v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->hideNotification(I)V

    .line 1830
    return-void
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1660
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3} :catch_c
    .catchall {:try_start_1 .. :try_end_3} :catchall_9

    :try_start_3
    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    .line 1663
    goto :goto_d

    .line 1661
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :catch_7
    move-exception v0

    goto :goto_d

    .line 1659
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "up":Z
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1661
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "up":Z
    :catch_c
    move-exception v0

    .line 1664
    :goto_d
    monitor-exit p0

    return-void
.end method

.method public isAlwaysOnPackageSupported(Ljava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .line 559
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->enforceSettingsPermission()V

    .line 561
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 562
    return v0

    .line 565
    :cond_7
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 566
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 568
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_e
    iget v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-virtual {v1, p1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_14} :catch_16

    move-object v2, v3

    .line 571
    goto :goto_32

    .line 569
    :catch_16
    move-exception v3

    .line 570
    .local v3, "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" when checking always-on support"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KnoxLegacyVpn"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .end local v3    # "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_32
    if-eqz v2, :cond_79

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_3b

    goto :goto_79

    .line 576
    :cond_3b
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.VpnService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const/16 v4, 0x80

    iget v5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    .line 579
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 580
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_78

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_56

    goto :goto_78

    .line 584
    :cond_56
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_77

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 585
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 586
    .local v8, "metaData":Landroid/os/Bundle;
    if-eqz v8, :cond_76

    .line 587
    const-string v9, "android.net.VpnService.SUPPORTS_ALWAYS_ON"

    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_76

    .line 588
    return v0

    .line 590
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "metaData":Landroid/os/Bundle;
    :cond_76
    goto :goto_5a

    .line 592
    :cond_77
    return v7

    .line 581
    :cond_78
    :goto_78
    return v0

    .line 573
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_79
    :goto_79
    return v0
.end method

.method public declared-synchronized isBlockingUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    monitor-enter p0

    .line 1937
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1938
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->appliesToUid(I)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_19

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 1940
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mBlockedUsers:Ljava/util/Set;

    invoke-static {v0, p1}, Landroid/net/UidRange;->containsUid(Ljava/util/Collection;I)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_19

    monitor-exit p0

    return v0

    .line 1936
    .end local p1    # "uid":I
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected isCallerEstablishedOwnerLocked()Z
    .registers 3

    .line 1372
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mOwnerUID:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public onUserAdded(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .line 1503
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1504
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_44

    iget v1, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    if-ne v1, v2, :cond_44

    .line 1505
    monitor-enter p0

    .line 1506
    :try_start_19
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_41

    .line 1507
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz v1, :cond_3a

    .line 1509
    :try_start_21
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1513
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_31} :catch_32
    .catchall {:try_start_21 .. :try_end_31} :catchall_41

    .line 1516
    goto :goto_3a

    .line 1514
    :catch_32
    move-exception v2

    .line 1515
    .local v2, "e":Ljava/lang/Exception;
    :try_start_33
    const-string v3, "KnoxLegacyVpn"

    const-string v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1518
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3a
    :goto_3a
    iget-boolean v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->setVpnForcedLocked(Z)V

    .line 1519
    .end local v1    # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    monitor-exit p0

    goto :goto_44

    :catchall_41
    move-exception v1

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_41

    throw v1

    .line 1521
    :cond_44
    :goto_44
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .line 1530
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1531
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_41

    iget v1, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    if-ne v1, v2, :cond_41

    .line 1532
    monitor-enter p0

    .line 1533
    :try_start_19
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_3e

    .line 1534
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz v1, :cond_37

    .line 1536
    nop

    .line 1537
    :try_start_22
    invoke-static {p1, v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->uidRangesForUser(ILjava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 1538
    .local v2, "removedRanges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1541
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2e} :catch_2f
    .catchall {:try_start_22 .. :try_end_2e} :catchall_3e

    .line 1544
    .end local v2    # "removedRanges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    goto :goto_37

    .line 1542
    :catch_2f
    move-exception v2

    .line 1543
    .local v2, "e":Ljava/lang/Exception;
    :try_start_30
    const-string v3, "KnoxLegacyVpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1546
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_37
    :goto_37
    iget-boolean v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->setVpnForcedLocked(Z)V

    .line 1547
    .end local v1    # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    monitor-exit p0

    goto :goto_41

    :catchall_3e
    move-exception v1

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_3e

    throw v1

    .line 1549
    :cond_41
    :goto_41
    return-void
.end method

.method public declared-synchronized onUserStopped()V
    .registers 2

    monitor-enter p0

    .line 1556
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->setLockdown(Z)V

    .line 1557
    iput-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z

    .line 1560
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->agentDisconnect()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 1561
    monitor-exit p0

    return-void

    .line 1555
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    monitor-enter p0

    .line 825
    :try_start_1
    const-string v0, "KnoxLegacyVpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oldPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", CallingUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_81

    .line 828
    iget-boolean v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z

    if-eqz v2, :cond_43

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 829
    const-string v0, "KnoxLegacyVpn"

    const-string v2, "Stop prepare() by 3rd party app cause exit an always-on VPN (not oldPackage)."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_be

    .line 830
    monitor-exit p0

    return v1

    .line 834
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :cond_43
    :try_start_43
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 837
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 838
    const-string v1, "KnoxLegacyVpn"

    const-string v2, "Prepare consented 3rd party app VPN (package doesn\'t match). Prepare internal oldPackage"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_43 .. :try_end_61} :catchall_be

    .line 840
    monitor-exit p0

    return v0

    .line 842
    :cond_63
    monitor-exit p0

    return v1

    .line 843
    :cond_65
    :try_start_65
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 844
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 846
    const-string v0, "KnoxLegacyVpn"

    const-string v2, "Currently prepared VPN is revoked. Prepare internal LEGACY_VPN"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_65 .. :try_end_7f} :catchall_be

    .line 848
    monitor-exit p0

    return v1

    .line 853
    :cond_81
    if-eqz p2, :cond_b4

    :try_start_83
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    .line 854
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_92

    goto :goto_b4

    .line 861
    :cond_92
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->enforceControlPermissionOrInternalCaller()V

    .line 864
    iget-boolean v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z

    if-eqz v2, :cond_a8

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a8

    .line 865
    const-string v0, "KnoxLegacyVpn"

    const-string v2, "Stop prepare() by 3rd party app cause exit an always-on VPN (not newPackage)."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_83 .. :try_end_a6} :catchall_be

    .line 866
    monitor-exit p0

    return v1

    .line 868
    :cond_a8
    :try_start_a8
    const-string v1, "KnoxLegacyVpn"

    const-string v2, "Prepare internal newPackage"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_be

    .line 870
    monitor-exit p0

    return v0

    .line 855
    :cond_b4
    :goto_b4
    :try_start_b4
    const-string v1, "KnoxLegacyVpn"

    const-string/jumbo v2, "newPackage is null or current prepared package is LEGACY_VPN"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_be

    .line 856
    monitor-exit p0

    return v0

    .line 824
    .end local p1    # "oldPackage":Ljava/lang/String;
    .end local p2    # "newPackage":Ljava/lang/String;
    :catchall_be
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    monitor-enter p0

    .line 1865
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    .line 1866
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1868
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1869
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 1870
    monitor-exit p0

    return v0

    .line 1864
    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    .end local p1    # "address":Ljava/lang/String;
    .end local p2    # "prefixLength":I
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p3, "lockdownWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 614
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->enforceControlPermissionOrInternalCaller()V

    .line 616
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 617
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->saveAlwaysOnPackage()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    .line 618
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 620
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :cond_10
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 613
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "lockdown":Z
    .end local p3    # "lockdownWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEnableLockdownVpn(Z)V
    .registers 2
    .param p1, "enableLockdownVpn"    # Z

    .line 396
    iput-boolean p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableLockdownVpn:Z

    .line 397
    return-void
.end method

.method public setEnableTeardown(Z)V
    .registers 2
    .param p1, "enableTeardown"    # Z

    .line 389
    iput-boolean p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableTeardown:Z

    .line 390
    return-void
.end method

.method public declared-synchronized setLockdown(Z)V
    .registers 3
    .param p1, "lockdown"    # Z

    monitor-enter p0

    .line 517
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->enforceControlPermissionOrInternalCaller()V

    .line 519
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->setVpnForcedLocked(Z)V

    .line 520
    iput-boolean p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdown:Z

    .line 524
    iget-boolean v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z

    if-eqz v0, :cond_10

    .line 525
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->saveAlwaysOnPackage()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 527
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :cond_10
    monitor-exit p0

    return-void

    .line 516
    .end local p1    # "lockdown":Z
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPackageAuthorization(Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authorized"    # Z

    .line 943
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->enforceControlPermissionOrInternalCaller()V

    .line 945
    iget v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    .line 946
    .local v0, "uid":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5f

    const-string v2, "[Legacy VPN]"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_5f

    .line 951
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 953
    .local v2, "token":J
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const-string v5, "appops"

    .line 954
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 955
    .local v4, "appOps":Landroid/app/AppOpsManager;
    const/16 v5, 0x2f

    .line 956
    const/4 v6, 0x1

    if-eqz p2, :cond_2b

    move v7, v1

    goto :goto_2c

    :cond_2b
    move v7, v6

    .line 955
    :goto_2c
    invoke-virtual {v4, v5, v0, p1, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2f} :catch_36
    .catchall {:try_start_1a .. :try_end_2f} :catchall_34

    .line 957
    nop

    .line 961
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    return v6

    .line 961
    .end local v4    # "appOps":Landroid/app/AppOpsManager;
    :catchall_34
    move-exception v1

    goto :goto_5b

    .line 958
    :catch_36
    move-exception v4

    .line 959
    .local v4, "e":Ljava/lang/Exception;
    :try_start_37
    const-string v5, "KnoxLegacyVpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set app ops for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_34

    .line 961
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 962
    nop

    .line 963
    return v1

    .line 961
    :goto_5b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 962
    throw v1

    .line 948
    .end local v2    # "token":J
    :cond_5f
    :goto_5f
    return v1
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 7
    .param p1, "networks"    # [Landroid/net/Network;

    monitor-enter p0

    .line 1880
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3d

    if-nez v0, :cond_a

    .line 1881
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1883
    :cond_a
    const/4 v0, 0x0

    if-nez p1, :cond_12

    .line 1884
    :try_start_d
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    goto :goto_3a

    .line 1886
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :cond_12
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    array-length v2, p1

    new-array v2, v2, [Landroid/net/Network;

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 1887
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    array-length v2, p1

    if-ge v1, v2, :cond_3a

    .line 1888
    aget-object v2, p1, v1

    if-nez v2, :cond_28

    .line 1889
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    aput-object v0, v2, v1

    goto :goto_37

    .line 1891
    :cond_28
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    new-instance v3, Landroid/net/Network;

    aget-object v4, p1, v1

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-direct {v3, v4}, Landroid/net/Network;-><init>(I)V

    aput-object v3, v2, v1
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_3d

    .line 1887
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1895
    .end local v1    # "i":I
    :cond_3a
    :goto_3a
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1879
    .end local p1    # "networks":[Landroid/net/Network;
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public showNotificationForKnoxStrongSwan(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "user"    # I

    .line 3355
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->dismissConnectingNotification()V

    .line 3356
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getKnoxVpnFeature()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_33

    .line 3357
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-static {v0, v1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 3358
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3359
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_33

    .line 3360
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    .line 3361
    .local v1, "notification":Landroid/app/Notification;
    const/4 v2, 0x0

    const v3, 0x1080b90

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 3364
    .end local v0    # "nm":Landroid/app/NotificationManager;
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_33
    return-void
.end method

.method public showNotificationForLockdown(II)V
    .registers 3
    .param p1, "titleRes"    # I
    .param p2, "iconRes"    # I

    .line 1825
    return-void
.end method

.method public startAlwaysOnVpn()Z
    .registers 14

    .line 747
    monitor-enter p0

    .line 748
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "alwaysOnPackage":Ljava/lang/String;
    const/4 v9, 0x1

    if-nez v0, :cond_a

    .line 751
    monitor-exit p0

    return v9

    .line 754
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_17

    .line 755
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v10, v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 756
    monitor-exit p0

    return v10

    .line 761
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 762
    monitor-exit p0

    return v9

    .line 764
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_85

    .line 768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 770
    .local v11, "oldId":J
    :try_start_28
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    .line 771
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    .line 772
    .local v1, "idleController":Lcom/android/server/DeviceIdleInternal;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-wide/32 v4, 0xea60

    iget v6, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    const/4 v7, 0x0

    const-string/jumbo v8, "vpn"

    move-object v3, v0

    invoke-interface/range {v1 .. v8}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 776
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.VpnService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4b
    .catchall {:try_start_28 .. :try_end_4b} :catchall_80

    .line 779
    :try_start_4b
    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_57} :catch_5f
    .catchall {:try_start_4b .. :try_end_57} :catchall_80

    if-eqz v3, :cond_5a

    goto :goto_5b

    :cond_5a
    move v9, v10

    .line 785
    :goto_5b
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    return v9

    .line 780
    :catch_5f
    move-exception v3

    .line 781
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_60
    const-string v4, "KnoxLegacyVpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VpnService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed to start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_80

    .line 782
    nop

    .line 785
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 782
    return v10

    .line 785
    .end local v1    # "idleController":Lcom/android/server/DeviceIdleInternal;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_80
    move-exception v1

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 786
    throw v1

    .line 764
    .end local v0    # "alwaysOnPackage":Ljava/lang/String;
    .end local v11    # "oldId":J
    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v0
.end method

.method public startLegacyVpn(Lcom/android/internal/net/KnoxVpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 7
    .param p1, "profile"    # Lcom/android/internal/net/KnoxVpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .line 2071
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->enforceControlPermission()V

    .line 2072
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2074
    .local v0, "token":J
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/KnoxVpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    .line 2076
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2077
    nop

    .line 2078
    return-void

    .line 2076
    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2077
    throw v2
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/KnoxVpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 42
    .param p1, "profile"    # Lcom/android/internal/net/KnoxVpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .line 2127
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 2128
    .local v3, "mgr":Landroid/os/UserManager;
    iget v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 2129
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_58e

    new-instance v0, Landroid/os/UserHandle;

    iget v5, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "no_config_vpn"

    invoke-virtual {v3, v5, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_58e

    .line 2134
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v5

    .line 2135
    .local v5, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 2136
    .local v6, "gateway":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    .line 2139
    .local v7, "iface":Ljava/lang/String;
    iput-object v7, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mEgressIface:Ljava/lang/String;

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Egress Iface ("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mEgressIface:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") activated"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "KnoxLegacyVpn"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    const-string v9, ""

    .line 2144
    .local v9, "hostAddress":Ljava/lang/String;
    :try_start_57
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mEgressIface:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .line 2145
    .local v0, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_69
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/InetAddress;

    .line 2146
    .local v11, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_79} :catch_7c

    move-object v9, v12

    .line 2147
    .end local v11    # "inetAddress":Ljava/net/InetAddress;
    goto :goto_69

    .line 2151
    .end local v0    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_7b
    goto :goto_99

    .line 2149
    :catch_7c
    move-exception v0

    .line 2150
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startLegacyVpnPrivileged Egress Iface ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mEgressIface:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") doesn\'t exist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_99
    const-string v0, ""

    .line 2156
    .local v0, "privateKey":Ljava/lang/String;
    const-string v10, ""

    .line 2157
    .local v10, "userCert":Ljava/lang/String;
    const-string v11, ""

    .line 2158
    .local v11, "caCert":Ljava/lang/String;
    const-string v12, ""

    .line 2159
    .local v12, "serverCert":Ljava/lang/String;
    const-string v13, ""

    .line 2161
    .local v13, "caCertValue":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isCcmEnabled()Z

    move-result v14

    .line 2162
    .local v14, "isCcmEnabled":Z
    sget-boolean v15, Lcom/android/server/connectivity/KnoxLegacyVpn;->DBG:Z

    if-eqz v15, :cond_c3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "privateKey":Ljava/lang/String;
    .local v16, "privateKey":Ljava/lang/String;
    const-string/jumbo v0, "startLegacyVpnPrivileged: isCcmEnabled="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .end local v16    # "privateKey":Ljava/lang/String;
    .restart local v0    # "privateKey":Ljava/lang/String;
    :cond_c3
    move-object/from16 v16, v0

    .line 2164
    .end local v0    # "privateKey":Ljava/lang/String;
    .restart local v16    # "privateKey":Ljava/lang/String;
    :goto_c5
    iget-object v0, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    const-string v15, "USRCERT_"

    move-object/from16 v17, v3

    .end local v3    # "mgr":Landroid/os/UserManager;
    .local v17, "mgr":Landroid/os/UserManager;
    if-eqz v0, :cond_158

    iget-object v0, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_158

    iget v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    if-lez v0, :cond_158

    .line 2165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startLegacyVpnPrivileged: load userCert from CCM for PO:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v4

    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .local v20, "user":Landroid/content/pm/UserInfo;
    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v5

    .end local v5    # "ipv4DefaultRoute":Landroid/net/RouteInfo;
    .local v21, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    move-object/from16 v22, v10

    const/4 v10, 0x0

    .end local v10    # "userCert":Ljava/lang/String;
    .local v22, "userCert":Ljava/lang/String;
    invoke-direct {v1, v5, v10}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getCcmContainerAlias(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2167
    .end local v16    # "privateKey":Ljava/lang/String;
    .restart local v0    # "privateKey":Ljava/lang/String;
    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {v1, v15, v5}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getCcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2168
    .end local v22    # "userCert":Ljava/lang/String;
    .restart local v10    # "userCert":Ljava/lang/String;
    if-nez v10, :cond_153

    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/android/server/connectivity/KnoxLegacyVpn;->containsKnoxTag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_153

    .line 2169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v0, 0x1

    .end local v0    # "privateKey":Ljava/lang/String;
    .restart local v16    # "privateKey":Ljava/lang/String;
    invoke-direct {v1, v4, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getCcmContainerAlias(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2170
    .end local v16    # "privateKey":Ljava/lang/String;
    .restart local v0    # "privateKey":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/android/server/connectivity/KnoxLegacyVpn;->removeKnoxTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2171
    .local v4, "displayAlias":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    invoke-direct {v1, v15, v4}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getCcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_162

    .line 2168
    .end local v4    # "displayAlias":Ljava/lang/String;
    :cond_153
    move-object/from16 v16, v0

    .line 2175
    .end local v0    # "privateKey":Ljava/lang/String;
    .restart local v16    # "privateKey":Ljava/lang/String;
    move-object/from16 v0, v16

    goto :goto_162

    .line 2164
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "ipv4DefaultRoute":Landroid/net/RouteInfo;
    .local v4, "user":Landroid/content/pm/UserInfo;
    .restart local v5    # "ipv4DefaultRoute":Landroid/net/RouteInfo;
    :cond_158
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v10

    .line 2175
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "ipv4DefaultRoute":Landroid/net/RouteInfo;
    .end local v10    # "userCert":Ljava/lang/String;
    .restart local v20    # "user":Landroid/content/pm/UserInfo;
    .restart local v21    # "ipv4DefaultRoute":Landroid/net/RouteInfo;
    .restart local v22    # "userCert":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v10, v22

    .end local v16    # "privateKey":Ljava/lang/String;
    .end local v22    # "userCert":Ljava/lang/String;
    .restart local v0    # "privateKey":Ljava/lang/String;
    .restart local v10    # "userCert":Ljava/lang/String;
    :goto_162
    iget v3, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    if-lez v3, :cond_1c4

    .line 2176
    iget-object v13, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipSecCACertValue:Ljava/lang/String;

    .line 2177
    if-eqz v13, :cond_172

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_172

    .line 2178
    move-object v11, v13

    goto :goto_1c4

    .line 2179
    :cond_172
    iget-object v3, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c4

    .line 2180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startLegacyVpnPrivileged: load caCert from CCM for PO:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    iget-object v3, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecCaCert:Ljava/lang/String;

    const-string v4, "CACERT_"

    invoke-direct {v1, v4, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getCcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2182
    if-nez v11, :cond_1c4

    iget-object v3, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->containsKnoxTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c4

    .line 2183
    iget-object v3, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->removeKnoxTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2184
    .local v3, "displayAlias":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startLegacyVpnPrivileged: load caCert from CCM for PO:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    const-string v4, "CACERT_"

    invoke-direct {v1, v4, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getCcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2189
    .end local v3    # "displayAlias":Ljava/lang/String;
    :cond_1c4
    :goto_1c4
    iget-object v3, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    if-eqz v3, :cond_21a

    iget-object v3, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21a

    iget v3, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I

    if-lez v3, :cond_21a

    .line 2190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startLegacyVpnPrivileged: load serverCert from CCM for PO:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    iget-object v3, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {v1, v15, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getCcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2192
    if-nez v12, :cond_21a

    iget-object v3, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->containsKnoxTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21a

    .line 2193
    iget-object v3, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->removeKnoxTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2194
    .restart local v3    # "displayAlias":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startLegacyVpnPrivileged: load serverCert from CCM for PO:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    invoke-direct {v1, v15, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getCcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2198
    .end local v3    # "displayAlias":Ljava/lang/String;
    :cond_21a
    if-eqz v0, :cond_57f

    if-eqz v10, :cond_57f

    if-eqz v11, :cond_57f

    if-eqz v12, :cond_57f

    .line 2204
    const/4 v3, 0x0

    .line 2205
    .local v3, "racoon":[Ljava/lang/String;
    iget v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    const-string v5, "1701"

    const/4 v8, 0x2

    const/4 v15, 0x1

    if-eq v4, v15, :cond_280

    if-eq v4, v8, :cond_25d

    const/4 v8, 0x3

    if-eq v4, v8, :cond_231

    goto :goto_2a0

    .line 2219
    :cond_231
    const/16 v4, 0x9

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v8, v4

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    aput-object v4, v8, v15

    const-string/jumbo v4, "hybridrsa"

    const/4 v15, 0x2

    aput-object v4, v8, v15

    const/4 v4, 0x3

    aput-object v11, v8, v4

    const/4 v4, 0x4

    aput-object v12, v8, v4

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x5

    aput-object v4, v8, v15

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    const/4 v15, 0x6

    aput-object v4, v8, v15

    const-string v4, ""

    const/4 v15, 0x7

    aput-object v4, v8, v15

    const/16 v4, 0x8

    aput-object v6, v8, v4

    move-object v3, v8

    goto :goto_2a0

    .line 2213
    :cond_25d
    const/16 v4, 0x8

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v8, v4

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v4, v8, v15

    const-string/jumbo v4, "udprsa"

    const/4 v15, 0x2

    aput-object v4, v8, v15

    const/4 v4, 0x3

    aput-object v0, v8, v4

    const/4 v4, 0x4

    aput-object v10, v8, v4

    const/4 v4, 0x5

    aput-object v11, v8, v4

    const/4 v4, 0x6

    aput-object v12, v8, v4

    const/4 v15, 0x7

    aput-object v5, v8, v15

    move-object v3, v8

    .line 2217
    goto :goto_2a0

    .line 2207
    :cond_280
    const/4 v4, 0x6

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v8, v4

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v4, v8, v15

    const-string/jumbo v4, "udppsk"

    const/4 v15, 0x2

    aput-object v4, v8, v15

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/4 v15, 0x3

    aput-object v4, v8, v15

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v4, v8, v15

    const/4 v4, 0x5

    aput-object v5, v8, v4

    move-object v3, v8

    .line 2211
    nop

    .line 2226
    :goto_2a0
    const-string v4, ""

    iput-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 2228
    iget v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    const-string v15, "+pfs"

    const-string/jumbo v27, "nonpfs"

    const/16 v28, 0xa

    const-string v29, "Enforcing"

    const-string v30, "None"

    const/4 v8, 0x4

    if-eq v4, v8, :cond_387

    const/4 v8, 0x5

    if-eq v4, v8, :cond_33d

    const/4 v8, 0x6

    if-eq v4, v8, :cond_305

    const/4 v8, 0x7

    if-eq v4, v8, :cond_2bf

    goto/16 :goto_3ca

    .line 2254
    :cond_2bf
    const/16 v4, 0xb

    new-array v8, v4, [Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v4, v8, v18

    const-string/jumbo v4, "ikev2rsa"

    const/16 v19, 0x1

    aput-object v4, v8, v19

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/16 v26, 0x2

    aput-object v4, v8, v26

    const/4 v4, 0x3

    aput-object v0, v8, v4

    const/4 v4, 0x4

    aput-object v10, v8, v4

    const/4 v4, 0x5

    aput-object v11, v8, v4

    const/4 v4, 0x6

    aput-object v12, v8, v4

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ocspServerUrl:Ljava/lang/String;

    const/16 v22, 0x7

    aput-object v4, v8, v22

    .line 2257
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v4

    if-eqz v4, :cond_2ef

    goto :goto_2f1

    :cond_2ef
    move-object/from16 v29, v30

    :goto_2f1
    const/16 v4, 0x8

    aput-object v29, v8, v4

    .line 2258
    iget-boolean v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->isPFS:Z

    if-eqz v4, :cond_2fa

    goto :goto_2fc

    :cond_2fa
    move-object/from16 v15, v27

    :goto_2fc
    const/16 v4, 0x9

    aput-object v15, v8, v4

    aput-object v9, v8, v28

    move-object v3, v8

    goto/16 :goto_3ca

    .line 2247
    :cond_305
    const/4 v4, 0x7

    new-array v8, v4, [Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v4, v8, v18

    const-string/jumbo v4, "ikev2psk"

    const/16 v19, 0x1

    aput-object v4, v8, v19

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/16 v26, 0x2

    aput-object v4, v8, v26

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    const/16 v25, 0x3

    aput-object v4, v8, v25

    .line 2249
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v4

    if-eqz v4, :cond_328

    goto :goto_32a

    :cond_328
    move-object/from16 v29, v30

    :goto_32a
    const/4 v4, 0x4

    aput-object v29, v8, v4

    .line 2250
    iget-boolean v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->isPFS:Z

    if-eqz v4, :cond_332

    goto :goto_334

    :cond_332
    move-object/from16 v15, v27

    :goto_334
    const/4 v4, 0x5

    aput-object v15, v8, v4

    const/4 v4, 0x6

    aput-object v9, v8, v4

    move-object v3, v8

    .line 2252
    goto/16 :goto_3ca

    .line 2238
    :cond_33d
    const/16 v4, 0xc

    new-array v8, v4, [Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v4, v8, v18

    const-string/jumbo v4, "xauthrsa"

    const/16 v19, 0x1

    aput-object v4, v8, v19

    const/4 v4, 0x2

    aput-object v0, v8, v4

    const/4 v4, 0x3

    aput-object v10, v8, v4

    const/4 v4, 0x4

    aput-object v11, v8, v4

    const/4 v4, 0x5

    aput-object v12, v8, v4

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ocspServerUrl:Ljava/lang/String;

    const/16 v23, 0x6

    aput-object v4, v8, v23

    .line 2241
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v4

    if-eqz v4, :cond_367

    goto :goto_369

    :cond_367
    move-object/from16 v29, v30

    :goto_369
    const/4 v4, 0x7

    aput-object v29, v8, v4

    .line 2242
    iget-boolean v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->isPFS:Z

    if-eqz v4, :cond_371

    goto :goto_373

    :cond_371
    move-object/from16 v15, v27

    :goto_373
    const/16 v4, 0x8

    aput-object v15, v8, v4

    const/16 v4, 0x9

    aput-object v9, v8, v4

    iget-object v15, v2, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    aput-object v15, v8, v28

    iget-object v15, v2, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    const/16 v24, 0xb

    aput-object v15, v8, v24

    move-object v3, v8

    .line 2245
    goto :goto_3ca

    .line 2230
    :cond_387
    const/16 v4, 0x9

    new-array v8, v4, [Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v4, v8, v18

    const-string/jumbo v4, "xauthpsk"

    const/16 v19, 0x1

    aput-object v4, v8, v19

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/16 v26, 0x2

    aput-object v4, v8, v26

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    const/16 v25, 0x3

    aput-object v4, v8, v25

    .line 2232
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v4

    if-eqz v4, :cond_3ab

    goto :goto_3ad

    :cond_3ab
    move-object/from16 v29, v30

    :goto_3ad
    const/4 v4, 0x4

    aput-object v29, v8, v4

    .line 2233
    iget-boolean v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->isPFS:Z

    if-eqz v4, :cond_3b5

    goto :goto_3b7

    :cond_3b5
    move-object/from16 v15, v27

    :goto_3b7
    const/4 v4, 0x5

    aput-object v15, v8, v4

    const/4 v4, 0x6

    aput-object v9, v8, v4

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x7

    aput-object v4, v8, v15

    iget-object v4, v2, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    const/16 v15, 0x8

    aput-object v4, v8, v15

    move-object v3, v8

    .line 2236
    nop

    .line 2266
    :goto_3ca
    move-object v4, v3

    .line 2267
    .local v4, "vpnParameters":[Ljava/lang/String;
    invoke-direct {v1, v4}, Lcom/android/server/connectivity/KnoxLegacyVpn;->isVpnConnectionSecure([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_419

    .line 2268
    const/16 v31, 0x5

    const/16 v32, 0x5

    const/16 v33, 0x0

    .line 2269
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v34

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connecting to VPN network "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/internal/net/KnoxVpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to server address : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from type "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    .line 2271
    invoke-direct {v1, v8}, Lcom/android/server/connectivity/KnoxLegacyVpn;->getVpnTypeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " failed - unsecure"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 2273
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v37

    .line 2268
    const-string v35, "Vpn"

    invoke-static/range {v31 .. v37}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2274
    return-void

    .line 2279
    :cond_419
    const/4 v8, 0x0

    .line 2280
    .local v8, "mtpd":[Ljava/lang/String;
    iget v15, v2, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    if-eqz v15, :cond_4a6

    move-object/from16 v27, v0

    const/4 v0, 0x1

    .end local v0    # "privateKey":Ljava/lang/String;
    .local v27, "privateKey":Ljava/lang/String;
    if-eq v15, v0, :cond_428

    const/4 v0, 0x2

    if-eq v15, v0, :cond_428

    goto/16 :goto_52d

    .line 2292
    :cond_428
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v7, v0, v15

    const-string/jumbo v15, "l2tp"

    const/16 v19, 0x1

    aput-object v15, v0, v19

    iget-object v15, v2, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    const/16 v26, 0x2

    aput-object v15, v0, v26

    const/4 v15, 0x3

    aput-object v5, v0, v15

    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->l2tpSecret:Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v5, v0, v15

    const-string/jumbo v5, "name"

    const/4 v15, 0x5

    aput-object v5, v0, v15

    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x6

    aput-object v5, v0, v15

    const-string/jumbo v5, "password"

    const/4 v15, 0x7

    aput-object v5, v0, v15

    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    const/16 v15, 0x8

    aput-object v5, v0, v15

    const-string/jumbo v5, "linkname"

    const/16 v15, 0x9

    aput-object v5, v0, v15

    const-string/jumbo v5, "vpn"

    aput-object v5, v0, v28

    const-string/jumbo v5, "refuse-eap"

    const/16 v15, 0xb

    aput-object v5, v0, v15

    const-string/jumbo v5, "nodefaultroute"

    const/16 v15, 0xc

    aput-object v5, v0, v15

    const/16 v5, 0xd

    const-string/jumbo v15, "usepeerdns"

    aput-object v15, v0, v5

    const/16 v5, 0xe

    const-string/jumbo v15, "idle"

    aput-object v15, v0, v5

    const/16 v5, 0xf

    const-string v15, "1800"

    aput-object v15, v0, v5

    const/16 v5, 0x10

    const-string/jumbo v15, "mtu"

    aput-object v15, v0, v5

    const/16 v5, 0x11

    const-string v15, "1300"

    aput-object v15, v0, v5

    const/16 v5, 0x12

    const-string/jumbo v15, "mru"

    aput-object v15, v0, v5

    const/16 v5, 0x13

    const-string v15, "1300"

    aput-object v15, v0, v5

    move-object v8, v0

    goto/16 :goto_52d

    .line 2282
    .end local v27    # "privateKey":Ljava/lang/String;
    .restart local v0    # "privateKey":Ljava/lang/String;
    :cond_4a6
    move-object/from16 v27, v0

    .end local v0    # "privateKey":Ljava/lang/String;
    .restart local v27    # "privateKey":Ljava/lang/String;
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v0, v5

    const-string/jumbo v5, "pptp"

    const/4 v15, 0x1

    aput-object v5, v0, v15

    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x2

    aput-object v5, v0, v15

    const-string v5, "1723"

    const/4 v15, 0x3

    aput-object v5, v0, v15

    const-string/jumbo v5, "name"

    const/4 v15, 0x4

    aput-object v5, v0, v15

    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x5

    aput-object v5, v0, v15

    const-string/jumbo v5, "password"

    const/4 v15, 0x6

    aput-object v5, v0, v15

    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    const/4 v15, 0x7

    aput-object v5, v0, v15

    const-string/jumbo v5, "linkname"

    const/16 v15, 0x8

    aput-object v5, v0, v15

    const-string/jumbo v5, "vpn"

    const/16 v15, 0x9

    aput-object v5, v0, v15

    const-string/jumbo v5, "refuse-eap"

    aput-object v5, v0, v28

    const-string/jumbo v5, "nodefaultroute"

    const/16 v15, 0xb

    aput-object v5, v0, v15

    const-string/jumbo v5, "usepeerdns"

    const/16 v15, 0xc

    aput-object v5, v0, v15

    const/16 v5, 0xd

    const-string/jumbo v15, "idle"

    aput-object v15, v0, v5

    const/16 v5, 0xe

    const-string v15, "1800"

    aput-object v15, v0, v5

    const/16 v5, 0xf

    const-string/jumbo v15, "mtu"

    aput-object v15, v0, v5

    const/16 v5, 0x10

    const-string v15, "1350"

    aput-object v15, v0, v5

    const/16 v5, 0x11

    const-string/jumbo v15, "mru"

    aput-object v15, v0, v5

    const/16 v5, 0x12

    const-string v15, "1350"

    aput-object v15, v0, v5

    const/16 v5, 0x13

    .line 2287
    iget-boolean v15, v2, Lcom/android/internal/net/KnoxVpnProfile;->mppe:Z

    if-eqz v15, :cond_526

    const-string v15, "+mppe"

    goto :goto_529

    :cond_526
    const-string/jumbo v15, "nomppe"

    :goto_529
    aput-object v15, v0, v5

    move-object v8, v0

    .line 2289
    nop

    .line 2301
    :goto_52d
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 2302
    .local v0, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 2303
    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->key:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 2304
    iput-object v7, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 2305
    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->name:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 2306
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 2307
    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    iput-object v5, v0, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 2310
    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->name:Ljava/lang/String;

    iput-object v5, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mProfileName:Ljava/lang/String;

    .line 2314
    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 2316
    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_565

    .line 2317
    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->dnsServers:Ljava/lang/String;

    const-string v15, " +"

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 2319
    :cond_565
    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_57b

    .line 2320
    iget-object v5, v2, Lcom/android/internal/net/KnoxVpnProfile;->searchDomains:Ljava/lang/String;

    const-string v15, " +"

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 2322
    :cond_57b
    invoke-direct {v1, v0, v3, v8, v2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/KnoxVpnProfile;)V

    .line 2323
    return-void

    .line 2198
    .end local v3    # "racoon":[Ljava/lang/String;
    .end local v4    # "vpnParameters":[Ljava/lang/String;
    .end local v8    # "mtpd":[Ljava/lang/String;
    .end local v27    # "privateKey":Ljava/lang/String;
    .local v0, "privateKey":Ljava/lang/String;
    :cond_57f
    move-object/from16 v27, v0

    .line 2199
    .end local v0    # "privateKey":Ljava/lang/String;
    .restart local v27    # "privateKey":Ljava/lang/String;
    const-string v0, "Cannot load credentials"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot load credentials"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2129
    .end local v6    # "gateway":Ljava/lang/String;
    .end local v7    # "iface":Ljava/lang/String;
    .end local v9    # "hostAddress":Ljava/lang/String;
    .end local v10    # "userCert":Ljava/lang/String;
    .end local v11    # "caCert":Ljava/lang/String;
    .end local v12    # "serverCert":Ljava/lang/String;
    .end local v13    # "caCertValue":Ljava/lang/String;
    .end local v14    # "isCcmEnabled":Z
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "ipv4DefaultRoute":Landroid/net/RouteInfo;
    .end local v27    # "privateKey":Ljava/lang/String;
    .local v3, "mgr":Landroid/os/UserManager;
    .local v4, "user":Landroid/content/pm/UserInfo;
    :cond_58e
    move-object/from16 v17, v3

    move-object/from16 v20, v4

    .line 2131
    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local v20    # "user":Landroid/content/pm/UserInfo;
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Restricted users cannot establish VPNs"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized stopLegacyVpnPrivileged()V
    .registers 3

    monitor-enter p0

    .line 2341
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    if-eqz v0, :cond_17

    .line 2342
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->exit()V

    .line 2343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    .line 2345
    const-string v0, "KnoxLegacyVpn_LegacyVpnRunner"

    monitor-enter v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_19

    .line 2348
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_12

    goto :goto_17

    :catchall_12
    move-exception v1

    :goto_13
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    :try_start_14
    throw v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_19

    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn;
    :catchall_15
    move-exception v1

    goto :goto_13

    .line 2350
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    .line 2340
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 20
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .line 404
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxLegacyVpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, v11, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v14, 0x0

    invoke-virtual {v0, v12, v13, v14}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, v11, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_35

    .line 407
    iget-object v1, v11, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    goto :goto_6f

    .line 410
    :cond_35
    iget-boolean v0, v11, Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableLockdownVpn:Z

    if-eqz v0, :cond_6f

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v0, :cond_6f

    .line 411
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 413
    .local v15, "token":J
    :try_start_41
    new-instance v0, Lcom/android/server/connectivity/KnoxLegacyVpn$2;

    iget-object v3, v11, Lcom/android/server/connectivity/KnoxLegacyVpn;->mLooper:Landroid/os/Looper;

    iget-object v4, v11, Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;

    const-string v5, "VPN"

    iget-object v6, v11, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v7, v11, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/connectivity/KnoxLegacyVpn$2;-><init>(Lcom/android/server/connectivity/KnoxLegacyVpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;)V

    iput-object v0, v11, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_5c
    .catchall {:try_start_41 .. :try_end_5c} :catchall_6a

    .line 418
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 419
    nop

    .line 420
    iget-object v0, v11, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, v11, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 421
    iput-object v14, v11, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    goto :goto_6f

    .line 418
    :catchall_6a
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 419
    throw v0

    .line 424
    .end local v15    # "token":J
    :cond_6f
    :goto_6f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 425
    return-void
.end method
