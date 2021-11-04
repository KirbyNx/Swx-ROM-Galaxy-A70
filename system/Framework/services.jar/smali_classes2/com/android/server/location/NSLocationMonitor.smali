.class public Lcom/android/server/location/NSLocationMonitor;
.super Ljava/lang/Object;
.source "NSLocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/NSLocationMonitor$NetworkStateListener;,
        Lcom/android/server/location/NSLocationMonitor$MessageRunnable;,
        Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;,
        Lcom/android/server/location/NSLocationMonitor$ServiceCallback;
    }
.end annotation


# static fields
.field private static final MONITOR_SERVICE_LOCK:Ljava/lang/Object;

.field private static final NOTE_GPS_RESET:I = 0x3

.field private static final NOTE_GPS_START:I = 0x1

.field private static final NOTE_GPS_STOP:I = 0x2

.field private static final NSFLP_FEATURE:Ljava/lang/String; = "com.sec.feature.nsflp"

.field protected static final NSFLP_MONITOR_SERVICE:Ljava/lang/String; = "com.sec.location.nsflp2.nsmonitor.NSMonitorService"

.field private static final NSFLP_PACKAGE:Ljava/lang/String; = "com.sec.location.nsflp2"

.field private static final PATTERN_BCOM_SUPL_MSG:Ljava/lang/String; = ".PGLOR.+SPS.*"

.field private static final TAG:Ljava/lang/String; = "NSLocationMonitor"

.field private static mFeatureLevel:I

.field private static mHandler:Landroid/os/Handler;

.field private static mHasNsflpFeature:Z

.field private static mMonitorService:Landroid/location/INSLocationManager;


# instance fields
.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCallback:Landroid/location/INSLocationCallback;

.field private mConnectedHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceActivityDuration:I

.field private mDeviceActivityMode:I

.field private mDeviceActivityRegistered:Z

.field private mDisconnectedHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableFeatureDeviceActivity:Z

.field private final mForegroundNotificationList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHqmManager:Landroid/os/ISemHqmManager;

.field private mIsStationary:Z

.field private mManualMovingRegistered:Z

.field private mMonitorServiceConnection:Landroid/content/ServiceConnection;

.field private final mNetworkLock:Ljava/lang/Object;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private final mReceiverSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/location/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisteredNotificationListener:Z

.field private mRequestCount:I

.field private mRequestToUpdate:Z

.field private final mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private final mServiceCallback:Lcom/android/server/location/NSLocationMonitor$ServiceCallback;

.field private mSimCount:I

