.class public abstract Lcom/android/server/location/gnss/GnssLocationProvider;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;
.implements Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssLocationProvider$FusedLocationListener;,
        Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;,
        Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;,
        Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;,
        Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;,
        Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;,
        Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;,
        Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;,
        Lcom/android/server/location/gnss/GnssLocationProvider$NativeEntryPoint;
    }
.end annotation


# static fields
.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field protected static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field protected static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field protected static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final DEBUG:Z = true

.field private static final DOWNLOAD_EXTRA_WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProviderPsdsDownload"

.field private static final DOWNLOAD_PSDS_DATA:I = 0x6

.field private static final DOWNLOAD_PSDS_DATA_FINISHED:I = 0xb

.field private static final DOWNLOAD_PSDS_DATA_TIMEOUT_MS:J = 0xea60L

.field private static final ELAPSED_REALTIME_HAS_TIMESTAMP_NS:I = 0x1

.field private static final ELAPSED_REALTIME_HAS_TIME_UNCERTAINTY_NS:I = 0x2

.field private static final EMERGENCY_LOCATION_UPDATE_DURATION_MULTIPLIER:I = 0x3

.field public static final GPS_CAPABILITY_ANTENNA_INFO:I = 0x800

.field public static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field public static final GPS_CAPABILITY_LOW_POWER_MODE:I = 0x100

.field public static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field public static final GPS_CAPABILITY_MEASUREMENT_CORRECTIONS:I = 0x400

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field public static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field public static final GPS_CAPABILITY_SATELLITE_BLACKLIST:I = 0x200

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INITIALIZE_HANDLER:I = 0xd

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final ITAR_SPEED_LIMIT_METERS_PER_SECOND:F = 400.0f

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_BEARING_ACCURACY:I = 0x80

.field private static final LOCATION_HAS_HORIZONTAL_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_HAS_SPEED_ACCURACY:I = 0x40

.field private static final LOCATION_HAS_VERTICAL_ACCURACY:I = 0x20

.field private static final LOCATION_INVALID:I = 0x0

.field private static final LOCATION_OFF_DELAY_THRESHOLD_ERROR_MILLIS:J = 0x3a98L

.field private static final LOCATION_OFF_DELAY_THRESHOLD_WARN_MILLIS:J = 0x7d0L

.field private static final LOCATION_UPDATE_DURATION_MILLIS:J = 0x2710L

.field private static final LOCATION_UPDATE_MIN_TIME_INTERVAL_MILLIS:J = 0x3e8L

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field protected static final MAX_SECGPS_DUMP_SIZE:I = 0x12c

.field protected static final MAX_SECGPS_SIMHISTORY_DUMP_SIZE:I = 0x1e

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final REPORT_LOCATION:I = 0x11

.field private static final REPORT_SV_STATUS:I = 0x12

.field private static final REQUEST_LOCATION:I = 0x10

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field protected static final UPDATE_LOW_POWER_MODE:I = 0x1

.field private static final VERBOSE:Z

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProvider"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0x7530L

.field private static sIsInitialized:Z

.field private static sStaticTestOverride:Z


# instance fields
.field private isValidMccMnc:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field protected mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

.field private mClientSource:Landroid/os/WorkSource;

.field protected final mContext:Landroid/content/Context;

.field protected mDeleteAidingHistory:Ljava/lang/String;

.field private final mDeviceIdleStationaryListener:Lcom/android/server/DeviceIdleInternal$StationaryListener;

.field private mDisableGpsForPowerManager:Z

.field private mDownloadPsdsDataPending:I

.field private final mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mFixInterval:I

.field private mFixRequestTime:J

.field private mForceLocationEnabled:Z

.field private final mFusedLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private final mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

.field private final mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

.field private final mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

.field private mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

.field private final mGnssGeofenceProvider:Lcom/android/server/location/gnss/GnssGeofenceProvider;

.field private final mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

.field private mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

.field private final mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

.field private mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field protected mGpsEnabled:Z

.field protected mHandler:Landroid/os/Handler;

.field private volatile mHardwareModelName:Ljava/lang/String;

.field private volatile mHardwareYear:I

.field private volatile mIsDeviceStationary:Z

.field mIsNavigationAppUsingGnss:Z

.field private mIsSpirentTestSim:Z

.field private volatile mItarSpeedLimitExceeded:Z

.field protected mIzatServiceEnabled:Z

.field private mLastFixTime:J

.field protected mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

.field private final mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

.field protected final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field protected mLowPowerMode:Z

.field mMotionPowerSavingMode:Z

.field protected final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field protected mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field protected final mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

.field private final mNetworkLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

