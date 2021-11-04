.class public Lcom/android/server/location/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationManagerService$LocalService;,
        Lcom/android/server/location/LocationManagerService$ProcessListener;,
        Lcom/android/server/location/LocationManagerService$UpdateRecord;,
        Lcom/android/server/location/LocationManagerService$Receiver;,
        Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;,
        Lcom/android/server/location/LocationManagerService$LocationProviderManager;,
        Lcom/android/server/location/LocationManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ACTION_SEC_NOTIFICATION_DELETE_MOCK_LOCATION:Ljava/lang/String; = "com.samsung.android.location.mock.delete"

.field private static final ATTRIBUTION_TAG:Ljava/lang/String; = "LocationService"

.field public static final D:Z = true

.field private static final DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

.field private static final FASTEST_COARSE_INTERVAL_MS:J = 0x927c0L

.field private static final FUSED_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final MAX_CURRENT_LOCATION_AGE_MS:J = 0x2710L

.field private static final MAX_PROVIDER_SCHEDULING_JITTER_MS:I = 0x1388

.field private static final MOCK_LOCATION_NOTIFICATION_ID:I = 0x0

.field private static final MOCK_LOCATION_REMINDER_CHANNEL_ID:Ljava/lang/String; = "Mock Location Reminder"

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"

.field public static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "*location*"

.field private static mSecSalesCode:Ljava/lang/String;


# instance fields
.field private isMockLocationNotified:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

.field private final mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

.field private mBatterySaverMode:I

.field private final mContext:Landroid/content/Context;

.field private mExtraLocationControllerPackage:Ljava/lang/String;

.field private mExtraLocationControllerPackageEnabled:Z

.field private mFreezedUid:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeofenceManager:Lcom/android/server/location/GeofenceManager;

.field private mGnssManagerCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

.field private volatile mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

.field private final mHandler:Landroid/os/Handler;

.field private mHasNaviApp:Z

.field private final mListenerType:[Landroid/location/LocationConstants$LISTENER_TYPE;

.field private final mLocListenerBlocklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocThread:Lcom/android/server/ServiceThread;

.field private final mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

.field private final mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

.field private final mLock:Ljava/lang/Object;

.field private final mMockLocationRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNSLocationCallback:Landroid/location/INSLocationCallback$Stub;

.field private mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPassiveManager:Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mProcessListener:Lcom/android/server/location/LocationManagerService$ProcessListener;

.field private final mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/LocationManagerService$LocationProviderManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/location/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/location/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

.field private mServiceCallback:Lcom/android/server/location/NSLocationMonitor$ServiceCallback;

.field private final mSettingsHelper:Lcom/android/server/location/SettingsHelper;

.field private mSettingsIgoredByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 273
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    sput-object v0, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/location/UserInfoHelper;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userInfoHelper"    # Lcom/android/server/location/UserInfoHelper;

    .line 343
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 275
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 303
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 306
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 308
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 311
    new-instance v1, Lcom/android/server/location/LocationRequestStatistics;

    invoke-direct {v1}, Lcom/android/server/location/LocationRequestStatistics;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    .line 319
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mFreezedUid:Ljava/util/HashSet;

    .line 320
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocListenerBlocklist:Ljava/util/HashSet;

    .line 321
    invoke-static {}, Landroid/location/LocationConstants$LISTENER_TYPE;->values()[Landroid/location/LocationConstants$LISTENER_TYPE;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mListenerType:[Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 322
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsIgoredByProvider:Ljava/util/HashMap;

    .line 329
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 332
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    .line 335
    new-instance v2, Lcom/android/server/location/LocationManagerService$ProcessListener;

    invoke-direct {v2, p0}, Lcom/android/server/location/LocationManagerService$ProcessListener;-><init>(Lcom/android/server/location/LocationManagerService;)V

    iput-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProcessListener:Lcom/android/server/location/LocationManagerService$ProcessListener;

    .line 341
    iput-boolean v1, p0, Lcom/android/server/location/LocationManagerService;->mHasNaviApp:Z

    .line 3496
    new-instance v2, Lcom/android/server/location/LocationManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/location/LocationManagerService$4;-><init>(Lcom/android/server/location/LocationManagerService;)V

    iput-object v2, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    .line 3527
    new-instance v2, Lcom/android/server/location/LocationManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/location/LocationManagerService$5;-><init>(Lcom/android/server/location/LocationManagerService;)V

    iput-object v2, p0, Lcom/android/server/location/LocationManagerService;->mServiceCallback:Lcom/android/server/location/NSLocationMonitor$ServiceCallback;

    .line 3550
    new-instance v2, Lcom/android/server/location/LocationManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/location/LocationManagerService$6;-><init>(Lcom/android/server/location/LocationManagerService;)V

    iput-object v2, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationCallback:Landroid/location/INSLocationCallback$Stub;

    .line 344
    const-string v2, "LocationService"

    invoke-virtual {p1, v2}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 347
    new-instance v2, Lcom/android/server/ServiceThread;

    const-string v3, "LocationManagerThread"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v2, p0, Lcom/android/server/location/LocationManagerService;->mLocThread:Lcom/android/server/ServiceThread;

    .line 348
    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->start()V

    .line 349
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mLocThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 351
    new-instance v1, Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/LocationManagerService$LocalService;-><init>(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    .line 354
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.gps.dds.subId"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    .line 356
    const-class v1, Landroid/location/LocationManagerInternal;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 358
    new-instance v1, Lcom/android/server/location/AppOpsHelper;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/location/AppOpsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    .line 359
    iput-object p2, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    .line 360
    new-instance v1, Lcom/android/server/location/SettingsHelper;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/SettingsHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    .line 361
    new-instance v1, Lcom/android/server/location/AppForegroundHelper;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/location/AppForegroundHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    .line 362
    new-instance v1, Lcom/android/server/location/LocationUsageLogger;

    invoke-direct {v1}, Lcom/android/server/location/LocationUsageLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    .line 368
    new-instance v1, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

    .line 369
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

    new-instance v1, Lcom/android/server/location/PassiveProvider;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 374
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 378
    .local v0, "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    sget-object v1, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    const-string v2, "CHN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_137

    sget-object v1, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    const-string v2, "CHC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_137

    sget-object v1, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    const-string v2, "CHU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_137

    sget-object v1, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    const-string v2, "CTC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_137

    sget-object v1, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    const-string v2, "CHM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e

    goto :goto_137

    .line 384
    :cond_12e
    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$6OCuateQj_yVMsW-SFSfx_8hszQ;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$6OCuateQj_yVMsW-SFSfx_8hszQ;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setLocationPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    goto :goto_143

    .line 379
    :cond_137
    :goto_137
    const v1, 0x10700c3

    .line 380
    .local v1, "id_config_locationProviderPackageNames":I
    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$4Os2sPbRizc5gZ-TgfrD1QAI5xM;

    invoke-direct {v2, p0, v1}, Lcom/android/server/location/-$$Lambda$LocationManagerService$4Os2sPbRizc5gZ-TgfrD1QAI5xM;-><init>(Lcom/android/server/location/LocationManagerService;I)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setLocationPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 383
    .end local v1    # "id_config_locationProviderPackageNames":I
    nop

    .line 390
    :goto_143
    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$B8THJI0HjmYlTHPt2eckgxYSvCc;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$B8THJI0HjmYlTHPt2eckgxYSvCc;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 395
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/location/UserInfoHelper;Lcom/android/server/location/LocationManagerService$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/server/location/UserInfoHelper;
    .param p3, "x2"    # Lcom/android/server/location/LocationManagerService$1;

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/UserInfoHelper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/location/LocationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Z

    .line 182
    iput-boolean p1, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->recoverRealProviderLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/SettingsHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/UserInfoHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onSystemReady()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$LocationProviderManager;Landroid/location/Location;Landroid/location/Location;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .param p2, "x2"    # Landroid/location/Location;
    .param p3, "x3"    # Landroid/location/Location;

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/LocationManagerService;->handleLocationChangedLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;Landroid/location/Location;Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/location/LocationManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$LocationProviderManager;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .param p2, "x2"    # Z

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->updateProviderEnabledLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/location/LocationManagerService;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->isSLocationRequest(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$Receiver;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/location/LocationManagerService$Receiver;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onSystemThirdPartyAppsCanStart()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppForegroundHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/LocationUsageLogger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/location/LocationManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # I

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->onProcessDiedLocked(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/location/LocationManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/NSLocationMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocListenerBlocklist:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/location/LocationManagerService;)[Landroid/location/LocationConstants$LISTENER_TYPE;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mListenerType:[Landroid/location/LocationConstants$LISTENER_TYPE;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->onPackageDisappeared(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->onPackageRemovedLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/LocationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onScreenStateChanged()V

    return-void
.end method

.method private applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V
    .registers 27
    .param p1, "manager"    # Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 1897
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1898
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    new-instance v3, Lcom/android/internal/location/ProviderRequest$Builder;

    invoke-direct {v3}, Lcom/android/internal/location/ProviderRequest$Builder;-><init>()V

    .line 1903
    .local v3, "providerRequest":Lcom/android/internal/location/ProviderRequest$Builder;
    const/4 v4, 0x0

    .line 1905
    .local v4, "hasNaviApp":Z
    const/4 v5, 0x0

    .line 1907
    .local v5, "settingsIgnoredPackageName":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v7, "gps"

    if-eqz v6, :cond_23d

    if-eqz v2, :cond_23d

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_23d

    .line 1908
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottleIntervalMs()J

    move-result-wide v8

    .line 1910
    .local v8, "backgroundThrottleInterval":J
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1912
    .local v6, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/LocationRequest;>;"
    iget v10, v0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-ne v10, v11, :cond_41

    move v10, v12

    goto :goto_42

    :cond_41
    const/4 v10, 0x0

    .line 1914
    .local v10, "isForegroundOnlyMode":Z
    :goto_42
    iget v11, v0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    const/4 v14, 0x4

    if-ne v11, v14, :cond_51

    iget-object v11, v0, Lcom/android/server/location/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 1917
    invoke-virtual {v11}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v11

    if-nez v11, :cond_51

    move v11, v12

    goto :goto_52

    :cond_51
    const/4 v11, 0x0

    .line 1919
    .local v11, "shouldThrottleRequests":Z
    :goto_52
    invoke-virtual {v3, v12}, Lcom/android/internal/location/ProviderRequest$Builder;->setLowPowerMode(Z)Lcom/android/internal/location/ProviderRequest$Builder;

    .line 1920
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_59
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_195

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 1921
    .local v15, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v15}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 1922
    .local v13, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v12, v0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    move-object/from16 v19, v5

    .end local v5    # "settingsIgnoredPackageName":Ljava/lang/String;
    .local v19, "settingsIgnoredPackageName":Ljava/lang/String;
    iget v5, v13, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v12, v5}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v5

    if-nez v5, :cond_88

    .line 1923
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v15}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->uid:I

    const/16 v12, 0x3e8

    if-eq v5, v12, :cond_88

    .line 1924
    move-object/from16 v21, v2

    move-object/from16 v20, v14

    goto :goto_c0

    .line 1927
    :cond_88
    iget-object v5, v0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v5, v13}, Lcom/android/server/location/AppOpsHelper;->checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v5

    if-nez v5, :cond_a1

    .line 1928
    iget-object v5, v0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v15}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v12

    move-object/from16 v20, v14

    sget-object v14, Landroid/location/LocationConstants$PAUSED_BY;->APP_OPS:Landroid/location/LocationConstants$PAUSED_BY;

    move-object/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .local v21, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    invoke-virtual {v5, v12, v2, v14}, Lcom/android/server/location/NSLocationMonitor;->updateReceiverAccessStatus(Lcom/android/server/location/LocationManagerService$Receiver;ZLandroid/location/LocationConstants$PAUSED_BY;)V

    .line 1929
    goto :goto_c0

    .line 1932
    .end local v21    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .restart local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    :cond_a1
    move-object/from16 v21, v2

    move-object/from16 v20, v14

    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .restart local v21    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mFreezedUid:Ljava/util/HashSet;

    iget v5, v13, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 1933
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v15}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v5

    sget-object v12, Landroid/location/LocationConstants$PAUSED_BY;->FREEZE:Landroid/location/LocationConstants$PAUSED_BY;

    const/4 v14, 0x0

    invoke-virtual {v2, v5, v14, v12}, Lcom/android/server/location/NSLocationMonitor;->updateReceiverAccessStatus(Lcom/android/server/location/LocationManagerService$Receiver;ZLandroid/location/LocationConstants$PAUSED_BY;)V

    .line 1934
    nop

    .line 1920
    .end local v13    # "identity":Lcom/android/server/location/CallerIdentity;
    .end local v15    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    :goto_c0
    move-object/from16 v5, v19

    move-object/from16 v14, v20

    move-object/from16 v2, v21

    const/4 v12, 0x1

    goto :goto_59

    .line 1936
    .restart local v13    # "identity":Lcom/android/server/location/CallerIdentity;
    .restart local v15    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    :cond_c8
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v15}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v5

    const/4 v12, 0x0

    const/4 v14, 0x1

    invoke-virtual {v2, v5, v14, v12}, Lcom/android/server/location/NSLocationMonitor;->updateReceiverAccessStatus(Lcom/android/server/location/LocationManagerService$Receiver;ZLandroid/location/LocationConstants$PAUSED_BY;)V

    .line 1941
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    if-nez v4, :cond_e6

    invoke-direct {v0, v15}, Lcom/android/server/location/LocationManagerService;->isNavigationApp(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 1942
    const/4 v4, 0x1

    .line 1946
    :cond_e6
    if-nez v11, :cond_f3

    if-eqz v10, :cond_f1

    .line 1947
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z
    invoke-static {v15}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v2

    if-nez v2, :cond_f1

    goto :goto_f3

    :cond_f1
    const/4 v2, 0x0

    goto :goto_f4

    :cond_f3
    :goto_f3
    const/4 v2, 0x1

    .line 1949
    .local v2, "isBatterySaverDisablingLocation":Z
    :goto_f4
    iget v5, v13, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v1, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_fe

    if-eqz v2, :cond_124

    .line 1950
    :cond_fe
    invoke-direct {v0, v15}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-eqz v5, :cond_115

    .line 1951
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/internal/location/ProviderRequest$Builder;->setLocationSettingsIgnored(Z)Lcom/android/internal/location/ProviderRequest$Builder;

    .line 1952
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/internal/location/ProviderRequest$Builder;->setLowPowerMode(Z)Lcom/android/internal/location/ProviderRequest$Builder;

    .line 1954
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v15}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v5, v5, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    .end local v19    # "settingsIgnoredPackageName":Ljava/lang/String;
    .restart local v5    # "settingsIgnoredPackageName":Ljava/lang/String;
    goto :goto_126

    .line 1956
    .end local v5    # "settingsIgnoredPackageName":Ljava/lang/String;
    .restart local v19    # "settingsIgnoredPackageName":Ljava/lang/String;
    :cond_115
    invoke-direct {v0, v15}, Lcom/android/server/location/LocationManagerService;->isSLocationRequest(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-nez v5, :cond_124

    .line 1957
    move-object/from16 v5, v19

    move-object/from16 v14, v20

    move-object/from16 v2, v21

    const/4 v12, 0x1

    goto/16 :goto_59

    .line 1962
    :cond_124
    move-object/from16 v5, v19

    .end local v19    # "settingsIgnoredPackageName":Ljava/lang/String;
    .restart local v5    # "settingsIgnoredPackageName":Ljava/lang/String;
    :goto_126
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;
    invoke-static {v15}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3100(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v12

    .line 1963
    .local v12, "locationRequest":Landroid/location/LocationRequest;
    move v14, v4

    move-object/from16 v18, v5

    .end local v4    # "hasNaviApp":Z
    .end local v5    # "settingsIgnoredPackageName":Ljava/lang/String;
    .local v14, "hasNaviApp":Z
    .local v18, "settingsIgnoredPackageName":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v4

    .line 1967
    .local v4, "interval":J
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->isLocationSettingsIgnored()Z

    move-result v19

    if-nez v19, :cond_161

    .line 1968
    move/from16 v22, v2

    .end local v2    # "isBatterySaverDisablingLocation":Z
    .local v22, "isBatterySaverDisablingLocation":Z
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v15}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 1967
    invoke-direct {v0, v2}, Lcom/android/server/location/LocationManagerService;->isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z

    move-result v2

    if-nez v2, :cond_163

    .line 1969
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z
    invoke-static {v15}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v2

    if-nez v2, :cond_14f

    .line 1970
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1972
    :cond_14f
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v23

    cmp-long v2, v4, v23

    if-eqz v2, :cond_163

    .line 1973
    new-instance v2, Landroid/location/LocationRequest;

    invoke-direct {v2, v12}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    move-object v12, v2

    .line 1974
    invoke-virtual {v12, v4, v5}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    goto :goto_163

    .line 1967
    .end local v22    # "isBatterySaverDisablingLocation":Z
    .restart local v2    # "isBatterySaverDisablingLocation":Z
    :cond_161
    move/from16 v22, v2

    .line 1978
    .end local v2    # "isBatterySaverDisablingLocation":Z
    .restart local v22    # "isBatterySaverDisablingLocation":Z
    :cond_163
    :goto_163
    iput-object v12, v15, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1981
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v15}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v2

    move-wide/from16 v23, v8

    const/4 v8, 0x1

    .end local v8    # "backgroundThrottleInterval":J
    .local v23, "backgroundThrottleInterval":J
    invoke-virtual {v2, v8}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1982
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1983
    invoke-virtual {v12}, Landroid/location/LocationRequest;->isLowPowerMode()Z

    move-result v2

    if-nez v2, :cond_17d

    .line 1984
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/internal/location/ProviderRequest$Builder;->setLowPowerMode(Z)Lcom/android/internal/location/ProviderRequest$Builder;

    goto :goto_17e

    .line 1983
    :cond_17d
    const/4 v2, 0x0

    .line 1986
    :goto_17e
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getInterval()J

    move-result-wide v16

    cmp-long v9, v4, v16

    if-gez v9, :cond_189

    .line 1987
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/location/ProviderRequest$Builder;->setInterval(J)Lcom/android/internal/location/ProviderRequest$Builder;

    .line 1989
    .end local v4    # "interval":J
    .end local v12    # "locationRequest":Landroid/location/LocationRequest;
    .end local v13    # "identity":Lcom/android/server/location/CallerIdentity;
    .end local v15    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .end local v22    # "isBatterySaverDisablingLocation":Z
    :cond_189
    move v12, v8

    move v4, v14

    move-object/from16 v5, v18

    move-object/from16 v14, v20

    move-object/from16 v2, v21

    move-wide/from16 v8, v23

    goto/16 :goto_59

    .line 1991
    .end local v14    # "hasNaviApp":Z
    .end local v18    # "settingsIgnoredPackageName":Ljava/lang/String;
    .end local v21    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .end local v23    # "backgroundThrottleInterval":J
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .local v4, "hasNaviApp":Z
    .restart local v5    # "settingsIgnoredPackageName":Ljava/lang/String;
    .restart local v8    # "backgroundThrottleInterval":J
    :cond_195
    move-object/from16 v21, v2

    move-object/from16 v19, v5

    move-wide/from16 v23, v8

    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .end local v5    # "settingsIgnoredPackageName":Ljava/lang/String;
    .end local v8    # "backgroundThrottleInterval":J
    .restart local v19    # "settingsIgnoredPackageName":Ljava/lang/String;
    .restart local v21    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .restart local v23    # "backgroundThrottleInterval":J
    invoke-virtual {v3, v6}, Lcom/android/internal/location/ProviderRequest$Builder;->setLocationRequests(Ljava/util/List;)Lcom/android/internal/location/ProviderRequest$Builder;

    .line 1993
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getInterval()J

    move-result-wide v8

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v2, v8, v12

    if-gez v2, :cond_23a

    .line 2000
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getInterval()J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    add-long/2addr v8, v12

    const-wide/16 v12, 0x3

    mul-long/2addr v8, v12

    const-wide/16 v12, 0x2

    div-long/2addr v8, v12

    .line 2001
    .local v8, "thresholdInterval":J
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1bc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2002
    .local v5, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    iget-object v12, v0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    .line 2003
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v13, v13, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 2002
    invoke-virtual {v12, v13}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v12

    if-nez v12, :cond_1e9

    .line 2004
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v12, v12, Lcom/android/server/location/CallerIdentity;->uid:I

    const/16 v13, 0x3e8

    if-ne v12, v13, :cond_239

    goto :goto_1eb

    .line 2002
    :cond_1e9
    const/16 v13, 0x3e8

    .line 2005
    :goto_1eb
    iget-object v12, v5, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 2009
    .restart local v12    # "locationRequest":Landroid/location/LocationRequest;
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getLocationRequests()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1f8

    .line 2010
    goto :goto_1bc

    .line 2013
    :cond_1f8
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v14

    cmp-long v14, v14, v8

    if-gtz v14, :cond_239

    .line 2014
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v14, :cond_222

    .line 2015
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {v14}, Lcom/android/server/location/LocationManagerService;->isValidWorkSource(Landroid/os/WorkSource;)Z

    move-result v14

    if-eqz v14, :cond_222

    .line 2016
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v14

    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v14, v15}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_239

    .line 2020
    :cond_222
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v14

    .line 2021
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->uid:I

    .line 2022
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v13, v13, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    .line 2020
    invoke-virtual {v14, v15, v13}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    .line 2026
    .end local v5    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .end local v12    # "locationRequest":Landroid/location/LocationRequest;
    :cond_239
    :goto_239
    goto :goto_1bc

    .line 2030
    .end local v6    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/LocationRequest;>;"
    .end local v8    # "thresholdInterval":J
    .end local v10    # "isForegroundOnlyMode":Z
    .end local v11    # "shouldThrottleRequests":Z
    .end local v23    # "backgroundThrottleInterval":J
    :cond_23a
    move-object/from16 v5, v19

    goto :goto_23f

    .line 1907
    .end local v19    # "settingsIgnoredPackageName":Ljava/lang/String;
    .end local v21    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .restart local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .local v5, "settingsIgnoredPackageName":Ljava/lang/String;
    :cond_23d
    move-object/from16 v21, v2

    .line 2030
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .restart local v21    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    :goto_23f
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->build()Lcom/android/internal/location/ProviderRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRequest(Lcom/android/internal/location/ProviderRequest;)V

    .line 2033
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26b

    iget-boolean v2, v0, Lcom/android/server/location/LocationManagerService;->mHasNaviApp:Z

    if-eq v2, v4, :cond_26b

    .line 2034
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2035
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "mode"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2036
    const-string v6, "chn_navi_mode"

    invoke-virtual {v0, v7, v6, v2}, Lcom/android/server/location/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 2037
    iput-boolean v4, v0, Lcom/android/server/location/LocationManagerService;->mHasNaviApp:Z

    .line 2039
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    invoke-virtual {v6, v4}, Lcom/android/server/location/NSLocationMonitor;->sendChinaNaviMode(Z)V

    .line 2044
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_26b
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->isLocationSettingsIgnored()Z

    move-result v2

    .line 2045
    .local v2, "isSettingsIgnored":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2046
    .local v6, "providerName":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mSettingsIgoredByProvider:Ljava/util/HashMap;

    sget-object v8, Lcom/android/server/location/-$$Lambda$LocationManagerService$fvmVBpPzO2vcAxJrLCiCmX-lXoA;->INSTANCE:Lcom/android/server/location/-$$Lambda$LocationManagerService$fvmVBpPzO2vcAxJrLCiCmX-lXoA;

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 2048
    .local v7, "prevSettingsIgnored":Z
    if-eq v2, v7, :cond_291

    .line 2049
    iget-object v8, v0, Lcom/android/server/location/LocationManagerService;->mSettingsIgoredByProvider:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    iget-object v8, v0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    invoke-virtual {v8, v6, v2, v5}, Lcom/android/server/location/NSLocationMonitor;->sendSettingsIgnoreInfo(Ljava/lang/String;ZLjava/lang/String;)V

    .line 2054
    :cond_291
    return-void