.field private mSimSubId:[I

.field private final mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSupportAlgorithm:Z

.field private mSupportHqm:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

.field private mSuspendControlService:Landroid/system/suspend/ISuspendControlService;

.field private final mSystemRunningTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/android/server/location/NSLocationMonitor;->mFeatureLevel:I

    .line 96
    sput-boolean v0, Lcom/android/server/location/NSLocationMonitor;->mHasNsflpFeature:Z

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/location/NSLocationMonitor;->MONITOR_SERVICE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/NSLocationMonitor$ServiceCallback;Landroid/location/INSLocationCallback;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceCallback"    # Lcom/android/server/location/NSLocationMonitor$ServiceCallback;
    .param p3, "callback"    # Landroid/location/INSLocationCallback;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;

    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/NSLocationMonitor;->mRegisteredNotificationListener:Z

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;

    .line 115
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/NSLocationMonitor;->mReceiverSet:Ljava/util/HashSet;

    .line 121
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;

    .line 124
    iput-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mSuspendControlService:Landroid/system/suspend/ISuspendControlService;

    .line 136
    iput-boolean v1, p0, Lcom/android/server/location/NSLocationMonitor;->mManualMovingRegistered:Z

    .line 139
    sget-object v0, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;->UNKNOWN:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    iput-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    .line 617
    new-instance v0, Lcom/android/server/location/NSLocationMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/NSLocationMonitor$1;-><init>(Lcom/android/server/location/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mMonitorServiceConnection:Landroid/content/ServiceConnection;

    .line 752
    new-instance v0, Lcom/android/server/location/NSLocationMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/NSLocationMonitor$2;-><init>(Lcom/android/server/location/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 811
    new-instance v0, Lcom/android/server/location/NSLocationMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/NSLocationMonitor$3;-><init>(Lcom/android/server/location/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 1093
    new-instance v0, Lcom/android/server/location/NSLocationMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/NSLocationMonitor$4;-><init>(Lcom/android/server/location/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 143
    iput-object p1, p0, Lcom/android/server/location/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 146
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v2, "NsflpThread"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 147
    .local v0, "nsflpThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 148
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/location/NSLocationMonitor;->mHandler:Landroid/os/Handler;

    .line 150
    iput-object p2, p0, Lcom/android/server/location/NSLocationMonitor;->mServiceCallback:Lcom/android/server/location/NSLocationMonitor$ServiceCallback;

    .line 151
    iput-object p3, p0, Lcom/android/server/location/NSLocationMonitor;->mCallback:Landroid/location/INSLocationCallback;

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/NSLocationMonitor;->mSystemRunningTime:J

    .line 154
    invoke-direct {p0}, Lcom/android/server/location/NSLocationMonitor;->initialize()V

    .line 155
    return-void
.end method

.method static synthetic access$000(Landroid/os/Message;)V
    .registers 1
    .param p0, "x0"    # Landroid/os/Message;

    .line 76
    invoke-static {p0}, Lcom/android/server/location/NSLocationMonitor;->onSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/NSLocationMonitor;)Lcom/android/server/location/NSLocationMonitor$ServiceCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mServiceCallback:Lcom/android/server/location/NSLocationMonitor$ServiceCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/location/NSLocationMonitor;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/NSLocationMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    invoke-direct {p0}, Lcom/android/server/location/NSLocationMonitor;->deinitNetworkStateListener()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/location/NSLocationMonitor;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/NSLocationMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    iget v0, p0, Lcom/android/server/location/NSLocationMonitor;->mSimCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/NSLocationMonitor;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mSimSubId:[I

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/NSLocationMonitor;)[Landroid/telephony/PhoneStateListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/location/NSLocationMonitor;Landroid/app/Notification;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;
    .param p1, "x1"    # Landroid/app/Notification;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/location/NSLocationMonitor;->isForegroundService(Landroid/app/Notification;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/NSLocationMonitor;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/NSLocationMonitor;->addForegroundNotification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/location/NSLocationMonitor;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/NSLocationMonitor;->removeForegroundNotification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .registers 1

    .line 76
    sget-object v0, Lcom/android/server/location/NSLocationMonitor;->MONITOR_SERVICE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/location/NSLocationMonitor;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/NSLocationMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    iget-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mSupportAlgorithm:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/location/NSLocationMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;
    .param p1, "x1"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/android/server/location/NSLocationMonitor;->mSupportAlgorithm:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/location/NSLocationMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    iget-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mIsStationary:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/location/NSLocationMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;
    .param p1, "x1"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/android/server/location/NSLocationMonitor;->mIsStationary:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/location/NSLocationMonitor;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;
    .param p1, "x1"    # Z

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/location/NSLocationMonitor;->sendStationaryInfo(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/location/NSLocationMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    iget-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mManualMovingRegistered:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/location/NSLocationMonitor;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/NSLocationMonitor;->sendStationaryInfo(ZZ)V

    return-void
.end method

.method static synthetic access$300()Landroid/location/INSLocationManager;
    .registers 1

    .line 76
    sget-object v0, Lcom/android/server/location/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    return-object v0
.end method

.method static synthetic access$302(Landroid/location/INSLocationManager;)Landroid/location/INSLocationManager;
    .registers 1
    .param p0, "x0"    # Landroid/location/INSLocationManager;

    .line 76
    sput-object p0, Lcom/android/server/location/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/location/NSLocationMonitor;)Landroid/location/INSLocationCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mCallback:Landroid/location/INSLocationCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/location/NSLocationMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    invoke-direct {p0}, Lcom/android/server/location/NSLocationMonitor;->sendConnectionInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/NSLocationMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    iget-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mRegisteredNotificationListener:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/location/NSLocationMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;
    .param p1, "x1"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/android/server/location/NSLocationMonitor;->mRegisteredNotificationListener:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/location/NSLocationMonitor;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/location/NSLocationMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 76
    invoke-direct {p0}, Lcom/android/server/location/NSLocationMonitor;->initNetworkStateListener()V

    return-void
.end method

.method private addForegroundNotification(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 898
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;

    sget-object v1, Lcom/android/server/location/-$$Lambda$NSLocationMonitor$eicqbAFwV--BGoStIunIXY4iMiU;->INSTANCE:Lcom/android/server/location/-$$Lambda$NSLocationMonitor$eicqbAFwV--BGoStIunIXY4iMiU;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 899
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    return v2
.end method

.method private deinitNetworkStateListener()V
    .registers 7

    .line 593
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/NSLocationMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 595
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    if-eqz v1, :cond_30

    iget-object v3, p0, Lcom/android/server/location/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-eqz v3, :cond_30

    .line 597
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    iget v4, p0, Lcom/android/server/location/NSLocationMonitor;->mSimCount:I

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2c

    .line 598
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v3

    if-nez v4, :cond_22

    goto :goto_29

    .line 600
    :cond_22
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 597
    :goto_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 602
    .end local v3    # "i":I
    :cond_2c
    iput v5, p0, Lcom/android/server/location/NSLocationMonitor;->mSimCount:I

    .line 603
    iput-object v2, p0, Lcom/android/server/location/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 606
    :cond_30
    iget-object v3, p0, Lcom/android/server/location/NSLocationMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "telephony_subscription_service"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 608
    .local v3, "sm":Landroid/telephony/SubscriptionManager;
    if-eqz v3, :cond_4f

    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-eqz v4, :cond_4f

    .line 609
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 610
    iput-object v2, p0, Lcom/android/server/location/NSLocationMonitor;->mSimSubId:[I

    .line 612
    const-string v2, "NSLocationMonitor"

    const-string v4, "Unregister SubscriptionChangedListener"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v3    # "sm":Landroid/telephony/SubscriptionManager;
    :cond_4f
    monitor-exit v0

    .line 615
    return-void

    .line 614
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1
.end method

.method private initNetworkStateListener()V
    .registers 10

    .line 531
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/NSLocationMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 533
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .line 534
    .local v2, "isInitialized":Z
    if-eqz v1, :cond_dd

    .line 535
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/server/location/NSLocationMonitor;->mSimCount:I

    .line 537
    if-lez v3, :cond_dd

    .line 538
    const-string v3, "NSLocationMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intialize NetworkStateListener, count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/location/NSLocationMonitor;->mSimCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget v3, p0, Lcom/android/server/location/NSLocationMonitor;->mSimCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/location/NSLocationMonitor;->mSimSubId:[I

    .line 541
    iget v3, p0, Lcom/android/server/location/NSLocationMonitor;->mSimCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/server/location/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 543
    const/4 v3, 0x0

    .local v3, "simSlot":I
    :goto_3e
    iget v4, p0, Lcom/android/server/location/NSLocationMonitor;->mSimCount:I

    if-ge v3, v4, :cond_dd

    .line 544
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 546
    .local v4, "subIdtemp":[I
    if-nez v4, :cond_65

    .line 547
    const-string v5, "NSLocationMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subId is null from simSlot["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    goto :goto_d9

    .line 549
    :cond_65
    array-length v5, v4

    if-nez v5, :cond_85

    .line 550
    const-string v5, "NSLocationMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subId is empty from simSlot["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    goto :goto_d9

    .line 554
    :cond_85
    const-string v5, "NSLocationMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subIdTemp, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v5, 0x0

    aget v5, v4, v5

    .line 558
    .local v5, "subId":I
    iget-object v6, p0, Lcom/android/server/location/NSLocationMonitor;->mSimSubId:[I

    aput v5, v6, v3

    .line 559
    iget-object v6, p0, Lcom/android/server/location/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v7, Lcom/android/server/location/NSLocationMonitor$NetworkStateListener;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8}, Lcom/android/server/location/NSLocationMonitor$NetworkStateListener;-><init>(ILcom/android/server/location/NSLocationMonitor$1;)V

    aput-object v7, v6, v3

    .line 561
    iget-object v6, p0, Lcom/android/server/location/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 562
    const-string v6, "NSLocationMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "registerPhoneStateListener SimSlot="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v2, 0x1

    .line 543
    .end local v4    # "subIdtemp":[I
    .end local v5    # "subId":I
    :goto_d9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3e

    .line 569
    .end local v3    # "simSlot":I
    :cond_dd
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 570
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "isInitialized"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 572
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 573
    .local v4, "msg":Landroid/os/Message;
    sget-object v5, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->SIM_STATE_CHANGED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v5}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v5

    iput v5, v4, Landroid/os/Message;->what:I

    .line 574
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 576
    invoke-static {v4}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 580
    iget-object v5, p0, Lcom/android/server/location/NSLocationMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "telephony_subscription_service"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionManager;

    .line 582
    .local v5, "sm":Landroid/telephony/SubscriptionManager;
    if-eqz v5, :cond_112

    .line 583
    const-string v6, "NSLocationMonitor"

    const-string v7, "Register SubscriptionChangedListener"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v6, p0, Lcom/android/server/location/NSLocationMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 586
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "isInitialized":Z
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "sm":Landroid/telephony/SubscriptionManager;
    :cond_112
    monitor-exit v0

    .line 587
    return-void

    .line 586
    :catchall_114
    move-exception v1

    monitor-exit v0
    :try_end_116
    .catchall {:try_start_3 .. :try_end_116} :catchall_114

    throw v1
.end method

.method private initialize()V
    .registers 6

    .line 158
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 160
    const-string v1, "com.sec.feature.nsflp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "NSLocationMonitor"

    if-eqz v0, :cond_55

    .line 161
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/location/NSLocationMonitor;->mHasNsflpFeature:Z

    .line 162
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/location/NSLocationMonitor;->mFeatureLevel:I

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NS-FLP Feature available, nsFlpFeatureLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/location/NSLocationMonitor;->mFeatureLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v0, "Try to bind NSMonitorService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.location.nsflp2"

    const-string v2, "com.sec.location.nsflp2.nsmonitor.NSMonitorService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v0, "cName":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/location/NSLocationMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/NSLocationMonitor;->mMonitorServiceConnection:Landroid/content/ServiceConnection;

    const v4, 0x4000001

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 172
    return-void

    .line 165
    .end local v0    # "cName":Landroid/content/ComponentName;
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not binding the MonitorService by featureLevel, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/location/NSLocationMonitor;->mFeatureLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method private isForegroundService(Landroid/app/Notification;)Z
    .registers 3
    .param p1, "notification"    # Landroid/app/Notification;

    .line 894
    iget v0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static isInvalidMsg(Landroid/os/Message;)Z
    .registers 7
    .param p0, "msg"    # Landroid/os/Message;

    .line 456
    iget v0, p0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_47

    .line 458
    :try_start_8
    iget v0, p0, Landroid/os/Message;->arg1:I

    const/16 v3, 0x3b

    if-eq v0, v3, :cond_f

    .line 459
    return v2

    .line 461
    :cond_f
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 462
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_16

    .line 463
    return v2

    .line 465
    :cond_16
    const-string/jumbo v3, "interfaceName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "interfaceName":Ljava/lang/String;
    if-eqz v3, :cond_2a

    const-string v4, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    .line 467
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_2b

    if-nez v4, :cond_28

    goto :goto_2a

    .line 473
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "interfaceName":Ljava/lang/String;
    :cond_28
    nop

    .line 474
    return v1

    .line 468
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "interfaceName":Ljava/lang/String;
    :cond_2a
    :goto_2a
    return v2

    .line 470
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "interfaceName":Ljava/lang/String;
    :catch_2b
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check invalidMsg, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NSLocationMonitor"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return v2

    .line 475
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_47
    iget v0, p0, Landroid/os/Message;->what:I

    sget-object v3, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->NMEA_RECEIVED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v3}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_77

    .line 476
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 477
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "nmea"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "nmea":Ljava/lang/String;
    sget v4, Lcom/android/server/location/NSLocationMonitor;->mFeatureLevel:I

    const/16 v5, 0x212

    if-eq v4, v5, :cond_73

    const/16 v5, 0x213

    if-ne v4, v5, :cond_67

    goto :goto_73

    .line 481
    :cond_67
    if-eqz v3, :cond_71

    const-string v4, ".PGLOR.+SPS.*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_72

    :cond_71
    move v1, v2

    :cond_72
    return v1

    .line 479
    :cond_73
    :goto_73
    if-nez v3, :cond_76

    move v1, v2

    :cond_76
    return v1

    .line 483
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "nmea":Ljava/lang/String;
    :cond_77
    return v1
.end method

.method static synthetic lambda$addForegroundNotification$0(Ljava/lang/String;)Ljava/util/Set;
    .registers 2
    .param p0, "k"    # Ljava/lang/String;

    .line 898
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method private static onSendMessage(Landroid/os/Message;)V
    .registers 5
    .param p0, "msg"    # Landroid/os/Message;

    .line 510
    sget-object v0, Lcom/android/server/location/NSLocationMonitor;->MONITOR_SERVICE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    if-nez p0, :cond_7

    .line 513
    :try_start_5
    monitor-exit v0

    return-void

    .line 516
    :cond_7
    sget-object v1, Lcom/android/server/location/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_1d

    if-eqz v1, :cond_1b

    .line 518
    :try_start_b
    sget-object v1, Lcom/android/server/location/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    invoke-interface {v1, p0}, Landroid/location/INSLocationManager;->sendMessage(Landroid/os/Message;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_1d

    .line 521
    goto :goto_1b

    .line 519
    :catch_11
    move-exception v1

    .line 520
    .local v1, "e":Ljava/lang/Exception;
    :try_start_12
    const-string v2, "NSLocationMonitor"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_1b
    monitor-exit v0

    .line 524
    return-void

    .line 523
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private removeForegroundNotification(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 903
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 904
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_18

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method private sendConnectionInfo()V
    .registers 5

    .line 739
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 741
    .local v0, "bundle":Landroid/os/Bundle;
    iget-wide v1, p0, Lcom/android/server/location/NSLocationMonitor;->mSystemRunningTime:J

    const-string/jumbo v3, "systemRunning"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 742
    iget-object v1, p0, Lcom/android/server/location/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;

    const-string v2, "connectedHistory"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 743
    iget-object v1, p0, Lcom/android/server/location/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;

    const-string v2, "disconnectedHistory"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 745
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 746
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->MONITOR_SERVICE_CONNECTED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v2}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 747
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 749
    invoke-static {v1}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 750
    return-void
.end method

.method static sendMessage(Landroid/os/Message;)V
    .registers 3
    .param p0, "msg"    # Landroid/os/Message;

    .line 487
    sget-boolean v0, Lcom/android/server/location/NSLocationMonitor;->mHasNsflpFeature:Z

    if-nez v0, :cond_5

    return-void

    .line 490
    :cond_5
    if-eqz p0, :cond_19

    invoke-static {p0}, Lcom/android/server/location/NSLocationMonitor;->isInvalidMsg(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_19

    .line 493
    :cond_e
    sget-object v0, Lcom/android/server/location/NSLocationMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/NSLocationMonitor$MessageRunnable;

    invoke-direct {v1, p0}, Lcom/android/server/location/NSLocationMonitor$MessageRunnable;-><init>(Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    return-void

    .line 491
    :cond_19
    :goto_19
    return-void
.end method

.method private sendStationaryInfo(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 1153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/NSLocationMonitor;->sendStationaryInfo(ZZ)V

    .line 1154
    return-void
.end method

.method private sendStationaryInfo(ZZ)V
    .registers 6
    .param p1, "flag"    # Z
    .param p2, "isResultOfManualMoving"    # Z

    .line 1157
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1158
    .local v0, "message":Landroid/os/Message;
    sget-object v1, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->STATIONARY_STATE_CHANGED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v1}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1160
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1161
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "stationary"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1162
    const-string/jumbo v2, "isManualMovingResult"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1164
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1166
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 1167
    return-void
.end method


# virtual methods
.method addGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "listenerName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "pid"    # I
    .param p6, "isAllowed"    # Z

    .line 336
    if-nez p1, :cond_a

    .line 337
    const-string v0, "NSLocationMonitor"

    const-string v1, "addGnssDataListener, binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 340
    :cond_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string/jumbo v1, "listenerName"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "listenerId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string/jumbo v1, "isAllowed"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 349
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ADD_DATA_LISTENER:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v2}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 350
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    invoke-static {v1}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 353
    return-void
.end method

.method getGPSUsingApps()Ljava/util/Map;
    .registers 6

    .line 440
    const-string v0, "NSLocationMonitor"

    const-string v1, "getGPSUsingApps() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget-object v1, Lcom/android/server/location/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 442
    const-string v1, "NSMonitorService is not connected, return null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-object v2

    .line 447
    :cond_12
    :try_start_12
    invoke-interface {v1}, Landroid/location/INSLocationManager;->getGPSUsingApps()Ljava/util/Map;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_17

    return-object v0

    .line 448
    :catch_17
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to getGPSUsingApps due to  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", return null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-object v2
.end method

.method getKernelWakeLockInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .line 395
    const/4 v0, 0x0

    const-string v1, "NSLocationMonitor"

    if-nez p1, :cond_b

    .line 396
    const-string v2, "No target module"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-object v0

    .line 400
    :cond_b
    const/4 v2, 0x0

    .line 401
    .local v2, "wlStats":[Landroid/system/suspend/WakeLockInfo;
    iget-object v3, p0, Lcom/android/server/location/NSLocationMonitor;->mSuspendControlService:Landroid/system/suspend/ISuspendControlService;

    if-nez v3, :cond_38

    .line 403
    :try_start_10
    const-string/jumbo v3, "suspend_control"

    .line 404
    invoke-static {v3}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 403
    invoke-static {v3}, Landroid/system/suspend/ISuspendControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/suspend/ISuspendControlService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/NSLocationMonitor;->mSuspendControlService:Landroid/system/suspend/ISuspendControlService;
    :try_end_1d
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_10 .. :try_end_1d} :catch_1e

    .line 408
    goto :goto_38

    .line 405
    :catch_1e
    move-exception v3

    .line 406
    .local v3, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Required service suspend_control not available, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/ServiceManager$ServiceNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-object v0

    .line 412
    .end local v3    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_38
    :goto_38
    :try_start_38
    iget-object v3, p0, Lcom/android/server/location/NSLocationMonitor;->mSuspendControlService:Landroid/system/suspend/ISuspendControlService;

    invoke-interface {v3}, Landroid/system/suspend/ISuspendControlService;->getWakeLockStats()[Landroid/system/suspend/WakeLockInfo;

    move-result-object v3

    move-object v2, v3

    .line 413
    if-nez v2, :cond_47

    .line 414
    const-string v3, "No failed to get wakelock stats"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-object v0

    .line 418
    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found WakeLockInfo, size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    array-length v3, v2

    const/4 v4, 0x0

    :goto_5e
    if-ge v4, v3, :cond_cb

    aget-object v5, v2, v4

    .line 420
    .local v5, "info":Landroid/system/suspend/WakeLockInfo;
    if-eqz p1, :cond_c8

    iget-object v6, v5, Landroid/system/suspend/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6d

    .line 421
    goto :goto_c8

    .line 423
    :cond_6d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WakeLockInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Landroid/system/suspend/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]  / total="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Landroid/system/suspend/WakeLockInfo;->totalTime:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " / isActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v5, Landroid/system/suspend/WakeLockInfo;->isActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " / activeTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Landroid/system/suspend/WakeLockInfo;->activeTime:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " / isKernelWakelock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v5, Landroid/system/suspend/WakeLockInfo;->isKernelWakelock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 428
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "name"

    iget-object v6, v5, Landroid/system/suspend/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string/jumbo v4, "totalTime"

    iget-wide v6, v5, Landroid/system/suspend/WakeLockInfo;->totalTime:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 430
    const-string v4, "activeTime"

    iget-wide v6, v5, Landroid/system/suspend/WakeLockInfo;->activeTime:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_c7} :catch_cc

    .line 431
    return-object v3

    .line 419
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "info":Landroid/system/suspend/WakeLockInfo;
    :cond_c8
    :goto_c8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 435
    :cond_cb
    goto :goto_e5

    .line 433
    :catch_cc
    move-exception v3

    .line 434
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getWakelockStats, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_e5
    return-object v0
.end method

.method noteGpsOperation(II)V
    .registers 6
    .param p1, "mode"    # I
    .param p2, "uid"    # I

    .line 688
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v1, "NSLocationMonitor"

    if-nez v0, :cond_1b

    .line 689
    nop

    .line 690
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 689
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 692
    if-nez v0, :cond_1b

    .line 693
    const-string v0, "Failed to get batterystats"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void

    .line 699
    :cond_1b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_26

    .line 700
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p2}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V

    goto :goto_3e

    .line 706
    :catch_24
    move-exception v0

    goto :goto_38

    .line 701
    :cond_26
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2f

    .line 702
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p2}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V

    goto :goto_3e

    .line 703
    :cond_2f
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3e

    .line 704
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteResetGps()V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_37} :catch_24

    goto :goto_3e

    .line 707
    .local v0, "e":Landroid/os/RemoteException;
    :goto_38
    const-string v2, "Failed to call noteResetGps"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 708
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3e
    :goto_3e
    nop

    .line 709
    :goto_3f
    return-void
.end method

.method registerDeviceActivityDetector(IIZ)V
    .registers 11
    .param p1, "mode"    # I
    .param p2, "duration"    # I
    .param p3, "requestToUpdate"    # Z

    .line 991
    iget-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    const-string v1, "NSLocationMonitor"

    if-nez v0, :cond_c

    .line 992
    const-string v0, "Failed registerDeviceActivityDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void

    .line 996
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mDeviceActivityRegistered:Z

    const-string v2, ", requestToUpdate : "

    const-string v3, ", duration : "

    const/4 v4, 0x0

    const/16 v5, 0x36

    if-eqz v0, :cond_4d

    .line 997
    iget v0, p0, Lcom/android/server/location/NSLocationMonitor;->mDeviceActivityDuration:I

    if-ne v0, p2, :cond_44

    iget v0, p0, Lcom/android/server/location/NSLocationMonitor;->mDeviceActivityMode:I

    if-ne v0, p1, :cond_44

    iget-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mRequestToUpdate:Z

    if-ne v0, p3, :cond_44

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already registered same attribute, mode : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-void

    .line 1002
    :cond_44
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v6, p0, Lcom/android/server/location/NSLocationMonitor;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    invoke-virtual {v0, v6, v5}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 1003
    iput-boolean v4, p0, Lcom/android/server/location/NSLocationMonitor;->mManualMovingRegistered:Z

    .line 1007
    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v6, p0, Lcom/android/server/location/NSLocationMonitor;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    invoke-virtual {v0, v6, v5}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Success registerDeviceActivityDetector, mode : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;-><init>(IIZ)V

    .line 1011
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    iget-object v2, p0, Lcom/android/server/location/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v3, p0, Lcom/android/server/location/NSLocationMonitor;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    invoke-virtual {v2, v3, v5, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    .line 1013
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/location/NSLocationMonitor;->mDeviceActivityRegistered:Z

    .line 1014
    const/4 v3, 0x2

    if-ne p1, v3, :cond_8c

    if-eqz p3, :cond_8c

    move v4, v2

    :cond_8c
    iput-boolean v4, p0, Lcom/android/server/location/NSLocationMonitor;->mManualMovingRegistered:Z

    .line 1015
    iput p1, p0, Lcom/android/server/location/NSLocationMonitor;->mDeviceActivityMode:I

    .line 1016
    iput p2, p0, Lcom/android/server/location/NSLocationMonitor;->mDeviceActivityDuration:I

    .line 1017
    iput-boolean p3, p0, Lcom/android/server/location/NSLocationMonitor;->mRequestToUpdate:Z
    :try_end_94
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_94} :catch_95

    .line 1021
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_94
    goto :goto_ae

    .line 1019
    :catch_95
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is occurred while registerDeviceActivityDetector, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_ae
    return-void
.end method

.method removeGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "listenerName"    # Ljava/lang/String;

    .line 356
    if-nez p1, :cond_b

    .line 357
    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "removeGnssDataListener, binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 361
    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "listenerId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string/jumbo v1, "listenerName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 366
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->REMOVE_DATA_LISTENER:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v2}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 367
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    invoke-static {v1}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 370
    return-void
.end method

.method requestToUpdateDeviceActivityDetector()V
    .registers 5

    .line 1050
    iget-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    const-string v1, "NSLocationMonitor"

    if-nez v0, :cond_c

    .line 1051
    const-string v0, "Failed updateDeviceActivityDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return-void

    .line 1055
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v2, p0, Lcom/android/server/location/NSLocationMonitor;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/16 v3, 0x36

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 1058
    iget-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mSupportAlgorithm:Z

    if-nez v0, :cond_2b

    iget v0, p0, Lcom/android/server/location/NSLocationMonitor;->mRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/NSLocationMonitor;->mRequestCount:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2b

    .line 1059
    const-string v0, "Disable device_activity_detector, because of no response"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/location/NSLocationMonitor;->setFeatureDeviceActivity(Z)Z
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_2b} :catch_2c

    .line 1064
    :cond_2b
    goto :goto_45

    .line 1062
    :catch_2c
    move-exception v0

    .line 1063
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is occurred while updateDeviceActivityDetector, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_45
    return-void
.end method

.method sendChinaNaviMode(Z)V
    .registers 5
    .param p1, "hasNaviApp"    # Z

    .line 1184
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1185
    .local v0, "message":Landroid/os/Message;
    sget-object v1, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->CHN_NAVI_MODE_CHANGED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v1}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1187
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1188
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "navimode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1189
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1191
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 1192
    return-void
.end method

.method sendExtraCommandInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .line 959
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 961
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 962
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 964
    .local v2, "uid":I
    const-string/jumbo v3, "provider"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v3, "command"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string/jumbo v3, "pid"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 967
    const-string/jumbo v3, "uid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 969
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 970
    .local v3, "msg":Landroid/os/Message;
    sget-object v4, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->SEND_EXTRA_COMMAND:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v4}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v4

    iput v4, v3, Landroid/os/Message;->what:I

    .line 971
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 973
    invoke-static {v3}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 974
    return-void