.field private mNmeaBuffer:[B

.field private final mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field protected mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private final mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

.field protected final mSecGpsDump:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSecGpsSimHistoryDump:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mShutdown:Z

.field public mSimSlotId:I

.field protected mStarted:Z

.field protected mStartedChangedElapsedRealtime:J

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field protected mSupportsPsds:Z

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field protected volatile mTopHalCapabilities:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 133
    const-string v0, "GnssLocationProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    .line 135
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 356
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->sIsInitialized:Z

    .line 357
    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->sStaticTestOverride:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 726
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mMotionPowerSavingMode:Z

    .line 265
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIsSpirentTestSim:Z

    .line 268
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isValidMccMnc:Z

    .line 271
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIsNavigationAppUsingGnss:Z

    .line 274
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 330
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 353
    new-instance v1, Lcom/android/server/location/gnss/ExponentialBackOff;

    const-wide/32 v2, 0x493e0

    const-wide/32 v4, 0xdbba00

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/location/gnss/ExponentialBackOff;-><init>(JJ)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    .line 372
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsDataPending:I

    .line 378
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 381
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLowPowerMode:Z

    .line 400
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    .line 402
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 413
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 415
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    .line 421
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIsDeviceStationary:Z

    .line 425
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    .line 429
    const-string v2, "None"

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeleteAidingHistory:Ljava/lang/String;

    .line 432
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mForceLocationEnabled:Z

    .line 441
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    .line 444
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 447
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    .line 453
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;

    invoke-direct {v2, p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$1;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

    .line 454
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$FusedLocationListener;

    invoke-direct {v2, p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$FusedLocationListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$1;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

    .line 491
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 496
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHardwareYear:I

    .line 504
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 533
    new-instance v2, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$1hXQgNJS0Q8F8bUdWsxa94PM98g;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$1hXQgNJS0Q8F8bUdWsxa94PM98g;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeviceIdleStationaryListener:Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 541
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$1;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2081
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$9;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$9;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2657
    const/16 v2, 0x78

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNmeaBuffer:[B

    .line 728
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v3, "qcom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIzatServiceEnabled:Z

    .line 729
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->ensureInitialized()V

    .line 731
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 734
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    .line 737
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 738
    const/4 v3, 0x1

    const-string v4, "GnssLocationProvider"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 739
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 742
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "telephony_subscription_service"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 745
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "GnssLocationProviderPsdsDownload"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 747
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 749
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 750
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 751
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 754
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 757
    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 761
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v4}, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 768
    new-instance v2, Lcom/android/server/location/gnss/GnssConfiguration;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/location/gnss/GnssConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 769
    new-instance v2, Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssCapabilitiesProvider;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    .line 771
    new-instance v2, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget-boolean v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {v2, p1, v4, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 774
    new-instance v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    new-instance v4, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$48m7ukf99eMCKhVUjqljxXFFvWw;

    invoke-direct {v4, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$48m7ukf99eMCKhVUjqljxXFFvWw;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v2, p1, v4, v5, v6}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 777
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$2;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4, v5, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$2;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    .line 789
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$3;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider$3;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 796
    new-instance v2, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v4}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    .line 798
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$4;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider$4;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 805
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$5;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider$5;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    .line 812
    new-instance v2, Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {v2, v4, v5}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;-><init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    .line 813
    new-instance v2, Lcom/android/server/location/gnss/NtpTimeHelper;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v4, v5, p0}, Lcom/android/server/location/gnss/NtpTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    .line 814
    new-instance v2, Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v4, v5, p0}, Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;)V

    .line 817
    .local v2, "gnssSatelliteBlacklistHelper":Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;
    new-instance v4, Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-direct {v4}, Lcom/android/server/location/gnss/GnssBatchingProvider;-><init>()V

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    .line 818
    new-instance v4, Lcom/android/server/location/gnss/GnssGeofenceProvider;

    invoke-direct {v4}, Lcom/android/server/location/gnss/GnssGeofenceProvider;-><init>()V

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/gnss/GnssGeofenceProvider;

    .line 820
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 822
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/location/gnss/GnssLocationProvider$6;

    invoke-direct {v6, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$6;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v8, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 832
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 833
    const-string/jumbo v5, "location_mode"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/android/server/location/gnss/GnssLocationProvider$7;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v7}, Lcom/android/server/location/gnss/GnssLocationProvider$7;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Handler;)V

    .line 832
    const/4 v7, -0x1

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 842
    sget-object v4, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {p0, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    .line 843
    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->setAllowed(Z)V

    .line 845
    const/16 v3, 0xd

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 846
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$J1FYzW5KOl5qaNdaO2TLZ9hbi9Y;

    invoke-direct {v1, v2}, Lcom/android/server/location/gnss/-$$Lambda$J1FYzW5KOl5qaNdaO2TLZ9hbi9Y;-><init>(Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 847
    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/location/gnss/GnssLocationProvider;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHardwareYear:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->startNavigating()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/gnss/GnssLocationProvider;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/gnss/GnssLocationProvider;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/location/gnss/GnssLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "x2"    # Landroid/os/WorkSource;

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/NtpTimeHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleRequestLocation(ZZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/server/location/gnss/GnssLocationProvider;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 117
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsDataPending:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/location/gnss/GnssLocationProvider;ZLandroid/location/Location;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/location/Location;

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportLocation(ZLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportSvStatus(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/location/gnss/GnssLocationProvider;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/location/gnss/GnssLocationProvider;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Z

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setupNativeGnssService(Z)V

    return-void
.end method

.method static synthetic access$3400()Z
    .registers 1

    .line 117
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_is_gnss_visibility_control_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssVisibilityControl;)Lcom/android/server/location/gnss/GnssVisibilityControl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 117
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->injectLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->injectBestLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/DeviceIdleInternal$StationaryListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeviceIdleStationaryListener:Lcom/android/server/DeviceIdleInternal$StationaryListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/telephony/SubscriptionManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/gnss/GnssLocationProvider;IILjava/lang/Object;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/gnss/GnssLocationProvider;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 117
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->subscriptionOrCarrierConfigChanged()V

    return-void
.end method

.method private checkMotionPowerSavingMode(Lcom/android/internal/location/ProviderRequest;Lcom/android/internal/location/ProviderRequest;)V
    .registers 5
    .param p1, "prevRequest"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "newRequest"    # Lcom/android/internal/location/ProviderRequest;

    .line 2604
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mMotionPowerSavingMode:Z

    if-nez v0, :cond_5

    return-void

    .line 2607
    :cond_5
    if-eqz p1, :cond_1e

    iget-boolean v0, p1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-nez v0, :cond_1e

    if-eqz p2, :cond_1e

    iget-boolean v0, p2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_1e

    .line 2609
    const-string v0, "GnssLocationProvider"

    const-string v1, "Release motion power saving mode for new request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mMotionPowerSavingMode:Z

    .line 2612
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateLowPowerMode()V

    .line 2614
    :cond_1e
    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1403
    if-nez p1, :cond_d

    .line 1404
    const v0, 0xffff

    .line 1406
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-nez v1, :cond_9d

    .line 1407
    and-int/lit8 v0, v0, -0x3

    goto/16 :goto_9d

    .line 1410
    .end local v0    # "flags":I
    :cond_d
    const/4 v0, 0x0

    .line 1411
    .restart local v0    # "flags":I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    or-int/lit8 v0, v0, 0x1

    .line 1412
    :cond_18
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    or-int/lit8 v0, v0, 0x2

    .line 1413
    :cond_22
    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    or-int/lit8 v0, v0, 0x4

    .line 1414
    :cond_2d
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    or-int/lit8 v0, v0, 0x8

    .line 1415
    :cond_38
    const-string/jumbo v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    or-int/lit8 v0, v0, 0x10

    .line 1416
    :cond_43
    const-string/jumbo v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    or-int/lit8 v0, v0, 0x20

    .line 1417
    :cond_4e
    const-string/jumbo v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    or-int/lit8 v0, v0, 0x40

    .line 1418
    :cond_59
    const-string/jumbo v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    or-int/lit16 v0, v0, 0x80

    .line 1419
    :cond_64
    const-string/jumbo v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    or-int/lit16 v0, v0, 0x100

    .line 1420
    :cond_6f
    const-string/jumbo v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    or-int/lit16 v0, v0, 0x200

    .line 1421
    :cond_7a
    const-string/jumbo v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    or-int/lit16 v0, v0, 0x400

    .line 1422
    :cond_85
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1423
    :cond_91
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    const v1, 0xffff

    or-int/2addr v0, v1

    .line 1426
    :cond_9d
    :goto_9d
    if-eqz v0, :cond_a5

    .line 1427
    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1429
    :cond_a5
    return-void
.end method

.method private static declared-synchronized ensureInitialized()V
    .registers 2

    const-class v0, Lcom/android/server/location/gnss/GnssLocationProvider;

    monitor-enter v0

    .line 696
    :try_start_3
    sget-boolean v1, Lcom/android/server/location/gnss/GnssLocationProvider;->sIsInitialized:Z

    if-nez v1, :cond_a

    .line 697
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->class_init_native()V

    .line 699
    :cond_a
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/location/gnss/GnssLocationProvider;->sIsInitialized:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 700
    monitor-exit v0

    return-void

    .line 695
    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getGeofenceStatus(I)I
    .registers 2
    .param p0, "status"    # I

    .line 1978
    const/16 v0, -0x95

    if-eq p0, v0, :cond_19

    if-eqz p0, :cond_17

    const/16 v0, 0x64

    if-eq p0, v0, :cond_15

    packed-switch p0, :pswitch_data_1c

    .line 1992
    const/4 v0, -0x1

    return v0

    .line 1984
    :pswitch_f
    const/4 v0, 0x2

    return v0

    .line 1990
    :pswitch_11
    const/4 v0, 0x3

    return v0

    .line 1986
    :pswitch_13
    const/4 v0, 0x4

    return v0

    .line 1988
    :cond_15
    const/4 v0, 0x1

    return v0

    .line 1980
    :cond_17
    const/4 v0, 0x0

    return v0

    .line 1982
    :cond_19
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_1c
    .packed-switch -0x67
        :pswitch_13
        :pswitch_11
        :pswitch_f
    .end packed-switch
.end method

.method private getSuplMode(Z)I
    .registers 5
    .param p1, "agpsEnabled"    # Z

    .line 1104
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    .line 1105
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplMode(I)I

    move-result v1

    .line 1106
    .local v1, "suplMode":I
    if-nez v1, :cond_c

    .line 1107
    return v0

    .line 1112
    :cond_c
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_19

    .line 1113
    const/4 v0, 0x1

    return v0

    .line 1116
    .end local v1    # "suplMode":I
    :cond_19
    return v0
.end method

.method private getTimestamp()Ljava/lang/String;
    .registers 4

    .line 2618
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2619
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const-string v2, "[yyyy-MM-dd HH:mm:ss]"

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleDownloadPsdsData()V
    .registers 10

    .line 991
    const-wide/16 v0, 0x0

    .line 992
    .local v0, "xtraDownloadedTime":J
    const-wide/16 v2, 0x0

    .line 993
    .local v2, "currentTime":J
    :try_start_4
    const-string/jumbo v4, "persist.sys.xtra_time"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 994
    .local v4, "t":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v2, v5

    .line 995
    const-string/jumbo v5, "user"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    if-eqz v4, :cond_3b

    .line 996
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-wide v0, v5

    .line 997
    sub-long v5, v2, v0

    const-wide/32 v7, 0x1499700

    cmp-long v5, v5, v7

    if-gez v5, :cond_33

    .line 998
    const-string v5, "GnssLocationProvider"

    const-string v6, "Ignore xtra download request"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    return-void

    .line 1001
    :cond_33
    const-string v5, "GnssLocationProvider"

    const-string/jumbo v6, "xtra download request accepted from FW"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_3b} :catch_3c

    .line 1006
    .end local v0    # "xtraDownloadedTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "t":Ljava/lang/String;
    :cond_3b
    goto :goto_44

    .line 1004
    :catch_3c
    move-exception v0

    .line 1005
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "GnssLocationProvider"

    const-string v2, "NumberFormatException while using parseLong."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_44
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-nez v0, :cond_51

    .line 1010
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleDownloadPsdsData() called when PSDS not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return-void

    .line 1013
    :cond_51
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsDataPending:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_57

    .line 1015
    return-void

    .line 1017
    :cond_57
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_63

    .line 1019
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsDataPending:I

    .line 1020
    return-void

    .line 1022
    :cond_63
    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsDataPending:I

    .line 1024
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1026
    :try_start_68
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1027
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_83

    .line 1028
    const-string v0, "GnssLocationProvider"

    const-string v1, "WakeLock acquired by handleDownloadPsdsData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$iQJ1BU-U60yAaoxpxAujpx-GZq4;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$iQJ1BU-U60yAaoxpxAujpx-GZq4;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1070
    return-void

    .line 1027
    :catchall_83
    move-exception v1

    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v1
.end method

.method private handleReportLocation(ZLandroid/location/Location;)V
    .registers 10
    .param p1, "hasLatLong"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1561
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 1562
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const/high16 v3, 0x43c80000    # 400.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 1565
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    const-string v3, "GnssLocationProvider"

    if-eqz v0, :cond_2c

    .line 1566
    const-string v0, "Hal reported a speed in excess of ITAR limit.  GPS/GNSS Navigation output blocked."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_2b

    .line 1569
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1571
    :cond_2b
    return-void

    .line 1574
    :cond_2c
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportLocation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_49
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 1578
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->reportLocation(Landroid/location/Location;)V

    .line 1580
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_83

    .line 1581
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1582
    if-eqz p1, :cond_b7

    .line 1583
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1584
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logPositionAccuracyMeters(F)V

    .line 1586
    :cond_6f
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    if-lez v0, :cond_b7

    .line 1587
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    .line 1588
    .local v0, "timeBetweenFixes":I
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v4, v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logMissedReports(II)V

    .line 1589
    .end local v0    # "timeBetweenFixes":I
    goto :goto_b7

    .line 1595
    :cond_83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v0, v4

    .line 1596
    .local v0, "locationAfterStartedFalseMillis":J
    const-wide/16 v4, 0x7d0

    cmp-long v4, v0, v4

    if-lez v4, :cond_b7

    .line 1597
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected GNSS Location report "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " after location turned off"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1600
    .local v4, "logMessage":Ljava/lang/String;
    const-wide/16 v5, 0x3a98

    cmp-long v5, v0, v5

    if-lez v5, :cond_b4

    .line 1601
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    .line 1603
    :cond_b4
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    .end local v0    # "locationAfterStartedFalseMillis":J
    .end local v4    # "logMessage":Ljava/lang/String;
    :cond_b7
    :goto_b7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 1610
    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez v4, :cond_fe

    if-eqz p1, :cond_fe

    .line 1611
    iget-wide v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTFF: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_ea

    .line 1614
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logTimeToFirstFixMilliSecs(I)V

    .line 1618
    :cond_ea
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->onFirstFix(I)V

    .line 1619
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_fe

    .line 1621
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_sendGpsTime(JJ)V

    .line 1626
    :cond_fe
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_116

    .line 1631
    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_116

    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-ge v0, v1, :cond_116

    .line 1632
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1636
    :cond_116
    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_12f

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_12f

    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_12f

    .line 1638
    const-string/jumbo v0, "got fix, hibernating"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hibernate()V

    .line 1641
    :cond_12f
    return-void
.end method

.method private handleReportSvStatus(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)V
    .registers 15
    .param p1, "info"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    .line 1707
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    .line 1708
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCount:I
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)I

    move-result v1

    .line 1709
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v2

    .line 1710
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mCn0s:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v3

    .line 1711
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v4

    .line 1712
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v5

    .line 1713
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1700(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v6

    .line 1714
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mBasebandCn0s:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1800(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v7

    .line 1707
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F[F[F)V

    .line 1717
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mCn0s:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v1

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCount:I
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)I

    move-result v2

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1700(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logCn0([FI[F)V

    .line 1719
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_50

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SV count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCount:I
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    :cond_50
    nop

    .line 1724
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCount:I
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)I

    move-result v2

    .line 1725
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v3

    .line 1726
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mCn0s:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v4

    .line 1727
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v5

    .line 1728
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v6

    .line 1729
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1700(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v7

    .line 1730
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mBasebandCn0s:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1800(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    .line 1723
    invoke-static/range {v2 .. v8}, Landroid/location/GnssStatus;->wrap(I[I[F[F[F[F[F)Landroid/location/GnssStatus;

    move-result-object v0

    .line 1731
    .local v0, "gnssStatus":Landroid/location/GnssStatus;
    const/4 v2, 0x0

    .line 1732
    .local v2, "usedInFixCount":I
    const/4 v3, 0x0

    .line 1733
    .local v3, "maxCn0":I
    const/4 v4, 0x0

    .line 1734
    .local v4, "meanCn0":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_75
    invoke-virtual {v0}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v6

    if-ge v5, v6, :cond_13f

    .line 1735
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 1736
    add-int/lit8 v2, v2, 0x1

    .line 1737
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v6

    int-to-float v7, v3

    cmpl-float v6, v6, v7

    if-lez v6, :cond_91

    .line 1738
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v6

    float-to-int v3, v6

    .line 1740
    :cond_91
    int-to-float v6, v4

    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v4, v6

    .line 1741
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logConstellationType(I)V

    .line 1743
    :cond_a1
    sget-boolean v6, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    if-eqz v6, :cond_13b

    .line 1744
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "svid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cn0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " basebandCn0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getBasebandCn0DbHz(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " elev: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " azimuth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1748
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " carrier frequency: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1750
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->hasEphemerisData(I)Z

    move-result v7

    const-string v8, "  "

    if-eqz v7, :cond_fe

    const-string v7, " E"

    goto :goto_ff

    :cond_fe
    move-object v7, v8

    :goto_ff
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->hasAlmanacData(I)Z

    move-result v7

    if-eqz v7, :cond_10a

    const-string v8, " A"

    :cond_10a
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_118

    const-string v7, "U"

    goto :goto_119

    :cond_118
    move-object v7, v8

    :goto_119
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->hasCarrierFrequencyHz(I)Z

    move-result v7

    if-eqz v7, :cond_125

    const-string v7, "F"

    goto :goto_126

    :cond_125
    move-object v7, v8

    :goto_126
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->hasBasebandCn0DbHz(I)Z

    move-result v7

    if-eqz v7, :cond_131

    const-string v8, "B"

    :cond_131
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1744
    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_13b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_75

    .line 1758
    .end local v5    # "i":I
    :cond_13f
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v1

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mCn0s:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v5

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCount:I
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)I

    move-result v6

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_printSvStatus([I[FI)V

    .line 1761
    if-lez v2, :cond_151

    .line 1762
    div-int/2addr v4, v2

    .line 1765
    :cond_151
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->set(III)V

    .line 1767
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v1, v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logSvStatus(Landroid/location/GnssStatus;)V

    .line 1769
    nop

    .line 1770
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCount:I
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)I

    move-result v6

    .line 1771
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v7

    .line 1772
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mCn0s:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    .line 1773
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v9

    .line 1774
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v10

    .line 1775
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1700(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v11

    .line 1776
    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mBasebandCn0s:[F
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1800(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v12

    .line 1769
    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_onSvStatusChanged(I[I[F[F[F[F[F)V

    .line 1777
    return-void
.end method

.method private handleRequestLocation(ZZ)V
    .registers 16
    .param p1, "independentFromGnss"    # Z
    .param p2, "isUserEmergency"    # Z

    .line 871
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isRequestLocationRateLimited()Z

    move-result v0

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_e

    .line 873
    const-string v0, "RequestLocation is denied due to too frequent requests."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-void

    .line 877
    :cond_e
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 878
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-wide/16 v2, 0x2710

    const-string/jumbo v4, "gnss_hal_location_request_duration_millis"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 882
    .local v2, "durationMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_29

    .line 883
    const-string v4, "GNSS HAL location request is disabled by Settings."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return-void

    .line 887
    :cond_29
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 891
    .local v4, "locationManager":Landroid/location/LocationManager;
    new-instance v5, Landroid/location/LocationRequest;

    invoke-direct {v5}, Landroid/location/LocationRequest;-><init>()V

    .line 892
    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v5

    .line 893
    invoke-virtual {v5, v6, v7}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v5

    .line 895
    .local v5, "locationRequest":Landroid/location/LocationRequest;
    if-nez p1, :cond_56

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_getDBHSupported()Z

    move-result v6

    if-nez v6, :cond_4c

    goto :goto_56

    .line 902
    :cond_4c
    const-string v6, "fused"

    .line 903
    .local v6, "provider":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

    .line 904
    .local v7, "locationListener":Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;
    const/16 v8, 0x64

    invoke-virtual {v5, v8}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_60

    .line 897
    .end local v6    # "provider":Ljava/lang/String;
    .end local v7    # "locationListener":Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;
    :cond_56
    :goto_56
    const-string/jumbo v6, "network"

    .line 898
    .restart local v6    # "provider":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

    .line 899
    .restart local v7    # "locationListener":Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;
    const/16 v8, 0xc9

    invoke-virtual {v5, v8}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 907
    :goto_60
    invoke-virtual {v5, v6}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    .line 911
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v8}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eqz v8, :cond_7f

    .line 912
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 913
    invoke-virtual {v8}, Lcom/android/server/location/gnss/GnssConfiguration;->getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object v8

    .line 914
    .local v8, "halVersion":Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
    if-nez p2, :cond_79

    iget v11, v8, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    if-ge v11, v10, :cond_7f

    .line 915
    :cond_79
    invoke-virtual {v5, v9}, Landroid/location/LocationRequest;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;

    .line 916
    const-wide/16 v11, 0x3

    mul-long/2addr v2, v11

    .line 920
    .end local v8    # "halVersion":Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
    :cond_7f
    new-array v8, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v8, v10

    .line 923
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 921
    const-string v9, "GNSS HAL Requesting location updates from %s provider for %d millis."

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 920
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :try_start_93
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 927
    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    .line 926
    invoke-virtual {v4, v5, v7, v8}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 928
    # operator++ for: Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;->mNumLocationUpdateRequest:I
    invoke-static {v7}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;->access$1008(Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;)I

    .line 929
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$JndfaKf2MNdn0UzX-g2bR-w7fzA;

    invoke-direct {v9, v7, v6, v4}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$JndfaKf2MNdn0UzX-g2bR-w7fzA;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V

    invoke-virtual {v8, v9, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_a9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_93 .. :try_end_a9} :catch_aa

    .line 938
    goto :goto_b0

    .line 936
    :catch_aa
    move-exception v8

    .line 937
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "Unable to request location."

    invoke-static {v1, v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :goto_b0
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 1227
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->checkMotionPowerSavingMode(Lcom/android/internal/location/ProviderRequest;Lcom/android/internal/location/ProviderRequest;)V

    .line 1229
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1230
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 1231
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 1232
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateRequirements()V

    .line 1233
    return-void
.end method

.method private hasCapability(I)Z
    .registers 3
    .param p1, "capability"    # I

    .line 1552
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTopHalCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private hibernate()V
    .registers 8

    .line 1544
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1545
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1546
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1547
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1548
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1549
    return-void
.end method

.method private injectBestLocation(Landroid/location/Location;)V
    .registers 44
    .param p1, "location"    # Landroid/location/Location;

    .line 942
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 943
    return-void

    .line 946
    :cond_7
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "injectBestLocation: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    nop

    .line 949
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    or-int/lit8 v0, v0, 0x1

    .line 950
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x4

    goto :goto_26

    :cond_25
    move v3, v2

    :goto_26
    or-int/2addr v0, v3

    .line 951
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_30

    const/16 v3, 0x8

    goto :goto_31

    :cond_30
    move v3, v2

    :goto_31
    or-int/2addr v0, v3

    .line 952
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_3b

    const/16 v3, 0x10

    goto :goto_3c

    :cond_3b
    move v3, v2

    :goto_3c
    or-int/2addr v0, v3

    .line 953
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v3

    if-eqz v3, :cond_46

    const/16 v3, 0x20

    goto :goto_47

    :cond_46
    move v3, v2

    :goto_47
    or-int/2addr v0, v3

    .line 954
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v3

    if-eqz v3, :cond_51

    const/16 v3, 0x40

    goto :goto_52

    :cond_51
    move v3, v2

    :goto_52
    or-int/2addr v0, v3

    .line 955
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v3

    if-eqz v3, :cond_5c

    const/16 v3, 0x80

    goto :goto_5d

    :cond_5c
    move v3, v2

    :goto_5d
    or-int/2addr v0, v3

    .line 957
    .local v0, "gnssLocationFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v25

    .line 958
    .local v25, "latitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v27

    .line 959
    .local v27, "longitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v29

    .line 960
    .local v29, "altitudeMeters":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v3

    .line 961
    .local v3, "speedMetersPerSec":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v31

    .line 962
    .local v31, "bearingDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v32

    .line 963
    .local v32, "horizontalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v33

    .line 964
    .local v33, "verticalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v34

    .line 965
    .local v34, "speedAccuracyMetersPerSecond":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v35

    .line 966
    .local v35, "bearingAccuracyDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v36

    .line 968
    .local v36, "timestamp":J
    nop

    .line 969
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 970
    goto :goto_8f

    :cond_8e
    move v1, v2

    :goto_8f
    or-int/lit8 v1, v1, 0x1

    .local v1, "elapsedRealtimeFlags":I
    move/from16 v20, v1

    .line 971
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v38

    .local v38, "elapsedRealtimeNanos":J
    move-wide/from16 v21, v38

    .line 972
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v40

    .local v40, "elapsedRealtimeUncertaintyNanos":D
    move-wide/from16 v23, v40

    .line 974
    move-object/from16 v4, p0

    move v5, v0

    move-wide/from16 v6, v25

    move-wide/from16 v8, v27

    move-wide/from16 v10, v29

    move v12, v3

    move/from16 v13, v31

    move/from16 v14, v32

    move/from16 v15, v33

    move/from16 v16, v34

    move/from16 v17, v35

    move-wide/from16 v18, v36

    invoke-direct/range {v4 .. v24}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_inject_best_location(IDDDFFFFFFJIJD)V

    .line 980
    return-void
.end method

.method private injectLocation(Landroid/location/Location;)V
    .registers 10
    .param p1, "location"    # Landroid/location/Location;

    .line 1073
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1074
    return-void

    .line 1076
    :cond_7
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1078
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "injectLocation: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 1081
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    .line 1080
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_inject_location(DDF)V

    .line 1083
    :cond_25
    return-void
.end method

.method private isRequestLocationRateLimited()Z
    .registers 2

    .line 985
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupported()Z
    .registers 1

    .line 688
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->sStaticTestOverride:Z

    if-eqz v0, :cond_6

    .line 689
    const/4 v0, 0x1

    return v0

    .line 691
    :cond_6
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->ensureInitialized()V

    .line 692
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$48m7ukf99eMCKhVUjqljxXFFvWw(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->onNetworkAvailable()V

    return-void
.end method

.method static synthetic lambda$handleRequestLocation$2(Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V
    .registers 5
    .param p0, "locationListener"    # Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationManager"    # Landroid/location/LocationManager;

    .line 930
    # --operator for: Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;->mNumLocationUpdateRequest:I
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;->access$1006(Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;)I

    move-result v0

    if-nez v0, :cond_1a

    .line 931
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 932
    const-string v1, "Removing location updates from %s provider."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 931
    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-virtual {p2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 935
    :cond_1a
    return-void
.end method

.method private messageIdAsString(I)Ljava/lang/String;
    .registers 3
    .param p1, "message"    # I

    .line 2484
    const/4 v0, 0x1

    if-eq p1, v0, :cond_47

    const/4 v0, 0x3

    if-eq p1, v0, :cond_44

    const/16 v0, 0xb

    if-eq p1, v0, :cond_41

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3b

    const/4 v0, 0x5

    if-eq p1, v0, :cond_38

    const/4 v0, 0x6

    if-eq p1, v0, :cond_35

    const/16 v0, 0x17

    if-eq p1, v0, :cond_32

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2f

    packed-switch p1, :pswitch_data_4a

    .line 2512
    const-string v0, "<Unknown>"

    return-object v0

    .line 2500
    :pswitch_26
    const-string v0, "REPORT_SV_STATUS"

    return-object v0

    .line 2498
    :pswitch_29
    const-string v0, "REPORT_LOCATION"

    return-object v0

    .line 2490
    :pswitch_2c
    const-string v0, "REQUEST_LOCATION"

    return-object v0

    .line 2509
    :cond_2f
    const-string v0, "SEC_GNSS_CONFIGURATION_UPDATE"

    return-object v0

    .line 2505
    :cond_32
    const-string v0, "DELETE_AIDING_DATA"

    return-object v0

    .line 2492
    :cond_35
    const-string v0, "DOWNLOAD_PSDS_DATA"

    return-object v0

    .line 2488
    :cond_38
    const-string v0, "INJECT_NTP_TIME"

    return-object v0

    .line 2503
    :cond_3b
    const-string v0, "WAKELOCK_CONTROL"

    return-object v0

    .line 2496
    :cond_3e
    const-string v0, "INITIALIZE_HANDLER"

    return-object v0

    .line 2494
    :cond_41
    const-string v0, "DOWNLOAD_PSDS_DATA_FINISHED"

    return-object v0

    .line 2486
    :cond_44
    const-string v0, "SET_REQUEST"

    return-object v0

    .line 2507
    :cond_47
    const-string v0, "UPDATE_LOW_POWER_MODE"

    return-object v0

    :pswitch_data_4a
    .packed-switch 0x10
        :pswitch_2c
        :pswitch_29
        :pswitch_26
    .end packed-switch
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method protected static native native_init_once(Z)V
.end method

.method private native native_inject_best_location(IDDDFFFFFFJIJD)V
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_psds_data([BI)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private static native native_is_gnss_visibility_control_supported()Z
.end method

.method protected static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIIIZ)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_psds()Z
.end method

.method private onNetworkAvailable()V
    .registers 2

    .line 861
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/NtpTimeHelper;->onNetworkAvailable()V

    .line 862
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsDataPending:I

    if-nez v0, :cond_10

    .line 863
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz v0, :cond_10

    .line 865
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->psdsDownloadRequest()V

    .line 868
    :cond_10
    return-void
.end method

.method private reloadGpsProperties()V
    .registers 4

    .line 703
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_25

    .line 704
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v0, :cond_24

    .line 705
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromCarrierConfig()V

    .line 706
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onConfigurationUpdated(Lcom/android/server/location/gnss/GnssConfiguration;)V

    .line 707
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->setEsExtensionSec()V

    .line 708
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSecCSC()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyExtensionSeconds(I)V

    .line 710
    :cond_24
    return-void

    .line 712
    :cond_25
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties()V

    .line 715
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 716
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mC2KServerPort:I

    .line 717
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSec()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyExtensionSeconds(I)V

    .line 718
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplEs(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_50

    move v1, v2

    :cond_50
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 719
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 720
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v0, :cond_60

    .line 721
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onConfigurationUpdated(Lcom/android/server/location/gnss/GnssConfiguration;)V

    .line 723
    :cond_60
    return-void
.end method

.method private reportLocationBatch([Landroid/location/Location;)V
    .registers 5
    .param p1, "locationArray"    # [Landroid/location/Location;

    .line 1961
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1963
    .local v0, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location batch of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reportLocation(Ljava/util/List;)V

    .line 1966
    return-void
.end method

.method private restartLocationRequest()V
    .registers 4

    .line 1866
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartLocationRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1869
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x12c

    if-le v1, v2, :cond_1b

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1870
    :cond_1b
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": restartLocationRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1871
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateRequirements()V

    .line 1872
    return-void
.end method

.method private restartRequests()V
    .registers 3

    .line 1855
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartRequests"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->restartLocationRequest()V

    .line 1858
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->resumeIfStarted()V

    .line 1859
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->resumeIfStarted()V

    .line 1860
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->resumeIfStarted()V

    .line 1861
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider;->resumeIfStarted()V

    .line 1862
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/gnss/GnssGeofenceProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->resumeIfStarted()V

    .line 1863
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .registers 9
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2301
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2304
    const-string v0, ")"

    const-string v1, "WakeLock acquired by sendMessage("

    const-string v2, "GnssLocationProvider"

    const-string v3, ", "

    const/16 v4, 0x11

    if-ne v4, p1, :cond_33

    .line 2305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 2309
    :cond_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :goto_58
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2314
    return-void
.end method

.method private setGpsEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1120
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1121
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    .line 1122
    monitor-exit v0

    .line 1123
    return-void

    .line 1122
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static setIsSupportedForTest(Z)V
    .registers 1
    .param p0, "override"    # Z

    .line 684
    sput-boolean p0, Lcom/android/server/location/gnss/GnssLocationProvider;->sStaticTestOverride:Z

    .line 685
    return-void
.end method

.method private setPositionMode(IIIIIZ)Z
    .registers 15
    .param p1, "mode"    # I
    .param p2, "recurrence"    # I
    .param p3, "minInterval"    # I
    .param p4, "preferredAccuracy"    # I
    .param p5, "preferredTime"    # I
    .param p6, "lowPowerMode"    # Z

    .line 1297
    new-instance v7, Lcom/android/server/location/gnss/GnssPositionMode;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssPositionMode;-><init>(IIIIIZ)V

    .line 1299
    .local v0, "positionMode":Lcom/android/server/location/gnss/GnssPositionMode;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/GnssPositionMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1300
    const/4 v1, 0x1

    return v1

    .line 1303
    :cond_18
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_set_position_mode(IIIIIZ)Z

    move-result v1

    .line 1305
    .local v1, "result":Z
    if-eqz v1, :cond_21

    .line 1306
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    goto :goto_24

    .line 1308
    :cond_21
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    .line 1310
    :goto_24
    return v1
.end method

.method private setStarted(Z)V
    .registers 4
    .param p1, "started"    # Z

    .line 1536
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eq v0, p1, :cond_c

    .line 1537
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 1538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    .line 1540
    :cond_c
    return-void
.end method

.method private setSuplHostPort()V
    .registers 4

    .line 1086
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 1087
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    .line 1088
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_20

    if-lez v0, :cond_20

    const v2, 0xffff

    if-gt v0, v2, :cond_20

    .line 1091
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1094
    :cond_20
    return-void
.end method

.method private setupNativeGnssService(Z)V
    .registers 5
    .param p1, "reinitializeGnssServiceHandle"    # Z

    .line 2585
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_init_once(Z)V

    .line 2593
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_init()Z

    move-result v0

    .line 2594
    .local v0, "isInitialized":Z
    if-nez v0, :cond_11

    .line 2595
    const-string v1, "GnssLocationProvider"

    const-string v2, "Native initialization failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 2597
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_cleanup()V

    .line 2598
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_init_extension_location_off()Z

    .line 2600
    :goto_17
    return-void
.end method

.method private startNavigating()V
    .registers 15

    .line 1432
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_d8

    .line 1433
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "startNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1435
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 1436
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1437
    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 1440
    iget-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-eqz v3, :cond_23

    .line 1441
    const-string/jumbo v3, "startNavigating with ITAR limit in place. Output limited  until slow enough speed reported."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_23
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1446
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_gps_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_33

    move v3, v2

    goto :goto_34

    :cond_33
    move v3, v1

    .line 1448
    .local v3, "agpsEnabled":Z
    :goto_34
    invoke-direct {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->getSuplMode(Z)I

    move-result v4

    iput v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 1450
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1451
    .local v5, "pr":Lcom/android/internal/location/ProviderRequest;
    invoke-virtual {p0, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_setStartNavigatingModes(ILcom/android/internal/location/ProviderRequest;)I

    move-result v4

    iput v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 1457
    const/4 v6, 0x2

    if-eqz v4, :cond_53

    if-eq v4, v2, :cond_50

    if-eq v4, v6, :cond_4d

    .line 1468
    const-string/jumbo v4, "unknown"

    .local v4, "mode":Ljava/lang/String;
    goto :goto_57

    .line 1462
    .end local v4    # "mode":Ljava/lang/String;
    :cond_4d
    const-string v4, "MS_ASSISTED"

    .line 1463
    .restart local v4    # "mode":Ljava/lang/String;
    goto :goto_57

    .line 1465
    .end local v4    # "mode":Ljava/lang/String;
    :cond_50
    const-string v4, "MS_BASED"

    .line 1466
    .restart local v4    # "mode":Ljava/lang/String;
    goto :goto_57

    .line 1459
    .end local v4    # "mode":Ljava/lang/String;
    :cond_53
    const-string/jumbo v4, "standalone"

    .line 1460
    .restart local v4    # "mode":Ljava/lang/String;
    nop

    .line 1471
    :goto_57
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setting position_mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    .end local v4    # "mode":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_75

    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    goto :goto_77

    :cond_75
    const/16 v4, 0x3e8

    .line 1475
    .local v4, "interval":I
    :goto_77
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v13, v7, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v13, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLowPowerMode:Z

    .line 1476
    iget v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    move v10, v4

    invoke-direct/range {v7 .. v13}, Lcom/android/server/location/gnss/GnssLocationProvider;->setPositionMode(IIIIIZ)Z

    move-result v7

    if-nez v7, :cond_94

    .line 1478
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1479
    const-string/jumbo v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    return-void

    .line 1482
    :cond_94
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_start()Z

    move-result v7

    if-nez v7, :cond_a4

    .line 1483
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1484
    const-string/jumbo v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    return-void

    .line 1489
    :cond_a4
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->reset()V

    .line 1490
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    .line 1491
    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 1494
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_cb

    .line 1495
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v7, 0xea60

    add-long/2addr v1, v7

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1495
    invoke-virtual {v0, v6, v1, v2, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1500
    :cond_cb
    sget-object v0, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->NAVIGATING:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->START_NAVIGATING:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBundle(Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;II)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendInfoToNsflp(Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;Ljava/lang/Object;)V

    .line 1504
    .end local v3    # "agpsEnabled":Z
    .end local v4    # "interval":I
    .end local v5    # "pr":Lcom/android/internal/location/ProviderRequest;
    :cond_d8
    return-void
.end method

.method private stopNavigating()V
    .registers 5

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopNavigating, mStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_4d

    .line 1509
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1510
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_stop()Z

    .line 1511
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 1513
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    .line 1515
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_stopNavigating()V

    .line 1519
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v3}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->reset()V

    .line 1522
    iget-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-eqz v3, :cond_42

    .line 1523
    const-string/jumbo v3, "release wakelock when stopNavigating"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const/16 v1, 0x14

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1529
    :cond_42
    sget-object v1, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->NAVIGATING:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->STOP_NAVIGATING:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    .line 1530
    invoke-virtual {p0, v2, v0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBundle(Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;II)Landroid/os/Bundle;

    move-result-object v0

    .line 1529
    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendInfoToNsflp(Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;Ljava/lang/Object;)V

    .line 1533
    :cond_4d
    return-void
.end method

.method private subscriptionOrCarrierConfigChanged()V
    .registers 9

    .line 604
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "received SIM related action: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 606
    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 607
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 608
    const-string v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 609
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 610
    .local v3, "ddSubId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 611
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 613
    :cond_2b
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 614
    .local v4, "mccMnc":Ljava/lang/String;
    const/4 v5, 0x0

    .line 615
    .local v5, "isKeepLppProfile":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_91

    .line 616
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM MCC/MNC is available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isSpirentTestSim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIsSpirentTestSim:Z

    .line 619
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isValidMccMnc:Z

    if-nez v0, :cond_5a

    .line 620
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_reloadMakeAutoSuplUrl()V

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isValidMccMnc:Z

    .line 623
    :cond_5a
    if-eqz v2, :cond_72

    .line 624
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 625
    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_68

    :cond_67
    const/4 v0, 0x0

    .line 626
    .local v0, "b":Landroid/os/PersistableBundle;
    :goto_68
    if-eqz v0, :cond_72

    .line 627
    nop

    .line 628
    const-string/jumbo v6, "gps.persist_lpp_mode_bool"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 631
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_72
    const-string/jumbo v0, "persist.sys.gps.lpp"

    if-eqz v5, :cond_88

    .line 633
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v6}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromCarrierConfig()V

    .line 634
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v6}, Lcom/android/server/location/gnss/GnssConfiguration;->getLppProfile()Ljava/lang/String;

    move-result-object v6

    .line 636
    .local v6, "lpp_profile":Ljava/lang/String;
    if-eqz v6, :cond_87

    .line 637
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    .end local v6    # "lpp_profile":Ljava/lang/String;
    :cond_87
    goto :goto_8d

    .line 641
    :cond_88
    const-string v6, ""

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :goto_8d
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    goto :goto_99

    .line 645
    :cond_91
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIsSpirentTestSim:Z

    .line 646
    const-string v6, "SIM MCC/MNC is still not available"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_99
    return-void
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .registers 13
    .param p1, "source"    # Landroid/os/WorkSource;

    .line 1314
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1315
    return-void

    .line 1320
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    .line 1323
    goto :goto_19

    .line 1321
    :catch_11
    move-exception v0

    .line 1322
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GnssLocationProvider"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1327
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_19
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-static {v0, p1}, Landroid/os/WorkSource;->diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;

    move-result-object v0

    .line 1328
    .local v0, "diffs":[Ljava/util/List;, "[Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_6d

    .line 1329
    aget-object v4, v0, v1

    .line 1330
    .local v4, "newChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    aget-object v5, v0, v3

    .line 1332
    .local v5, "goneChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v4, :cond_48

    .line 1333
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1334
    .local v7, "newChain":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1335
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 1334
    invoke-virtual {v8, v2, v9, v10}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1336
    .end local v7    # "newChain":Landroid/os/WorkSource$WorkChain;
    goto :goto_2e

    .line 1339
    :cond_48
    if-eqz v5, :cond_68

    .line 1340
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_68

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1341
    .local v7, "goneChain":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1342
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 1341
    invoke-virtual {v8, v2, v9, v10}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1343
    .end local v7    # "goneChain":Landroid/os/WorkSource$WorkChain;
    goto :goto_4e

    .line 1346
    :cond_68
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v6, p1}, Landroid/os/WorkSource;->transferWorkChains(Landroid/os/WorkSource;)V

    .line 1350
    .end local v4    # "newChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    .end local v5    # "goneChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    :cond_6d
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v4, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v4

    .line 1351
    .local v4, "changes":[Landroid/os/WorkSource;
    if-eqz v4, :cond_ab

    .line 1352
    aget-object v1, v4, v1

    .line 1353
    .local v1, "newWork":Landroid/os/WorkSource;
    aget-object v3, v4, v3

    .line 1356
    .local v3, "goneWork":Landroid/os/WorkSource;
    if-eqz v1, :cond_92

    .line 1357
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7c
    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v5, v6, :cond_92

    .line 1358
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 1359
    invoke-virtual {v1, v5}, Landroid/os/WorkSource;->getUid(I)I

    move-result v7

    invoke-virtual {v1, v5}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 1358
    invoke-virtual {v6, v2, v7, v8}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1357
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 1364
    .end local v5    # "i":I
    :cond_92
    if-eqz v3, :cond_ab

    .line 1365
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_95
    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v5, v6, :cond_ab

    .line 1366
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v3, v5}, Landroid/os/WorkSource;->getUid(I)I

    move-result v7

    .line 1367
    invoke-virtual {v3, v5}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 1366
    invoke-virtual {v6, v2, v7, v8}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1365
    add-int/lit8 v5, v5, 0x1

    goto :goto_95

    .line 1371
    .end local v1    # "newWork":Landroid/os/WorkSource;
    .end local v3    # "goneWork":Landroid/os/WorkSource;
    .end local v5    # "i":I
    :cond_ab
    return-void
.end method

.method private updateLowPowerMode()V
    .registers 7

    .line 652
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIsDeviceStationary:Z

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    .line 653
    .local v0, "disableGpsForPowerManager":Z
    :goto_11
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v3

    .line 654
    .local v3, "result":Landroid/os/PowerSaveState;
    iget v4, v3, Landroid/os/PowerSaveState;->locationMode:I

    if-eq v4, v2, :cond_1f

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1f

    goto :goto_2f

    .line 658
    :cond_1f
    iget-boolean v4, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 659
    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_2d

    move v1, v2

    goto :goto_2e

    :cond_2d
    nop

    :goto_2e
    or-int/2addr v0, v1

    .line 664
    :goto_2f
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mMotionPowerSavingMode:Z

    or-int/2addr v0, v1

    .line 667
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIsNavigationAppUsingGnss:Z

    if-eqz v1, :cond_37

    .line 668
    const/4 v0, 0x0

    .line 670
    :cond_37
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-nez v1, :cond_40

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIsSpirentTestSim:Z

    if-eqz v1, :cond_40

    .line 671
    const/4 v0, 0x0

    .line 675
    :cond_40
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    if-eq v0, v1, :cond_4c

    .line 676
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    .line 677
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 678
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateRequirements()V

    .line 680
    :cond_4c
    return-void
.end method

.method private updateRequirements()V
    .registers 10

    .line 1237
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_14f

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_a

    goto/16 :goto_14f

    .line 1241
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRequest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x12c

    const/4 v3, 0x0

    if-le v0, v2, :cond_33

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1244
    :cond_33
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStarted =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDisableGpsForPowerManager = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isEnabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1246
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_135

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 1251
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1253
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v0, v4

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 1254
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLowPowerMode:Z

    .line 1256
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    int-to-long v4, v0

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v6, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_d5

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interval overflow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 1262
    :cond_d5
    sget-object v0, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->UPDATE_REQUIREMENTS:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->UPDATE_REQUIREMENTS:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    .line 1263
    iget-boolean v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-nez v4, :cond_e3

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->START_NAVIGATING:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    invoke-virtual {v3}, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->ordinal()I

    move-result v3

    :cond_e3
    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 1262
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBundle(Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;II)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendInfoToNsflp(Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;Ljava/lang/Object;)V

    .line 1267
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_10e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 1269
    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLowPowerMode:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProvider;->setPositionMode(IIIIIZ)Z

    move-result v0

    if-nez v0, :cond_14e

    .line 1271
    const-string/jumbo v0, "set_position_mode failed in updateRequirements"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14e

    .line 1273
    :cond_10e
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_116

    .line 1275
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->startNavigating()V

    goto :goto_14e

    .line 1278
    :cond_116
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1279
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_14e

    .line 1282
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 1283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1282
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_14e

    .line 1287
    :cond_135
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1289
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1290
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1291
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1293
    :cond_14e
    :goto_14e
    return-void

    .line 1238
    :cond_14f
    :goto_14f
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2519
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   (changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2520
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2522
    const-string v1, " ago)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2523
    const-string/jumbo v2, "mFixInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2524
    const-string/jumbo v2, "mLowPowerMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLowPowerMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2525
    const-string/jumbo v2, "mGnssAntennaInfoProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 2526
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2527
    const-string/jumbo v2, "mGnssMeasurementsProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 2528
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2529
    const-string/jumbo v2, "mGnssNavigationMessageProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    .line 2530
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2531
    const-string/jumbo v2, "mDisableGpsForPowerManager="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2532
    const-string/jumbo v1, "mTopHalCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTopHalCapabilities:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2534
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_a9

    const-string v1, "SCHEDULING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2535
    :cond_a9
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_b5

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2536
    :cond_b5
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_c1

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2537
    :cond_c1
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_ce

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2538
    :cond_ce
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_db

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2539
    :cond_db
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_e8

    const-string v1, "GEOFENCING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2540
    :cond_e8
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_f5

    const-string v1, "MEASUREMENTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2541
    :cond_f5
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_102

    const-string v1, "NAV_MESSAGES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2542
    :cond_102
    const/16 v1, 0x100

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_10f

    const-string v1, "LOW_POWER_MODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2543
    :cond_10f
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_11c

    const-string v1, "SATELLITE_BLACKLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2544
    :cond_11c
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_129

    .line 2545
    const-string v2, "MEASUREMENT_CORRECTIONS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2547
    :cond_129
    const/16 v2, 0x800

    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_136

    const-string v2, "ANTENNA_INFO "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2548
    :cond_136
    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2549
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_154

    .line 2550
    const-string v1, "SubHal=MEASUREMENT_CORRECTIONS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->toStringCapabilities()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2554
    :cond_154
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    const-string/jumbo v1, "native internal state: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2561
    const-string v2, "SEC Dump for updaterequirements"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    const-string v2, "SEC Dump for Deleting aiding data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2566
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeleteAidingHistory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2570
    const-string v2, "Active NMEA Listener Clients:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2571
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iget-object v2, v2, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mNmeaListenerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/CallerIdentity;

    .line 2572
    .local v3, "id":Lcom/android/server/location/CallerIdentity;
    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2573
    .end local v3    # "id":Lcom/android/server/location/CallerIdentity;
    goto :goto_1ab

    .line 2574
    :cond_1c3
    const-string v2, "SEC Dump for sim state history"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2577
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2580
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2582
    return-void
.end method

.method protected abstract extension_changeChnNlpAccuracy(Landroid/location/Location;)V
.end method

.method protected abstract extension_dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method protected abstract extension_getDBHSupported()Z
.end method

.method protected abstract extension_handleEnable()V
.end method

.method protected abstract extension_onStatusChanged(Z)V
.end method

.method protected abstract extension_onSvStatusChanged(I[I[F[F[F[F[F)V
.end method

.method protected abstract extension_printSvStatus([I[FI)V
.end method

.method protected abstract extension_reloadMakeAutoSuplUrl()V
.end method

.method protected abstract extension_reportGeofenceAddStatus(II)V
.end method

.method protected abstract extension_reportGeofencePauseStatus(II)V
.end method

.method protected abstract extension_reportGeofenceRemoveStatus(II)V
.end method

.method protected abstract extension_reportGeofenceResumeStatus(II)V
.end method

.method protected abstract extension_reportGeofenceStatus(ILandroid/location/Location;)V
.end method

.method protected abstract extension_reportGeofenceTransition(ILandroid/location/Location;IJ)V
.end method

.method protected abstract extension_secGnssConfigurationUpdate(Ljava/lang/String;)V
.end method

.method protected abstract extension_sendGpsTime(JJ)V
.end method

.method protected abstract extension_setStartNavigatingModes(ILcom/android/internal/location/ProviderRequest;)I
.end method

.method protected abstract extension_set_supl_server()V
.end method

.method protected abstract extension_set_xtra_downloaded_time()V
.end method

.method protected abstract extension_stopNavigating()V
.end method

.method protected abstract getBundle(Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;II)Landroid/os/Bundle;
.end method

.method public getGnssAntennaInfoProvider()Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
    .registers 2

    .line 526
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    return-object v0
.end method

.method public getGnssBatchingProvider()Lcom/android/server/location/gnss/GnssBatchingProvider;
    .registers 2

    .line 1935
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    return-object v0
.end method

.method public getGnssCapabilitiesProvider()Lcom/android/server/location/gnss/GnssCapabilitiesProvider;
    .registers 2

    .line 1956
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    return-object v0
.end method

.method public getGnssMeasurementCorrectionsProvider()Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;
    .registers 2

    .line 522
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    return-object v0
.end method

.method public getGnssMeasurementsProvider()Lcom/android/server/location/gnss/GnssMeasurementsProvider;
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    return-object v0
.end method

.method public getGnssMetricsProvider()Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;
    .registers 2

    .line 1949
    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$rqhQl-FjuYDwRh9wlhB1OdAWgzI;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$rqhQl-FjuYDwRh9wlhB1OdAWgzI;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGnssNavigationMessageProvider()Lcom/android/server/location/gnss/GnssNavigationMessageProvider;
    .registers 2

    .line 530
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    return-object v0
.end method

.method public getGnssStatusProvider()Lcom/android/server/location/gnss/GnssStatusListenerHelper;
    .registers 2

    .line 510
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    return-object v0
.end method

.method public getGnssSystemInfoProvider()Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;
    .registers 2

    .line 1918
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$8;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$8;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .registers 2

    .line 514
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/gnss/GnssGeofenceProvider;

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 2

    .line 2115
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method protected handleDisable()V
    .registers 4

    .line 1167
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 1170
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1171
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1172
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1173
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1175
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v1, :cond_2c

    .line 1176
    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    .line 1178
    :cond_2c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider;->disable()V

    .line 1180
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_cleanup()V

    .line 1181
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_init_extension_location_off()Z

    .line 1183
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->onGpsEnabledChanged()V

    .line 1184
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1185
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1186
    return-void
.end method

.method protected handleEnable()V
    .registers 4

    .line 1126
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_init()Z

    move-result v1

    .line 1130
    .local v1, "inited":Z
    if-eqz v1, :cond_37

    .line 1131
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 1132
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_supports_psds()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    .line 1147
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_set_supl_server()V

    .line 1150
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1151
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1152
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->onGpsEnabledChanged()V

    .line 1153
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssBatchingProvider;->enable()V

    .line 1154
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v2, :cond_40

    .line 1155
    invoke-virtual {v2, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    goto :goto_40

    .line 1158
    :cond_37
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 1159
    const-string v2, "Failed to enable location provider"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_40
    :goto_40
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-nez v0, :cond_47

    .line 1162
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_handleEnable()V

    .line 1164
    :cond_47
    return-void
.end method

.method protected abstract handleWakelockControl(I)V
.end method

.method public injectTime(JJI)V
    .registers 6
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    .line 854
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_inject_time(JJI)V

    .line 855
    return-void
.end method

.method protected abstract isApprovedApp(I)Z
.end method

.method protected isGpsEnabled()Z
    .registers 3

    .line 1215
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1216
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    monitor-exit v0

    return v1

    .line 1217
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isInEmergencySession()Z
    .registers 2

    .line 2294
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v0

    return v0
.end method

.method protected abstract isSpirentTestSim()Z
.end method

.method public synthetic lambda$getGnssMetricsProvider$10$GnssLocationProvider()Ljava/lang/String;
    .registers 2

    .line 1949
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$handleDownloadPsdsData$3$GnssLocationProvider()V
    .registers 7

    .line 1030
    new-instance v0, Lcom/android/server/location/gnss/GpsPsdsDownloader;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 1031
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getProperties()Ljava/util/Properties;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/gnss/GpsPsdsDownloader;-><init>(Ljava/util/Properties;Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;)V

    .line 1032
    .local v0, "psdsDownloader":Lcom/android/server/location/gnss/GpsPsdsDownloader;
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GpsPsdsDownloader;->downloadPsdsData()[B

    move-result-object v1

    .line 1033
    .local v1, "data":[B
    if-eqz v1, :cond_26

    .line 1034
    const-string v2, "GnssLocationProvider"

    const-string v3, "calling native_inject_psds_data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_set_xtra_downloaded_time()V

    .line 1038
    array-length v2, v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_inject_psds_data([BI)V

    .line 1039
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/ExponentialBackOff;->reset()V

    .line 1042
    :cond_26
    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1044
    if-nez v1, :cond_3b

    .line 1047
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    .line 1048
    invoke-virtual {v4}, Lcom/android/server/location/gnss/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v4

    .line 1047
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1053
    :cond_3b
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1054
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_66

    if-eqz v3, :cond_5d

    .line 1058
    :try_start_46
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1059
    const-string v3, "GnssLocationProvider"

    const-string v4, "WakeLock released by handleDownloadPsdsData()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_52} :catch_53
    .catchall {:try_start_46 .. :try_end_52} :catchall_66

    .line 1063
    goto :goto_64

    .line 1060
    :catch_53
    move-exception v3

    .line 1061
    .local v3, "e":Ljava/lang/Exception;
    :try_start_54
    const-string v4, "GnssLocationProvider"

    const-string v5, "Wakelock timeout & release race exception in handleDownloadPsdsData()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1063
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_64

    .line 1065
    :cond_5d
    const-string v3, "GnssLocationProvider"

    const-string v4, "WakeLock expired before release in handleDownloadPsdsData()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :goto_64
    monitor-exit v2

    .line 1069
    return-void

    .line 1068
    :catchall_66
    move-exception v3

    monitor-exit v2
    :try_end_68
    .catchall {:try_start_54 .. :try_end_68} :catchall_66

    throw v3
.end method

.method public synthetic lambda$new$0$GnssLocationProvider(Z)V
    .registers 4
    .param p1, "isStationary"    # Z

    .line 535
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIsDeviceStationary:Z

    .line 538
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 539
    return-void
.end method

.method public synthetic lambda$onUpdateSatelliteBlacklist$1$GnssLocationProvider([I[I)V
    .registers 4
    .param p1, "constellations"    # [I
    .param p2, "svids"    # [I

    .line 599
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/gnss/GnssConfiguration;->setSatelliteBlacklist([I[I)V

    return-void
.end method

.method public synthetic lambda$reportAntennaInfo$5$GnssLocationProvider(Ljava/util/List;)V
    .registers 3
    .param p1, "antennaInfos"    # Ljava/util/List;

    .line 1809
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->onGnssAntennaInfoAvailable(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$reportGeofenceAddStatus$13$GnssLocationProvider(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2038
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2039
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2041
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 2042
    return-void
.end method

.method public synthetic lambda$reportGeofencePauseStatus$15$GnssLocationProvider(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2060
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2061
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2063
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 2064
    return-void
.end method

.method public synthetic lambda$reportGeofenceRemoveStatus$14$GnssLocationProvider(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2049
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2050
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2052
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 2053
    return-void
.end method

.method public synthetic lambda$reportGeofenceResumeStatus$16$GnssLocationProvider(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2071
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2072
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2074
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 2075
    return-void
.end method

.method public synthetic lambda$reportGeofenceStatus$12$GnssLocationProvider(ILandroid/location/Location;)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "location"    # Landroid/location/Location;

    .line 2019
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2020
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2022
    :cond_c
    const/4 v0, 0x1

    .line 2023
    .local v0, "monitorStatus":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    .line 2024
    const/4 v0, 0x0

    .line 2026
    :cond_11
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v2, 0x0

    sget v3, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    invoke-virtual {v1, v2, v0, p2, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 2031
    return-void
.end method

.method public synthetic lambda$reportGeofenceTransition$11$GnssLocationProvider(ILandroid/location/Location;IJ)V
    .registers 15
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "transitionTimestamp"    # J

    .line 2001
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2002
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2005
    :cond_c
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v7, 0x0

    sget v8, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 2012
    return-void
.end method

.method public synthetic lambda$reportGnssServiceDied$9$GnssLocationProvider()V
    .registers 2

    .line 1892
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setupNativeGnssService(Z)V

    .line 1894
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    .line 1895
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1896
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 1897
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 1899
    :cond_14
    return-void
.end method

.method public synthetic lambda$reportMeasurementData$4$GnssLocationProvider(Landroid/location/GnssMeasurementsEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .line 1803
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method public synthetic lambda$reportNavigationMessage$6$GnssLocationProvider(Landroid/location/GnssNavigationMessage;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 1816
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method public synthetic lambda$setSubHalMeasurementCorrectionsCapabilities$8$GnssLocationProvider(I)V
    .registers 3
    .param p1, "subHalCapabilities"    # I

    .line 1845
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->onCapabilitiesUpdated(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1846
    return-void

    .line 1849
    :cond_9
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssCapabilitiesProvider;->setSubHalMeasurementCorrectionsCapabilities(I)V

    .line 1851
    return-void
.end method

.method public synthetic lambda$setTopHalCapabilities$7$GnssLocationProvider(I)V
    .registers 4
    .param p1, "topHalCapabilities"    # I

    .line 1823
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTopHalCapabilities:I

    .line 1825
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1826
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/NtpTimeHelper;->enablePeriodicTimeInjection()V

    .line 1827
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->requestUtcTime()V

    .line 1830
    :cond_12
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    const/16 v1, 0x40

    .line 1831
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    .line 1830
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    .line 1832
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    const/16 v1, 0x80

    .line 1833
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    .line 1832
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    .line 1834
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->restartRequests()V

    .line 1835
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    const/16 v1, 0x800

    .line 1836
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    .line 1835
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->onCapabilitiesUpdated(Z)V

    .line 1838
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTopHalCapabilities:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssCapabilitiesProvider;->setTopHalCapabilities(I)V

    .line 1839
    return-void
.end method

.method protected native native_agps_set_ref_location_cellid(IIIIII)V
.end method

.method protected native native_cleanup()V
.end method

.method protected native native_delete_aiding_data(I)V
.end method

.method protected native native_init()Z
.end method

.method protected native native_init_extension_location_off()Z
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1376
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->isApprovedApp(I)Z

    move-result v0

    const-string v1, "GnssLocationProvider"

    if-nez v0, :cond_23

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendExtraCommand from uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ignored."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    return-void

    .line 1381
    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1383
    .local v2, "identity":J
    :try_start_27
    const-string v0, "delete_aiding_data"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1384
    invoke-direct {p0, p4}, Lcom/android/server/location/gnss/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)V

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Delete Aiding data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeleteAidingHistory:Ljava/lang/String;

    goto :goto_7b

    .line 1386
    :cond_4a
    const-string v0, "force_time_injection"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1387
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->requestUtcTime()V

    goto :goto_7b

    .line 1388
    :cond_56
    const-string v0, "force_psds_injection"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1389
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz v0, :cond_7b

    .line 1390
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->psdsDownloadRequest()V

    goto :goto_7b

    .line 1393
    :cond_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendExtraCommand: unknown command "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_27 .. :try_end_7b} :catchall_80

    .line 1396
    :cond_7b
    :goto_7b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1397
    nop

    .line 1398
    return-void

    .line 1396
    :catchall_80
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1397
    throw v0
.end method

.method public abstract onGnssStatusListenerStatusChanged(I)V
.end method

.method public onSetRequest(Lcom/android/internal/location/ProviderRequest;)V
    .registers 5
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;

    .line 1222
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;

    iget-object v1, p1, Lcom/android/internal/location/ProviderRequest;->workSource:Landroid/os/WorkSource;

    invoke-direct {v0, p1, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1223
    return-void
.end method

.method public onUpdateSatelliteBlacklist([I[I)V
    .registers 5
    .param p1, "constellations"    # [I
    .param p2, "svids"    # [I

    .line 599
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$8xqmGrm3vUbuBYyxecHypUKBN8M;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$8xqmGrm3vUbuBYyxecHypUKBN8M;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;[I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 600
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->resetConstellationTypes()V

    .line 601
    return-void
.end method

.method protected psdsDownloadRequest()V
    .registers 4

    .line 1970
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "psdsDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1972
    return-void
.end method

.method protected reportAGpsStatus(II[B)V
    .registers 5
    .param p1, "agpsType"    # I
    .param p2, "agpsStatus"    # I
    .param p3, "suplIpAddr"    # [B

    .line 1781
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->onReportAGpsStatus(II[B)V

    .line 1782
    return-void
.end method

.method protected reportAntennaInfo(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;)V"
        }
    .end annotation

    .line 1809
    .local p1, "antennaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAntennaInfo;>;"
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Zz5jVrpy8EhDlqdMUEeszS7227Q;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Zz5jVrpy8EhDlqdMUEeszS7227Q;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1810
    return-void
.end method

.method protected reportGeofenceAddStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2036
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_reportGeofenceAddStatus(II)V

    .line 2037
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$vUevSagVGcJiG8NrsQ14SLZKO50;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$vUevSagVGcJiG8NrsQ14SLZKO50;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2043
    return-void
.end method

.method protected reportGeofencePauseStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2058
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_reportGeofencePauseStatus(II)V

    .line 2059
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$8UU_TCemTTDKpCEUtWtOYCOByNI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$8UU_TCemTTDKpCEUtWtOYCOByNI;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2065
    return-void
.end method

.method protected reportGeofenceRemoveStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2047
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_reportGeofenceRemoveStatus(II)V

    .line 2048
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$2DJj3Ea6MJfR7jGWxrOqu-RmUcw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$2DJj3Ea6MJfR7jGWxrOqu-RmUcw;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2054
    return-void
.end method

.method protected reportGeofenceResumeStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2069
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_reportGeofenceResumeStatus(II)V

    .line 2070
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$cCbSI3WH-hk01YLpadxIdeJ2l-s;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$cCbSI3WH-hk01YLpadxIdeJ2l-s;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2076
    return-void
.end method

.method protected reportGeofenceStatus(ILandroid/location/Location;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "location"    # Landroid/location/Location;

    .line 2017
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_reportGeofenceStatus(ILandroid/location/Location;)V

    .line 2018
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$PnjxzvZoft2260U6u0c4ExEgvdk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$PnjxzvZoft2260U6u0c4ExEgvdk;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;ILandroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2032
    return-void
.end method

.method protected reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .registers 15
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "transitionTimestamp"    # J

    .line 1999
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_reportGeofenceTransition(ILandroid/location/Location;IJ)V

    .line 2000
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$9z2BzqtI1mIF3OUSD_3kdlaP8Ls;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$9z2BzqtI1mIF3OUSD_3kdlaP8Ls;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;ILandroid/location/Location;IJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2013
    return-void
.end method

.method protected reportGnssServiceDied()V
    .registers 3

    .line 1890
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "reportGnssServiceDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$_LVWlhOAi4e7kGM8i4gvAEODq6Y;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$_LVWlhOAi4e7kGM8i4gvAEODq6Y;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1900
    return-void
.end method

.method protected reportLocation(ZLandroid/location/Location;)V
    .registers 4
    .param p1, "hasLatLong"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1557
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1558
    return-void
.end method

.method protected reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .line 1801
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_e

    .line 1803
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$YuOqG3Bhqp1DBq9X5jGhJw-oqXY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$YuOqG3Bhqp1DBq9X5jGhJw-oqXY;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1805
    :cond_e
    return-void
.end method

.method protected reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .registers 4
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 1814
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_e

    .line 1816
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$AWbsxwPlXUZ5pm0cAYhVesC6VAA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$AWbsxwPlXUZ5pm0cAYhVesC6VAA;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1818
    :cond_e
    return-void
.end method

.method protected reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 25
    .param p1, "proxyAppPackageName"    # Ljava/lang/String;
    .param p2, "protocolStack"    # B
    .param p3, "otherProtocolStackName"    # Ljava/lang/String;
    .param p4, "requestor"    # B
    .param p5, "requestorId"    # Ljava/lang/String;
    .param p6, "responseType"    # B
    .param p7, "inEmergencyMode"    # Z
    .param p8, "isCachedLocation"    # Z

    .line 2267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-nez v1, :cond_f

    .line 2268
    const-string v1, "GnssLocationProvider"

    const-string/jumbo v2, "reportNfwNotification: mGnssVisibilityControl is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    return-void

    .line 2273
    :cond_f
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2274
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "proxyAppPackageName"

    move-object/from16 v12, p1

    invoke-virtual {v1, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    const-string/jumbo v2, "protocolStack"

    move/from16 v13, p2

    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 2276
    const-string/jumbo v2, "otherProtocolStackName"

    move-object/from16 v14, p3

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    const-string/jumbo v2, "requestor"

    move/from16 v15, p4

    invoke-virtual {v1, v2, v15}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 2278
    const-string/jumbo v2, "requestorId"

    move-object/from16 v11, p5

    invoke-virtual {v1, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    const-string/jumbo v2, "responseType"

    move/from16 v10, p6

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 2280
    const-string/jumbo v2, "inEmergencyMode"

    move/from16 v9, p7

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2281
    const-string/jumbo v2, "isCachedLocation"

    move/from16 v8, p8

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2283
    sget-object v2, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->REPORT_NFW_NOTIFICATION:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendInfoToNsflp(Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;Ljava/lang/Object;)V

    .line 2286
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/location/gnss/GnssVisibilityControl;->reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    .line 2289
    return-void
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 38
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I

    .line 2131
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    const-string v10, "GnssLocationProvider"

    const-string/jumbo v11, "reportNiNotification: entered"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "notificationId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", niType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", notifyFlags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", timeout: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", defaultResponse: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "requestorId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", text: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", requestorIdEncoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", textEncoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    new-instance v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v10}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2145
    .local v10, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput v1, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2146
    iput v2, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2147
    and-int/lit8 v11, v3, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_8f

    move v11, v13

    goto :goto_90

    :cond_8f
    move v11, v12

    :goto_90
    iput-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2148
    and-int/lit8 v11, v3, 0x2

    if-eqz v11, :cond_98

    move v11, v13

    goto :goto_99

    :cond_98
    move v11, v12

    :goto_99
    iput-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2149
    and-int/lit8 v11, v3, 0x4

    if-eqz v11, :cond_a0

    move v12, v13

    :cond_a0
    iput-boolean v12, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2151
    iput v4, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2152
    iput v5, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2153
    iput-object v6, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2154
    iput-object v7, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2155
    iput v8, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2156
    iput v9, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2158
    iget-object v11, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v11, v10}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2159
    const/16 v12, 0x7c

    iget v14, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget v15, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    iget-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    iget-boolean v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    move/from16 v17, v13

    iget-boolean v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    move/from16 v18, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    move/from16 v19, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    move/from16 v20, v13

    iget-object v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    move-object/from16 v21, v13

    iget-object v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    move-object/from16 v22, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    move/from16 v23, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    move/from16 v24, v13

    iget-boolean v13, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 2173
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v26

    const/16 v27, 0x0

    .line 2159
    move/from16 v25, v13

    const/4 v13, 0x1

    move/from16 v16, v11

    invoke-static/range {v12 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZZIILjava/lang/String;Ljava/lang/String;IIZZI)V

    .line 2175
    return-void
.end method

.method protected reportNmea(J)V
    .registers 7
    .param p1, "timestamp"    # J

    .line 1786
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_28

    .line 1787
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNmeaBuffer:[B

    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_read_nmea([BI)I

    move-result v0

    .line 1788
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1789
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 1792
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1793
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "nmea"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    sget-object v3, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->NMEA_RECEIVED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendInfoToNsflp(Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;Ljava/lang/Object;)V

    .line 1797
    .end local v0    # "length":I
    .end local v1    # "nmea":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_28
    return-void
.end method

.method protected reportStatus(I)V
    .registers 9
    .param p1, "status"    # I

    .line 1645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportStatus status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNavigating:Z

    .line 1648
    .local v0, "wasNavigating":Z
    const/4 v2, 0x1

    if-eq p1, v2, :cond_50

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_4d

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x14

    if-eq p1, v3, :cond_3a

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2a

    goto :goto_53

    .line 1665
    :cond_2a
    iput-boolean v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNavigating:Z

    .line 1666
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-eqz v2, :cond_53

    .line 1667
    const-string/jumbo v2, "release wakelock when engine off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_53

    .line 1656
    :cond_3a
    iget-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-eqz v3, :cond_53

    .line 1658
    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const/16 v4, 0x3a98

    if-ge v3, v4, :cond_53

    .line 1659
    const-string v3, "acquire wakelock when engine on"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    invoke-direct {p0, v6, v2, v5}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_53

    .line 1653
    :cond_4d
    iput-boolean v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNavigating:Z

    .line 1654
    goto :goto_53

    .line 1650
    :cond_50
    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNavigating:Z

    .line 1651
    nop

    .line 1673
    :cond_53
    :goto_53
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNavigating:Z

    if-eq v0, v1, :cond_61

    .line 1674
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->onStatusChanged(Z)V

    .line 1675
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNavigating:Z

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_onStatusChanged(Z)V

    .line 1677
    :cond_61
    return-void
.end method

.method protected reportSvStatus(I[I[F[F[F[F[F)V
    .registers 11
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "svElevations"    # [F
    .param p5, "svAzimuths"    # [F
    .param p6, "svCarrierFreqs"    # [F
    .param p7, "basebandCn0s"    # [F

    .line 1694
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider$1;)V

    .line 1695
    .local v0, "svStatusInfo":Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;
    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCount:I
    invoke-static {v0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1202(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;I)I

    .line 1696
    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I
    invoke-static {v0, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1302(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[I)[I

    .line 1697
    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mCn0s:[F
    invoke-static {v0, p3}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1402(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1698
    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F
    invoke-static {v0, p4}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1502(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1699
    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F
    invoke-static {v0, p5}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1602(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1700
    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F
    invoke-static {v0, p6}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1702(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1701
    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mBasebandCn0s:[F
    invoke-static {v0, p7}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1802(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1703
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1704
    return-void
.end method

.method protected requestLocation(ZZ)V
    .registers 5
    .param p1, "independentFromGnss"    # Z
    .param p2, "isUserEmergency"    # Z

    .line 2212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestLocation. independentFromGnss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserEmergency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2217
    return-void
.end method

.method protected requestRefLocation()V
    .registers 1

    .line 2260
    return-void
.end method

.method protected requestSetID(I)V
    .registers 8
    .param p1, "flags"    # I

    .line 2183
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 2184
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2185
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 2186
    .local v1, "type":I
    const/4 v2, 0x0

    .line 2188
    .local v2, "setId":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 2189
    .local v3, "ddSubId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2190
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 2192
    :cond_1b
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    .line 2193
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 2194
    if-eqz v2, :cond_34

    .line 2196
    const/4 v1, 0x1

    goto :goto_34

    .line 2198
    :cond_28
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_34

    .line 2199
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 2200
    if-eqz v2, :cond_34

    .line 2202
    const/4 v1, 0x2

    .line 2206
    :cond_34
    :goto_34
    if-nez v2, :cond_39

    const-string v4, ""

    goto :goto_3a

    :cond_39
    move-object v4, v2

    :goto_3a
    invoke-direct {p0, v1, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2207
    return-void
.end method

.method protected requestUtcTime()V
    .registers 4

    .line 2221
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "utcTimeRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2223
    return-void
.end method

.method protected abstract sendInfoToNsflp(Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;Ljava/lang/Object;)V
.end method

.method protected setGnssHardwareModelName(Ljava/lang/String;)V
    .registers 4
    .param p1, "modelName"    # Ljava/lang/String;

    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGnssModelName called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    .line 1886
    return-void
.end method

.method protected setGnssYearOfHardware(I)V
    .registers 4
    .param p1, "yearOfHardware"    # I

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGnssYearOfHardware called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHardwareYear:I

    .line 1879
    return-void
.end method

.method protected setSubHalMeasurementCorrectionsCapabilities(I)V
    .registers 4
    .param p1, "subHalCapabilities"    # I

    .line 1844
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$QQ-0fckG9-krtI0AH_nmm1-vmLQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$QQ-0fckG9-krtI0AH_nmm1-vmLQ;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1852
    return-void
.end method

.method protected setTopHalCapabilities(I)V
    .registers 4
    .param p1, "topHalCapabilities"    # I

    .line 1822
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$fZsexTbhhXxbzu9E9XIT682MN4A;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$fZsexTbhhXxbzu9E9XIT682MN4A;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1840
    return-void
.end method

.method protected updateEnabled()V
    .registers 4

    .line 1190
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1191
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    .line 1194
    .local v0, "enabled":Z
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 1197
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v1, :cond_25

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    if-eqz v1, :cond_25

    move v1, v2

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    or-int/2addr v0, v1

    .line 1201
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mShutdown:Z

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 1203
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_32

    .line 1204
    return-void

    .line 1207
    :cond_32
    if-eqz v0, :cond_38

    .line 1208
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleEnable()V

    goto :goto_3b

    .line 1210
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDisable()V

    .line 1212
    :goto_3b
    return-void
.end method