.end method

.method private applyRequirementsLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "providerName"    # Ljava/lang/String;

    .line 1878
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    .line 1879
    .local v0, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-eqz v0, :cond_9

    .line 1880
    invoke-direct {p0, v0}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 1882
    :cond_9
    return-void
.end method

.method private cancelNotificationForMockLocation()V
    .registers 6

    .line 3183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3185
    .local v0, "callingIdentity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 3186
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3187
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mProcessListener:Lcom/android/server/location/LocationManagerService$ProcessListener;

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->semUnregisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 3189
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3190
    nop

    .line 3191
    return-void

    .line 3189
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3190
    throw v2
.end method

.method private createNotificationForMockLocation(Ljava/lang/String;)V
    .registers 25
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 3135
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "Mock Location Reminder"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3137
    .local v3, "callingIdentity":J
    :try_start_a
    iget-object v5, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3138
    .local v5, "resources":Landroid/content/res/Resources;
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 3139
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    const v7, 0x10406e0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3140
    .local v8, "notificationChannelName":Ljava/lang/CharSequence;
    new-instance v9, Landroid/app/NotificationChannel;

    const/4 v10, 0x4

    invoke-direct {v9, v0, v8, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 3141
    .local v9, "mockReminderChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v6, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 3142
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.android.location.mock.delete"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3143
    .local v10, "clickIntent":Landroid/content/Intent;
    const-string v11, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v10, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3146
    iget-object v11, v1, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x40

    invoke-virtual {v11, v2, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 3147
    .local v11, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v12, v1, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v13, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 3148
    .local v12, "pkgLabel":Ljava/lang/CharSequence;
    iget-object v13, v1, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v14, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 3149
    .local v13, "pkgIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v15, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3150
    .local v7, "pkgIconBmp":Landroid/graphics/Bitmap;
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3151
    .local v14, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    move-object/from16 v17, v8

    .end local v8    # "notificationChannelName":Ljava/lang/CharSequence;
    .local v17, "notificationChannelName":Ljava/lang/CharSequence;
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    move-object/from16 v18, v9

    .end local v9    # "mockReminderChannel":Landroid/app/NotificationChannel;
    .local v18, "mockReminderChannel":Landroid/app/NotificationChannel;
    const/4 v9, 0x0

    invoke-virtual {v13, v9, v9, v15, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3152
    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3153
    const v8, 0x10406e0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3154
    .local v8, "title":Ljava/lang/CharSequence;
    const/4 v15, 0x1

    new-array v9, v15, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v12, v9, v19

    const v15, 0x10406de

    invoke-virtual {v5, v15, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 3155
    .local v9, "msg":Ljava/lang/CharSequence;
    new-instance v15, Landroid/app/Notification$Action$Builder;

    move-object/from16 v16, v11

    .end local v11    # "pInfo":Landroid/content/pm/PackageInfo;
    .local v16, "pInfo":Landroid/content/pm/PackageInfo;
    const v11, 0x10406df

    .line 3157
    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v20, v5

    .end local v5    # "resources":Landroid/content/res/Resources;
    .local v20, "resources":Landroid/content/res/Resources;
    iget-object v5, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v12

    .end local v12    # "pkgLabel":Ljava/lang/CharSequence;
    .local v21, "pkgLabel":Ljava/lang/CharSequence;
    const/high16 v12, 0x48000000    # 131072.0f

    .line 3158
    move-object/from16 v22, v13

    const/4 v13, 0x0

    .end local v13    # "pkgIcon":Landroid/graphics/drawable/Drawable;
    .local v22, "pkgIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {v5, v13, v10, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const/4 v12, 0x0

    invoke-direct {v15, v12, v11, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3162
    invoke-virtual {v15}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    .line 3163
    .local v5, "removeMockLocationAction":Landroid/app/Notification$Action;
    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v12, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3164
    invoke-virtual {v11, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3165
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v11, 0x1080577

    .line 3166
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3167
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3168
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v11, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v11}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 3169
    invoke-virtual {v11, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/app/Notification$Action;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    .line 3170
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3171
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 3172
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {v6, v12, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3174
    iget-object v11, v1, Lcom/android/server/location/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v12, v1, Lcom/android/server/location/LocationManagerService;->mProcessListener:Lcom/android/server/location/LocationManagerService$ProcessListener;

    invoke-virtual {v11, v12}, Landroid/app/ActivityManager;->semRegisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V
    :try_end_f0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_f0} :catch_f3
    .catchall {:try_start_a .. :try_end_f0} :catchall_f1

    .line 3178
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v5    # "removeMockLocationAction":Landroid/app/Notification$Action;
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    .end local v7    # "pkgIconBmp":Landroid/graphics/Bitmap;
    .end local v8    # "title":Ljava/lang/CharSequence;
    .end local v9    # "msg":Ljava/lang/CharSequence;
    .end local v10    # "clickIntent":Landroid/content/Intent;
    .end local v14    # "canvas":Landroid/graphics/Canvas;
    .end local v16    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "notificationChannelName":Ljava/lang/CharSequence;
    .end local v18    # "mockReminderChannel":Landroid/app/NotificationChannel;
    .end local v20    # "resources":Landroid/content/res/Resources;
    .end local v21    # "pkgLabel":Ljava/lang/CharSequence;
    .end local v22    # "pkgIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_10c

    :catchall_f1
    move-exception v0

    goto :goto_111

    .line 3175
    :catch_f3
    move-exception v0

    .line 3176
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_f4
    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "missing package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catchall {:try_start_f4 .. :try_end_10b} :catchall_f1

    .line 3178
    nop

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_10c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3179
    nop

    .line 3180
    return-void

    .line 3178
    :goto_111
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3179
    throw v0
.end method

.method private createSanitizedRequest(Landroid/location/LocationRequest;Lcom/android/server/location/CallerIdentity;Z)Landroid/location/LocationRequest;
    .registers 9
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "identity"    # Lcom/android/server/location/CallerIdentity;
    .param p3, "callerHasLocationHardwarePermission"    # Z

    .line 2293
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    .line 2294
    .local v0, "sanitizedRequest":Landroid/location/LocationRequest;
    if-nez p3, :cond_b

    .line 2296
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setLowPowerMode(Z)Landroid/location/LocationRequest;

    .line 2298
    :cond_b
    iget v1, p2, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_42

    .line 2299
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_23

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1d

    goto :goto_29

    .line 2304
    :cond_1d
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_29

    .line 2301
    :cond_23
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 2302
    nop

    .line 2308
    :goto_29
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-gez v1, :cond_37

    .line 2309
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 2311
    :cond_37
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_42

    .line 2312
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 2316
    :cond_42
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_55

    .line 2317
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 2319
    :cond_55
    return-object v0
.end method

.method private getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .registers 5
    .param p1, "providerName"    # Ljava/lang/String;

    .line 1770
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 1771
    .local v1, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1772
    return-object v1

    .line 1774
    .end local v1    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_1d
    goto :goto_6

    .line 1776
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private getReceiverLocked(Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;
    .registers 15
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "identity"    # Lcom/android/server/location/CallerIdentity;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "hideFromAppOps"    # Z

    .line 2274
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 2275
    .local v0, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    if-nez v0, :cond_1f

    if-eqz p2, :cond_1f

    .line 2276
    new-instance v9, Lcom/android/server/location/LocationManagerService$Receiver;

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/LocationManagerService$Receiver;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;ZLcom/android/server/location/LocationManagerService$1;)V

    move-object v0, v9

    .line 2278
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2280
    :cond_1f
    return-object v0
.end method

.method private getReceiverLocked(Landroid/location/ILocationListener;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;
    .registers 16
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "identity"    # Lcom/android/server/location/CallerIdentity;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "hideFromAppOps"    # Z

    .line 2257
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2258
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 2259
    .local v1, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    if-nez v1, :cond_34

    if-eqz p2, :cond_34

    .line 2260
    new-instance v10, Lcom/android/server/location/LocationManagerService$Receiver;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/location/LocationManagerService$Receiver;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;ZLcom/android/server/location/LocationManagerService$1;)V

    move-object v1, v10

    .line 2262
    nop

    .line 2263
    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2262
    invoke-virtual {v1, v2}, Lcom/android/server/location/LocationManagerService$Receiver;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2264
    const/4 v2, 0x0

    return-object v2

    .line 2266
    :cond_2f
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    :cond_34
    return-object v1
.end method

.method private handleLocationChangedLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;Landroid/location/Location;Landroid/location/Location;)V
    .registers 25
    .param p1, "manager"    # Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .param p2, "fineLocation"    # Landroid/location/Location;
    .param p3, "coarseLocation"    # Landroid/location/Location;

    .line 2910
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v7, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v10, "LocationManagerService"

    if-nez v0, :cond_2a

    .line 2911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "received location from unknown provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    return-void

    .line 2916
    :cond_2a
    iget-object v0, v7, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

    if-eq v8, v0, :cond_36

    .line 2917
    invoke-virtual {v0, v9}, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->updateLocation(Landroid/location/Location;)V

    .line 2918
    iget-object v0, v7, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    invoke-virtual {v0, v9}, Lcom/android/server/location/NSLocationMonitor;->sendPassiveLocation(Landroid/location/Location;)V

    .line 2921
    :cond_36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 2923
    .local v11, "now":J
    iget-object v0, v7, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/ArrayList;

    .line 2924
    .local v13, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    if-eqz v13, :cond_1b3

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_53

    move-object/from16 v19, v13

    goto/16 :goto_1b5

    .line 2926
    :cond_53
    const/4 v0, 0x0

    .line 2927
    .local v0, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    const/4 v1, 0x0

    .line 2930
    .local v1, "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v14

    .line 2933
    .local v14, "managerName":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .end local v0    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    .end local v1    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .local v16, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    .local v17, "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    :goto_61
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_181

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2934
    .local v6, "r":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v6}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v4

    .line 2935
    .local v4, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    iget-object v5, v4, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 2936
    .local v5, "identity":Lcom/android/server/location/CallerIdentity;
    const/16 v18, 0x0

    .line 2938
    .local v18, "receiverDead":Z
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v6}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v0, v0, Lcom/android/server/location/CallerIdentity;->uid:I

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_c1

    .line 2939
    iget v0, v5, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v8, v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_97

    invoke-direct {v7, v6}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 2940
    move-object/from16 v19, v13

    move-object/from16 v20, v15

    goto/16 :goto_121

    .line 2943
    :cond_97
    iget-object v0, v7, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    iget v2, v5, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v0, v2}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v0

    if-nez v0, :cond_af

    iget-object v0, v5, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    .line 2944
    invoke-virtual {v7, v0}, Lcom/android/server/location/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_af

    .line 2945
    move-object/from16 v19, v13

    move-object/from16 v20, v15

    goto/16 :goto_121

    .line 2948
    :cond_af
    iget-object v0, v7, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    iget v2, v5, Lcom/android/server/location/CallerIdentity;->userId:I

    iget-object v3, v5, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/location/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 2950
    move-object/from16 v19, v13

    move-object/from16 v20, v15

    goto/16 :goto_121

    .line 2955
    :cond_c1
    iget v0, v5, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    if-eq v0, v1, :cond_d2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_cc

    .line 2960
    move-object/from16 v0, p2

    .line 2961
    .local v0, "location":Landroid/location/Location;
    move-object v3, v0

    goto :goto_d5

    .line 2963
    .end local v0    # "location":Landroid/location/Location;
    :cond_cc
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2957
    :cond_d2
    move-object/from16 v0, p3

    .line 2958
    .restart local v0    # "location":Landroid/location/Location;
    move-object v3, v0

    .line 2966
    .end local v0    # "location":Landroid/location/Location;
    .local v3, "location":Landroid/location/Location;
    :goto_d5
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;
    invoke-static {v6}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$4100(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/Location;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v8, v3

    .end local v3    # "location":Landroid/location/Location;
    .local v8, "location":Landroid/location/Location;
    move-object v3, v6

    move-object v9, v4

    move-object/from16 v19, v13

    move-object v13, v5

    .end local v4    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    .end local v5    # "identity":Lcom/android/server/location/CallerIdentity;
    .local v9, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    .local v13, "identity":Lcom/android/server/location/CallerIdentity;
    .local v19, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    move-wide v4, v11

    move-object/from16 v20, v15

    move-object v15, v6

    .end local v6    # "r":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .local v15, "r":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/LocationManagerService;->shouldBroadcastSafeLocked(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/location/LocationManagerService$UpdateRecord;JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 2967
    # setter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;
    invoke-static {v15, v8}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$4102(Lcom/android/server/location/LocationManagerService$UpdateRecord;Landroid/location/Location;)Landroid/location/Location;

    .line 2970
    iget-object v0, v7, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    iget-object v1, v9, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->noteLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 2971
    goto :goto_121

    .line 2975
    :cond_fb
    iget-object v0, v7, Lcom/android/server/location/LocationManagerService;->mFreezedUid:Ljava/util/HashSet;

    iget v1, v13, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 2976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "skipping loc update for freezed app :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    nop

    .line 2933
    .end local v8    # "location":Landroid/location/Location;
    .end local v9    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    .end local v15    # "r":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .end local v18    # "receiverDead":Z
    .end local v19    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .local v13, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    :goto_121
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v13, v19

    move-object/from16 v15, v20

    .end local v13    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .restart local v19    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    goto/16 :goto_61

    .line 2981
    .restart local v8    # "location":Landroid/location/Location;
    .restart local v9    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    .local v13, "identity":Lcom/android/server/location/CallerIdentity;
    .restart local v15    # "r":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .restart local v18    # "receiverDead":Z
    :cond_12b
    invoke-virtual {v9, v8}, Lcom/android/server/location/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_134

    .line 2982
    const/4 v0, 0x1

    move/from16 v18, v0

    .line 2984
    :cond_134
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;
    invoke-static {v15}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3100(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->decrementNumUpdates()V

    .line 2988
    :cond_13b
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;
    invoke-static {v15}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3100(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v0

    if-lez v0, :cond_14d

    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mExpirationRealtimeMs:J
    invoke-static {v15}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/location/LocationManagerService$UpdateRecord;)J

    move-result-wide v0

    cmp-long v0, v0, v11

    if-gez v0, :cond_15e

    .line 2992
    :cond_14d
    if-nez v17, :cond_157

    .line 2993
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v0

    goto :goto_159

    .line 2992
    :cond_157
    move-object/from16 v0, v17

    .line 2995
    .end local v17    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .local v0, "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    :goto_159
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v0

    .line 2998
    .end local v0    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .restart local v17    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    :cond_15e
    if-eqz v18, :cond_177

    .line 2999
    if-nez v16, :cond_16a

    .line 3000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    goto :goto_16c

    .line 2999
    :cond_16a
    move-object/from16 v0, v16

    .line 3002
    .end local v16    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    .local v0, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    :goto_16c
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    .line 3003
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3006
    .end local v8    # "location":Landroid/location/Location;
    .end local v9    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    .end local v13    # "identity":Lcom/android/server/location/CallerIdentity;
    .end local v15    # "r":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .end local v18    # "receiverDead":Z
    :cond_175
    move-object/from16 v16, v0

    .end local v0    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    .restart local v16    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    :cond_177
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v13, v19

    move-object/from16 v15, v20

    goto/16 :goto_61

    .line 3009
    .end local v19    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .local v13, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    :cond_181
    move-object/from16 v19, v13

    .end local v13    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .restart local v19    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    if-eqz v16, :cond_199

    .line 3010
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_189
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_199

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 3011
    .local v2, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-direct {v7, v2}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    .line 3012
    .end local v2    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    goto :goto_189

    .line 3014
    :cond_199
    if-eqz v17, :cond_1b2

    .line 3015
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 3016
    .local v2, "r":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    # invokes: Lcom/android/server/location/LocationManagerService$UpdateRecord;->disposeLocked(Z)V
    invoke-static {v2, v1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3800(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V

    .line 3017
    .end local v2    # "r":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    goto :goto_19f

    .line 3018
    :cond_1af
    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 3020
    :cond_1b2
    return-void

    .line 2924
    .end local v14    # "managerName":Ljava/lang/String;
    .end local v16    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    .end local v17    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .end local v19    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .restart local v13    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    :cond_1b3
    move-object/from16 v19, v13

    .end local v13    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    .restart local v19    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    :goto_1b5
    return-void
.end method

.method private initializeGnss()V
    .registers 9

    .line 927
    invoke-static {}, Lcom/android/server/location/gnss/GnssManagerService;->isGnssSupported()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 928
    new-instance v0, Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 929
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/gnss/GnssManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/AppOpsHelper;Lcom/android/server/location/SettingsHelper;Lcom/android/server/location/AppForegroundHelper;Lcom/android/server/location/LocationUsageLogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 930
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssManagerService;->setCallback(Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;)V

    .line 931
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->onSystemReady()V

    .line 933
    new-instance v0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    const/4 v1, 0x0

    const-string/jumbo v2, "gps"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    .line 934
    .local v0, "gnssManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 935
    :try_start_36
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_5e

    .line 937
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssLocationProvider()Lcom/android/server/location/gnss/GnssLocationProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 940
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssManagerService;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v1

    .line 941
    .local v1, "gpsGeofenceHardware":Landroid/location/IGpsGeofenceHardware;
    if-eqz v1, :cond_61

    .line 942
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    move-result-object v2

    .line 943
    .local v2, "provider":Lcom/android/server/location/GeofenceProxy;
    if-nez v2, :cond_61

    .line 944
    const-string v3, "LocationManagerService"

    const-string/jumbo v4, "unable to bind to GeofenceProxy"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 936
    .end local v1    # "gpsGeofenceHardware":Landroid/location/IGpsGeofenceHardware;
    .end local v2    # "provider":Lcom/android/server/location/GeofenceProxy;
    :catchall_5e
    move-exception v2

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v2

    .line 948
    .end local v0    # "gnssManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_61
    :goto_61
    return-void
.end method

.method private initializeProvidersLocked()V
    .registers 25

    .line 764
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.android.location.service.v3.NetworkLocationProvider"

    const v3, 0x111007c

    const v4, 0x1040304

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/location/LocationProviderProxy;->createAndRegister(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    .line 769
    .local v1, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    const/4 v2, 0x0

    const-string v3, "LocationManagerService"

    if-eqz v1, :cond_26

    .line 770
    new-instance v4, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    const-string/jumbo v5, "network"

    invoke-direct {v4, v0, v5, v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    .line 771
    .local v4, "networkManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    iget-object v5, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    invoke-virtual {v4, v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 773
    .end local v4    # "networkManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_2c

    .line 774
    :cond_26
    const-string/jumbo v4, "no network location provider found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :goto_2c
    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x180000

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 780
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 778
    const-string v7, "Unable to find a direct boot aware fused location provider"

    invoke-static {v4, v7}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 784
    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1110075

    const v9, 0x10402e9

    invoke-static {v4, v6, v7, v9}, Lcom/android/server/location/LocationProviderProxy;->createAndRegister(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v4

    .line 789
    .local v4, "fusedProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v4, :cond_69

    .line 790
    new-instance v6, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    const-string v7, "fused"

    invoke-direct {v6, v0, v7, v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    .line 791
    .local v6, "fusedManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    invoke-virtual {v6, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 793
    .end local v6    # "fusedManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_6f

    .line 794
    :cond_69
    const-string/jumbo v6, "no fused location provider found"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :goto_6f
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/location/GeocoderProxy;->createAndRegister(Landroid/content/Context;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 799
    if-nez v6, :cond_7f

    .line 800
    const-string/jumbo v6, "no geocoder provider found"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_7f
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 805
    invoke-static {v6}, Lcom/android/server/location/HardwareActivityRecognitionProxy;->createAndRegister(Landroid/content/Context;)Lcom/android/server/location/HardwareActivityRecognitionProxy;

    move-result-object v6

    .line 806
    .local v6, "hardwareActivityRecognitionProxy":Lcom/android/server/location/HardwareActivityRecognitionProxy;
    if-nez v6, :cond_8d

    .line 807
    const-string/jumbo v7, "unable to bind ActivityRecognitionProxy"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_8d
    iget-object v3, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x10700eb

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 812
    .local v3, "testProviderStrings":[Ljava/lang/String;
    array-length v7, v3

    move v9, v8

    :goto_9c
    if-ge v9, v7, :cond_10f

    aget-object v10, v3, v9

    .line 813
    .local v10, "testProviderString":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 814
    .local v11, "fragments":[Ljava/lang/String;
    aget-object v12, v11, v8

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 815
    .local v12, "name":Ljava/lang/String;
    new-instance v23, Lcom/android/internal/location/ProviderProperties;

    aget-object v13, v11, v5

    .line 816
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    const/4 v13, 0x2

    aget-object v13, v11, v13

    .line 817
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    const/4 v13, 0x3

    aget-object v13, v11, v13

    .line 818
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    const/4 v13, 0x4

    aget-object v13, v11, v13

    .line 819
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    const/4 v13, 0x5

    aget-object v13, v11, v13

    .line 820
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    const/4 v13, 0x6

    aget-object v13, v11, v13

    .line 821
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    const/4 v13, 0x7

    aget-object v13, v11, v13

    .line 822
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    const/16 v13, 0x8

    aget-object v13, v11, v13

    .line 823
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v13, 0x9

    aget-object v13, v11, v13

    .line 824
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v13, v23

    invoke-direct/range {v13 .. v22}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 825
    .local v13, "properties":Lcom/android/internal/location/ProviderProperties;
    invoke-direct {v0, v12}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v14

    .line 826
    .local v14, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v14, :cond_104

    .line 827
    new-instance v15, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-direct {v15, v0, v12, v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    move-object v14, v15

    .line 828
    iget-object v15, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_104
    new-instance v15, Lcom/android/server/location/MockProvider;

    invoke-direct {v15, v13}, Lcom/android/server/location/MockProvider;-><init>(Lcom/android/internal/location/ProviderProperties;)V

    invoke-virtual {v14, v15}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProvider(Lcom/android/server/location/MockProvider;)V

    .line 812
    .end local v10    # "testProviderString":Ljava/lang/String;
    .end local v11    # "fragments":[Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v14    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    add-int/lit8 v9, v9, 0x1

    goto :goto_9c

    .line 832
    :cond_10f
    return-void
.end method

.method private initializeProvidersLocked_chn()V
    .registers 28

    .line 837
    move-object/from16 v0, p0

    const v1, 0x1040304

    .line 838
    .local v1, "id_config_networkLocationProviderPackageName":I
    const v2, 0x10402ea

    .line 839
    .local v2, "id_config_geocoderProviderPackageName":I
    const v3, 0x10402e9

    .line 840
    .local v3, "id_config_fusedLocationProviderPackageName":I
    const v4, 0x111007c

    .line 842
    .local v4, "id_config_enableNetworkLocationOverlay":I
    sget-object v5, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    const-string v6, "CHN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    sget-object v5, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    const-string v6, "CHC"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    sget-object v5, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    const-string v6, "CHU"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    sget-object v5, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    const-string v6, "CTC"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    goto :goto_4b

    .line 846
    :cond_37
    sget-object v5, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    const-string v6, "CHM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 847
    const v1, 0x1040305

    .line 848
    const v2, 0x10402eb

    .line 849
    const v4, 0x111007d

    goto :goto_54

    .line 843
    :cond_4b
    :goto_4b
    const v1, 0x1040306

    .line 844
    const v2, 0x10402ec

    .line 845
    const v4, 0x111007d

    .line 852
    :cond_54
    :goto_54
    iget-object v5, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "com.android.location.service.v3.NetworkLocationProvider"

    invoke-static {v5, v6, v4, v1}, Lcom/android/server/location/LocationProviderProxy;->createAndRegister(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v5

    .line 857
    .local v5, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    const/4 v6, 0x0

    const-string v7, "LocationManagerService"

    if-eqz v5, :cond_72

    .line 858
    new-instance v8, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    const-string/jumbo v9, "network"

    invoke-direct {v8, v0, v9, v6}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    .line 859
    .local v8, "networkManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    iget-object v9, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    invoke-virtual {v8, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 861
    .end local v8    # "networkManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_78

    .line 862
    :cond_72
    const-string/jumbo v8, "no network location provider found"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :goto_78
    iget-object v8, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x180000

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .line 868
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    .line 866
    const-string v11, "Unable to find a direct boot aware fused location provider"

    invoke-static {v8, v11}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 872
    iget-object v8, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8, v10, v4, v3}, Lcom/android/server/location/LocationProviderProxy;->createAndRegister(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v8

    .line 877
    .local v8, "fusedProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v8, :cond_af

    .line 878
    new-instance v10, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    const-string v11, "fused"

    invoke-direct {v10, v0, v11, v6}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    .line 879
    .local v10, "fusedManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    iget-object v11, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    invoke-virtual {v10, v8}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 881
    .end local v10    # "fusedManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_b5

    .line 882
    :cond_af
    const-string/jumbo v10, "no fused location provider found"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :goto_b5
    iget-object v10, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, v4, v2}, Lcom/android/server/location/GeocoderProxy;->createAndRegister(Landroid/content/Context;II)Lcom/android/server/location/GeocoderProxy;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 889
    if-nez v10, :cond_c5

    .line 890
    const-string/jumbo v10, "no geocoder provider found"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_c5
    iget-object v10, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 895
    invoke-static {v10}, Lcom/android/server/location/HardwareActivityRecognitionProxy;->createAndRegister(Landroid/content/Context;)Lcom/android/server/location/HardwareActivityRecognitionProxy;

    move-result-object v10

    .line 896
    .local v10, "hardwareActivityRecognitionProxy":Lcom/android/server/location/HardwareActivityRecognitionProxy;
    if-nez v10, :cond_d3

    .line 897
    const-string/jumbo v11, "unable to bind ActivityRecognitionProxy"

    invoke-static {v7, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_d3
    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x10700eb

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 902
    .local v7, "testProviderStrings":[Ljava/lang/String;
    array-length v11, v7

    move v13, v12

    :goto_e2
    if-ge v13, v11, :cond_165

    aget-object v14, v7, v13

    .line 903
    .local v14, "testProviderString":Ljava/lang/String;
    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 904
    .local v15, "fragments":[Ljava/lang/String;
    aget-object v16, v15, v12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 905
    .local v12, "name":Ljava/lang/String;
    new-instance v16, Lcom/android/internal/location/ProviderProperties;

    aget-object v17, v15, v9

    .line 906
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    const/16 v17, 0x2

    aget-object v17, v15, v17

    .line 907
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    const/16 v17, 0x3

    aget-object v17, v15, v17

    .line 908
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    const/16 v17, 0x4

    aget-object v17, v15, v17

    .line 909
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    const/16 v17, 0x5

    aget-object v17, v15, v17

    .line 910
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v22

    const/16 v17, 0x6

    aget-object v17, v15, v17

    .line 911
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v23

    const/16 v17, 0x7

    aget-object v17, v15, v17

    .line 912
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    const/16 v17, 0x8

    aget-object v17, v15, v17

    .line 913
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    const/16 v17, 0x9

    aget-object v17, v15, v17

    .line 914
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v17, v16

    invoke-direct/range {v17 .. v26}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 915
    .local v17, "properties":Lcom/android/internal/location/ProviderProperties;
    invoke-direct {v0, v12}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v16

    .line 916
    .local v16, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v16, :cond_150

    .line 917
    new-instance v9, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-direct {v9, v0, v12, v6}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    .line 918
    .end local v16    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .local v9, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_152

    .line 916
    .end local v9    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .restart local v16    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_150
    move-object/from16 v9, v16

    .line 920
    .end local v16    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .restart local v9    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :goto_152
    new-instance v6, Lcom/android/server/location/MockProvider;

    move-object/from16 v0, v17

    .end local v17    # "properties":Lcom/android/internal/location/ProviderProperties;
    .local v0, "properties":Lcom/android/internal/location/ProviderProperties;
    invoke-direct {v6, v0}, Lcom/android/server/location/MockProvider;-><init>(Lcom/android/internal/location/ProviderProperties;)V

    invoke-virtual {v9, v6}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProvider(Lcom/android/server/location/MockProvider;)V

    .line 902
    .end local v0    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v9    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "testProviderString":Ljava/lang/String;
    .end local v15    # "fragments":[Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_e2

    .line 922
    :cond_165
    return-void
.end method

.method private isNavigationApp(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z
    .registers 8
    .param p1, "record"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2121
    sget-object v0, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_34

    sget-object v0, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    .line 2122
    const-string v2, "CHC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    .line 2123
    const-string v2, "CHU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    .line 2124
    const-string v2, "CTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    .line 2125
    const-string v2, "CHM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 2126
    return v1

    .line 2128
    :cond_34
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants;->NAVIGATION_APP_LIST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_38
    if-ge v3, v2, :cond_4f

    aget-object v4, v0, v3

    .line 2129
    .local v4, "navigationApp":Ljava/lang/String;
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v5, v5, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 2130
    const/4 v0, 0x1

    return v0

    .line 2128
    .end local v4    # "navigationApp":Ljava/lang/String;
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 2133
    :cond_4f
    return v1
.end method

.method private isSLocationRequest(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z
    .registers 4
    .param p1, "record"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 1886
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v0, v0, Lcom/android/server/location/CallerIdentity;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2b

    .line 1887
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1888
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    const-string v1, "SLocationService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1891
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method private isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z
    .registers 4
    .param p1, "record"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2105
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3100(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2106
    const/4 v0, 0x0

    return v0

    .line 2109
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getIgnoreSettingsPackageWhitelist()Ljava/util/Set;

    move-result-object v0

    .line 2110
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    .line 2109
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2111
    const/4 v0, 0x1

    return v0

    .line 2114
    :cond_22
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z
    .registers 5
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 2084
    iget v0, p1, Lcom/android/server/location/CallerIdentity;->uid:I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_8

    .line 2085
    return v1

    .line 2088
    :cond_8
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2090
    return v1

    .line 2094
    :cond_17
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    iget-object v2, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/location/SettingsHelper;->isBackgroundThrottlePackageAllowlistByNsflp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2096
    return v1

    .line 2100
    :cond_22
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    iget-object v1, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidWorkSource(Landroid/os/WorkSource;)Z
    .registers 5
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .line 2060
    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_11

    .line 2063
    invoke-virtual {p0, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    .line 2067
    :cond_11
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    .line 2068
    .local v0, "workChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 2069
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    .line 2068
    :goto_2b
    return v1
.end method

.method public static synthetic lambda$BD6Z3kmR2qbK2IB1-7f_J9nIMQg(Lcom/android/server/location/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onMockLocationAppOpChanged()V

    return-void
.end method

.method public static synthetic lambda$Cw7xwIE70-6c85ztm6T7WScKZRA(Lcom/android/server/location/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onBackgroundThrottleIntervalChanged()V

    return-void
.end method

.method public static synthetic lambda$Jsn9f_NWM0cs884cOI1fOaFZw8M(Lcom/android/server/location/LocationManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->onLocationModeChanged(I)V

    return-void
.end method

.method public static synthetic lambda$SdJCjgY1BwQ-VOtT2s6dcqDrOkA(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->onAppOpChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$VbEiHJaYRYQKq-KAS1hQcxjIX3w(Lcom/android/server/location/LocationManagerService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->onAppForegroundChanged(IZ)V

    return-void
.end method

.method public static synthetic lambda$ZMNjuBZeNXZ1-aQV1f9Cim6fRag(Lcom/android/server/location/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onIgnoreSettingsWhitelistChanged()V

    return-void
.end method

.method static synthetic lambda$applyRequirementsLocked$7(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "k"    # Ljava/lang/String;

    .line 2046
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$fqo6KrQPiessbxGobdg5DXwHuPc(Lcom/android/server/location/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onBackgroundThrottleWhitelistChanged()V

    return-void
.end method

.method public static synthetic lambda$r1HQs34pMDdwthhOWsKVe7pybhc(Lcom/android/server/location/LocationManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->onUserChanged(II)V

    return-void
.end method

.method private onAppForegroundChanged(IZ)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "foreground"    # Z

    .line 712
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/NSLocationMonitor;->updateUidForegroundChanged(IZ)V

    .line 717
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 718
    .local v1, "affectedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 719
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 720
    .local v4, "provider":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 721
    .local v6, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v6}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    if-eqz v7, :cond_6f

    .line 722
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v6}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v7, v7, Lcom/android/server/location/CallerIdentity;->uid:I

    if-ne v7, p1, :cond_6f

    .line 723
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z
    invoke-static {v6}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v7

    if-eq v7, p2, :cond_6f

    .line 724
    # invokes: Lcom/android/server/location/LocationManagerService$UpdateRecord;->updateForeground(Z)V
    invoke-static {v6, p2}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1600(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V

    .line 726
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v6}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {p0, v7}, Lcom/android/server/location/LocationManagerService;->isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 727
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 730
    .end local v6    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    :cond_6f
    goto :goto_39

    .line 731
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;>;"
    .end local v4    # "provider":Ljava/lang/String;
    :cond_70
    goto :goto_1d

    .line 732
    :cond_71
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 733
    .local v3, "provider":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 734
    .end local v3    # "provider":Ljava/lang/String;
    goto :goto_75

    .line 735
    .end local v1    # "affectedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_85
    monitor-exit v0

    .line 736
    return-void

    .line 735
    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_87

    throw v1
.end method

.method private onAppOpChanged(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 607
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 609
    .local v2, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    iget-object v3, v2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, v3, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 610
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 612
    .end local v2    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :cond_27
    goto :goto_d

    .line 614
    :cond_28
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 615
    .local v1, "affectedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 616
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 617
    .local v4, "provider":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_59
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_77

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 618
    .local v6, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v6}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v7, v7, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 619
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 621
    .end local v6    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    :cond_76
    goto :goto_59

    .line 622
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;>;"
    .end local v4    # "provider":Ljava/lang/String;
    :cond_77
    goto :goto_3d

    .line 623
    :cond_78
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 624
    .local v3, "provider":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 625
    .end local v3    # "provider":Ljava/lang/String;
    goto :goto_7c

    .line 626
    :cond_8c
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    invoke-virtual {v2, p1}, Lcom/android/server/location/NSLocationMonitor;->sendOpChanged(Ljava/lang/String;)V

    .line 627
    .end local v1    # "affectedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_93
    move-exception v1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_93

    throw v1
.end method

.method private onBackgroundThrottleIntervalChanged()V
    .registers 4

    .line 739
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 741
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 742
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_9

    .line 743
    :cond_19
    monitor-exit v0

    .line 744
    return-void

    .line 743
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private onBackgroundThrottleWhitelistChanged()V
    .registers 4

    .line 747
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 748
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 749
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 750
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_9

    .line 751
    :cond_19
    monitor-exit v0

    .line 752
    return-void

    .line 751
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private onBatterySaverModeChangedLocked(I)V
    .registers 4
    .param p1, "newLocationMode"    # I

    .line 640
    iget v0, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    if-ne v0, p1, :cond_5

    .line 641
    return-void

    .line 645
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery Saver location mode changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    .line 647
    invoke-static {v1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-static {p1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iput p1, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    .line 653
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 654
    .local v1, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 655
    .end local v1    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_35

    .line 656
    :cond_45
    return-void
.end method

.method private onFreezeChangedLocked(ZI)V
    .registers 11
    .param p1, "enabled"    # Z
    .param p2, "uid"    # I

    .line 574
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 576
    .local v0, "affectedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 577
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 578
    .local v3, "provider":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 579
    .local v5, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v6, v6, Lcom/android/server/location/CallerIdentity;->uid:I

    if-ne v6, p2, :cond_77

    iget-boolean v6, v5, Lcom/android/server/location/LocationManagerService$UpdateRecord;->isFreezed:Z

    if-eq v6, p1, :cond_77

    .line 581
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "request from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    if-eqz p1, :cond_63

    const-string v7, "freezed"

    goto :goto_66

    :cond_63
    const-string/jumbo v7, "unfreezed"

    :goto_66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 581
    const-string v7, "LocationManagerService"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iput-boolean p1, v5, Lcom/android/server/location/LocationManagerService$UpdateRecord;->isFreezed:Z

    .line 584
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v5    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    :cond_77
    goto :goto_31

    .line 587
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;>;"
    .end local v3    # "provider":Ljava/lang/String;
    :cond_78
    goto :goto_15

    .line 588
    :cond_79
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 589
    .local v2, "provider":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 590
    .end local v2    # "provider":Ljava/lang/String;
    goto :goto_7d

    .line 603
    :cond_8d
    return-void
.end method

.method private onIgnoreSettingsWhitelistChanged()V
    .registers 4

    .line 755
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 756
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 757
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 758
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_9

    .line 759
    :cond_19
    monitor-exit v0

    .line 760
    return-void

    .line 759
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private onLocationModeChanged(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 669
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    .line 670
    .local v0, "enabled":Z
    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] location enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 677
    const-string v2, "android.location.extra.LOCATION_ENABLED"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 678
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 679
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 680
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 682
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 683
    :try_start_4c
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 684
    .local v4, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v4, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onEnabledChangedLocked(I)V

    .line 685
    .end local v4    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_52

    .line 686
    :cond_62
    monitor-exit v2

    .line 687
    return-void

    .line 686
    :catchall_64
    move-exception v3

    monitor-exit v2
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_64

    throw v3
.end method

.method private onMockLocationAppOpChanged()V
    .registers 7

    .line 3119
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3120
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 3121
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_4e

    .line 3123
    .local v1, "mockLocationPkg":Ljava/lang/String;
    :try_start_21
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    .line 3124
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/location/AppOpsHelper;->checkMockLocationAccess(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_33

    .line 3125
    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->recoverRealProviderLocked(Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_33} :catch_34
    .catchall {:try_start_21 .. :try_end_33} :catchall_4e

    .line 3129
    .end local v2    # "uid":I
    :cond_33
    goto :goto_4c

    .line 3127
    :catch_34
    move-exception v2

    .line 3128
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_35
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "missing package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    .end local v1    # "mockLocationPkg":Ljava/lang/String;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4c
    :goto_4c
    monitor-exit v0

    .line 3132
    return-void

    .line 3131
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_35 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method private onPackageDisappeared(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 690
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    const/4 v1, 0x0

    .line 693
    .local v1, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 694
    .local v3, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    iget-object v4, v3, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v4, v4, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 695
    if-nez v1, :cond_2c

    .line 696
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 698
    :cond_2c
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .end local v3    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :cond_2f
    goto :goto_e

    .line 703
    :cond_30
    if-eqz v1, :cond_46

    .line 704
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 705
    .restart local v3    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    .line 706
    .end local v3    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    goto :goto_36

    .line 708
    .end local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    :cond_46
    monitor-exit v0

    .line 709
    return-void

    .line 708
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private onPackageRemovedLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "targetPkg"    # Ljava/lang/String;

    .line 3113
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3114
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->recoverRealProviderLocked(Ljava/lang/String;)V

    .line 3116
    :cond_b
    return-void
.end method

.method private onPermissionsChangedLocked(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 632
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 633
    .local v1, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 634
    .end local v1    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_6

    .line 635
    :cond_16
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/location/NSLocationMonitor;->sendPermissionsChange(I)V

    .line 636
    return-void
.end method

.method private onProcessDiedLocked(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 3103
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 3104
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 3105
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 3106
    .local v3, "pkg":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->recoverRealProviderLocked(Ljava/lang/String;)V

    .line 3105
    .end local v3    # "pkg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3109
    :cond_14
    return-void
.end method

.method private onScreenStateChanged()V
    .registers 4

    .line 659
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_3
    iget v1, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1e

    .line 661
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 662
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 663
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_e

    .line 665
    :cond_1e
    monitor-exit v0

    .line 666
    return-void

    .line 665
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private onSystemReady()V
    .registers 10

    .line 398
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/AppOpsHelper;->onSystemReady()V

    .line 399
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    invoke-virtual {v0}, Lcom/android/server/location/UserInfoHelper;->onSystemReady()V

    .line 400
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->onSystemReady()V

    .line 401
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    invoke-virtual {v0}, Lcom/android/server/location/AppForegroundHelper;->onSystemReady()V

    .line 403
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_17
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 405
    new-instance v1, Lcom/android/server/location/GeofenceManager;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/SettingsHelper;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    .line 408
    new-instance v1, Lcom/android/server/location/NSLocationMonitor;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mServiceCallback:Lcom/android/server/location/NSLocationMonitor$ServiceCallback;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationCallback:Landroid/location/INSLocationCallback$Stub;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/location/NSLocationMonitor;-><init>(Landroid/content/Context;Lcom/android/server/location/NSLocationMonitor$ServiceCallback;Landroid/location/INSLocationCallback;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    .line 411
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$blWXxGHouRLfV5PN8j23W191uwo;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$blWXxGHouRLfV5PN8j23W191uwo;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 422
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$Io3fQellhcdp8CagIr-bCMgZNko;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$Io3fQellhcdp8CagIr-bCMgZNko;-><init>(Lcom/android/server/location/LocationManagerService;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 433
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getLocationPowerSaveMode()I

    move-result v1

    iput v1, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    .line 435
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$SdJCjgY1BwQ-VOtT2s6dcqDrOkA;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$SdJCjgY1BwQ-VOtT2s6dcqDrOkA;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/AppOpsHelper;->addListener(Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;)V

    .line 438
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$BD6Z3kmR2qbK2IB1-7f_J9nIMQg;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$BD6Z3kmR2qbK2IB1-7f_J9nIMQg;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/AppOpsHelper;->addMockLocationListener(Lcom/android/server/location/AppOpsHelper$MockLocationAppOpListener;)V

    .line 439
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 440
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 443
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$Jsn9f_NWM0cs884cOI1fOaFZw8M;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$Jsn9f_NWM0cs884cOI1fOaFZw8M;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/SettingsHelper;->addOnLocationEnabledChangedListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 444
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$Cw7xwIE70-6c85ztm6T7WScKZRA;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$Cw7xwIE70-6c85ztm6T7WScKZRA;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/SettingsHelper;->addOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V

    .line 446
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$fqo6KrQPiessbxGobdg5DXwHuPc;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$fqo6KrQPiessbxGobdg5DXwHuPc;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/SettingsHelper;->addOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V

    .line 448
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$ZMNjuBZeNXZ1-aQV1f9Cim6fRag;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$ZMNjuBZeNXZ1-aQV1f9Cim6fRag;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/SettingsHelper;->addOnIgnoreSettingsPackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V

    .line 451
    new-instance v1, Lcom/android/server/location/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$1;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 462
    .local v1, "packageMonitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 464
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    new-instance v3, Lcom/android/server/location/-$$Lambda$LocationManagerService$r1HQs34pMDdwthhOWsKVe7pybhc;

    invoke-direct {v3, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$r1HQs34pMDdwthhOWsKVe7pybhc;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/UserInfoHelper;->addListener(Lcom/android/server/location/UserInfoHelper$UserListener;)V

    .line 466
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    new-instance v3, Lcom/android/server/location/-$$Lambda$LocationManagerService$VbEiHJaYRYQKq-KAS1hQcxjIX3w;

    invoke-direct {v3, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$VbEiHJaYRYQKq-KAS1hQcxjIX3w;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/AppForegroundHelper;->addListener(Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;)V

    .line 468
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 469
    .local v2, "screenIntentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    const-string v3, "com.samsung.android.location.mock.delete"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/location/LocationManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/location/LocationManagerService$2;-><init>(Lcom/android/server/location/LocationManagerService;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 497
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    invoke-virtual {v3}, Lcom/android/server/location/UserInfoHelper;->getCurrentUserIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_ff
    if-ge v5, v4, :cond_10a

    aget v6, v3, v5

    .line 498
    .local v6, "userId":I
    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/server/location/LocationManagerService;->onUserChanged(II)V

    .line 497
    .end local v6    # "userId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_ff

    .line 500
    .end local v1    # "packageMonitor":Lcom/android/internal/content/PackageMonitor;
    .end local v2    # "screenIntentFilter":Landroid/content/IntentFilter;
    :cond_10a
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_10c
    move-exception v1

    monitor-exit v0
    :try_end_10e
    .catchall {:try_start_17 .. :try_end_10e} :catchall_10c

    throw v1
.end method

.method private onSystemThirdPartyAppsCanStart()V
    .registers 4

    .line 504
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_3
    const-string v1, "CHN"

    sget-object v2, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "CHC"

    sget-object v2, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "CHU"

    sget-object v2, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "CTC"

    sget-object v2, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "CHM"

    sget-object v2, Lcom/android/server/location/LocationManagerService;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_3a

    .line 510
    :cond_36
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->initializeProvidersLocked()V

    goto :goto_3d

    .line 508
    :cond_3a
    :goto_3a
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->initializeProvidersLocked_chn()V

    .line 513
    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_4c

    .line 517
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->initializeGnss()V

    .line 519
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1d4c0

    if-le v0, v1, :cond_4b

    .line 520
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->setSLocation()V

    .line 523
    :cond_4b
    return-void

    .line 513
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private onUserChanged(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "change"    # I

    .line 951
    const/4 v0, 0x1

    if-eq p2, v0, :cond_46

    const/4 v0, 0x2

    if-eq p2, v0, :cond_28

    const/4 v0, 0x3

    if-eq p2, v0, :cond_a

    goto :goto_61

    .line 967
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 968
    :try_start_d
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 969
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onUserStopped(I)V

    .line 970
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_13

    .line 971
    :cond_23
    monitor-exit v0

    goto :goto_61

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_25

    throw v1

    .line 960
    :cond_28
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 961
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 962
    .restart local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onUserStarted(I)V

    .line 963
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_31

    .line 964
    :cond_41
    monitor-exit v0

    .line 965
    goto :goto_61

    .line 964
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_43

    throw v1

    .line 953
    :cond_46
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 954
    :try_start_49
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 955
    .restart local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onEnabledChangedLocked(I)V

    .line 956
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_4f

    .line 957
    :cond_5f
    monitor-exit v0

    .line 958
    nop

    .line 974
    :goto_61
    return-void

    .line 957
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_62

    throw v1
.end method

.method private recoverRealProviderLocked(Ljava/lang/String;)V
    .registers 8
    .param p1, "targetPkg"    # Ljava/lang/String;

    .line 3077
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 3078
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3079
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3080
    .local v2, "providerName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3081
    .local v3, "opPackageName":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 3082
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove mock location. package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "provider name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LocationManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v4

    .line 3084
    .local v4, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v4, :cond_4f

    .line 3085
    return-void

    .line 3088
    :cond_4f
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProvider(Lcom/android/server/location/MockProvider;)V

    .line 3089
    invoke-virtual {v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->hasProvider()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 3090
    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3092
    :cond_5e
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3094
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "providerName":Ljava/lang/String;
    .end local v3    # "opPackageName":Ljava/lang/String;
    .end local v4    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_61
    goto :goto_a

    .line 3095
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_62
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 3096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    .line 3097
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->cancelNotificationForMockLocation()V

    .line 3099
    :cond_70
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V
    .registers 7
    .param p1, "receiver"    # Lcom/android/server/location/LocationManagerService$Receiver;

    .line 2471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/location/NSLocationMonitor;->updateRemoveInfo(Lcom/android/server/location/LocationManagerService$Receiver;)V

    .line 2477
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    # getter for: Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService$Receiver;->access$3900(Lcom/android/server/location/LocationManagerService$Receiver;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Receiver;->isListener()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2478
    nop

    .line 2479
    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2478
    invoke-virtual {p1, v0}, Lcom/android/server/location/LocationManagerService$Receiver;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;)V

    .line 2480
    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 2483
    :cond_45
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2486
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2487
    .local v1, "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 2488
    .local v2, "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    if-eqz v2, :cond_71

    .line 2490
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2492
    .local v4, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    # invokes: Lcom/android/server/location/LocationManagerService$UpdateRecord;->disposeLocked(Z)V
    invoke-static {v4, v0}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3800(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V

    .line 2493
    .end local v4    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    goto :goto_5a

    .line 2495
    :cond_6a
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2499
    :cond_71
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2500
    .local v3, "provider":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2501
    .end local v3    # "provider":Ljava/lang/String;
    goto :goto_75

    .line 2502
    :cond_85
    return-void
.end method

.method private requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;)V
    .registers 13
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "receiver"    # Lcom/android/server/location/LocationManagerService$Receiver;

    .line 2401
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2402
    :cond_4
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v6

    .line 2403
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_91

    .line 2407
    invoke-direct {p0, v6}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v7

    .line 2408
    .local v7, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-eqz v7, :cond_79

    .line 2412
    new-instance v8, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;Lcom/android/server/location/LocationManagerService$1;)V

    .line 2414
    .local v0, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    iget-object v1, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2415
    .local v1, "oldRecord":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 2416
    # invokes: Lcom/android/server/location/LocationManagerService$UpdateRecord;->disposeLocked(Z)V
    invoke-static {v1, v2}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3800(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V

    .line 2419
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2421
    .local v3, "identity":J
    :try_start_2d
    iget-object v5, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2422
    .local v5, "userId":I
    invoke-virtual {v7, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_44

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v8

    if-nez v8, :cond_44

    .line 2425
    # invokes: Lcom/android/server/location/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z
    invoke-static {p2, v6, v2}, Lcom/android/server/location/LocationManagerService$Receiver;->access$3000(Lcom/android/server/location/LocationManagerService$Receiver;Ljava/lang/String;Z)Z

    .line 2429
    :cond_44
    const/4 v2, 0x0

    .line 2430
    .local v2, "throwable":Ljava/lang/Throwable;
    iget-object v8, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v8, v8, Lcom/android/server/location/CallerIdentity;->uid:I

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_5f

    const-string/jumbo v8, "passive"

    .line 2431
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5f

    .line 2432
    new-instance v8, Ljava/lang/Throwable;

    const-string/jumbo v9, "stack dump"

    invoke-direct {v8, v9}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    .line 2434
    :cond_5f
    iget-object v8, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v9

    invoke-virtual {v8, p1, p2, v9, v2}, Lcom/android/server/location/NSLocationMonitor;->updateRequestInfo(Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;ZLjava/lang/Throwable;)V

    .line 2437
    invoke-direct {p0, v6}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2441
    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V
    :try_end_6f
    .catchall {:try_start_2d .. :try_end_6f} :catchall_74

    .line 2443
    .end local v2    # "throwable":Ljava/lang/Throwable;
    .end local v5    # "userId":I
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2444
    nop

    .line 2445
    return-void

    .line 2443
    :catchall_74
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2444
    throw v2

    .line 2409
    .end local v0    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .end local v1    # "oldRecord":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .end local v3    # "identity":J
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2404
    .end local v7    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setSLocation()V
    .registers 5

    .line 527
    const-string/jumbo v0, "sec_location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v0

    .line 528
    .local v0, "sLocation":Lcom/samsung/android/location/ISLocationManager;
    const-string v1, "LocationManagerService"

    if-nez v0, :cond_16

    .line 529
    const-string/jumbo v2, "slocation is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 532
    :cond_16
    :try_start_16
    new-instance v2, Lcom/android/server/location/LocationManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/location/LocationManagerService$3;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/location/ISLocationManager;->setSLocationLMSHook(Lcom/samsung/android/location/ISLocationLMSHook;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_1f

    .line 554
    goto :goto_27

    .line 552
    :catch_1f
    move-exception v2

    .line 553
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method private shouldBroadcastSafeLocked(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/location/LocationManagerService$UpdateRecord;JLjava/lang/String;)Z
    .registers 20
    .param p1, "loc"    # Landroid/location/Location;
    .param p2, "lastLoc"    # Landroid/location/Location;
    .param p3, "record"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .param p4, "now"    # J
    .param p6, "managerName"    # Ljava/lang/String;

    .line 2876
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 2877
    return v0

    .line 2881
    :cond_4
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;
    invoke-static/range {p3 .. p3}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3100(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    .line 2882
    .local v1, "minTime":J
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2883
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 2882
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 2885
    .local v3, "deltaMs":J
    const-wide/16 v5, 0xa

    div-long v5, v1, v5

    const-wide/16 v7, 0x1388

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 2886
    .local v5, "schedulingJitterMs":J
    sub-long v7, v1, v5

    cmp-long v7, v3, v7

    const/4 v8, 0x0

    if-gez v7, :cond_2d

    .line 2887
    return v8

    .line 2891
    :cond_2d
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;
    invoke-static/range {p3 .. p3}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3100(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v7

    invoke-virtual {v7}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v7

    float-to-double v9, v7

    .line 2892
    .local v9, "minDistance":D
    const-wide/16 v11, 0x0

    cmpl-double v7, v9, v11

    if-lez v7, :cond_46

    .line 2893
    invoke-virtual {p1, p2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v7

    float-to-double v11, v7

    cmpg-double v7, v11, v9

    if-gtz v7, :cond_46

    .line 2894
    return v8

    .line 2899
    :cond_46
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;
    invoke-static/range {p3 .. p3}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3100(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v7

    invoke-virtual {v7}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v7

    if-gtz v7, :cond_51

    .line 2900
    return v8

    .line 2904
    :cond_51
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mExpirationRealtimeMs:J
    invoke-static/range {p3 .. p3}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/location/LocationManagerService$UpdateRecord;)J

    move-result-wide v11

    cmp-long v7, v11, p4

    if-ltz v7, :cond_5a

    goto :goto_5b

    :cond_5a
    move v0, v8

    :goto_5b
    return v0
.end method

.method private updateProviderEnabledLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;Z)V
    .registers 9
    .param p1, "manager"    # Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .param p2, "enabled"    # Z

    .line 1842
    const/4 v0, 0x0

    .line 1843
    .local v0, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1844
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    if-eqz v1, :cond_65

    .line 1845
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 1846
    .local v3, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    .line 1847
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v3}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1846
    invoke-virtual {v4, v5}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v4

    if-nez v4, :cond_40

    .line 1848
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v3}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v4, v4, Lcom/android/server/location/CallerIdentity;->uid:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_40

    .line 1849
    goto :goto_13

    .line 1853
    :cond_40
    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1854
    goto :goto_13

    .line 1858
    :cond_47
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v3}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/location/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z
    invoke-static {v4, v5, p2}, Lcom/android/server/location/LocationManagerService$Receiver;->access$3000(Lcom/android/server/location/LocationManagerService$Receiver;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_64

    .line 1859
    if-nez v0, :cond_5d

    .line 1860
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 1862
    :cond_5d
    # getter for: Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-static {v3}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1864
    .end local v3    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    :cond_64
    goto :goto_13

    .line 1867
    :cond_65
    if-eqz v0, :cond_7b

    .line 1868
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_6d
    if-ltz v2, :cond_7b

    .line 1869
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    .line 1868
    add-int/lit8 v2, v2, -0x1

    goto :goto_6d

    .line 1873
    .end local v2    # "i":I
    :cond_7b
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 1874
    return-void
.end method


# virtual methods
.method public addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "listener"    # Landroid/location/IGnssAntennaInfoListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 2730
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "callback"    # Landroid/location/IBatchedLocationCallback;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 1742
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public addGnssMeasurementsListener(Landroid/location/GnssRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "request"    # Landroid/location/GnssRequest;
    .param p2, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;

    .line 2699
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssMeasurementsListener(Landroid/location/GnssRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 2744
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;

    .line 3198
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    .line 3199
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->noteMockLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 3200
    return-void

    .line 3203
    :cond_f
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3204
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v2

    .line 3205
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v2, :cond_24

    .line 3206
    new-instance v3, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    move-object v2, v3

    .line 3207
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3210
    :cond_24
    new-instance v3, Lcom/android/server/location/MockProvider;

    invoke-direct {v3, p2}, Lcom/android/server/location/MockProvider;-><init>(Lcom/android/internal/location/ProviderProperties;)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProvider(Lcom/android/server/location/MockProvider;)V

    .line 3213
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p3}, Lcom/android/server/location/NSLocationMonitor;->updateTestProvider(ZLjava/lang/String;Ljava/lang/String;)V

    .line 3217
    const-string/jumbo v3, "gps"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 3218
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    const-string/jumbo v5, "gps"

    invoke-virtual {v3, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 3219
    :cond_44
    const-string v3, "fused"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 3220
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    const-string v5, "fused"

    invoke-virtual {v3, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 3221
    :cond_54
    const-string/jumbo v3, "network"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 3222
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    const-string/jumbo v5, "network"

    invoke-virtual {v3, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3224
    :cond_65
    :goto_65
    iget-boolean v3, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    if-nez v3, :cond_76

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_76

    .line 3225
    invoke-direct {p0, p3}, Lcom/android/server/location/LocationManagerService;->createNotificationForMockLocation(Ljava/lang/String;)V

    .line 3226
    iput-boolean v4, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    .line 3229
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_76
    monitor-exit v1

    .line 3230
    return-void

    .line 3229
    :catchall_78
    move-exception v2

    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_12 .. :try_end_7a} :catchall_78

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3348
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "LocationManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3349
    return-void

    .line 3352
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3354
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3355
    :try_start_15
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v2, :cond_2e

    array-length v2, p3

    if-lez v2, :cond_2e

    const/4 v2, 0x0

    aget-object v2, p3, v2

    const-string v3, "--gnssmetrics"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3356
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/location/gnss/GnssManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3357
    monitor-exit v1

    return-void

    .line 3360
    :cond_2e
    const-string v2, "Location Manager State:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3361
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current System Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3362
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Current Elapsed Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3364
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3367
    const-string v2, "User Info:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3368
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3369
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/location/UserInfoHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3370
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3372
    const-string v2, "Location Settings:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3373
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3374
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/location/SettingsHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3375
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Battery Saver Location Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    .line 3378
    invoke-static {v3}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3377
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3380
    const-string v2, "Location Listeners:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3381
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3382
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ba
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ca

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 3383
    .local v3, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3384
    .end local v3    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    goto :goto_ba

    .line 3385
    :cond_ca
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3387
    const-string v2, "Active Records by Provider:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3388
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3389
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_df
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_127

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3390
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3391
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3392
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_112
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_122

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 3393
    .local v5, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3394
    .end local v5    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    goto :goto_112

    .line 3395
    :cond_122
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3396
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;>;"
    goto :goto_df

    .line 3397
    :cond_127
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3399
    const-string v2, "Historical Records by Provider:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3400
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3401
    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    iget-object v3, v3, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 3404
    .local v2, "sorted":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_143
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3405
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3406
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    goto :goto_143

    .line 3407
    :cond_16f
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3409
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    iget-object v3, v3, Lcom/android/server/location/LocationRequestStatistics;->history:Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;

    invoke-virtual {v3, v0}, Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3411
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    if-eqz v3, :cond_18d

    .line 3412
    const-string v3, "Geofences:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3413
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3414
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v3, v0}, Lcom/android/server/location/GeofenceManager;->dump(Ljava/io/PrintWriter;)V

    .line 3415
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3418
    :cond_18d
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v3, :cond_1b3

    .line 3419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Location Controller Extra Package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3420
    iget-boolean v4, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v4, :cond_1a7

    const-string v4, " [enabled]"

    goto :goto_1a9

    :cond_1a7
    const-string v4, "[disabled]"

    :goto_1a9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3419
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3422
    .end local v2    # "sorted":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    :cond_1b3
    monitor-exit v1
    :try_end_1b4
    .catchall {:try_start_15 .. :try_end_1b4} :catchall_235

    .line 3424
    const-string v1, "Location Providers:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3425
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3426
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 3427
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 3428
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_1c2

    .line 3429
    :cond_1d2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3431
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3432
    :try_start_1d8
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v1, :cond_1ec

    .line 3433
    const-string v1, "GNSS:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3434
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3435
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/location/gnss/GnssManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3436
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3440
    :cond_1ec
    const-string v1, "Mock Location Record:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3441
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1fb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_230

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3442
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3443
    .local v4, "provider":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3444
    .local v5, "pkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3445
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "provider":Ljava/lang/String;
    .end local v5    # "pkg":Ljava/lang/String;
    goto :goto_1fb

    .line 3447
    :cond_230
    monitor-exit v2

    .line 3448
    return-void

    .line 3447
    :catchall_232
    move-exception v1

    monitor-exit v2
    :try_end_234
    .catchall {:try_start_1d8 .. :try_end_234} :catchall_232

    throw v1

    .line 3422
    :catchall_235
    move-exception v2

    :try_start_236
    monitor-exit v1
    :try_end_237
    .catchall {:try_start_236 .. :try_end_237} :catchall_235

    throw v2
.end method

.method public flushGnssBatch(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1760
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->flushGnssBatch(Ljava/lang/String;)V

    .line 1761
    :cond_9
    return-void
.end method

.method public geocoderIsPresent()Z
    .registers 2

    .line 3026
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getAllProviders()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1781
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1782
    .local v0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 1783
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fused"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1784
    goto :goto_11

    .line 1786
    :cond_2a
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_11

    .line 1788
    :cond_32
    return-object v0
.end method

.method public getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .registers 3

    .line 2075
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .registers 7
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z

    .line 1820
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1821
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v1

    .line 1822
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    .line 1823
    invoke-virtual {p0, v3, p2}, Lcom/android/server/location/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    .line 1825
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3d

    .line 1827
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1828
    const-string/jumbo v0, "gps"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1829
    const-string/jumbo v0, "gps"

    return-object v0

    .line 1830
    :cond_27
    const-string/jumbo v0, "network"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1831
    const-string/jumbo v0, "network"

    return-object v0

    .line 1833
    :cond_34
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1837
    :cond_3c
    return-object v3

    .line 1825
    .end local v1    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public getCurrentLocation(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .registers 21
    .param p1, "locationRequest"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;
    .param p5, "listenerId"    # Ljava/lang/String;

    .line 2546
    move-object v8, p0

    move-object/from16 v9, p2

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v10

    .line 2549
    .local v10, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/server/location/LocationManagerService;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v14

    .line 2550
    .local v14, "lastLocation":Landroid/location/Location;
    if-eqz v14, :cond_4d

    .line 2551
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2552
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v14}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 2551
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 2554
    .local v1, "locationAgeMs":J
    const-wide/16 v3, 0x2710

    cmp-long v0, v1, v3

    const/4 v3, 0x0

    if-gez v0, :cond_36

    .line 2556
    :try_start_29
    invoke-interface {v9, v14}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 2557
    return-object v10

    .line 2558
    :catch_2d
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 2559
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "LocationManagerService"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2560
    return-object v3

    .line 2564
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_36
    iget-object v0, v8, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/location/AppForegroundHelper;->isAppForeground(I)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 2565
    iget-object v0, v8, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottleIntervalMs()J

    move-result-wide v4

    cmp-long v0, v1, v4

    if-gez v0, :cond_4d

    .line 2567
    return-object v3

    .line 2572
    .end local v1    # "locationAgeMs":J
    :cond_4d
    const/4 v4, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/LocationManagerService;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    invoke-static {v10}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v0

    .line 2575
    .local v0, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$Udf_uecUpOcigdariRQX6AqGwC8;

    invoke-direct {v1, p0, v9}, Lcom/android/server/location/-$$Lambda$LocationManagerService$Udf_uecUpOcigdariRQX6AqGwC8;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 2576
    return-object v10
.end method

.method public getExtraLocationControllerPackage()Ljava/lang/String;
    .registers 3

    .line 2819
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2820
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2821
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 16
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3032
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_e

    .line 3033
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3036
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 27
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3045
    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v1, :cond_19

    .line 3046
    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3050
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public getGPSUsingApps()Ljava/util/Map;
    .registers 3

    .line 3484
    const-string v0, "LocationManagerService"

    const-string v1, "getGPSUsingApps() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/NSLocationMonitor;->getGPSUsingApps()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getGnssBatchSize(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1736
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssBatchSize(Ljava/lang/String;)I

    move-result v0

    :goto_c
    return v0
.end method

.method public getGnssCapabilities()J
    .registers 3

    .line 2722
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    goto :goto_d

    .line 2723
    :cond_7
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssCapabilities()J

    move-result-wide v0

    .line 2722
    :goto_d
    return-wide v0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .registers 2

    .line 1731
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getGnssTimeMillis()Landroid/location/LocationTime;
    .registers 11

    .line 2581
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2582
    :try_start_3
    const-string/jumbo v1, "gps"

    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v1

    .line 2583
    .local v1, "gpsManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 2584
    monitor-exit v0

    return-object v2

    .line 2587
    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getLastLocation(II)Landroid/location/Location;

    move-result-object v3

    .line 2589
    .local v3, "location":Landroid/location/Location;
    if-nez v3, :cond_1c

    .line 2590
    monitor-exit v0

    return-object v2

    .line 2593
    :cond_1c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 2594
    .local v4, "currentNanos":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->getElapsedRealtimeAgeNanos(J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 2595
    .local v6, "deltaMs":J
    new-instance v2, Landroid/location/LocationTime;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-direct {v2, v8, v9, v4, v5}, Landroid/location/LocationTime;-><init>(JJ)V

    monitor-exit v0

    return-object v2

    .line 2596
    .end local v1    # "gpsManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local v3    # "location":Landroid/location/Location;
    .end local v4    # "currentNanos":J
    .end local v6    # "deltaMs":J
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public getGnssYearOfHardware()I
    .registers 2

    .line 1725
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssYearOfHardware()I

    move-result v0

    :goto_c
    return v0
.end method

.method public getIgnoreSettingsWhitelist()[Ljava/lang/String;
    .registers 3

    .line 2080
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getIgnoreSettingsPackageWhitelist()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;
    .registers 10
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 2506
    if-nez p1, :cond_4

    .line 2507
    sget-object p1, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2511
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    .line 2512
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    invoke-virtual {v0}, Lcom/android/server/location/CallerIdentity;->enforceLocationPermission()V

    .line 2514
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    iget v2, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    iget-object v3, v0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/location/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 2515
    return-object v2

    .line 2517
    :cond_1b
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    iget v3, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v1, v3}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2518
    return-object v2

    .line 2521
    :cond_26
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2522
    :try_start_29
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v3

    .line 2523
    .local v3, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v3, :cond_35

    .line 2524
    monitor-exit v1

    return-object v2

    .line 2526
    :cond_35
    iget v4, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_45

    invoke-virtual {p1}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v4

    if-nez v4, :cond_45

    .line 2527
    monitor-exit v1

    return-object v2

    .line 2531
    :cond_45
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v4, v0}, Lcom/android/server/location/AppOpsHelper;->noteLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 2532
    monitor-exit v1

    return-object v2

    .line 2535
    :cond_4f
    iget v4, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    iget v5, v0, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getLastLocation(II)Landroid/location/Location;

    move-result-object v4

    .line 2538
    .local v4, "location":Landroid/location/Location;
    if-eqz v4, :cond_5e

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    :cond_5e
    monitor-exit v1

    return-object v2

    .line 2539
    .end local v3    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local v4    # "location":Landroid/location/Location;
    :catchall_60
    move-exception v2

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_29 .. :try_end_62} :catchall_60

    throw v2
.end method

.method public getProviderPackages(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "providerName"    # Ljava/lang/String;
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

    .line 2803
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    .line 2805
    .local v0, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1c

    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getPackages()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1c
    return-object v1
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .registers 4
    .param p1, "providerName"    # Ljava/lang/String;

    .line 2788
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    .line 2789
    .local v0, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v0, :cond_8

    .line 2790
    const/4 v1, 0x0

    return-object v1

    .line 2792
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    return-object v1
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .registers 9
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1793
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/CallerIdentity;->checkCallingOrSelfLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1794
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1797
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1798
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1799
    .local v1, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 1800
    .local v3, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1801
    .local v4, "name":Ljava/lang/String;
    const-string v5, "fused"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1802
    goto :goto_21

    .line 1804
    :cond_3a
    if-eqz p2, :cond_47

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_47

    .line 1805
    goto :goto_21

    .line 1807
    :cond_47
    if-eqz p1, :cond_54

    .line 1808
    invoke-virtual {v3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v5

    .line 1807
    invoke-static {v4, v5, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 1809
    goto :goto_21

    .line 1811
    :cond_54
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    nop

    .end local v3    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_21

    .line 1813
    :cond_59
    monitor-exit v0

    return-object v1

    .line 1814
    .end local v1    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_10 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public getTestProviderCurrentRequests(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation

    .line 3311
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    .line 3312
    .local v0, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-eqz v0, :cond_b

    .line 3316
    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getMockProviderRequests()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 3313
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider doesn\'t exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11
    .param p1, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "err"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;

    .line 3322
    new-instance v0, Lcom/android/server/location/LocationShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationShellCommand;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 3323
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 3322
    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/LocationShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;Ljava/lang/String;)V
    .registers 4
    .param p1, "measurementCorrections"    # Landroid/location/GnssMeasurementCorrections;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2714
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    .line 2715
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;Ljava/lang/String;)V

    .line 2718
    :cond_9
    return-void
.end method

.method public injectLocation(Landroid/location/Location;)V
    .registers 6
    .param p1, "location"    # Landroid/location/Location;

    .line 2601
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2606
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2607
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2608
    :try_start_1d
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v2

    .line 2609
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-eqz v2, :cond_36

    invoke-virtual {v2, v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2610
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroid/location/Location;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->injectLastLocation(Landroid/location/Location;I)V

    .line 2612
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_36
    monitor-exit v1

    .line 2613
    return-void

    .line 2612
    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public isExtraLocationControllerPackageEnabled()Z
    .registers 3

    .line 2835
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2836
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 2838
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isLocationEnabledForUser(I)Z
    .registers 9
    .param p1, "userId"    # I

    .line 2855
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "isLocationEnabledForUser"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2857
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2862
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "isProviderEnabledForUser"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2867
    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    return v0

    .line 2869
    :cond_1d
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isProviderPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2797
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getCurrentLocation$8$LocationManagerService(Landroid/location/ILocationListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/ILocationListener;

    .line 2575
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/LocationManagerService;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public synthetic lambda$new$0$LocationManagerService(II)[Ljava/lang/String;
    .registers 4
    .param p1, "id_config_locationProviderPackageNames"    # I
    .param p2, "userId"    # I

    .line 381
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$1$LocationManagerService(I)[Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 385
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$2$LocationManagerService(I)[Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 391
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onSystemReady$3$LocationManagerService(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 416
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->onPermissionsChangedLocked(I)V

    .line 418
    monitor-exit v0

    .line 419
    return-void

    .line 418
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public synthetic lambda$onSystemReady$4$LocationManagerService(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 415
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$vE2uBo50J80SPIzOjPi_CXvKyU0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$LocationManagerService$vE2uBo50J80SPIzOjPi_CXvKyU0;-><init>(Lcom/android/server/location/LocationManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    return-void
.end method

.method public synthetic lambda$onSystemReady$5$LocationManagerService(Landroid/os/PowerSaveState;)V
    .registers 4
    .param p1, "state"    # Landroid/os/PowerSaveState;

    .line 428
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_3
    iget v1, p1, Landroid/os/PowerSaveState;->locationMode:I

    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->onBatterySaverModeChangedLocked(I)V

    .line 430
    monitor-exit v0

    .line 431
    return-void

    .line 430
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$onSystemReady$6$LocationManagerService(Landroid/os/PowerSaveState;)V
    .registers 4
    .param p1, "state"    # Landroid/os/PowerSaveState;

    .line 427
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$DtTAG8fgfb3t6CeojBfD69rkGGQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$LocationManagerService$DtTAG8fgfb3t6CeojBfD69rkGGQ;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/os/PowerSaveState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    return-void
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/ILocationListener;

    .line 1715
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1716
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 1717
    .local v1, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    if-eqz v1, :cond_14

    .line 1718
    # invokes: Lcom/android/server/location/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService$Receiver;->access$2900(Lcom/android/server/location/LocationManagerService$Receiver;)V

    .line 1720
    .end local v1    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :cond_14
    monitor-exit v0

    .line 1721
    return-void

    .line 1720
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public notifyNSFLP(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 3490
    invoke-static {p1}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 3491
    return-void
.end method

.method public onFreezeStateChanged(ZI)V
    .registers 8
    .param p1, "enabled"    # Z
    .param p2, "uid"    # I

    .line 562
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    if-eqz p1, :cond_10

    :try_start_5
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mFreezedUid:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1a

    :cond_10
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mFreezedUid:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 564
    .local v1, "result":Z
    :goto_1a
    if-eqz v1, :cond_43

    .line 565
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFreezeStateChanged, uid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->onFreezeChangedLocked(ZI)V

    .line 567
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/NSLocationMonitor;->sendFreezeStateChanged(ZI)V

    .line 569
    .end local v1    # "result":Z
    :cond_43
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .param p4, "hasNmeaListener"    # Z

    .line 2687
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 15
    .param p1, "geofence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2659
    if-eqz p2, :cond_4a

    .line 2663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeGeofence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    .line 2673
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v10

    .line 2665
    move-object v5, p3

    move-object v9, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 2676
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2678
    .local v0, "identity":J
    :try_start_3b
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_45

    .line 2680
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2681
    nop

    .line 2682
    return-void

    .line 2680
    :catchall_45
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2681
    throw v2

    .line 2660
    .end local v0    # "identity":J
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid pending intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGnssAntennaInfoListener;

    .line 2736
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    .line 2737
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V

    .line 2739
    :cond_9
    return-void
.end method

.method public removeGnssBatchingCallback()V
    .registers 2

    .line 1748
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssBatchingCallback()V

    .line 1749
    :cond_9
    return-void
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;

    .line 2705
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    .line 2706
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    .line 2709
    :cond_9
    return-void
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;

    .line 2750
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    .line 2751
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    .line 2754
    :cond_9
    return-void
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 3235
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    .line 3236
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->noteMockLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 3237
    return-void

    .line 3240
    :cond_f
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3241
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v2

    .line 3242
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v2, :cond_1a

    .line 3243
    monitor-exit v1

    return-void

    .line 3246
    :cond_1a
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProvider(Lcom/android/server/location/MockProvider;)V

    .line 3247
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->hasProvider()Z

    move-result v3

    if-nez v3, :cond_29

    .line 3248
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3252
    :cond_29
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/location/NSLocationMonitor;->updateTestProvider(ZLjava/lang/String;Ljava/lang/String;)V

    .line 3256
    const-string/jumbo v3, "gps"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 3257
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    const-string/jumbo v5, "gps"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 3258
    :cond_41
    const-string v3, "fused"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 3259
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    const-string v5, "fused"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 3260
    :cond_51
    const-string/jumbo v3, "network"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 3261
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    const-string/jumbo v5, "network"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3263
    :cond_62
    :goto_62
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 3264
    iput-boolean v4, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    .line 3265
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->cancelNotificationForMockLocation()V

    .line 3268
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_6f
    monitor-exit v1

    .line 3269
    return-void

    .line 3268
    :catchall_71
    move-exception v2

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_12 .. :try_end_73} :catchall_71

    throw v2
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 2449
    if-nez p2, :cond_e

    if-eqz p1, :cond_5

    goto :goto_e

    .line 2450
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "need either listener or intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2451
    :cond_e
    :goto_e
    if-eqz p2, :cond_1b

    if-nez p1, :cond_13

    goto :goto_1b

    .line 2452
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot register both listener and intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2455
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2457
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_27

    .line 2458
    :try_start_22
    invoke-direct {p0, p2, v2, v2, v1}, Lcom/android/server/location/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v1

    .local v1, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    goto :goto_2b

    .line 2460
    .end local v1    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :cond_27
    invoke-direct {p0, p1, v2, v2, v1}, Lcom/android/server/location/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v1

    .line 2463
    .restart local v1    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :goto_2b
    if-eqz v1, :cond_30

    .line 2464
    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    .line 2466
    .end local v1    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :cond_30
    monitor-exit v0

    .line 2467
    return-void

    .line 2466
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 25
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "geofence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;

    .line 2618
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    if-nez p1, :cond_c

    .line 2619
    sget-object v1, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    move-object v12, v1

    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v1, "request":Landroid/location/LocationRequest;
    goto :goto_e

    .line 2618
    .end local v1    # "request":Landroid/location/LocationRequest;
    .restart local p1    # "request":Landroid/location/LocationRequest;
    :cond_c
    move-object/from16 v12, p1

    .line 2622
    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v12, "request":Landroid/location/LocationRequest;
    :goto_e
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2623
    invoke-static/range {p3 .. p3}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    .line 2622
    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-static {v1, v13, v14, v2}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v15

    .line 2624
    .local v15, "identity":Lcom/android/server/location/CallerIdentity;
    invoke-virtual {v15}, Lcom/android/server/location/CallerIdentity;->enforceLocationPermission()V

    .line 2626
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2628
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2629
    const-string v2, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    move v9, v1

    .line 2631
    .local v9, "callerHasLocationHardwarePermission":Z
    invoke-direct {v0, v12, v15, v9}, Lcom/android/server/location/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;Lcom/android/server/location/CallerIdentity;Z)Landroid/location/LocationRequest;

    move-result-object v8

    .line 2635
    .local v8, "sanitizedRequest":Landroid/location/LocationRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestGeofence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    iget v1, v15, Lcom/android/server/location/CallerIdentity;->userId:I

    if-eqz v1, :cond_64

    .line 2640
    const-string/jumbo v1, "proximity alerts are currently available only to the primary user"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    return-void

    .line 2644
    :cond_64
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget v5, v15, Lcom/android/server/location/CallerIdentity;->uid:I

    .line 2652
    invoke-virtual {v4, v5}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v16

    .line 2644
    move-object/from16 v4, p4

    move-object v5, v12

    move-object/from16 v17, v8

    .end local v8    # "sanitizedRequest":Landroid/location/LocationRequest;
    .local v17, "sanitizedRequest":Landroid/location/LocationRequest;
    move-object/from16 v8, p2

    move/from16 v18, v9

    .end local v9    # "callerHasLocationHardwarePermission":Z
    .local v18, "callerHasLocationHardwarePermission":Z
    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 2654
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    move-object/from16 v2, v17

    .end local v17    # "sanitizedRequest":Landroid/location/LocationRequest;
    .local v2, "sanitizedRequest":Landroid/location/LocationRequest;
    invoke-virtual {v1, v2, v10, v11, v15}, Lcom/android/server/location/GeofenceManager;->addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;)V

    .line 2655
    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 32
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "listenerId"    # Ljava/lang/String;

    .line 2325
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v13, p4

    if-nez p1, :cond_e

    .line 2326
    sget-object v0, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    move-object v14, v0

    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v0, "request":Landroid/location/LocationRequest;
    goto :goto_10

    .line 2325
    .end local v0    # "request":Landroid/location/LocationRequest;
    .restart local p1    # "request":Landroid/location/LocationRequest;
    :cond_e
    move-object/from16 v14, p1

    .line 2328
    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v14, "request":Landroid/location/LocationRequest;
    :goto_10
    if-nez p6, :cond_1a

    if-eqz v3, :cond_1a

    .line 2329
    invoke-static/range {p3 .. p3}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .end local p6    # "listenerId":Ljava/lang/String;
    .local v0, "listenerId":Ljava/lang/String;
    goto :goto_1c

    .line 2332
    .end local v0    # "listenerId":Ljava/lang/String;
    .restart local p6    # "listenerId":Ljava/lang/String;
    :cond_1a
    move-object/from16 v15, p6

    .end local p6    # "listenerId":Ljava/lang/String;
    .local v15, "listenerId":Ljava/lang/String;
    :goto_1c
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v12, p5

    invoke-static {v0, v13, v12, v15}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v11

    .line 2334
    .local v11, "identity":Lcom/android/server/location/CallerIdentity;
    invoke-virtual {v11}, Lcom/android/server/location/CallerIdentity;->enforceLocationPermission()V

    .line 2336
    invoke-virtual {v14}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v10

    .line 2337
    .local v10, "workSource":Landroid/os/WorkSource;
    const/4 v0, 0x0

    if-eqz v10, :cond_3b

    invoke-virtual {v10}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 2338
    iget-object v4, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    :cond_3b
    invoke-virtual {v14}, Landroid/location/LocationRequest;->getHideFromAppOps()Z

    move-result v9

    .line 2342
    .local v9, "hideFromAppOps":Z
    if-eqz v9, :cond_48

    .line 2343
    iget-object v4, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    :cond_48
    invoke-virtual {v14}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 2347
    iget-object v4, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    :cond_55
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2351
    const-string v4, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_63

    move v0, v4

    goto :goto_64

    :cond_63
    move v0, v5

    :goto_64
    move v8, v0

    .line 2353
    .local v8, "callerHasLocationHardwarePermission":Z
    invoke-direct {v1, v14, v11, v8}, Lcom/android/server/location/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;Lcom/android/server/location/CallerIdentity;Z)Landroid/location/LocationRequest;

    move-result-object v7

    .line 2358
    .local v7, "sanitizedRequest":Landroid/location/LocationRequest;
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mLocListenerBlocklist:Ljava/util/HashSet;

    monitor-enter v6

    .line 2359
    :try_start_6c
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mLocListenerBlocklist:Ljava/util/HashSet;

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_126

    if-eqz v0, :cond_96

    .line 2360
    :try_start_74
    const-string v0, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "location listener size is over threshold, so return : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    monitor-exit v6
    :try_end_8c
    .catchall {:try_start_74 .. :try_end_8c} :catchall_8d

    return-void

    .line 2363
    :catchall_8d
    move-exception v0

    move/from16 v16, v8

    move v8, v9

    move-object v5, v11

    move-object v9, v7

    move-object v7, v10

    goto/16 :goto_12d

    :cond_96
    :try_start_96
    monitor-exit v6
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_126

    .line 2366
    if-nez v3, :cond_a5

    if-eqz v2, :cond_9c

    goto :goto_a5

    .line 2367
    :cond_9c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "need either listener or intent"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2368
    :cond_a5
    :goto_a5
    if-eqz v3, :cond_b2

    if-nez v2, :cond_aa

    goto :goto_b2

    .line 2369
    :cond_aa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "cannot register both listener and intent"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2373
    :cond_b2
    :goto_b2
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v6, 0x0

    const/16 v16, 0x1

    if-eqz v2, :cond_bc

    move/from16 v17, v4

    goto :goto_be

    :cond_bc
    move/from16 v17, v5

    :goto_be
    if-eqz v3, :cond_c3

    move/from16 v18, v4

    goto :goto_c5

    :cond_c3
    move/from16 v18, v5

    :goto_c5
    const/16 v19, 0x0

    iget-object v4, v1, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget v5, v11, Lcom/android/server/location/CallerIdentity;->uid:I

    .line 2378
    invoke-virtual {v4, v5}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v20

    .line 2373
    move-object v4, v0

    move v5, v6

    move/from16 v6, v16

    move-object/from16 v21, v7

    .end local v7    # "sanitizedRequest":Landroid/location/LocationRequest;
    .local v21, "sanitizedRequest":Landroid/location/LocationRequest;
    move-object/from16 v7, p4

    move/from16 v16, v8

    .end local v8    # "callerHasLocationHardwarePermission":Z
    .local v16, "callerHasLocationHardwarePermission":Z
    move-object v8, v14

    move/from16 v22, v9

    .end local v9    # "hideFromAppOps":Z
    .local v22, "hideFromAppOps":Z
    move/from16 v9, v17

    move-object/from16 v23, v10

    .end local v10    # "workSource":Landroid/os/WorkSource;
    .local v23, "workSource":Landroid/os/WorkSource;
    move/from16 v10, v18

    move-object/from16 v24, v11

    .end local v11    # "identity":Lcom/android/server/location/CallerIdentity;
    .local v24, "identity":Lcom/android/server/location/CallerIdentity;
    move-object/from16 v11, v19

    move/from16 v12, v20

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 2380
    iget-object v4, v1, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2382
    if-eqz v3, :cond_ff

    .line 2383
    move/from16 v8, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    .end local v22    # "hideFromAppOps":Z
    .end local v23    # "workSource":Landroid/os/WorkSource;
    .end local v24    # "identity":Lcom/android/server/location/CallerIdentity;
    .local v5, "identity":Lcom/android/server/location/CallerIdentity;
    .local v7, "workSource":Landroid/os/WorkSource;
    .local v8, "hideFromAppOps":Z
    :try_start_f6
    invoke-direct {v1, v3, v5, v7, v8}, Lcom/android/server/location/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v0
    :try_end_fa
    .catchall {:try_start_f6 .. :try_end_fa} :catchall_fb

    .local v0, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    goto :goto_109

    .line 2394
    .end local v0    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :catchall_fb
    move-exception v0

    move-object/from16 v9, v21

    goto :goto_122

    .line 2385
    .end local v5    # "identity":Lcom/android/server/location/CallerIdentity;
    .end local v7    # "workSource":Landroid/os/WorkSource;
    .end local v8    # "hideFromAppOps":Z
    .restart local v22    # "hideFromAppOps":Z
    .restart local v23    # "workSource":Landroid/os/WorkSource;
    .restart local v24    # "identity":Lcom/android/server/location/CallerIdentity;
    :cond_ff
    move/from16 v8, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    .end local v22    # "hideFromAppOps":Z
    .end local v23    # "workSource":Landroid/os/WorkSource;
    .end local v24    # "identity":Lcom/android/server/location/CallerIdentity;
    .restart local v5    # "identity":Lcom/android/server/location/CallerIdentity;
    .restart local v7    # "workSource":Landroid/os/WorkSource;
    .restart local v8    # "hideFromAppOps":Z
    :try_start_105
    invoke-direct {v1, v2, v5, v7, v8}, Lcom/android/server/location/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v0

    .line 2387
    .restart local v0    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :goto_109
    if-eqz v0, :cond_11b

    .line 2389
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    iget-object v9, v0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v6, v9}, Lcom/android/server/location/AppOpsHelper;->checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/location/LocationManagerService$Receiver;->mIsAllowed:Z
    :try_end_115
    .catchall {:try_start_105 .. :try_end_115} :catchall_11f

    .line 2392
    move-object/from16 v9, v21

    .end local v21    # "sanitizedRequest":Landroid/location/LocationRequest;
    .local v9, "sanitizedRequest":Landroid/location/LocationRequest;
    :try_start_117
    invoke-direct {v1, v9, v0}, Lcom/android/server/location/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;)V

    goto :goto_11d

    .line 2387
    .end local v9    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v21    # "sanitizedRequest":Landroid/location/LocationRequest;
    :cond_11b
    move-object/from16 v9, v21

    .line 2394
    .end local v0    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    .end local v21    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v9    # "sanitizedRequest":Landroid/location/LocationRequest;
    :goto_11d
    monitor-exit v4

    .line 2395
    return-void

    .line 2394
    .end local v9    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v21    # "sanitizedRequest":Landroid/location/LocationRequest;
    :catchall_11f
    move-exception v0

    move-object/from16 v9, v21

    .end local v21    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v9    # "sanitizedRequest":Landroid/location/LocationRequest;
    :goto_122
    monitor-exit v4
    :try_end_123
    .catchall {:try_start_117 .. :try_end_123} :catchall_124

    throw v0

    :catchall_124
    move-exception v0

    goto :goto_122

    .line 2363
    .end local v5    # "identity":Lcom/android/server/location/CallerIdentity;
    .end local v16    # "callerHasLocationHardwarePermission":Z
    .local v7, "sanitizedRequest":Landroid/location/LocationRequest;
    .local v8, "callerHasLocationHardwarePermission":Z
    .local v9, "hideFromAppOps":Z
    .restart local v10    # "workSource":Landroid/os/WorkSource;
    .restart local v11    # "identity":Lcom/android/server/location/CallerIdentity;
    :catchall_126
    move-exception v0

    move/from16 v16, v8

    move v8, v9

    move-object v5, v11

    move-object v9, v7

    move-object v7, v10

    .end local v10    # "workSource":Landroid/os/WorkSource;
    .end local v11    # "identity":Lcom/android/server/location/CallerIdentity;
    .restart local v5    # "identity":Lcom/android/server/location/CallerIdentity;
    .local v7, "workSource":Landroid/os/WorkSource;
    .local v8, "hideFromAppOps":Z
    .local v9, "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v16    # "callerHasLocationHardwarePermission":Z
    :goto_12d
    :try_start_12d
    monitor-exit v6
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12f

    throw v0

    :catchall_12f
    move-exception v0

    goto :goto_12d
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2758
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/CallerIdentity;->enforceCallingOrSelfLocationPermission(Landroid/content/Context;)V

    .line 2759
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    nop

    .line 2763
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 2762
    invoke-direct {p0, v0}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    .line 2764
    .local v0, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-eqz v0, :cond_30

    .line 2766
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/NSLocationMonitor;->sendExtraCommandInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2770
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    .line 2769
    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 2773
    :cond_30
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    .line 2778
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    .line 2783
    return v2
.end method

.method public setExtraLocationControllerPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2810
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2813
    :try_start_c
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    .line 2814
    monitor-exit v0

    .line 2815
    return-void

    .line 2814
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1
.end method

.method public setExtraLocationControllerPackageEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 2826
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2829
    :try_start_c
    iput-boolean p1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    .line 2830
    monitor-exit v0

    .line 2831
    return-void

    .line 2830
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1
.end method

.method public setHWGeofence()V
    .registers 5

    .line 3330
    const-string/jumbo v0, "sec_location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v0

    .line 3331
    .local v0, "sLocation":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v0, :cond_2f

    .line 3333
    :try_start_d
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v1, :cond_16

    .line 3334
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/location/ISLocationManager;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    goto :goto_24

    .line 3336
    :cond_16
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssManagerService;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/location/ISLocationManager;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    .line 3337
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssManagerService;->enableSLocation()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_24} :catch_25

    .line 3341
    :goto_24
    goto :goto_2f

    .line 3339
    :catch_25
    move-exception v1

    .line 3340
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2f
    :goto_2f
    return-void
.end method

.method public setLocationEnabledForUser(ZI)V
    .registers 10
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 2843
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "setLocationEnabledForUser"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2846
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    .line 2849
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/SettingsHelper;->setLocationEnabled(ZI)V

    .line 2850
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/location/NSLocationMonitor;->sendLocationEnabledInfo(Z)V

    .line 2851
    return-void
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;

    .line 3295
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    .line 3296
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->noteMockLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 3297
    return-void

    .line 3300
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v1

    .line 3301
    .local v1, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-eqz v1, :cond_19

    .line 3305
    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProviderAllowed(Z)V

    .line 3306
    return-void

    .line 3302
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provider doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;

    .line 3275
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    .line 3276
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->noteMockLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 3277
    return-void

    .line 3280
    :cond_f
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    move-result v1

    const-string/jumbo v2, "incomplete location object, missing timestamp or accuracy?"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3283
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v1

    .line 3284
    .local v1, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-eqz v1, :cond_23

    .line 3288
    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProviderLocation(Landroid/location/Location;)V

    .line 3289
    return-void

    .line 3285
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provider doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startGnssBatch(JZLjava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;

    .line 1754
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;->startGnssBatch(JZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public stopGnssBatch()Z
    .registers 2

    .line 1765
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->stopGnssBatch()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;

    .line 2693
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    .line 2694
    :cond_9
    return-void
.end method