.end method

.method sendFreezeStateChanged(ZI)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "uid"    # I

    .line 312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 317
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->FREEZE_STATE_CHANGED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v2}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 318
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 320
    invoke-static {v1}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 321
    return-void
.end method

.method sendLocationEnabledInfo(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 977
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 978
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string/jumbo v2, "pid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 979
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 980
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 982
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 983
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->SET_LOCATION_ENABLED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v2}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 984
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 986
    invoke-static {v1}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 987
    return-void
.end method

.method sendLogToHqm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "devLogData"    # Ljava/lang/String;
    .param p3, "logData"    # Ljava/lang/String;

    .line 712
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/location/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    sget-object v2, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;->UNKNOWN:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    if-ne v0, v2, :cond_21

    iget-object v0, v1, Lcom/android/server/location/NSLocationMonitor;->mHqmManager:Landroid/os/ISemHqmManager;

    if-nez v0, :cond_21

    .line 713
    const-string v0, "HqmManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ISemHqmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISemHqmManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/location/NSLocationMonitor;->mHqmManager:Landroid/os/ISemHqmManager;

    .line 714
    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;->SUPPORT:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    goto :goto_1f

    :cond_1d
    sget-object v0, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;->NOT_SUPPORT:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    :goto_1f
    iput-object v0, v1, Lcom/android/server/location/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    .line 718
    :cond_21
    iget-object v0, v1, Lcom/android/server/location/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    sget-object v2, Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;->NOT_SUPPORT:Lcom/android/server/location/NSLocationMonitor$HQM_SUPPORT_STATE;

    const-string v3, "NSLocationMonitor"

    if-ne v0, v2, :cond_2f

    .line 719
    const-string v0, "HQM not supported device"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void

    .line 724
    :cond_2f
    const/4 v2, 0x0

    .line 725
    .local v2, "TYPE":I
    const-string v4, "GNSS"

    .line 726
    .local v4, "COMPONENT_ID":Ljava/lang/String;
    const-string v5, "0.0"

    .line 727
    .local v5, "COMPONENT_VER":Ljava/lang/String;
    const-string/jumbo v6, "sec"

    .line 728
    .local v6, "COMPONENT_MANUFACTURE":Ljava/lang/String;
    const-string/jumbo v7, "ph"

    .line 731
    .local v7, "HIT_TYPE":Ljava/lang/String;
    :try_start_3a
    iget-object v8, v1, Lcom/android/server/location/NSLocationMonitor;->mHqmManager:Landroid/os/ISemHqmManager;

    const/4 v9, 0x0

    const-string v10, "GNSS"

    const-string/jumbo v12, "ph"

    const-string v13, "0.0"

    const-string/jumbo v14, "sec"

    const-string v17, ""

    move-object/from16 v11, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    invoke-interface/range {v8 .. v17}, Landroid/os/ISemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_52} :catch_53

    .line 735
    goto :goto_6c

    .line 733
    :catch_53
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed logging big data for GNSS"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6c
    return-void
.end method

.method sendOpChanged(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 305
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->OP_CHANGED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v2}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 306
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 308
    invoke-static {v1}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 309
    return-void
.end method

.method sendPassiveLocation(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .line 174
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 175
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->PASSIVE_LOCATION:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v1}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 179
    return-void
.end method

.method sendPermissionsChange(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 328
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->PERMISSIONS_CHANGED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v2}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 329
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 331
    invoke-static {v1}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 332
    return-void
.end method

.method sendSettingsIgnoreInfo(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "isSettingsIgnored"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1171
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1172
    .local v0, "message":Landroid/os/Message;
    sget-object v1, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->SETTINGS_IGNORED_STATE_CHANGED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v1}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1174
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1175
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "provider"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string/jumbo v2, "ignored"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1177
    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1180
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 1181
    return-void
.end method

.method setFeatureDeviceActivity(Z)Z
    .registers 6
    .param p1, "flag"    # Z

    .line 1068
    const-string v0, "NSLocationMonitor"

    const/4 v1, 0x0

    if-eqz p1, :cond_44

    .line 1069
    iget-object v2, p0, Lcom/android/server/location/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v2, :cond_20

    .line 1070
    iget-object v2, p0, Lcom/android/server/location/NSLocationMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "scontext"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v2, p0, Lcom/android/server/location/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 1072
    if-nez v2, :cond_20

    .line 1073
    const-string/jumbo v2, "semContextManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iput-boolean v1, p0, Lcom/android/server/location/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    .line 1077
    :cond_20
    iget-object v1, p0, Lcom/android/server/location/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v2, 0x36

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFeatureDeviceActivity, isAvailable, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    return v0

    .line 1082
    :cond_44
    iget-boolean v2, p0, Lcom/android/server/location/NSLocationMonitor;->mIsStationary:Z

    if-eqz v2, :cond_4d

    .line 1083
    iput-boolean v1, p0, Lcom/android/server/location/NSLocationMonitor;->mIsStationary:Z

    .line 1084
    invoke-direct {p0, v1}, Lcom/android/server/location/NSLocationMonitor;->sendStationaryInfo(Z)V

    .line 1086
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/location/NSLocationMonitor;->unregisterDeviceActivityDetector()V

    .line 1087
    const-string/jumbo v2, "setFeatureDeviceActivity, false"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iput-boolean v1, p0, Lcom/android/server/location/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    .line 1089
    return v1
.end method

.method unregisterDeviceActivityDetector()V
    .registers 5

    .line 1025
    iget-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    const-string v1, "NSLocationMonitor"

    if-nez v0, :cond_c

    .line 1026
    const-string v0, "Failed unregisterDeviceActivityDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return-void

    .line 1029
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mDeviceActivityRegistered:Z

    if-nez v0, :cond_16

    .line 1030
    const-string v0, "Already unregistered DeviceActivityDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    return-void

    .line 1035
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v2, p0, Lcom/android/server/location/NSLocationMonitor;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/16 v3, 0x36

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 1036
    const-string v0, "Success unregisterDeviceActivityDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_24} :catch_25

    .line 1039
    goto :goto_3e

    .line 1037
    :catch_25
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is occurred while unregisterDeviceActivityDetector, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mIsStationary:Z

    .line 1042
    iput-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mDeviceActivityRegistered:Z

    .line 1043
    iput v0, p0, Lcom/android/server/location/NSLocationMonitor;->mDeviceActivityMode:I

    .line 1044
    iput v0, p0, Lcom/android/server/location/NSLocationMonitor;->mDeviceActivityDuration:I

    .line 1045
    iput-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mRequestToUpdate:Z

    .line 1046
    iput-boolean v0, p0, Lcom/android/server/location/NSLocationMonitor;->mManualMovingRegistered:Z

    .line 1047
    return-void
.end method

.method updateGnssDataListener(ZLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "isAdd"    # Z
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I

    .line 374
    if-nez p2, :cond_b

    .line 375
    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "updateGnssDataListener, binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 379
    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 380
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "isAdd"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string/jumbo v1, "listenerName"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "listenerId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 388
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->UPDATE_DATA_LISTENER:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v2}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 389
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 391
    invoke-static {v1}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 392
    return-void
.end method

.method updateReceiverAccessStatus(Lcom/android/server/location/LocationManagerService$Receiver;ZLandroid/location/LocationConstants$PAUSED_BY;)V
    .registers 9
    .param p1, "receiver"    # Lcom/android/server/location/LocationManagerService$Receiver;
    .param p2, "isAllowed"    # Z
    .param p3, "reason"    # Landroid/location/LocationConstants$PAUSED_BY;

    .line 255
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mReceiverSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 256
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/NSLocationMonitor;->mReceiverSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    iget-boolean v1, p1, Lcom/android/server/location/LocationManagerService$Receiver;->mIsAllowed:Z

    if-eq v1, p2, :cond_72

    .line 257
    const-string v1, "NSLocationMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver status was changed, isAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    if-eqz p3, :cond_32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    :cond_32
    const-string v3, ""

    :goto_34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-boolean p2, p1, Lcom/android/server/location/LocationManagerService$Receiver;->mIsAllowed:Z

    .line 261
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "listenerid"

    iget-object v3, p1, Lcom/android/server/location/LocationManagerService$Receiver;->mListenerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v2, "isAllowed"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    const-string/jumbo v2, "reason"

    if-nez p3, :cond_5a

    const/4 v3, -0x1

    goto :goto_5e

    :cond_5a
    invoke-virtual {p3}, Landroid/location/LocationConstants$PAUSED_BY;->ordinal()I

    move-result v3

    :goto_5e
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 267
    .local v2, "msg":Landroid/os/Message;
    sget-object v3, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->LOCATION_UPDATE:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v3}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 268
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    invoke-static {v2}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 272
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_72
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw v1
.end method

.method updateRemoveInfo(Lcom/android/server/location/LocationManagerService$Receiver;)V
    .registers 5
    .param p1, "receiver"    # Lcom/android/server/location/LocationManagerService$Receiver;

    .line 234
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor;->mReceiverSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/NSLocationMonitor;->mReceiverSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 237
    iget-object v1, p0, Lcom/android/server/location/NSLocationMonitor;->mReceiverSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 239
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_4e

    .line 241
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p1, Lcom/android/server/location/LocationManagerService$Receiver;->mListenerId:Ljava/lang/String;

    const-string/jumbo v2, "listenerid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v1, p1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v1, v1, Lcom/android/server/location/CallerIdentity;->pid:I

    const-string/jumbo v2, "pid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    iget-object v1, p1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v1, v1, Lcom/android/server/location/CallerIdentity;->uid:I

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 248
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->LOCATION_REMOVE:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v2}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 249
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 251
    invoke-static {v1}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 252
    return-void

    .line 239
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method updateRequestInfo(Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;ZLjava/lang/Throwable;)V
    .registers 14
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "receiver"    # Lcom/android/server/location/LocationManagerService$Receiver;
    .param p3, "isForeground"    # Z
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .line 183
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "listenerId":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mListenerId:Ljava/lang/String;

    if-nez v1, :cond_e

    iput-object v0, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mListenerId:Ljava/lang/String;

    .line 186
    :cond_e
    iget-object v1, p0, Lcom/android/server/location/NSLocationMonitor;->mReceiverSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 187
    :try_start_11
    iget-object v2, p0, Lcom/android/server/location/NSLocationMonitor;->mReceiverSet:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_f4

    .line 190
    invoke-virtual {p2}, Lcom/android/server/location/LocationManagerService$Receiver;->isListener()Z

    move-result v1

    .line 192
    .local v1, "isListenerType":Z
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v3, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, v3, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "packageName"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "provider"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v3, "listenerid"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v3

    const-string/jumbo v5, "interval"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 197
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getQuality()I

    move-result v3

    const-string/jumbo v4, "quality"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    iget-object v3, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v3, v3, Lcom/android/server/location/CallerIdentity;->pid:I

    const-string/jumbo v4, "pid"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    iget-object v3, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v3, v3, Lcom/android/server/location/CallerIdentity;->uid:I

    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v3, "foreground"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    const-string/jumbo v3, "throwable"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 202
    const-string/jumbo v3, "listenerType"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    iget-boolean v3, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mIsAllowed:Z

    const-string/jumbo v4, "isAllowed"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v3

    const-string/jumbo v4, "smallestDisplacement"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 205
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v3

    const-string/jumbo v4, "numUpdates"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    iget-object v3, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    .line 208
    .local v3, "workSource":Landroid/os/WorkSource;
    if-eqz v3, :cond_e2

    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v4

    if-lez v4, :cond_e2

    .line 210
    :try_start_99
    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v4

    .line 211
    .local v4, "workSourceSize":I
    new-array v5, v4, [I

    .line 212
    .local v5, "uids":[I
    new-array v6, v4, [Ljava/lang/String;

    .line 213
    .local v6, "names":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a2
    if-ge v7, v4, :cond_b3

    .line 214
    invoke-virtual {v3, v7}, Landroid/os/WorkSource;->getUid(I)I

    move-result v8

    aput v8, v5, v7

    .line 215
    invoke-virtual {v3, v7}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 213
    add-int/lit8 v7, v7, 0x1

    goto :goto_a2

    .line 218
    .end local v7    # "i":I
    :cond_b3
    const-string/jumbo v7, "workSourceSize"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string/jumbo v7, "workSourceUids"

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 220
    const-string/jumbo v7, "workSourceNames"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_c5} :catch_c6

    .line 223
    .end local v4    # "workSourceSize":I
    .end local v5    # "uids":[I
    .end local v6    # "names":[Ljava/lang/String;
    goto :goto_e2

    .line 221
    :catch_c6
    move-exception v4

    .line 222
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to put worksource["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NSLocationMonitor"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_e2
    :goto_e2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 227
    .local v4, "msg":Landroid/os/Message;
    sget-object v5, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->LOCATION_REQUEST:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v5}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v5

    iput v5, v4, Landroid/os/Message;->what:I

    .line 228
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    invoke-static {v4}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 231
    return-void

    .line 188
    .end local v1    # "isListenerType":Z
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "workSource":Landroid/os/WorkSource;
    .end local v4    # "msg":Landroid/os/Message;
    :catchall_f4
    move-exception v2

    :try_start_f5
    monitor-exit v1
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    throw v2
.end method

.method updateTestProvider(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "isRegister"    # Z
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "isRegister"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    const-string/jumbo v1, "provider"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 294
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->MOCK_PROVIDER_CHANGED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v2}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 295
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    invoke-static {v1}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 298
    return-void
.end method

.method updateUidForegroundChanged(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "foreground"    # Z

    .line 276
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 277
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    const-string v1, "foreground"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 281
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->FOREGROUND_CHANGED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v2}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 282
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 284
    invoke-static {v1}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 285
    return-void
.end method
