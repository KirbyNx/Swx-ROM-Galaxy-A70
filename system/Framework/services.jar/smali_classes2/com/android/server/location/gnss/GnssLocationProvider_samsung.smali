.class public Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
.super Lcom/android/server/location/gnss/GnssLocationProvider;
.source "GnssLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssLocationProvider_samsung$inputLidStateChangedListener;,
        Lcom/android/server/location/gnss/GnssLocationProvider_samsung$SecFileObserver;,
        Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;,
        Lcom/android/server/location/gnss/GnssLocationProvider_samsung$UBPSensorEventListener;,
        Lcom/android/server/location/gnss/GnssLocationProvider_samsung$LPPeFusedLocationListener;
    }
.end annotation


# static fields
.field private static final CONSTELLATION_TYPE_SHIFT_WIDTH:I = 0x8

.field private static final DEBUG:Z = true

.field private static final INTENT_SERVICE_STATE:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"

.field private static final LPPe_NLP_ACCEPTABLE_MAX_DISTANCE:I = 0xfa

.field private static final LPPe_NLP_requestedNLP_NotAvailable:I = 0x2

.field private static final LPPe_NLP_undefined:I = 0x1

.field private static final LPPe_UBP_ATMOSPHERIC_PRESSURE_AD_SUPPORT:I = 0x4

.field private static final LPPe_UBP_ATMOSPHERIC_PRESSURE_ERROR:I = 0x4

.field private static final LPPe_UBP_ATMOSPHERIC_PRESSURE_SUPPORT:I = 0x8

.field private static final LPPe_UBP_MOTIONSTATE_SUPPORT:I = 0x1

.field private static final LPPe_UBP_MOTION_STATE_ERROR:I = 0x2

.field private static final LPPe_UBP_NOT_SUPPORT:I = 0x1

.field private static final LPPe_UBP_SECONDARY_STATE_ERROR:I = 0x3

.field private static final LPPe_UBP_SECONDARY_SUPPORT:I = 0x2

.field private static final LPPe_WLAN_MAX_SCAN_NUMBER:I = 0x40

.field private static final LPPe_WLAN_NOT_SUPPORT:I = 0x1

.field private static final LPPe_WLAN_apAGNotAvailable:I = 0x12

.field private static final LPPe_WLAN_apChanFreqNotAvailable:I = 0xa

.field private static final LPPe_WLAN_apDevTypeNotAvailable:I = 0x7

.field private static final LPPe_WLAN_apPhyTypeNotAvailable:I = 0x8

.field private static final LPPe_WLAN_apRSSIMeasurementNotPossible:I = 0x9

.field private static final LPPe_WLAN_apRTDMeasurementNotPossible:I = 0xb

.field private static final LPPe_WLAN_apRecLocNotAvailable:I = 0xe

.field private static final LPPe_WLAN_apSNMeasurementNotPossible:I = 0x6

.field private static final LPPe_WLAN_apSSIDnotAvailable:I = 0x5

.field private static final LPPe_WLAN_apTPNotAvailable:I = 0x11

.field private static final LPPe_WLAN_historicMeasurementsNotAvailable:I = 0x10

.field private static final LPPe_WLAN_non_servingMeasurementsNotAvailable:I = 0xf

.field private static final LPPe_WLAN_notAllrequestedMeasPossible:I = 0x4

.field private static final LPPe_WLAN_ocNotAvailable:I = 0x15

.field private static final LPPe_WLAN_requestedMeaNotAvailable:I = 0x3

.field private static final LPPe_WLAN_ueAGNotAvailable:I = 0xd

.field private static final LPPe_WLAN_ueMACAddressNotAvailable:I = 0x16

.field private static final LPPe_WLAN_ueRSSINotAvailable:I = 0x14

.field private static final LPPe_WLAN_ueSNNotAvailable:I = 0x13

.field private static final LPPe_WLAN_ueTPNotAvailable:I = 0xc

.field private static final LPPe_WLAN_undefined:I = 0x2

.field private static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final SEC_SERVER_TYPE_AUTO_CONFIG:I = 0x0

.field private static final SVID_SHIFT_WIDTH:I = 0xc

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider_ex"

.field private static WAKELOCK_KEY:Ljava/lang/String; = null

.field private static final eTAG:Ljava/lang/String; = "LocationX"

.field private static isWifiScanRequested:Z

.field private static isWlanApConnected:Z

.field private static mSecSalesCode:Ljava/lang/String;

.field private static mServingWlanBssid:J

.field private static simOperatorKOR:Ljava/lang/String;


# instance fields
.field private GLP_DEBUG:Z

.field private LPPeLocationManager:Landroid/location/LocationManager;

.field private LPPeWiFiManager:Landroid/net/wifi/WifiManager;

.field LPPeWiFiReceiver:Landroid/content/BroadcastReceiver;

.field private isIssueTrackerIntentReceived:Z

.field private isUDPListen:Z

.field private isValidCellInfo:Z

.field private ktPositionMode:I

.field private final mBroadcastReceiverExtension:Landroid/content/BroadcastReceiver;

.field private mCellInfoCb:Landroid/telephony/TelephonyManager$CellInfoCallback;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private final mConstellationString:[Ljava/lang/String;

.field private final mEmergencyNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mEnableSMF:Z

.field mEngineCapabilities:I

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private final mGpsCscFeatureDump:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mGpsSecgpsConfigDump:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImsRegistered:Z

.field private mInitialized:Z

.field private mIsKtGps:Z

.field private mIsNmeaAllowed:I

.field private mIsSKAF:Z

.field private mIsSetAutoSuplServer:Z

.field private mKTSuplServerHost:Ljava/lang/String;

.field private mKTSuplServerPort:I

.field private mLPPeFusedLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$LPPeFusedLocationListener;

.field private mLidStateListener:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$inputLidStateChangedListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPositionModeFromCSC:Ljava/lang/String;

.field private mProperties_cmcc:Ljava/util/Properties;

.field private mProperties_nsflp:Ljava/util/Properties;

.field private mProperties_secgps:Ljava/util/Properties;

.field private mSLocationService:Lcom/samsung/android/location/ISLocationManager;

.field mSecFileObserver:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$SecFileObserver;

.field private mServerTypeI:I

.field private mSuplAddress:Ljava/lang/String;

.field private mSuplAddressForNSFLP:Ljava/lang/String;

.field private mSuplPort:I

.field private mSuplServerFromCSC:I

.field private mSuplSslMode:I

.field private mSuplSslType:I

.field private mSuplVersion:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUBPSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private pressureSensor:Landroid/hardware/Sensor;

.field private prevLppMask:I

.field private refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

.field private sensorMgr:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 172
    nop

    .line 173
    const-string v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    .line 205
    const-string v0, "GnssLocationProvider_ex"

    sput-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->WAKELOCK_KEY:Ljava/lang/String;

    .line 263
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWlanApConnected:Z

    .line 264
    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWifiScanRequested:Z

    .line 276
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 877
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 159
    const-string v0, "GnssLocationProvider_ex"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->GLP_DEBUG:Z

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isUDPListen:Z

    .line 180
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsSKAF:Z

    .line 182
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 185
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->ktPositionMode:I

    .line 189
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 190
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mServerTypeI:I

    .line 191
    const-string v4, "MSBASED"

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 192
    const-string/jumbo v4, "supl.google.com"

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 193
    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddressForNSFLP:Ljava/lang/String;

    .line 194
    const/16 v4, 0x1c6b

    iput v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplPort:I

    .line 195
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplVersion:I

    .line 196
    iput v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslMode:I

    .line 197
    const/16 v2, 0xf

    iput v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslType:I

    .line 198
    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 209
    iput v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->prevLppMask:I

    .line 267
    const-string v4, "Unknown"

    const-string v5, "GPS"

    const-string v6, "SBAS"

    const-string v7, "GLONASS"

    const-string v8, "QZSS"

    const-string v9, "BEIDOU"

    const-string v10, "GALILEO"

    const-string v11, "NAVIC"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mConstellationString:[Ljava/lang/String;

    .line 270
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mInitialized:Z

    .line 273
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 284
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isValidCellInfo:Z

    .line 289
    new-instance v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    invoke-direct {v3, v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;)V

    iput-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    .line 296
    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsNmeaAllowed:I

    .line 298
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mBroadcastReceiverExtension:Landroid/content/BroadcastReceiver;

    .line 546
    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeLocationManager:Landroid/location/LocationManager;

    .line 547
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$LPPeFusedLocationListener;

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$LPPeFusedLocationListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mLPPeFusedLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$LPPeFusedLocationListener;

    .line 727
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$2;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeWiFiReceiver:Landroid/content/BroadcastReceiver;

    .line 874
    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecFileObserver:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$SecFileObserver;

    .line 2190
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$4;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$4;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mEmergencyNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 3928
    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    .line 4086
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsCscFeatureDump:Ljava/util/ArrayList;

    .line 4087
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsSecgpsConfigDump:Ljava/util/ArrayList;

    .line 878
    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->init_GnssLocationPrivider_samsung()V

    .line 882
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->handleInitialize_samsung()V

    .line 883
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mImsRegistered:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getLppBitmask()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 155
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isUSAMarket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .line 155
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isCaMarket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300()Z
    .registers 1

    .line 155
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isKORMarket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setSimOperator_KOR()V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .registers 1

    .line 155
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->simOperatorKOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->prevLppMask:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # I

    .line 155
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->prevLppMask:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setLppSupport(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isValidCellInfo:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isIssueTrackerIntentReceived:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isIssueTrackerIntentReceived:Z

    return p1
.end method

.method static synthetic access$2200()Z
    .registers 1

    .line 155
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWlanApConnected:Z

    return v0
.end method

.method static synthetic access$2202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 155
    sput-boolean p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWlanApConnected:Z

    return p0
.end method

.method static synthetic access$2300()Z
    .registers 1

    .line 155
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isLPPeforUSAMarket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Landroid/net/wifi/WifiManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeWiFiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$2500()J
    .registers 2

    .line 155
    sget-wide v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mServingWlanBssid:J

    return-wide v0
.end method

.method static synthetic access$2502(J)J
    .registers 2
    .param p0, "x0"    # J

    .line 155
    sput-wide p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mServingWlanBssid:J

    return-wide p0
.end method

.method static synthetic access$2600(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # Landroid/location/Location;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->handleUpdateLPPeNLPLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->handleUpdateUBPInfo(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Landroid/hardware/SensorEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mUBPSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Landroid/hardware/SensorManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sensorMgr:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->convertFrequencytoChannel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;[J[I[II)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # [J
    .param p2, "x2"    # [I
    .param p3, "x3"    # [I
    .param p4, "x4"    # I

    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->handleUpdateWLANScanInfo([J[I[II)V

    return-void
.end method

.method static synthetic access$3400()Z
    .registers 1

    .line 155
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWifiScanRequested:Z

    return v0
.end method

.method static synthetic access$3402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 155
    sput-boolean p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWifiScanRequested:Z

    return p0
.end method

.method static synthetic access$3500(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_get_seh_gnss_hal_version()F

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;IIIIJII)V
    .registers 9
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # J
    .param p7, "x6"    # I
    .param p8, "x7"    # I

    .line 155
    invoke-direct/range {p0 .. p8}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_agps_set_ref_location_cellid(IIIIJII)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isUDPListen:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isUDPListen:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->checkUDPSuplInit()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getImsState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setCMCCSuplServer(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Ljava/util/Properties;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;[BI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_send_supl_ni_message([BI)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 155
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsNmeaAllowed:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;IILjava/lang/Object;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3546
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 3547
    .local v0, "messages":[Landroid/telephony/SmsMessage;
    if-nez v0, :cond_e

    .line 3548
    const-string v1, "GnssLocationProvider_ex"

    const-string v2, "Message does not exist in the intent."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    return-void

    .line 3552
    :cond_e
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_35

    aget-object v3, v0, v2

    .line 3553
    .local v3, "message":Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_32

    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v4, :cond_32

    .line 3554
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v4

    .line 3555
    .local v4, "suplInit":[B
    if-eqz v4, :cond_32

    .line 3556
    iget-boolean v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v5, :cond_2e

    .line 3558
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_nativeInitForSuplNI()V

    .line 3559
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_checkSmsSuplInit()V

    .line 3561
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->requestSetID(I)V

    .line 3563
    :cond_2e
    array-length v5, v4

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_send_supl_ni_message([BI)V

    .line 3552
    .end local v3    # "message":Landroid/telephony/SmsMessage;
    .end local v4    # "suplInit":[B
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 3567
    :cond_35
    return-void
.end method

.method private checkUDPSuplInit()V
    .registers 3

    .line 3500
    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "start UDP socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$5;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$5;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3542
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3543
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3570
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 3571
    .local v0, "suplInit":[B
    if-nez v0, :cond_9

    .line 3572
    return-void

    .line 3574
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v1, :cond_1f

    .line 3576
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3577
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_nativeInitForSuplNI()V

    .line 3578
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1c

    .line 3579
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_checkWapSuplInit()V

    .line 3581
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->requestSetID(I)V

    goto :goto_1f

    .line 3578
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v2

    .line 3583
    :cond_1f
    :goto_1f
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_send_supl_ni_message([BI)V

    .line 3584
    return-void
.end method

.method private configurationUpdate_setLppSupport(I)V
    .registers 4
    .param p1, "bitmask"    # I

    .line 3675
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_5

    .line 3676
    return-void

    .line 3677
    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configurationUpdate_setLppSupport, LPP_PROFILE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LPP_PROFILE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    .line 3681
    :cond_35
    return-void
.end method

.method private configurationUpdate_suplServer(ILjava/lang/String;IIII)V
    .registers 11
    .param p1, "supl_ver"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "ssl"    # I
    .param p5, "ssl_ver"    # I
    .param p6, "ssl_type"    # I

    .line 3627
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGPS_TYPE=3\nSUPL_VERSION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSUPL_HOST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSUPL_PORT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSUPL_SSL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSSL_VER="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSSL_TYPE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3636
    .local v0, "mExtensionSuplServerStr":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v1, :cond_47

    .line 3637
    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    goto :goto_4d

    .line 3639
    :cond_47
    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    .line 3641
    :goto_4d
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddressForNSFLP:Ljava/lang/String;

    .line 3644
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3645
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddressForNSFLP:Ljava/lang/String;

    const-string/jumbo v3, "supl_hostname"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3646
    sget-object v2, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->SUPL_ADDRESS:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendInfoToNsflp(Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;Ljava/lang/Object;)V

    .line 3649
    .end local v0    # "mExtensionSuplServerStr":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_61
    return-void
.end method

.method private configurationUpdate_xtraEnable(I)V
    .registers 6
    .param p1, "enable"    # I

    .line 3658
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configurationUpdate_xtraEnable, XTRA_ENABLE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    const-string v1, "XTRA_ENABLE="

    if-nez v0, :cond_35

    .line 3661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    goto :goto_4a

    .line 3663
    :cond_35
    const/16 v0, 0x18

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    .line 3666
    :cond_4a
    :goto_4a
    return-void
.end method

.method private convertFrequencytoChannel(I)I
    .registers 3
    .param p1, "frequency"    # I

    .line 716
    const/16 v0, 0x9b4

    if-ne p1, v0, :cond_7

    .line 717
    const/16 v0, 0xe

    return v0

    .line 718
    :cond_7
    if-ge p1, v0, :cond_e

    .line 719
    add-int/lit16 v0, p1, -0x967

    div-int/lit8 v0, v0, 0x5

    return v0

    .line 720
    :cond_e
    const/16 v0, 0x132e

    if-lt p1, v0, :cond_1b

    const/16 v0, 0x1374

    if-gt p1, v0, :cond_1b

    .line 721
    add-int/lit16 v0, p1, -0xfa0

    div-int/lit8 v0, v0, 0x5

    return v0

    .line 723
    :cond_1b
    add-int/lit16 v0, p1, -0x1388

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public static convertStringToHexLong(Ljava/lang/String;)J
    .registers 6
    .param p0, "bssid"    # Ljava/lang/String;

    .line 805
    const-wide/16 v0, -0x1

    .line 807
    .local v0, "longBssid":J
    :try_start_2
    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, "tmpBssid":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_12

    move-wide v0, v3

    .line 810
    .end local v2    # "tmpBssid":Ljava/lang/String;
    goto :goto_13

    .line 809
    :catch_12
    move-exception v2

    .line 812
    :goto_13
    return-wide v0
.end method

.method private deleteSecGpsConf()V
    .registers 5

    .line 3228
    const-string v0, "GnssLocationProvider_ex"

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v2, "USE_SECGPS_CONF"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 3230
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/gps/secgps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3232
    .local v1, "file":Ljava/io/File;
    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3233
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3234
    const-string/jumbo v2, "secgps.conf deleted"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_21} :catch_22

    .line 3238
    :cond_21
    goto :goto_28

    .line 3236
    :catch_22
    move-exception v2

    .line 3237
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, " could not access secgps.conf file : /data/system/gps/secgps.conf"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_28
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    const-string v2, "USE_SECGPS_CONF=0"

    if-nez v0, :cond_32

    .line 3240
    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    goto :goto_38

    .line 3242
    :cond_32
    const/16 v0, 0x18

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    .line 3245
    :goto_38
    return-void
.end method

.method private extChnSelectPositionMode()I
    .registers 6

    .line 1844
    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "extChnSelectPositionMode() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    const/4 v1, 0x0

    .line 1847
    .local v1, "chnPositionMode":I
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v2, v3, :cond_2e

    .line 1848
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_CMCCxtraDownloadRequest()Z

    move-result v2

    .line 1850
    .local v2, "agpsSwitchOff":Z
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_28

    if-eqz v2, :cond_21

    goto :goto_28

    .line 1854
    :cond_21
    const-string v3, "extChnSelectPositionMode() postionMode == MS_BASED"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    const/4 v1, 0x1

    goto :goto_2e

    .line 1851
    :cond_28
    :goto_28
    const-string v3, "extChnSelectPositionMode() postionMode == STANDALONE"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    const/4 v1, 0x0

    .line 1859
    .end local v2    # "agpsSwitchOff":Z
    :cond_2e
    :goto_2e
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v2, v3, :cond_46

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHU:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v2, v3, :cond_46

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v2, v3, :cond_4c

    .line 1860
    :cond_46
    const/4 v1, 0x0

    .line 1861
    const-string v2, "extChnSelectPositionMode, set with STANDALONE for CU and OPEN"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_4c
    return v1
.end method

.method private extCtcSelectPositionMode(Z)I
    .registers 13
    .param p1, "singleShot"    # Z

    .line 1794
    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "extCTCSelectPositionMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1797
    .local v1, "roamingInfo":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1799
    .local v2, "locationModeState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "locationModeState :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1805
    .local v3, "info":Landroid/net/NetworkInfo;
    const-string/jumbo v6, "gsm.network.type"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1806
    .local v6, "network_prop":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 1807
    .local v7, "network_type":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network Type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v7, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1810
    .local v8, "ctcCurrentApn":Ljava/lang/String;
    aget-object v9, v7, v4

    const-string v10, "LTE"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_84

    const-string v9, "CTWAP"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_84

    .line 1811
    const-string v9, "CTLTE"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_84

    const-string v9, "CTNET"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    :cond_84
    move v4, v5

    .line 1813
    .local v4, "isCtcAgpsApn":Z
    :cond_85
    if-eqz v1, :cond_94

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v9

    if-eqz v9, :cond_94

    .line 1814
    const-string v5, "Roaming, Start Standalone GPS"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    const/4 v0, 0x0

    .local v0, "ctcPositionMode":I
    goto :goto_e5

    .line 1816
    .end local v0    # "ctcPositionMode":I
    :cond_94
    if-eqz v3, :cond_a9

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-ne v9, v5, :cond_a9

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 1817
    const-string v5, "This is WIFI, Start Standalone GPS"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    const/4 v0, 0x0

    .restart local v0    # "ctcPositionMode":I
    goto :goto_e5

    .line 1819
    .end local v0    # "ctcPositionMode":I
    :cond_a9
    if-eqz v4, :cond_d0

    .line 1820
    if-eqz p1, :cond_bb

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 1821
    const-string v5, "Start SingleShot : MS-Assisted"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    const/4 v0, 0x2

    .restart local v0    # "ctcPositionMode":I
    goto :goto_e5

    .line 1823
    .end local v0    # "ctcPositionMode":I
    :cond_bb
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 1824
    const-string v5, "Start Tracking Mode : MS-Based"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const/4 v0, 0x1

    .restart local v0    # "ctcPositionMode":I
    goto :goto_e5

    .line 1827
    .end local v0    # "ctcPositionMode":I
    :cond_c9
    const-string v5, "No MS-A, Ms-B capabilities"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    const/4 v0, 0x0

    .restart local v0    # "ctcPositionMode":I
    goto :goto_e5

    .line 1831
    .end local v0    # "ctcPositionMode":I
    :cond_d0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "It\'s not CTC AGPS APN : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    const/4 v0, 0x0

    .line 1834
    .restart local v0    # "ctcPositionMode":I
    :goto_e5
    return v0
.end method

.method private extension_CMCCxtraDownloadRequest()Z
    .registers 8

    .line 1874
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 1875
    return v2

    .line 1877
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1880
    .local v0, "isAgpsSwitchMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extension_CMCCxtraDownloadRequest, isAgpsSwitchMode : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GnssLocationProvider_ex"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    if-eq v0, v3, :cond_40

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    .line 1903
    const/4 v1, 0x1

    .line 1904
    .local v1, "result":Z
    const-string v5, "extension_CMCCxtraDownloadRequest, AGPS setting : AGPS OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 1899
    .end local v1    # "result":Z
    :cond_39
    const/4 v1, 0x0

    .line 1900
    .restart local v1    # "result":Z
    const-string v5, "extension_CMCCxtraDownloadRequest, AGPS setting : All Network"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    goto :goto_67

    .line 1884
    .end local v1    # "result":Z
    :cond_40
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_60

    .line 1885
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1886
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_58

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 1887
    const/4 v5, 0x1

    .line 1888
    .local v5, "result":Z
    const-string v6, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    goto :goto_5f

    .line 1890
    .end local v5    # "result":Z
    :cond_58
    const/4 v5, 0x0

    .line 1891
    .restart local v5    # "result":Z
    const-string v6, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == false"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 1893
    .end local v5    # "result":Z
    .local v1, "result":Z
    :goto_5f
    goto :goto_67

    .line 1894
    .end local v1    # "result":Z
    :cond_60
    const/4 v1, 0x1

    .line 1895
    .restart local v1    # "result":Z
    const-string v5, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, PS error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    nop

    .line 1907
    :goto_67
    if-eqz v1, :cond_6d

    .line 1908
    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_xtraEnable(I)V

    goto :goto_70

    .line 1910
    :cond_6d
    invoke-direct {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_xtraEnable(I)V

    .line 1913
    :goto_70
    return v1
.end method

.method private extension_hasCapability(I)Z
    .registers 3
    .param p1, "capability"    # I

    .line 1784
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private generateBeep()V
    .registers 11

    .line 1670
    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "generateBeep Method call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const/4 v1, 0x0

    .line 1673
    .local v1, "MIN_VOLUME_LEV":I
    const/4 v2, 0x7

    .line 1674
    .local v2, "MAX_VOLUME_LEV":I
    const/16 v3, 0xe

    .line 1675
    .local v3, "VOLUME_STEP":I
    const/16 v4, 0x64

    .line 1678
    .local v4, "MAX_VOLUME":I
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 1679
    .local v5, "audioManager":Landroid/media/AudioManager;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 1680
    .local v7, "mCurVol":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateBeep: Volume Level:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    if-ltz v7, :cond_51

    const/4 v8, 0x7

    if-gt v7, v8, :cond_51

    .line 1683
    if-ne v7, v8, :cond_3a

    .line 1684
    const/16 v7, 0x64

    goto :goto_3c

    .line 1686
    :cond_3a
    mul-int/lit8 v7, v7, 0xe

    .line 1688
    :goto_3c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateBeep: valid Volume:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 1691
    :cond_51
    const-string v8, "Error getting current volume: Setting volume as max volume"

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const/16 v7, 0x64

    .line 1694
    :goto_58
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_62

    .line 1695
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1696
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 1698
    :cond_62
    new-instance v0, Landroid/media/ToneGenerator;

    invoke-direct {v0, v6, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 1699
    const/16 v6, 0x1c

    const/16 v8, 0x1f4

    invoke-virtual {v0, v6, v8}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1700
    return-void
.end method

.method private getCpAgpsProfile()I
    .registers 4

    .line 3141
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSimSlotId:I

    const-string v2, "CscFeature_GPS_SupportEnableAgps"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v0

    .line 3143
    .local v0, "mEnableAgpsFromCsc":Z
    if-eqz v0, :cond_10

    .line 3144
    const/4 v1, 0x1

    return v1

    .line 3146
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method private getCscFeatureString()V
    .registers 16

    .line 3797
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsCscFeatureDump:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3798
    const-string/jumbo v0, "ro.multisim.simslotcount"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3799
    .local v0, "simslotCnt":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_e
    if-ge v1, v0, :cond_13f

    .line 3800
    const-string v2, ""

    .line 3801
    .local v2, "mAgpsSetting":Ljava/lang/String;
    const-string v3, ""

    .line 3802
    .local v3, "mSuplHost":Ljava/lang/String;
    const/4 v4, -0x1

    .line 3803
    .local v4, "mSuplVersion":I
    const/4 v5, -0x1

    .line 3804
    .local v5, "mAgpsMode":I
    const/4 v6, -0x1

    .line 3805
    .local v6, "mAgnssProtocol":I
    const/4 v7, -0x1

    .line 3806
    .local v7, "mLppeCp":I
    const/4 v8, -0x1

    .line 3807
    .local v8, "mLppeUp":I
    const/4 v9, -0x1

    .line 3808
    .local v9, "mEsExtemsionSec":I
    const/4 v10, -0x1

    .line 3809
    .local v10, "mExceptionMask":I
    iget-boolean v11, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mEnableSMF:Z

    if-eqz v11, :cond_7e

    .line 3810
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v11

    const-string v12, "CarrierFeature_GPS_ConfigAgpsSetting"

    const-string v13, ""

    const/4 v14, 0x0

    invoke-virtual {v11, v1, v12, v13, v14}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3812
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v11

    const-string v12, "CarrierFeature_GPS_ConfigSuplHost"

    invoke-virtual {v11, v1, v12, v13, v14}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 3814
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v11

    const-string v12, "CarrierFeature_GPS_ConfigSuplVersion"

    const/4 v13, -0x1

    invoke-virtual {v11, v1, v12, v13, v14}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result v4

    .line 3816
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v11

    const-string v12, "CarrierFeature_GPS_ConfigAgpsMode"

    invoke-virtual {v11, v1, v12, v13, v14}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result v5

    .line 3818
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v11

    const-string v12, "CarrierFeature_GPS_ConfigAgnssProtocol"

    invoke-virtual {v11, v1, v12, v13, v14}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result v6

    .line 3820
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v11

    const-string v12, "CarrierFeature_GPS_ConfigLppeCp"

    invoke-virtual {v11, v1, v12, v13, v14}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result v7

    .line 3822
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v11

    const-string v12, "CarrierFeature_GPS_ConfigLppeUp"

    invoke-virtual {v11, v1, v12, v13, v14}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result v8

    .line 3824
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v11

    const-string v12, "CarrierFeature_GPS_ConfigEsExtensionSec"

    invoke-virtual {v11, v1, v12, v13, v14}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result v9

    .line 3826
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v11

    const-string v12, "CarrierFeature_GPS_ConfigExceptionMaskForAGNSS"

    invoke-virtual {v11, v1, v12, v13, v14}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result v10

    goto :goto_d8

    .line 3829
    :cond_7e
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string v12, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v11, v1, v12}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3830
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string v12, "CscFeature_GPS_ConfigSuplHost"

    invoke-virtual {v11, v1, v12}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3831
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    .line 3832
    const-string v12, "CscFeature_GPS_ConfigSuplVersion"

    invoke-virtual {v11, v1, v12}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(ILjava/lang/String;)I

    move-result v4

    .line 3833
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string v12, "CscFeature_GPS_ConfigAgpsMode"

    invoke-virtual {v11, v1, v12}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(ILjava/lang/String;)I

    move-result v5

    .line 3834
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    .line 3835
    const-string v12, "CscFeature_GPS_ConfigAgnssProtocol"

    invoke-virtual {v11, v1, v12}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(ILjava/lang/String;)I

    move-result v6

    .line 3836
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string v12, "CscFeature_GPS_ConfigLppeCp"

    invoke-virtual {v11, v1, v12}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(ILjava/lang/String;)I

    move-result v7

    .line 3837
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string v12, "CscFeature_GPS_ConfigLppeUp"

    invoke-virtual {v11, v1, v12}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(ILjava/lang/String;)I

    move-result v8

    .line 3838
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    .line 3839
    const-string v12, "CscFeature_GPS_ConfigEsExtensionSec"

    invoke-virtual {v11, v1, v12}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(ILjava/lang/String;)I

    move-result v9

    .line 3840
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    .line 3841
    const-string v12, "CscFeature_GPS_ConfigExceptionMaskForAGNSS"

    invoke-virtual {v11, v1, v12}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(ILjava/lang/String;)I

    move-result v10

    .line 3844
    :goto_d8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\n Current Sim slot ID  :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\n AGPS Setting  :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n SUPL Address  :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n SUPL version  :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\n AGPS Mode  :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\n AGNSS Protocol  :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\n LPPeCP  :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\n LPPeUP  :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\n ES Extension Sec  :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\n Exception mask for Agnss  :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3848
    .local v11, "csc_feature":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsCscFeatureDump:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3799
    .end local v2    # "mAgpsSetting":Ljava/lang/String;
    .end local v3    # "mSuplHost":Ljava/lang/String;
    .end local v4    # "mSuplVersion":I
    .end local v5    # "mAgpsMode":I
    .end local v6    # "mAgnssProtocol":I
    .end local v7    # "mLppeCp":I
    .end local v8    # "mLppeUp":I
    .end local v9    # "mEsExtemsionSec":I
    .end local v10    # "mExceptionMask":I
    .end local v11    # "csc_feature":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    .line 3850
    .end local v1    # "idx":I
    :cond_13f
    const-string v1, "GnssLocationProvider_ex"

    const-string v2, "CSC config is saved"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    return-void
.end method

.method private getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .line 1924
    const-string v0, ""

    .line 1926
    .local v0, "apn":Ljava/lang/String;
    const-string v1, "GnssLocationProvider_ex"

    const-string v2, "getGpsCurrentApn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v5, :cond_4f

    .line 1930
    const-string v2, "This model uses multisim."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    const-string/jumbo v2, "gsm.sim.state"

    const-string v5, "0,0"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1932
    .local v2, "simState":[Ljava/lang/String;
    aget-object v5, v2, v4

    .line 1933
    .local v5, "sim1State":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slot1 Card Status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    const-string v6, "ABSENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 1937
    const-string v4, "Slot1 is empty. No need to check apn. return APN null."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    return-object v3

    .line 1942
    .end local v2    # "simState":[Ljava/lang/String;
    .end local v5    # "sim1State":Ljava/lang/String;
    :cond_4f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1943
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 1945
    .local v5, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1946
    .local v6, "result":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v12

    .line 1947
    .local v12, "mSubId":[I
    if-eqz v12, :cond_62

    array-length v7, v12

    if-lez v7, :cond_62

    .line 1948
    aget v6, v12, v4

    move v13, v6

    goto :goto_6d

    .line 1950
    :cond_62
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v6

    .line 1951
    const-string/jumbo v7, "subID is null or 0 length, so get DefaultSubId!!"

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v6

    .line 1953
    .end local v6    # "result":I
    .local v13, "result":I
    :goto_6d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSubId from simSlot1, SubId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    .line 1955
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v6, "apn"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1954
    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1958
    if-eqz v5, :cond_f6

    .line 1959
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getCurrentApn] cursor.count() = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :try_start_c3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 1962
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d8

    .line 1963
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1964
    :cond_d8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getCurrentApn] get apn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catchall {:try_start_c3 .. :try_end_ec} :catchall_f1

    .line 1966
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1967
    nop

    .line 1969
    return-object v0

    .line 1966
    :catchall_f1
    move-exception v1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1967
    throw v1

    .line 1971
    :cond_f6
    return-object v3
.end method

.method private getHardwareFactors()Ljava/lang/String;
    .registers 12

    .line 2005
    const-string v0, ""

    const-string v1, "GnssLocationProvider_ex"

    const-string v2, "getHardwareFactors"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    new-instance v2, Ljava/io/File;

    const-string v3, "/vendor/etc/gnss/hardware_factors.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2009
    .local v2, "file":Ljava/io/File;
    :try_start_10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 2010
    const-string v3, " file doesn\'t exist : /vendor/etc/gnss/hardware_factors.conf"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_1b} :catch_d9

    .line 2011
    return-object v0

    .line 2016
    :cond_1c
    nop

    .line 2018
    const-string v3, ""

    .line 2019
    .local v3, "configValues":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2021
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_20
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    .line 2024
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2025
    .local v5, "model":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "model =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    :cond_42
    :goto_42
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .local v6, "line":Ljava/lang/String;
    if-eqz v1, :cond_b5

    .line 2027
    const-string v1, "?"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_4f} :catch_c1
    .catchall {:try_start_20 .. :try_end_4f} :catchall_bf

    const-string v7, "\n"

    if-eqz v1, :cond_89

    .line 2029
    const/4 v1, 0x0

    :try_start_54
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2030
    .local v1, "modelWithWildcard":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 2031
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "?_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 2034
    .end local v1    # "modelWithWildcard":Ljava/lang/String;
    :cond_89
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_b3} :catch_c1
    .catchall {:try_start_54 .. :try_end_b3} :catchall_bf

    move-object v3, v1

    goto :goto_42

    .line 2042
    .end local v5    # "model":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    :cond_b5
    nop

    .line 2043
    :try_start_b6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    .line 2046
    :cond_b9
    :goto_b9
    goto :goto_cb

    .line 2044
    :catch_ba
    move-exception v0

    .line 2045
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2047
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_cb

    .line 2041
    :catchall_bf
    move-exception v0

    goto :goto_cc

    .line 2038
    :catch_c1
    move-exception v0

    .line 2039
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_bf

    .line 2042
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_b9

    .line 2043
    :try_start_c7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_ba

    goto :goto_b9

    .line 2049
    :goto_cb
    return-object v3

    .line 2042
    :goto_cc
    if-eqz v4, :cond_d7

    .line 2043
    :try_start_ce
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d2

    goto :goto_d7

    .line 2044
    :catch_d2
    move-exception v1

    .line 2045
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d8

    .line 2046
    .end local v1    # "e":Ljava/io/IOException;
    :cond_d7
    :goto_d7
    nop

    .line 2047
    :goto_d8
    throw v0

    .line 2013
    .end local v3    # "configValues":Ljava/lang/String;
    .end local v4    # "in":Ljava/io/BufferedReader;
    :catch_d9
    move-exception v3

    .line 2014
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, " could not access file : /vendor/etc/gnss/hardware_factors.conf"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    return-object v0
.end method

.method private getImsState(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3754
    const-string v0, "REGISTERED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "GnssLocationProvider_ex"

    if-eqz v0, :cond_14

    .line 3755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mImsRegistered:Z

    .line 3756
    const-string v0, "IMS registered."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 3758
    :cond_14
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mImsRegistered:Z

    .line 3759
    const-string v0, "IMS not registered."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    :goto_1b
    const-string v0, "VOWIFI"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3764
    const-string v0, "IMS VoWIFI registration done."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3768
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS registration error code : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SIP_ERROR"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS service capabilities : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SERVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3773
    return-void
.end method

.method private getLppBitmask()I
    .registers 7

    .line 2221
    const/4 v0, -0x1

    .line 2222
    .local v0, "ret":I
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSimSlotId:I

    .line 2223
    const-string v3, "CscFeature_GPS_ConfigLppBitmask"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(ILjava/lang/String;)I

    move-result v1

    .line 2225
    .local v1, "mLppBitmaskFromCsc":I
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v2, :cond_7e

    .line 2226
    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    .line 2227
    move v0, v1

    .line 2229
    :cond_15
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isUSAMarket()Z

    move-result v3

    const-string v4, "GnssLocationProvider_ex"

    if-eqz v3, :cond_61

    .line 2230
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isLPPeforUSAMarket()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2231
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isOTDOACapableMarket()Z

    move-result v2

    const-string v3, "LocationX"

    if-eqz v2, :cond_45

    .line 2232
    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 2233
    const-string v2, "US OTDOA capable market operator: LPP enable(ECID + OTDOA) + LPPe(UP + CP)"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    const/16 v0, 0x57

    goto :goto_7e

    .line 2236
    :cond_3d
    const-string v2, "US OTDOA capable market operator: LPP enable(ECID + OTDOA) + LPPe(CP)"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    const/16 v0, 0x17

    goto :goto_7e

    .line 2240
    :cond_45
    const-string v2, "US market operator: LPP enable(ECID only) + LPPe(CP)"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    const/16 v0, 0x15

    goto :goto_7e

    .line 2244
    :cond_4d
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isOTDOACapableMarket()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2245
    const-string v2, "US OTDOA capable market operator: LPP enable(ECID + OTDOA)"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    const/4 v0, 0x7

    goto :goto_7e

    .line 2248
    :cond_5a
    const-string v2, "US market operator: LPP enable(ECID only)"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    const/4 v0, 0x5

    goto :goto_7e

    .line 2252
    :cond_61
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isCaMarket()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 2253
    const-string v2, "US market operator: LPP enable(ECID Only)"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    const/4 v0, 0x5

    goto :goto_7e

    .line 2255
    :cond_6e
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v3

    sget-object v5, Lcom/android/server/location/gnss/GnssConstants$Vendor;->NO_OPERATOR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v3, v5, :cond_7e

    if-ne v0, v2, :cond_7e

    .line 2256
    const-string v2, "No Operator LPP Disable"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    const/4 v0, 0x0

    .line 2260
    :cond_7e
    :goto_7e
    return v0
.end method

.method private getSKAFEnable()Z
    .registers 3

    .line 1622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSKAFEnable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsSKAF:Z

    return v0
.end method

.method private getSecgpsConfiguration()V
    .registers 24

    .line 3855
    move-object/from16 v1, p0

    const-string v2, "GnssLocationProvider_ex"

    iget-object v0, v1, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsSecgpsConfigDump:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3856
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v3, v0

    .line 3857
    .local v3, "mSecgpsProperties":Ljava/util/Properties;
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/system/gps/secgps.conf"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 3858
    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 3860
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_18
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_26
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1d} :catch_1f

    move-object v5, v0

    .line 3865
    :goto_1e
    goto :goto_2d

    .line 3863
    :catch_1f
    move-exception v0

    .line 3864
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v6, "Could not access GPS configuration file /data/system/gps/secgps.conf"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 3861
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_26
    move-exception v0

    .line 3862
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v6, "Could not open GPS configuration file /data/system/gps/secgps.conf"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_1e

    .line 3866
    :goto_2d
    if-eqz v5, :cond_51

    .line 3868
    :try_start_2f
    invoke-virtual {v3, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_32} :catch_39
    .catchall {:try_start_2f .. :try_end_32} :catchall_37

    .line 3875
    nop

    :goto_33
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3876
    goto :goto_51

    .line 3875
    :catchall_37
    move-exception v0

    goto :goto_4d

    .line 3871
    :catch_39
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 3872
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3c
    const-string v6, "Could not load GPS configuration file /data/system/gps/secgps.confdue to IllegalArgumentException"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    nop

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_33

    .line 3869
    :catch_43
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 3870
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "Could not load GPS configuration file /data/system/gps/secgps.confdue to IOException"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_37

    .line 3875
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_33

    :goto_4d
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3876
    throw v0

    .line 3879
    :cond_51
    :goto_51
    const-string v0, "TIMEOUT"

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3880
    .local v0, "mSecTimeOut":Ljava/lang/String;
    const-string v6, "AGPS_MODE"

    invoke-virtual {v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3881
    .local v6, "mSecAgpsMode":Ljava/lang/String;
    const-string v7, "LPPE_CP_TECHNOLOGY"

    invoke-virtual {v3, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3882
    .local v7, "mSecLppeCp":Ljava/lang/String;
    const-string v8, "LPPE_UP_TECHNOLOGY"

    invoke-virtual {v3, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3883
    .local v8, "mSecLppeUp":Ljava/lang/String;
    const-string v9, "ENABLE_XTRA"

    invoke-virtual {v3, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3884
    .local v9, "mSecXtraEnabled":Ljava/lang/String;
    const-string v10, "SSL"

    invoke-virtual {v3, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3885
    .local v10, "mSecSslEnabled":Ljava/lang/String;
    const-string v11, "OPERATION_MODE"

    invoke-virtual {v3, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3886
    .local v11, "mSecOperationMode":Ljava/lang/String;
    const-string v12, "START_MODE"

    invoke-virtual {v3, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3887
    .local v12, "mSecStartMode":Ljava/lang/String;
    const-string v13, "AGNSS_PROTOCOL"

    invoke-virtual {v3, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3888
    .local v13, "mSecAgnssProtocol":Ljava/lang/String;
    const-string v14, "SUPL_PORT"

    invoke-virtual {v3, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3889
    .local v14, "mSecSuplPort":Ljava/lang/String;
    const-string v15, "SUPL_HOST"

    invoke-virtual {v3, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3890
    .local v15, "mSecSuplHost":Ljava/lang/String;
    move-object/from16 v16, v4

    .end local v4    # "file":Ljava/io/File;
    .local v16, "file":Ljava/io/File;
    const-string v4, "SUPL_VERSION"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3891
    .local v4, "mSecSuplVersion":Ljava/lang/String;
    move-object/from16 v17, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v17, "stream":Ljava/io/FileInputStream;
    const-string v5, "LPP_PROFILE"

    invoke-virtual {v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3892
    .local v5, "mSecLppProfile":Ljava/lang/String;
    move-object/from16 v18, v2

    const-string v2, "ENABLE_L5"

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3893
    .local v2, "mSecEnableL5":Ljava/lang/String;
    const-string v1, "SPIRENT"

    invoke-virtual {v3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3894
    .local v1, "mSecSpirent":Ljava/lang/String;
    move-object/from16 v19, v3

    .end local v3    # "mSecgpsProperties":Ljava/util/Properties;
    .local v19, "mSecgpsProperties":Ljava/util/Properties;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v1

    .end local v1    # "mSecSpirent":Ljava/lang/String;
    .local v20, "mSecSpirent":Ljava/lang/String;
    const-string v1, "\n Time out  :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n AGPS Mode :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n LPPe CP  :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n LPPe UP  :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n XTRA Enable  :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n SSL Enable :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Opeartion Mode  :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Start Mode :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Agnss Protocol  :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n SUPL Port :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n SUPL Host  :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n SUPL Version   :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n LPP Profile :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n L5 Enable  :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Spirent  :  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    .end local v20    # "mSecSpirent":Ljava/lang/String;
    .restart local v1    # "mSecSpirent":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    .end local v0    # "mSecTimeOut":Ljava/lang/String;
    .local v20, "mSecTimeOut":Ljava/lang/String;
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3901
    .local v0, "secgps_config":Ljava/lang/String;
    move-object/from16 v3, p0

    move-object/from16 v21, v1

    .end local v1    # "mSecSpirent":Ljava/lang/String;
    .local v21, "mSecSpirent":Ljava/lang/String;
    iget-object v1, v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsSecgpsConfigDump:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3902
    const-string/jumbo v1, "secgps.conf is saved"

    move-object/from16 v22, v2

    move-object/from16 v2, v18

    .end local v2    # "mSecEnableL5":Ljava/lang/String;
    .local v22, "mSecEnableL5":Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    return-void
.end method

.method private getSuplServerFromCSC()V
    .registers 11

    .line 2549
    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "getSuplServerFromCSC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 2552
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/gps/cscgps.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2554
    .local v2, "file":Ljava/io/File;
    :try_start_12
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 2555
    const-string v3, " file doesn\'t exist : /data/system/gps/cscgps.conf"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_1d} :catch_1f

    .line 2556
    return-void

    .line 2560
    :cond_1e
    goto :goto_25

    .line 2558
    :catch_1f
    move-exception v3

    .line 2559
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, " could not access file : /data/system/gps/cscgps.conf"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_25
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 2563
    .local v3, "mProperties_cscgps":Ljava/util/Properties;
    const/4 v4, 0x0

    .line 2565
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_2b
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_30} :catch_39
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_30} :catch_32

    move-object v4, v5

    .line 2570
    :goto_31
    goto :goto_40

    .line 2568
    :catch_32
    move-exception v5

    .line 2569
    .local v5, "e":Ljava/lang/SecurityException;
    const-string v6, "could not access file /data/system/gps/cscgps.conf"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 2566
    .end local v5    # "e":Ljava/lang/SecurityException;
    :catch_39
    move-exception v5

    .line 2567
    .local v5, "e":Ljava/io/FileNotFoundException;
    const-string v6, "could not open file /data/system/gps/cscgps.conf"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/io/FileNotFoundException;
    goto :goto_31

    .line 2571
    :goto_40
    if-eqz v4, :cond_63

    .line 2573
    :try_start_42
    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_45} :catch_4b
    .catchall {:try_start_42 .. :try_end_45} :catchall_49

    .line 2581
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2582
    goto :goto_63

    .line 2581
    :catchall_49
    move-exception v0

    goto :goto_5f

    .line 2577
    :catch_4b
    move-exception v1

    .line 2578
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4c
    const-string v5, " could not load file : /data/system/gps/cscgps.confdue to IllegalArgumentException"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_49

    .line 2581
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2579
    return-void

    .line 2574
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_55
    move-exception v1

    .line 2575
    .local v1, "e":Ljava/io/IOException;
    :try_start_56
    const-string v5, " could not load file : /data/system/gps/cscgps.confdue to IOException"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_49

    .line 2581
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2576
    return-void

    .line 2581
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5f
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2582
    throw v0

    .line 2585
    :cond_63
    :goto_63
    const-string v5, "CSC_SUPL_SUPLSERVERFROMCSC"

    invoke-virtual {v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2586
    .local v5, "SuplServerFromCSC_s":Ljava/lang/String;
    if-eqz v5, :cond_91

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_91

    .line 2588
    :try_start_71
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplServerFromCSC:I
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_77} :catch_78

    .line 2592
    goto :goto_91

    .line 2589
    :catch_78
    move-exception v6

    .line 2590
    .local v6, "e":Ljava/lang/NumberFormatException;
    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 2591
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [NumberFormatException] mSuplServerFromCSC :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_91
    :goto_91
    iget v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d9

    .line 2596
    const-string v6, "CSC_SUPL_OPMODE"

    invoke-virtual {v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 2597
    const-string v6, "CSC_SUPL_HOST"

    invoke-virtual {v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 2599
    const-string v6, "CSC_SUPL_VER"

    const-string v7, "1"

    invoke-virtual {v3, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2600
    .local v6, "SuplType_s":Ljava/lang/String;
    const-string v7, "CSC_SUPL_PORT"

    const-string v8, "7276"

    invoke-virtual {v3, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2601
    .local v7, "SuplPort_s":Ljava/lang/String;
    const-string v8, "CSC_SUPL_SSL"

    const-string v9, "0"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2604
    .local v8, "SuplSslMode_s":Ljava/lang/String;
    :try_start_be
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplVersion:I

    .line 2605
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplPort:I

    .line 2606
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslMode:I
    :try_end_d0
    .catch Ljava/lang/NumberFormatException; {:try_start_be .. :try_end_d0} :catch_d1

    .line 2611
    goto :goto_d9

    .line 2608
    :catch_d1
    move-exception v9

    .line 2609
    .local v9, "e":Ljava/lang/NumberFormatException;
    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 2610
    const-string v1, "[NumberFormatException] failed to convert supl information"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    .end local v6    # "SuplType_s":Ljava/lang/String;
    .end local v7    # "SuplPort_s":Ljava/lang/String;
    .end local v8    # "SuplSslMode_s":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_d9
    :goto_d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getProperty] mSuplServerFromCSC : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    return-void
.end method

.method private getSuplServerFromNetworkInfo()Ljava/lang/String;
    .registers 11

    .line 1283
    const/16 v0, 0x136

    .line 1284
    .local v0, "mccATT":I
    const/16 v1, 0x96

    .line 1288
    .local v1, "mncAIO1":I
    const/4 v2, 0x0

    .line 1289
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 1290
    .local v3, "simOperator":Ljava/lang/String;
    const-string/jumbo v4, "getSuplServerFromNetworkInfo :"

    const-string v5, "GnssLocationProvider_ex"

    if-eqz v3, :cond_af

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_af

    .line 1291
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1292
    .local v6, "mcc":I
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1293
    .local v7, "mnc":I
    iget-boolean v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v8, :cond_c4

    .line 1294
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v8

    .line 1295
    .local v8, "smallVendor":Lcom/android/server/location/gnss/GnssConstants$Vendor;
    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_ATT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v8, v9, :cond_79

    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v8, v9, :cond_79

    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v8, v9, :cond_79

    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v8, v9, :cond_79

    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_AIO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v8, v9, :cond_47

    goto :goto_79

    .line 1313
    :cond_47
    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TMO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v8, v9, :cond_63

    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v8, v9, :cond_63

    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAG:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v8, v9, :cond_63

    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v8, v9, :cond_63

    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v8, v9, :cond_63

    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TMK:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v8, v9, :cond_63

    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_DSH:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v8, v9, :cond_ae

    .line 1320
    :cond_63
    const-string/jumbo v2, "supl.geo.t-mobile.com"

    .line 1321
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 1300
    :cond_79
    :goto_79
    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v8, v9, :cond_85

    const/16 v9, 0x136

    if-ne v6, v9, :cond_85

    const/16 v9, 0x96

    if-eq v7, v9, :cond_97

    :cond_85
    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_AIO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v8, v9, :cond_97

    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v8, v9, :cond_97

    sget-object v9, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v8, v9, :cond_92

    goto :goto_97

    .line 1308
    :cond_92
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_9a

    .line 1306
    :cond_97
    :goto_97
    const-string/jumbo v2, "supl.google.com"

    .line 1310
    :goto_9a
    if-eqz v2, :cond_ae

    .line 1311
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    .end local v8    # "smallVendor":Lcom/android/server/location/gnss/GnssConstants$Vendor;
    :cond_ae
    :goto_ae
    goto :goto_c4

    .line 1325
    .end local v6    # "mcc":I
    .end local v7    # "mnc":I
    :cond_af
    const-string/jumbo v2, "supl.google.com"

    .line 1326
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_c4
    :goto_c4
    return-object v2
.end method

.method public static getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;
    .registers 5

    .line 1332
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->simOperatorKOR:Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 1334
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_37e

    :cond_e
    :pswitch_e
    goto :goto_2c

    :pswitch_f
    const-string v2, "45008"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v1, v4

    goto :goto_2c

    :pswitch_19
    const-string v2, "45006"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v1, v3

    goto :goto_2c

    :pswitch_23
    const-string v2, "45005"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    :goto_2c
    if-eqz v1, :cond_39

    if-eq v1, v4, :cond_36

    if-eq v1, v3, :cond_33

    goto :goto_3c

    .line 1340
    :cond_33
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_LGT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1338
    :cond_36
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_KTT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1336
    :cond_39
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_SKT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1346
    :cond_3c
    :goto_3c
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1347
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TMO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1348
    :cond_49
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "TMK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1349
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TMK:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1350
    :cond_56
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "TFN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1351
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1352
    :cond_63
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "TFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1353
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1354
    :cond_70
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "DSH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1355
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_DSH:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1356
    :cond_7d
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1357
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_ATT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1358
    :cond_8a
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1359
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_AIO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1360
    :cond_97
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "TFA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 1361
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1362
    :cond_a4
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "TFC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1363
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1364
    :cond_b1
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "XAA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1365
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1366
    :cond_be
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "XAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 1367
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1368
    :cond_cb
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "XAG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 1369
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAG:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1370
    :cond_d8
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 1371
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_VZW:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1372
    :cond_e5
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 1373
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_SPR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1374
    :cond_f2
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 1375
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAS:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1376
    :cond_ff
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 1377
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_BST:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1378
    :cond_10c
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 1379
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_VMU:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1380
    :cond_119
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 1381
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_USC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1382
    :cond_126
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "ACG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 1383
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_ACG:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1384
    :cond_133
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 1385
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->JPN_DCM:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1386
    :cond_140
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37a

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1387
    const-string v1, "JCO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37a

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1388
    const-string v1, "UQM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160

    goto/16 :goto_37a

    .line 1390
    :cond_160
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "RKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 1391
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->JPN_RKT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1392
    :cond_16d
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_377

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1393
    const-string v1, "KDO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_377

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1394
    const-string v1, "PMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    goto/16 :goto_377

    .line 1396
    :cond_18d
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "BMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_374

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1397
    const-string v1, "VMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_374

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1398
    const-string v1, "PCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_374

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1399
    const-string v1, "SOL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_374

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1400
    const-string v1, "BWA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    goto/16 :goto_374

    .line 1402
    :cond_1c1
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "RWC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_371

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1403
    const-string v1, "FMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_371

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1404
    const-string v1, "CHR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_371

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1405
    const-string v1, "TBT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_371

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1406
    const-string v1, "VTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_371

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1407
    const-string v1, "FIZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_371

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1408
    const-string v1, "ESK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_371

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1409
    const-string v1, "SJR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_371

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1410
    const-string v1, "GLW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21d

    goto/16 :goto_371

    .line 1412
    :cond_21d
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "XAC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36e

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1413
    const-string v1, "CAO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_233

    goto/16 :goto_36e

    .line 1415
    :cond_233
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36b

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1416
    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36b

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1417
    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_253

    goto/16 :goto_36b

    .line 1419
    :cond_253
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_368

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1420
    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_368

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1421
    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_273

    goto/16 :goto_368

    .line 1423
    :cond_273
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_365

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1424
    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_365

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1425
    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_293

    goto/16 :goto_365

    .line 1427
    :cond_293
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a0

    .line 1428
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1429
    :cond_2a0
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ad

    .line 1430
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CTC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1431
    :cond_2ad
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ba

    .line 1432
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHU:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1433
    :cond_2ba
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_362

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1434
    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d0

    goto/16 :goto_362

    .line 1436
    :cond_2d0
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "UFN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2dd

    .line 1437
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->ARG_UFN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1438
    :cond_2dd
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "MNX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ea

    .line 1439
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->MEX_MNX:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1440
    :cond_2ea
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "IUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f7

    .line 1441
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->MEX_IUS:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1442
    :cond_2f7
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "UNE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_304

    .line 1443
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->MEX_UNE:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1444
    :cond_304
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "PEO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_311

    .line 1445
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->PER_PEO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1446
    :cond_311
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "PNT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31e

    .line 1447
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->PER_PNT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1448
    :cond_31e
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "PET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32b

    .line 1449
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->PER_PET:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1450
    :cond_32b
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "SWC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_338

    .line 1451
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->SUI_SWC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1452
    :cond_338
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "TUR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_345

    .line 1453
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->TUR_TUR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1454
    :cond_345
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "INS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_352

    .line 1455
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->SWA_IND:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1456
    :cond_352
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "INU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35f

    .line 1457
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->SWA_IND:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1459
    :cond_35f
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->NO_OPERATOR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1435
    :cond_362
    :goto_362
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1426
    :cond_365
    :goto_365
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_KTT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1422
    :cond_368
    :goto_368
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_LGT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1418
    :cond_36b
    :goto_36b
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_SKT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1414
    :cond_36e
    :goto_36e
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CAD_XAC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1411
    :cond_371
    :goto_371
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CAD_RWC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1401
    :cond_374
    :goto_374
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CAD_BMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1395
    :cond_377
    :goto_377
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CAD_TLS:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    .line 1389
    :cond_37a
    :goto_37a
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->JPN_KDI:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0

    nop

    :pswitch_data_37e
    .packed-switch 0x2f59814
        :pswitch_23
        :pswitch_19
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private handleUpdateCommonIesCapability()V
    .registers 22

    .line 522
    const/4 v11, 0x0

    .line 523
    .local v11, "ipAddressCapabilities":I
    const/4 v12, 0x0

    .line 524
    .local v12, "assistanceContainerSupport":Z
    const/4 v13, 0x0

    .line 525
    .local v13, "locationInformationContainerSupport":Z
    const/4 v14, 0x0

    .line 526
    .local v14, "relativeLocationChange":Z
    const/16 v15, 0x80

    .line 527
    .local v15, "highAccuracyFormatCapabilities":I
    const/16 v16, 0x0

    .line 528
    .local v16, "segmentedAssistanceData":Z
    const/16 v17, 0x0

    .line 529
    .local v17, "referencePointCapabilities":Z
    const/16 v18, 0x0

    .line 530
    .local v18, "scheduledLocation":Z
    const/16 v19, 0x0

    .line 531
    .local v19, "accessCapabilities":Z
    const/16 v20, 0x0

    .line 533
    .local v20, "segmentedLocationInformation":Z
    const-string v0, "LocationX"

    const-string/jumbo v1, "handleUpdateCommonIesCapability : highAccCapa Supported "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_inject_lppe_com_ie_capability(IZZZIZZZZZ)V

    .line 538
    return-void
.end method

.method private handleUpdateLPPeNLPLocation(Landroid/location/Location;)V
    .registers 34
    .param p1, "location"    # Landroid/location/Location;

    .line 578
    const-string v0, "LocationX"

    const-string v1, "LPPe handleUpdateLPPeNLPLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    nop

    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    or-int/lit8 v1, v1, 0x1

    .line 583
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x4

    goto :goto_1d

    :cond_1c
    move v3, v2

    :goto_1d
    or-int/2addr v1, v3

    .line 584
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_27

    const/16 v3, 0x8

    goto :goto_28

    :cond_27
    move v3, v2

    :goto_28
    or-int/2addr v1, v3

    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_32

    const/16 v3, 0x10

    goto :goto_33

    :cond_32
    move v3, v2

    :goto_33
    or-int/2addr v1, v3

    .line 586
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v3

    if-eqz v3, :cond_3d

    const/16 v3, 0x20

    goto :goto_3e

    :cond_3d
    move v3, v2

    :goto_3e
    or-int/2addr v1, v3

    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v3

    if-eqz v3, :cond_48

    const/16 v3, 0x40

    goto :goto_49

    :cond_48
    move v3, v2

    :goto_49
    or-int/2addr v1, v3

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v3

    if-eqz v3, :cond_52

    const/16 v2, 0x80

    :cond_52
    or-int/2addr v1, v2

    .line 590
    .local v1, "locationFlag":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v19

    .line 591
    .local v19, "latitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v21

    .line 592
    .local v21, "longitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v23

    .line 593
    .local v23, "altitudeMeters":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    .line 594
    .local v2, "speedMetersPerSec":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v25

    .line 595
    .local v25, "bearingDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v26

    .line 596
    .local v26, "horizontalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v27

    .line 597
    .local v27, "verticalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v28

    .line 598
    .local v28, "speedAccuracyMetersPerSecond":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v29

    .line 599
    .local v29, "bearingAccuracyDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v30

    .line 601
    .local v30, "timestamp":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Altitude : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " Accuracy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    move-object/from16 v3, p0

    move v4, v1

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    move-wide/from16 v9, v23

    move v11, v2

    move/from16 v12, v25

    move/from16 v13, v26

    move/from16 v14, v27

    move/from16 v15, v28

    move/from16 v16, v29

    move-wide/from16 v17, v30

    invoke-direct/range {v3 .. v18}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_inject_nlp_location(IDDDFFFFFFJ)V

    .line 611
    return-void
.end method

.method private handleUpdateNLPError(I)V
    .registers 4
    .param p1, "errorCause"    # I

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUpdateNLPError :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationX"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_inject_nlp_error(I)V

    .line 616
    return-void
.end method

.method private handleUpdateUBPCapability()V
    .registers 4

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "isUBPSupported":Z
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sensorMgr:Landroid/hardware/SensorManager;

    .line 634
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->pressureSensor:Landroid/hardware/Sensor;

    .line 635
    if-eqz v1, :cond_18

    .line 636
    const/4 v0, 0x1

    .line 638
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleUpdateUBPCapability : isUBPSupported  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationX"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_inject_ubp_capability(ZZZZ)V

    .line 642
    return-void
.end method

.method private handleUpdateUBPError(I)V
    .registers 4
    .param p1, "errorCause"    # I

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUpdateUBPError :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationX"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_inject_ubp_error(I)V

    .line 689
    return-void
.end method

.method private handleUpdateUBPInfo(I)V
    .registers 6
    .param p1, "sensorMeasurement"    # I

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUpdateUBPInfo = sensorMeasurement : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (Valid range  30000 ~ 115000)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationX"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/16 v0, 0x7530

    if-lt p1, v0, :cond_40

    const v0, 0x1c138

    if-gt p1, v0, :cond_40

    .line 678
    const/16 v0, 0x8

    .line 679
    .local v0, "bitMask":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateUBPInfo = bitMask : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-direct {p0, v0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_inject_ubp_info(II)V

    .line 681
    .end local v0    # "bitMask":I
    goto :goto_44

    .line 682
    :cond_40
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_inject_ubp_error(I)V

    .line 684
    :goto_44
    return-void
.end method

.method private handleUpdateWLANCapbility()V
    .registers 16

    .line 702
    const v8, 0x8c20

    .line 703
    .local v8, "eCIDmeasSupported":I
    const v9, 0xfc00

    .line 704
    .local v9, "wlanTypesSupported":I
    const-wide/16 v10, 0x0

    .line 705
    .local v10, "apMacAddress":J
    const/4 v12, 0x0

    .line 706
    .local v12, "apTypes":I
    const/4 v13, 0x0

    .line 707
    .local v13, "wlanApAdSupported":I
    const/4 v14, 0x0

    .line 709
    .local v14, "additionalWlanMeasSupport":I
    move-object v0, p0

    move v1, v8

    move v2, v9

    move-wide v3, v10

    move v5, v12

    move v6, v13

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_inject_wlan_capability(IIJIII)V

    .line 710
    return-void
.end method

.method private handleUpdateWLANError(I)V
    .registers 4
    .param p1, "errorCause"    # I

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUpdateWLANError :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationX"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_inject_wlan_error(I)V

    .line 871
    return-void
.end method

.method private handleUpdateWLANScanInfo([J[I[II)V
    .registers 8
    .param p1, "WLAN_BSSID_LIST"    # [J
    .param p2, "WLAN_RSSI_LIST"    # [I
    .param p3, "WLAN_Channel_LIST"    # [I
    .param p4, "WLAN_size"    # I

    .line 856
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeWiFiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 857
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWifiScanRequested:Z

    .line 859
    const/4 v0, 0x1

    if-lt p4, v0, :cond_11

    .line 860
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_inject_wlan_scan_info([J[I[II)V

    goto :goto_33

    .line 863
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WIFI Scan size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "error cause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocationX"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->handleUpdateWLANError(I)V

    .line 866
    :goto_33
    return-void
.end method

.method private static isCaMarket()Z
    .registers 6

    .line 1545
    const/4 v0, 0x0

    .line 1546
    .local v0, "ret":Z
    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1547
    .local v1, "countryCode":Ljava/lang/String;
    const-string/jumbo v2, "ro.csc.countryiso_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1548
    .local v2, "countryIsoCode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCaMarket : code/country_Code/contryISO_Code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GnssLocationProvider_ex"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    sget-object v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v5, "BMC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    sget-object v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1551
    const-string v5, "RWC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    sget-object v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1552
    const-string v5, "TLS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    sget-object v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1553
    const-string v5, "SJR"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    sget-object v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1554
    const-string v5, "XAC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 1555
    const-string v3, "Canada"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 1556
    const-string v3, "CA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    goto :goto_7b

    :cond_79
    const/4 v3, 0x0

    goto :goto_7c

    :cond_7b
    :goto_7b
    const/4 v3, 0x1

    :goto_7c
    move v0, v3

    .line 1557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCaMarket : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    return v0
.end method

.method private static isKORMarket()Z
    .registers 3

    .line 1590
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1591
    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1592
    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1593
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1594
    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1595
    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1596
    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1597
    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1598
    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1599
    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_67

    :cond_65
    const/4 v0, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 v0, 0x1

    .line 1600
    .local v0, "ret":Z
    :goto_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKORMarket : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    return v0
.end method

.method private static isLPPeforUSAMarket()Z
    .registers 3

    .line 1501
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1502
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1503
    const-string v1, "XAA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1504
    const-string v1, "XAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1505
    const-string v1, "XAG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1506
    const-string v1, "TMK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1507
    const-string v1, "DSH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1508
    const-string v1, "TFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1509
    const-string v1, "TFA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1510
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1511
    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1512
    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1513
    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1514
    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1516
    const-string v1, "ACG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1517
    const-string v1, "GCF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    goto :goto_a3

    :cond_a1
    const/4 v0, 0x0

    goto :goto_a4

    :cond_a3
    :goto_a3
    const/4 v0, 0x1

    .line 1518
    .local v0, "ret":Z
    :goto_a4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUSAMarket : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    return v0
.end method

.method public static isNonQcomGnss()Z
    .registers 2

    .line 4226
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "vendor/etc/gnss/gps.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4227
    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "isNonQcomGnss(), it\'s Broadcom GNSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    const/4 v0, 0x1

    return v0

    .line 4230
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private static isOTDOACapableMarket()Z
    .registers 3

    .line 1530
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1531
    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1532
    const-string v1, "ACG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1533
    const-string v1, "GCF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    .line 1534
    .local v0, "ret":Z
    :goto_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOTDOACapableMarket : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    return v0
.end method

.method private isSingleShotRequest(Lcom/android/internal/location/ProviderRequest;)Z
    .registers 7
    .param p1, "pr"    # Lcom/android/internal/location/ProviderRequest;

    .line 3255
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3256
    return v0

    .line 3257
    :cond_4
    iget-object v1, p1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v1, :cond_2c

    iget-object v1, p1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2c

    .line 3258
    iget-object v1, p1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationRequest;

    .line 3259
    .local v2, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v2}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v4

    if-eq v4, v3, :cond_2a

    .line 3260
    return v0

    .line 3262
    .end local v2    # "lr":Landroid/location/LocationRequest;
    :cond_2a
    goto :goto_16

    .line 3265
    :cond_2b
    return v3

    .line 3267
    :cond_2c
    return v0
.end method

.method private static isUSAMarket()Z
    .registers 6

    .line 1470
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1471
    .local v0, "countryCode":Ljava/lang/String;
    const-string/jumbo v1, "ro.csc.countryiso_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1472
    .local v1, "countryIsoCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUSAMarket : code/country_Code/countryISO_Code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GnssLocationProvider_ex"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v4, "TMB"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1475
    const-string v4, "ATT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1476
    const-string v4, "TFA"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1477
    const-string v4, "TFO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1478
    const-string v4, "TFN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1479
    const-string v4, "TFC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1480
    const-string v4, "AIO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1481
    const-string v4, "TMK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1482
    const-string v4, "DSH"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1483
    const-string v4, "XAR"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1484
    const-string v4, "XAG"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1485
    const-string v4, "XAA"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1486
    const-string v4, "VZW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1487
    const-string v4, "SPR"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1488
    const-string v4, "USC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1489
    const-string v4, "ACG"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1490
    const-string v4, "BST"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1491
    const-string v4, "VMU"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1492
    const-string v4, "XAS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    .line 1493
    const-string v2, "USA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    .line 1494
    const-string v2, "US"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    goto :goto_106

    :cond_104
    const/4 v2, 0x0

    goto :goto_107

    :cond_106
    :goto_106
    const/4 v2, 0x1

    .line 1495
    .local v2, "ret":Z
    :goto_107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUSAMarket : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    return v2
.end method

.method static isUSCDMAMarket()Z
    .registers 3

    .line 1569
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1570
    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1571
    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1572
    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1573
    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1574
    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1575
    const-string v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1576
    const-string v1, "TFNVZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 1577
    const-string v1, "ACG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 v0, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 v0, 0x1

    .line 1578
    .local v0, "ret":Z
    :goto_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUSCDMAMarket : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    return v0
.end method

.method public static isVendorIgnoreNfwLocPolicy()Z
    .registers 1

    .line 1660
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isKORMarket()Z

    move-result v0

    return v0
.end method

.method private isWifiOnlyModel()Z
    .registers 3

    .line 3435
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$handleInitialize_samsung$2()V
    .registers 0

    .line 892
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_init_extension_once()Z

    .line 893
    return-void
.end method

.method private makeAutoSuplUrl()Ljava/lang/String;
    .registers 10

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1258
    .local v0, "szUrl":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 1260
    .local v1, "SimOperator":Ljava/lang/String;
    if-eqz v1, :cond_7e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7e

    .line 1261
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1262
    .local v4, "mcc":I
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1263
    .local v3, "mnc":I
    const-string/jumbo v5, "h-slp.mnc"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "%03d"

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    const-string v5, ".mcc"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    const-string v2, ".pub.3gppnetwork.org"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeAutoSuplUrl :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "GnssLocationProvider_ex"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1271
    .end local v3    # "mnc":I
    .end local v4    # "mcc":I
    :cond_7e
    const/4 v2, 0x0

    return-object v2
.end method

.method private native native_agps_set_ref_location_cellid(IIIIJII)V
.end method

.method private native native_configuration_update_extension(Ljava/lang/String;)V
.end method

.method private native native_get_seh_gnss_hal_version()F
.end method

.method private static native native_init_extension_once()Z
.end method

.method private native native_inject_lppe_com_ie_capability(IZZZIZZZZZ)V
.end method

.method private native native_inject_nlp_error(I)V
.end method

.method private native native_inject_nlp_location(IDDDFFFFFFJ)V
.end method

.method private native native_inject_ubp_capability(ZZZZ)V
.end method

.method private native native_inject_ubp_error(I)V
.end method

.method private native native_inject_ubp_info(II)V
.end method

.method private native native_inject_wlan_capability(IIJIII)V
.end method

.method private native native_inject_wlan_error(I)V
.end method

.method private native native_inject_wlan_scan_info([J[I[II)V
.end method

.method private native native_is_gnss_configuration_supported_extension()Z
.end method

.method private native native_send_supl_ni_message([BI)V
.end method

.method private networkStateNeedsModeStandalone()Z
    .registers 6

    .line 3445
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWlanApConnected:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "GnssLocationProvider_ex"

    if-eqz v0, :cond_1c

    .line 3446
    const-string v0, "Data status WIFI connected"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v4, Lcom/android/server/location/gnss/GnssConstants$Vendor;->JPN_DCM:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v4, :cond_1b

    .line 3448
    const-string v0, "The vendor Not set to Standalone"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    return v1

    .line 3451
    :cond_1b
    return v2

    .line 3455
    :cond_1c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 3456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data network status "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3458
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 3459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Roaming status "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    return v2

    .line 3462
    :cond_65
    return v1

    .line 3464
    .end local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :cond_66
    return v2
.end method

.method private reportExtraAssertMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 3594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "method_reportExtraAssertMessage, message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_is_supported()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 3600
    const-string v0, "HIDL service may have been died by GNSS Assert. reset it."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_init()Z

    .line 3605
    :cond_2b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3606
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "assert_msg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3607
    sget-object v1, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->GNSS_ASSERT:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendInfoToNsflp(Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;Ljava/lang/Object;)V

    .line 3609
    return-void
.end method

.method private requestLppeCommonIesCapability()V
    .registers 3

    .line 541
    const-string v0, "LocationX"

    const-string/jumbo v1, "requestLppeCommonIesCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->handleUpdateCommonIesCapability()V

    .line 543
    return-void
.end method

.method private requestNlpLocation(I)V
    .registers 9
    .param p1, "res_time"    # I

    .line 551
    const-string v0, "LocationX"

    const-string/jumbo v1, "requestNlpLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeLocationManager:Landroid/location/LocationManager;

    .line 559
    new-instance v1, Landroid/location/LocationRequest;

    invoke-direct {v1}, Landroid/location/LocationRequest;-><init>()V

    const-string v2, "fused"

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v1

    .line 560
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    move-result-object v1

    .line 561
    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;

    move-result-object v1

    .line 563
    .local v1, "LPPeLocationRequest":Landroid/location/LocationRequest;
    const-wide/16 v2, 0x2710

    .line 565
    .local v2, "durationMillis":J
    :try_start_3c
    const-string v4, "Start LocationManager.FUSED_PROVIDER"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeLocationManager:Landroid/location/LocationManager;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mLPPeFusedLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$LPPeFusedLocationListener;

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mHandler:Landroid/os/Handler;

    .line 567
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 566
    invoke-virtual {v4, v1, v5, v6}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 568
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$_KLjObEyZ7BnPOZWK5zTrAvFrdM;

    invoke-direct {v5, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$_KLjObEyZ7BnPOZWK5zTrAvFrdM;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_58} :catch_59

    .line 574
    goto :goto_5f

    .line 572
    :catch_59
    move-exception v4

    .line 573
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Unable to request location."

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_5f
    return-void
.end method

.method private requestUbpCapability()V
    .registers 3

    .line 620
    const-string v0, "LocationX"

    const-string/jumbo v1, "requestUbpCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->handleUpdateUBPCapability()V

    .line 624
    return-void
.end method

.method private requestUbpInfo(I)V
    .registers 6
    .param p1, "res_time"    # I

    .line 661
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sensorMgr:Landroid/hardware/SensorManager;

    .line 662
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$UBPSensorEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$UBPSensorEventListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mUBPSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 663
    const-string v0, "LocationX"

    const-string/jumbo v1, "requestUbpInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->pressureSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_30

    .line 666
    const-string/jumbo v1, "requestUBPInfo : Caution (PressureSensor is null) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sensorMgr:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->pressureSensor:Landroid/hardware/Sensor;

    .line 670
    :cond_30
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mUBPSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->pressureSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 671
    return-void
.end method

.method private requestWlanCapability()V
    .registers 3

    .line 695
    const-string v0, "LocationX"

    const-string/jumbo v1, "requestWlanCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->handleUpdateWLANCapbility()V

    .line 699
    return-void
.end method

.method private requestWlanScanInfo(I)V
    .registers 7
    .param p1, "res_time"    # I

    .line 816
    const-string v0, "LocationX"

    const-string/jumbo v1, "requestWlanScanInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 822
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 824
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeWiFiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 826
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 834
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_40

    .line 839
    :cond_2c
    const-string v2, "WIFI is off. Wait for turning on WIFI"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWifiScanRequested:Z

    .line 841
    const-wide/16 v2, 0xbb8

    .line 842
    .local v2, "durationMillis":J
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$jozU641gAvENnKP_fsZ37J_YY0w;

    invoke-direct {v4, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$jozU641gAvENnKP_fsZ37J_YY0w;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 852
    .end local v2    # "durationMillis":J
    :goto_40
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .registers 6
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4090
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4091
    return-void
.end method

.method private setBaroCalValue()V
    .registers 10

    .line 3716
    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/FactoryApp/baro_delta"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3717
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 3718
    .local v2, "stream":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 3719
    .local v3, "isr":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 3720
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 3722
    .local v5, "calValue":Ljava/lang/String;
    :try_start_d
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_12} :catch_14

    move-object v2, v6

    .line 3727
    :goto_13
    goto :goto_22

    .line 3725
    :catch_14
    move-exception v6

    .line 3726
    .local v6, "e":Ljava/lang/SecurityException;
    const-string v7, "Could not access Baro Cal file /efs/FactoryApp/baro_delta"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 3723
    .end local v6    # "e":Ljava/lang/SecurityException;
    :catch_1b
    move-exception v6

    .line 3724
    .local v6, "e":Ljava/io/FileNotFoundException;
    const-string v7, "Could not open Baro Cal File /efs/FactoryApp/baro_delta"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "e":Ljava/io/FileNotFoundException;
    goto :goto_13

    .line 3729
    :goto_22
    if-eqz v2, :cond_50

    .line 3730
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v3, v6

    .line 3731
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v6

    .line 3733
    :try_start_30
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_34} :catch_3c
    .catchall {:try_start_30 .. :try_end_34} :catchall_3a

    move-object v5, v6

    .line 3739
    nop

    :goto_36
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3740
    goto :goto_50

    .line 3739
    :catchall_3a
    move-exception v0

    goto :goto_4c

    .line 3736
    :catch_3c
    move-exception v6

    .line 3737
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3d
    const-string v7, "Could not load Baro Cal file /efs/FactoryApp/baro_deltadue to IllegalArgumentException"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    nop

    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_36

    .line 3734
    :catch_44
    move-exception v6

    .line 3735
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "Could not load Baro Cal file /efs/FactoryApp/baro_deltadue to IOException"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_3a

    .line 3739
    nop

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_36

    :goto_4c
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3740
    throw v0

    .line 3742
    :cond_50
    :goto_50
    if-eqz v5, :cond_95

    .line 3743
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readBaroCalValue(), baro_delta = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    const-string v6, "BARO_CAL="

    if-nez v0, :cond_80

    .line 3745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    goto :goto_95

    .line 3747
    :cond_80
    const/16 v0, 0x18

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v7, v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    .line 3750
    :cond_95
    :goto_95
    return-void
.end method

.method private setCMCCSuplServer(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1214
    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "setCMCCSuplServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const-string v1, "ServerAddr"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1220
    .local v1, "mServerAddr":Ljava/lang/String;
    const-string v2, "ServerPort"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1221
    .local v2, "mServerPort":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCMCCSuplServer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v4, "SUPL_HOST"

    invoke-virtual {v3, v4, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1223
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUPL_PORT"

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1224
    new-instance v3, Ljava/io/File;

    const-string v4, "/etc/gps_cmcc.conf"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 1227
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_4b
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_50} :catch_59
    .catch Ljava/lang/SecurityException; {:try_start_4b .. :try_end_50} :catch_52

    move-object v4, v5

    .line 1232
    :goto_51
    goto :goto_60

    .line 1230
    :catch_52
    move-exception v5

    .line 1231
    .local v5, "e":Ljava/lang/SecurityException;
    const-string v6, "Could not access GPS configuration file in save : /etc/gps_cmcc.conf"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 1228
    .end local v5    # "e":Ljava/lang/SecurityException;
    :catch_59
    move-exception v5

    .line 1229
    .local v5, "e":Ljava/io/FileNotFoundException;
    const-string v6, "Could not open GPS configuration file in save : /etc/gps_cmcc.conf"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/io/FileNotFoundException;
    goto :goto_51

    .line 1233
    :goto_60
    if-eqz v4, :cond_84

    .line 1235
    :try_start_62
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v6, "Generated by GnssLocationProvider."

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_69} :catch_78
    .catch Ljava/lang/ClassCastException; {:try_start_62 .. :try_end_69} :catch_70
    .catchall {:try_start_62 .. :try_end_69} :catchall_6e

    .line 1242
    nop

    :goto_6a
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1243
    goto :goto_84

    .line 1242
    :catchall_6e
    move-exception v0

    goto :goto_80

    .line 1238
    :catch_70
    move-exception v5

    .line 1239
    .local v5, "e":Ljava/lang/ClassCastException;
    :try_start_71
    const-string v6, "Could not store GPS configuration file : /etc/gps_cmcc.confdue to ClassCastException"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    nop

    .end local v5    # "e":Ljava/lang/ClassCastException;
    goto :goto_6a

    .line 1236
    :catch_78
    move-exception v5

    .line 1237
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Could not store GPS configuration file : /etc/gps_cmcc.confdue to IOException"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_71 .. :try_end_7e} :catchall_6e

    .line 1242
    nop

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_6a

    :goto_80
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1243
    throw v0

    .line 1245
    :cond_84
    :goto_84
    return-void
.end method

.method private setCscParameters(Landroid/os/Bundle;)V
    .registers 20
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 2060
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v10, "GnssLocationProvider_ex"

    const-string/jumbo v0, "setCscParameters"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    if-nez v9, :cond_f

    .line 2063
    return-void

    .line 2065
    :cond_f
    const/4 v1, 0x0

    .line 2066
    .local v1, "isDeleted":Z
    new-instance v0, Ljava/io/File;

    const-string v11, "/data/system/gps/cscgps.conf"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 2068
    .local v12, "file":Ljava/io/File;
    :try_start_18
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2069
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2070
    const/4 v1, 0x1

    .line 2072
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDeleted :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_39} :catch_3b

    .line 2076
    :cond_39
    move v13, v1

    goto :goto_42

    .line 2074
    :catch_3b
    move-exception v0

    .line 2075
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, " could not delete cscgps.conf file : /data/system/gps/cscgps.conf"

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v1

    .line 2078
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "isDeleted":Z
    .local v13, "isDeleted":Z
    :goto_42
    const-string v0, "MSBASED"

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/4 v7, 0x1

    if-eqz v13, :cond_b4

    iget v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    if-ne v1, v7, :cond_b4

    .line 2079
    iput-object v0, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 2080
    iput v15, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplVersion:I

    .line 2081
    const-string/jumbo v1, "supl.google.com"

    iput-object v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 2082
    const/16 v1, 0x1c6b

    iput v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplPort:I

    .line 2083
    iput v7, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslMode:I

    .line 2084
    iput v14, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslType:I

    .line 2085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Default SUPL CSC] mGpsEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mSuplAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mSuplVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mSuplPort : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mSuplSslMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    iget-boolean v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsEnabled:Z

    if-eqz v1, :cond_b4

    .line 2092
    iget v2, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplVersion:I

    iget-object v3, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v4, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplPort:I

    iget v5, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslMode:I

    const/4 v6, 0x0

    iget v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslType:I

    move/from16 v16, v1

    move-object/from16 v1, p0

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 2096
    :cond_b4
    iput v14, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 2097
    const-string v1, "TRUE"

    .line 2098
    .local v1, "CscParamIsEmpty":Ljava/lang/String;
    const-string/jumbo v2, "is_empty"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2099
    .end local v1    # "CscParamIsEmpty":Ljava/lang/String;
    .local v14, "CscParamIsEmpty":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " CscParamIsEmpty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    const-string v1, "TRUE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 2102
    return-void

    .line 2105
    :cond_dc
    iget-object v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    const-string/jumbo v2, "operation_mode"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 2106
    iget-object v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const-string/jumbo v2, "hslp_addr"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 2107
    iget v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplPort:I

    const-string/jumbo v2, "hslp_port"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplPort:I

    .line 2108
    iget v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslMode:I

    const-string/jumbo v2, "ssl"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslMode:I

    .line 2109
    iget v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslType:I

    const-string/jumbo v2, "ssl_cert"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslType:I

    .line 2110
    const-string/jumbo v1, "supl_ver"

    invoke-virtual {v9, v1, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 2112
    .local v7, "SuplVer":I
    const/4 v6, 0x1

    if-eq v7, v6, :cond_125

    if-eq v7, v15, :cond_122

    .line 2120
    iput v15, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplVersion:I

    goto :goto_128

    .line 2117
    :cond_122
    iput v15, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplVersion:I

    .line 2118
    goto :goto_128

    .line 2114
    :cond_125
    iput v6, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplVersion:I

    .line 2115
    nop

    .line 2123
    :goto_128
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    move-object v15, v1

    .line 2125
    .local v15, "mProperties_cscgps":Ljava/util/Properties;
    iget-object v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 2126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SUPL CSC] mSuplAddress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSuplVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSuplPort "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSuplSslMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    iget-boolean v0, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsEnabled:Z

    if-eqz v0, :cond_187

    .line 2132
    iget v2, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplVersion:I

    iget-object v3, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v4, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplPort:I

    iget v5, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslMode:I

    const/4 v0, 0x0

    iget v1, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslType:I

    move/from16 v16, v1

    move-object/from16 v1, p0

    move v9, v6

    move v6, v0

    move/from16 v17, v7

    .end local v7    # "SuplVer":I
    .local v17, "SuplVer":I
    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto :goto_18a

    .line 2131
    .end local v17    # "SuplVer":I
    .restart local v7    # "SuplVer":I
    :cond_187
    move v9, v6

    move/from16 v17, v7

    .line 2134
    .end local v7    # "SuplVer":I
    .restart local v17    # "SuplVer":I
    :goto_18a
    iput v9, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 2136
    iget-object v0, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    const-string v1, "CSC_SUPL_OPMODE"

    invoke-virtual {v15, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2137
    iget-object v0, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const-string v1, "CSC_SUPL_HOST"

    invoke-virtual {v15, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2138
    iget v0, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSC_SUPL_VER"

    invoke-virtual {v15, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2139
    iget v0, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSC_SUPL_PORT"

    invoke-virtual {v15, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2140
    iget v0, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSC_SUPL_SSL"

    invoke-virtual {v15, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1be

    .line 2125
    .end local v17    # "SuplVer":I
    .restart local v7    # "SuplVer":I
    :cond_1bc
    move/from16 v17, v7

    .line 2143
    .end local v7    # "SuplVer":I
    .restart local v17    # "SuplVer":I
    :goto_1be
    iget v0, v8, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSC_SUPL_SUPLSERVERFROMCSC"

    invoke-virtual {v15, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2145
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/gps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 2147
    .local v1, "dir":Ljava/io/File;
    :try_start_1d1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1da

    .line 2148
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1da
    .catch Ljava/lang/SecurityException; {:try_start_1d1 .. :try_end_1da} :catch_1db

    .line 2152
    :cond_1da
    goto :goto_1e1

    .line 2150
    :catch_1db
    move-exception v0

    .line 2151
    .restart local v0    # "e":Ljava/lang/SecurityException;
    const-string v2, " could not make directory : /data/system/gps"

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1e1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 2156
    .end local v12    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1e7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1fe

    .line 2157
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1f0
    .catch Ljava/io/IOException; {:try_start_1e7 .. :try_end_1f0} :catch_1f8
    .catch Ljava/lang/SecurityException; {:try_start_1e7 .. :try_end_1f0} :catch_1f1

    goto :goto_1fe

    .line 2161
    :catch_1f1
    move-exception v0

    .line 2162
    .restart local v0    # "e":Ljava/lang/SecurityException;
    const-string v3, " could not access file : /data/system/gps"

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ff

    .line 2159
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1f8
    move-exception v0

    .line 2160
    .local v0, "e":Ljava/io/IOException;
    const-string v3, " could not create file : /data/system/gps"

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1fe
    :goto_1fe
    nop

    .line 2165
    :goto_1ff
    const/4 v3, 0x0

    .line 2167
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_200
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_205
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_205} :catch_20e
    .catch Ljava/lang/SecurityException; {:try_start_200 .. :try_end_205} :catch_207

    move-object v3, v0

    .line 2172
    :goto_206
    goto :goto_215

    .line 2170
    :catch_207
    move-exception v0

    .line 2171
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, " could not access file : /data/system/gps/cscgps.conf"

    invoke-static {v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_215

    .line 2168
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_20e
    move-exception v0

    .line 2169
    .local v0, "e":Ljava/io/IOException;
    const-string v4, " could not open file : /data/system/gps/cscgps.conf"

    invoke-static {v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_206

    .line 2173
    :goto_215
    if-eqz v3, :cond_23b

    .line 2175
    :try_start_217
    const-string v0, "Saved CSC GPS Information"

    invoke-virtual {v15, v3, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2176
    const-string v0, "Saved: /data/system/gps/cscgps.conf"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_221
    .catch Ljava/io/IOException; {:try_start_217 .. :try_end_221} :catch_22c
    .catch Ljava/lang/ClassCastException; {:try_start_217 .. :try_end_221} :catch_224
    .catchall {:try_start_217 .. :try_end_221} :catchall_222

    .line 2182
    goto :goto_233

    :catchall_222
    move-exception v0

    goto :goto_237

    .line 2179
    :catch_224
    move-exception v0

    .line 2180
    .local v0, "e":Ljava/lang/ClassCastException;
    :try_start_225
    const-string v4, " could not store properties : /data/system/gps/cscgps.confdue to ClassCastException"

    invoke-static {v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    nop

    .end local v0    # "e":Ljava/lang/ClassCastException;
    goto :goto_233

    .line 2177
    :catch_22c
    move-exception v0

    .line 2178
    .local v0, "e":Ljava/io/IOException;
    const-string v4, " could not store properties : /data/system/gps/cscgps.confdue to IOException"

    invoke-static {v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_232
    .catchall {:try_start_225 .. :try_end_232} :catchall_222

    .line 2182
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_233
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2183
    goto :goto_23b

    .line 2182
    :goto_237
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2183
    throw v0

    .line 2185
    :cond_23b
    :goto_23b
    return-void
.end method

.method private setDcmSuplIot(Z)V
    .registers 11
    .param p1, "enable"    # Z

    .line 1645
    const-string v0, "GnssLocationProvider_ex"

    if-eqz p1, :cond_17

    .line 1646
    const-string v1, "Docomo SUPL IOT test = true server = dcm-supl.com"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    const/4 v3, 0x3

    const/16 v5, 0x1c6b

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v8, 0xf

    const-string v4, "dcm-supl.com"

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto :goto_1c

    .line 1649
    :cond_17
    const-string v1, "Docomo SUPL IOT test = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :goto_1c
    return-void
.end method

.method private setKoreanOperatorsSuplSetting()I
    .registers 9

    .line 1709
    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "setKoreanOperatorsSuplSetting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_21

    .line 1712
    const-string v1, " SKT GPS mode : SUPL 2.0.1 AGNSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setSktSuplVer()V

    .line 1714
    const-string/jumbo v0, "sys.sktgps"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_90

    .line 1715
    :cond_21
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v1, :cond_4b

    .line 1716
    const-string v1, " KT GPS mode : SUPL2.0 AGNSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_3d

    .line 1718
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto :goto_90

    .line 1720
    :cond_3d
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto :goto_90

    .line 1723
    :cond_4b
    const-string/jumbo v1, "setKoreanOperatorsSuplSetting() : Google SUPL 2.0 AGNSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v0, :cond_65

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1725
    const-string v0, "ENABLE_SUPL_AGNSS_BEIDOU=FALSE"

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    .line 1726
    const-string v0, "ENABLE_SUPL_AGNSS_GALILEO=FALSE"

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    .line 1729
    :cond_65
    invoke-direct {p0, v7}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_xtraEnable(I)V

    .line 1730
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_83

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_KTT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v1, :cond_83

    .line 1731
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto :goto_90

    .line 1733
    :cond_83
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 1736
    :goto_90
    return v7
.end method

.method private setLppSupport(I)V
    .registers 5
    .param p1, "bitmask"    # I

    .line 2270
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_5

    return-void

    .line 2271
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLppSupport("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsEnabled:Z

    .line 2283
    .local v0, "enabled":Z
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsEnabled:Z

    if-nez v2, :cond_31

    .line 2284
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_init()Z

    move-result v0

    .line 2285
    const-string/jumbo v2, "native_init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    :cond_31
    if-eqz v0, :cond_36

    .line 2288
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_setLppSupport(I)V

    .line 2291
    :cond_36
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsEnabled:Z

    if-nez v2, :cond_46

    .line 2292
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_cleanup()V

    .line 2293
    const-string/jumbo v2, "native_cleanup "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_init_extension_location_off()Z

    .line 2296
    :cond_46
    return-void
.end method

.method private setSKAFEnable(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 1611
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsSKAF:Z

    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSKAFEnable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    return-void
.end method

.method private setSecGpsConf(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 3158
    const-string v0, "SECGPS Configuration"

    const-string v1, " could not close file : /data/system/gps/secgps.conf"

    const-string v2, "GnssLocationProvider_ex"

    if-nez p1, :cond_9

    return-void

    .line 3160
    :cond_9
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v4, "USE_SECGPS_CONF"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 3162
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 3163
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 3165
    .local v4, "keyArray":[Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3166
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_22
    if-ge v7, v5, :cond_34

    aget-object v8, v4, v7

    .line 3167
    .local v8, "aKeyArray":Ljava/lang/String;
    if-eqz v8, :cond_31

    .line 3168
    iget-object v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 3166
    .end local v8    # "aKeyArray":Ljava/lang/String;
    :cond_31
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 3173
    :cond_34
    :try_start_34
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/system/gps"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3174
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_44

    .line 3175
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 3177
    :cond_44
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/gps/secgps.conf"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3178
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_59

    .line 3179
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 3180
    const-string v8, "/data/system/gps/secgps.conf file doesn\'t exist./data/system/gps/secgps.conf"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3183
    :cond_59
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_66

    .line 3184
    const/4 v8, 0x1

    invoke-virtual {v7, v8, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3185
    invoke-virtual {v7, v8, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 3188
    :cond_66
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_6b} :catch_98

    .line 3190
    .local v8, "stream":Ljava/io/FileOutputStream;
    :try_start_6b
    iget-object v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    invoke-virtual {v9, v8, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3191
    const-string v9, "Saved: /data/system/gps/secgps.conf"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_75} :catch_7d
    .catch Ljava/lang/ClassCastException; {:try_start_6b .. :try_end_75} :catch_7d
    .catchall {:try_start_6b .. :try_end_75} :catchall_7b

    .line 3196
    :try_start_75
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_86

    .line 3197
    :catch_79
    move-exception v9

    .line 3198
    .local v9, "e":Ljava/io/IOException;
    goto :goto_89

    .line 3195
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_7b
    move-exception v9

    goto :goto_8e

    .line 3192
    :catch_7d
    move-exception v9

    .line 3193
    .local v9, "e":Ljava/lang/Exception;
    :try_start_7e
    const-string v10, " could not store file : /data/system/gps/secgps.conf"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_7b

    .line 3196
    .end local v9    # "e":Ljava/lang/Exception;
    :try_start_83
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    .line 3199
    :goto_86
    goto :goto_8d

    .line 3197
    :catch_87
    move-exception v9

    .line 3198
    .local v9, "e":Ljava/io/IOException;
    nop

    :goto_89
    :try_start_89
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_98

    .line 3200
    nop

    .line 3203
    .end local v5    # "dir":Ljava/io/File;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .end local v9    # "e":Ljava/io/IOException;
    :goto_8d
    goto :goto_9c

    .line 3196
    .restart local v5    # "dir":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :goto_8e
    :try_start_8e
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    .line 3199
    goto :goto_96

    .line 3197
    :catch_92
    move-exception v10

    .line 3198
    .local v10, "e":Ljava/io/IOException;
    :try_start_93
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    .end local v10    # "e":Ljava/io/IOException;
    :goto_96
    nop

    .end local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "keyArray":[Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .end local p1    # "extras":Landroid/os/Bundle;
    throw v9
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_98} :catch_98

    .line 3201
    .end local v5    # "dir":Ljava/io/File;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "keyArray":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
    .restart local p1    # "extras":Landroid/os/Bundle;
    :catch_98
    move-exception v1

    .line 3202
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 3206
    .end local v1    # "e":Ljava/io/IOException;
    :goto_9c
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 3208
    .local v1, "writer":Ljava/io/StringWriter;
    :try_start_a1
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    invoke-virtual {v5, v1, v0}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a6} :catch_a7

    .line 3211
    goto :goto_ad

    .line 3209
    :catch_a7
    move-exception v0

    .line 3210
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "could not store to writer"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    .end local v0    # "e":Ljava/io/IOException;
    :goto_ad
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v0, :cond_b9

    .line 3213
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    goto :goto_c2

    .line 3215
    :cond_b9
    const/16 v0, 0x18

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v6, v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    .line 3217
    :goto_c2
    return-void
.end method

.method private setSimOperator_KOR()V
    .registers 9

    .line 2305
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2306
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 2307
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 2308
    .local v2, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_5e

    .line 2309
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 2310
    .local v4, "sci":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 2311
    .local v5, "subId":I
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->simOperatorKOR:Ljava/lang/String;

    .line 2312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SubscriptionId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", SimOperatorName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", SimOperator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->simOperatorKOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2312
    const-string v7, "GnssLocationProvider_ex"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    .end local v4    # "sci":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "subId":I
    goto :goto_1b

    .line 2317
    :cond_5e
    return-void
.end method

.method private setSktSuplVer()V
    .registers 10

    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSktSuplVer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    const-string v0, "AGPS_SUPL_VER_2_0_1_AGNSS,  server = wpde.nate.com"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const/4 v3, 0x4

    const-string/jumbo v4, "wpde.nate.com"

    const/16 v5, 0x1c6b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 1636
    return-void
.end method

.method public static shouldSupportNfwLocPolicy()Z
    .registers 3

    .line 1773
    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1774
    .local v0, "firstApiLevel":I
    const/16 v2, 0x1c

    if-le v0, v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method


# virtual methods
.method public enableSLocation()V
    .registers 2

    .line 3931
    const-string/jumbo v0, "sec_location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    .line 3932
    return-void
.end method

.method protected extension_changeChnNlpAccuracy(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .line 1985
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_28

    .line 1986
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHU:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_28

    .line 1987
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_28

    .line 1988
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_28

    .line 1989
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CTC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v1, :cond_46

    .line 1990
    :cond_28
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3f

    .line 1991
    invoke-virtual {p1, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 1993
    :cond_3f
    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "extension_changeChnNlpAccuracy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :cond_46
    return-void
.end method

.method extension_checkSmsSuplInit()V
    .registers 4

    .line 2410
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v2, "GnssLocationProvider_ex"

    if-eq v0, v1, :cond_12

    .line 2411
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v1, :cond_17

    .line 2413
    :cond_12
    const-string v0, "checkSmsSuplInit : Sms Message for SUPL Init"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :cond_17
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_SKT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v1, :cond_2a

    .line 2416
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setSktSuplVer()V

    .line 2417
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_setSuplSetting()V

    .line 2418
    const-string v0, "Change SLP address for SUPL_INIT in SMS"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    :cond_2a
    return-void
.end method

.method protected extension_checkWapPushMsg()Z
    .registers 3

    .line 2327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extension_checkWapPushMsg(), mGpsEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsEnabled:Z

    if-nez v0, :cond_d7

    .line 2329
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_SKT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2330
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_KTT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2331
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_LGT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2332
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_ATT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2333
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TMO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2334
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2335
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAG:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2336
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2337
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_AIO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2338
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2339
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2340
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2341
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TMK:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2342
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_DSH:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2343
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_SPR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2344
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->ARG_UFN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2345
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->MEX_IUS:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2346
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->MEX_MNX:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2347
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->MEX_UNE:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2348
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->PER_PEO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2349
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->PER_PNT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2350
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->PER_PET:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v1, :cond_d7

    .line 2351
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->JPN_RKT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v1, :cond_d5

    goto :goto_d7

    :cond_d5
    const/4 v0, 0x0

    goto :goto_d8

    :cond_d7
    :goto_d7
    const/4 v0, 0x1

    .line 2328
    :goto_d8
    return v0
.end method

.method extension_checkWapSuplInit()V
    .registers 12

    .line 2429
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v2, "GnssLocationProvider_ex"

    if-eq v0, v1, :cond_12

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v1, :cond_8f

    .line 2430
    :cond_12
    const-string v0, "checkWapSuplInit : WapPush Message for SUPL Init"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2433
    .local v0, "isAgpsSwitchMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkWapSuplInit NI: isAgpsSwitchMode=AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    const-string v1, "++checkWapSuplInit : New NI notification LCD on"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2437
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v4, 0x0

    .line 2438
    .local v4, "wl":Landroid/os/PowerManager$WakeLock;
    if-eqz v1, :cond_54

    .line 2439
    const v5, 0x1000001a

    const-string v6, "New message notification LCD on"

    invoke-virtual {v1, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 2442
    :cond_54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 2443
    if-eqz v4, :cond_63

    .line 2444
    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2446
    :cond_63
    const-string v5, "--checkWapSuplInit : New NI notification LCD on"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    if-ne v0, v3, :cond_87

    .line 2449
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_81

    .line 2450
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 2451
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_80

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 2452
    const-string v5, "checkWapSuplInit NI : agps on only for hom network info.isRoaming() == true "

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    return-void

    .line 2455
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :cond_80
    goto :goto_8f

    .line 2456
    :cond_81
    const-string v3, "checkWapSuplInit NI :: agps on only for hom network. PS error."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    return-void

    .line 2459
    :cond_87
    const/4 v3, 0x2

    if-ne v0, v3, :cond_be

    .line 2460
    const-string v3, "checkWapSuplInit NI :: agps on for all network. launch NI session"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    .end local v0    # "isAgpsSwitchMode":I
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v4    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_8f
    :goto_8f
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_SKT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v3, "Change SLP address for SUPL_INIT in WAP"

    if-ne v0, v1, :cond_a2

    .line 2468
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setSktSuplVer()V

    .line 2469
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_setSuplSetting()V

    .line 2470
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_a2
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_KTT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v1, :cond_bd

    .line 2474
    const/4 v5, 0x3

    const/16 v7, 0x1c6b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf

    const-string v6, "221.148.242.107"

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 2475
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extension_setSuplSetting()V

    .line 2476
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    :cond_bd
    return-void

    .line 2462
    .restart local v0    # "isAgpsSwitchMode":I
    .restart local v1    # "pm":Landroid/os/PowerManager;
    .restart local v4    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_be
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkWapSuplInit NI : //agps off isAgpsSwitchMode : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    return-void
.end method

.method protected extension_dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3907
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_54

    .line 3908
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getCscFeatureString()V

    .line 3909
    const-string v0, "============ GPS CSC Feature State ============"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsCscFeatureDump:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3911
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/gps/secgps.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3912
    .local v0, "file":Ljava/io/File;
    const-string v2, "============ GPS SECGPS CONFIGURATION State ============"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3913
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3914
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getSecgpsConfiguration()V

    .line 3915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsSecgpsConfigDump:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_51

    .line 3917
    :cond_4c
    const-string v2, " There is no secgps.conf file !!!!!"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3919
    :goto_51
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3921
    .end local v0    # "file":Ljava/io/File;
    :cond_54
    return-void
.end method

.method protected extension_getDBHSupported()Z
    .registers 7

    .line 4160
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mEnableSMF:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    .line 4161
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSimSlotId:I

    const-string v4, "CarrierFeature_GPS_ConfigLppeCp"

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result v0

    if-lez v0, :cond_22

    .line 4162
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSimSlotId:I

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result v0

    and-int/2addr v0, v1

    if-gtz v0, :cond_3d

    .line 4163
    :cond_22
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSimSlotId:I

    const-string v4, "CarrierFeature_GPS_ConfigLppeUp"

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result v0

    if-lez v0, :cond_3e

    .line 4164
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSimSlotId:I

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result v0

    and-int/2addr v0, v1

    if-lez v0, :cond_3e

    :cond_3d
    goto :goto_3f

    :cond_3e
    move v1, v2

    .line 4161
    :goto_3f
    return v1

    .line 4167
    :cond_40
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSimSlotId:I

    const-string v4, "CscFeature_GPS_ConfigLppeCp"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(ILjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5b

    .line 4168
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSimSlotId:I

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(ILjava/lang/String;)I

    move-result v0

    and-int/2addr v0, v1

    if-gtz v0, :cond_76

    .line 4169
    :cond_5b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSimSlotId:I

    const-string v4, "CscFeature_GPS_ConfigLppeUp"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(ILjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_77

    .line 4170
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSimSlotId:I

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(ILjava/lang/String;)I

    move-result v0

    and-int/2addr v0, v1

    if-lez v0, :cond_77

    :cond_76
    goto :goto_78

    :cond_77
    move v1, v2

    .line 4167
    :goto_78
    return v1
.end method

.method protected extension_handleEnable()V
    .registers 1

    .line 1204
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendExtraConfigurationString()V

    .line 1205
    return-void
.end method

.method protected extension_nativeInitForSuplNI()V
    .registers 3

    .line 2397
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mGpsEnabled:Z

    if-nez v0, :cond_c

    .line 2399
    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "navive_init() is called but do nothing here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    :cond_c
    return-void
.end method

.method protected extension_onStatusChanged(Z)V
    .registers 5
    .param p1, "isNavigating"    # Z

    .line 4071
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz v0, :cond_12

    .line 4073
    :try_start_4
    invoke-interface {v0, p1}, Lcom/samsung/android/location/ISLocationManager;->onGnssStatusChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 4076
    goto :goto_12

    .line 4074
    :catch_8
    move-exception v0

    .line 4075
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4080
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "isNavigating"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4081
    sget-object v1, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->GNSS_ENGINE_STATUS_CHANGED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendInfoToNsflp(Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;Ljava/lang/Object;)V

    .line 4083
    return-void
.end method

.method protected extension_onSvStatusChanged(I[I[F[F[F[F[F)V
    .registers 16
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "svElevations"    # [F
    .param p5, "svAzimuths"    # [F
    .param p6, "svCarrierFreqs"    # [F
    .param p7, "basebandCn0s"    # [F

    .line 4045
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz v0, :cond_19

    .line 4047
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    :try_start_b
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/location/ISLocationManager;->onSvStatusChanged(I[I[F[F[F[F[F)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 4051
    goto :goto_19

    .line 4049
    :catch_f
    move-exception v0

    .line 4050
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4055
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4056
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "svCount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4057
    const-string/jumbo v1, "svidWithFlags"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 4058
    const-string v1, "cn0s"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 4059
    const-string/jumbo v1, "svCarrierFreqs"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 4060
    sget-object v1, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->SV_STATUS_CHANGED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendInfoToNsflp(Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;Ljava/lang/Object;)V

    .line 4062
    return-void
.end method

.method protected extension_printSvStatus([I[FI)V
    .registers 16
    .param p1, "svs"    # [I
    .param p2, "snrs"    # [F
    .param p3, "svCount"    # I

    .line 2362
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2363
    .local v0, "svsClone":[I
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 2364
    .local v1, "snrsClone":[F
    move v2, p3

    .line 2365
    .local v2, "svCountClone":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2366
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 2367
    .local v4, "nonZeroSnrSvCnt":I
    const/4 v5, 0x0

    .line 2369
    .local v5, "usedSvCnt":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_15
    if-ge v6, v2, :cond_87

    .line 2370
    array-length v7, v0

    if-le v7, v6, :cond_84

    array-length v7, v1

    if-le v7, v6, :cond_84

    aget v7, v0, v6

    if-eqz v7, :cond_84

    aget v7, v1, v6

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_84

    .line 2371
    const-string v7, "("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v6

    shr-int/lit8 v7, v7, 0xc

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mConstellationString:[Ljava/lang/String;

    aget v9, v0, v6

    shr-int/lit8 v9, v9, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-object v8, v8, v9

    .line 2372
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    aget v10, v1, v6

    .line 2373
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string v10, "%.1f"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v6

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_68

    move v8, v11

    :cond_68
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2374
    const-string v7, ") "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2375
    rem-int/lit8 v7, v4, 0x6

    const/4 v8, 0x5

    if-ne v7, v8, :cond_7a

    .line 2376
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2378
    :cond_7a
    add-int/lit8 v4, v4, 0x1

    .line 2379
    aget v7, v0, v6

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_84

    .line 2380
    add-int/lit8 v5, v5, 0x1

    .line 2369
    :cond_84
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 2384
    .end local v6    # "i":I
    :cond_87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SV Count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "      (PRN, Constellation, SNR, Used)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GnssLocationProvider_ex"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    if-eqz v4, :cond_b3

    .line 2386
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    :cond_b3
    return-void
.end method

.method protected extension_reloadMakeAutoSuplUrl()V
    .registers 10

    .line 2502
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    .line 2503
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_ATT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v2, :cond_12

    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mServerTypeI:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    :cond_12
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mServerTypeI:I

    if-nez v0, :cond_2e

    .line 2505
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_2e

    .line 2506
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v0

    .line 2507
    .local v0, "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v0, :cond_2e

    .line 2508
    const/4 v3, 0x2

    const/16 v5, 0x1c6b

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xf

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 2509
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 2513
    .end local v0    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_e2

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_KTT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v1, :cond_e2

    .line 2514
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const/16 v5, 0x1c6b

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xf

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto/16 :goto_e2

    .line 2516
    :cond_4a
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_ATT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v2, :cond_aa

    .line 2517
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v2, :cond_aa

    .line 2518
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_AIO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v2, :cond_aa

    .line 2519
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TMO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v2, :cond_aa

    .line 2520
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v2, :cond_aa

    .line 2521
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAG:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v2, :cond_aa

    .line 2522
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TMK:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v2, :cond_aa

    .line 2523
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v2, :cond_aa

    .line 2524
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_DSH:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v2, :cond_aa

    .line 2525
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v2, :cond_aa

    .line 2526
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v0, v2, :cond_aa

    .line 2527
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v2, :cond_c2

    .line 2528
    :cond_aa
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_c2

    .line 2529
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getSuplServerFromNetworkInfo()Ljava/lang/String;

    move-result-object v0

    .line 2530
    .restart local v0    # "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v0, :cond_c2

    .line 2531
    const/4 v3, 0x2

    const/16 v5, 0x1c6b

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xf

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 2532
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 2536
    .end local v0    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_c2
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->ARG_UFN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v2, :cond_e2

    .line 2537
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_e2

    .line 2538
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v0

    .line 2539
    .restart local v0    # "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v0, :cond_e2

    .line 2540
    const/4 v3, 0x2

    const/16 v5, 0x1c6b

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xf

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 2541
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 2546
    .end local v0    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_e2
    :goto_e2
    return-void
.end method

.method protected extension_reportGeofenceAddStatus(II)V
    .registers 6
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 3979
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz v0, :cond_12

    .line 3981
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceAddStatus(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 3984
    goto :goto_12

    .line 3982
    :catch_8
    move-exception v0

    .line 3983
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method protected extension_reportGeofencePauseStatus(II)V
    .registers 6
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 4012
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz v0, :cond_12

    .line 4014
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofencePauseStatus(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 4017
    goto :goto_12

    .line 4015
    :catch_8
    move-exception v0

    .line 4016
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method protected extension_reportGeofenceRemoveStatus(II)V
    .registers 6
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 3996
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz v0, :cond_12

    .line 3998
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceRemoveStatus(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 4001
    goto :goto_12

    .line 3999
    :catch_8
    move-exception v0

    .line 4000
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method protected extension_reportGeofenceResumeStatus(II)V
    .registers 6
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 4028
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz v0, :cond_12

    .line 4030
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceResumeStatus(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 4033
    goto :goto_12

    .line 4031
    :catch_8
    move-exception v0

    .line 4032
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4035
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method protected extension_reportGeofenceStatus(ILandroid/location/Location;)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "location"    # Landroid/location/Location;

    .line 3963
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz v0, :cond_17

    .line 3965
    :try_start_4
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceStatus(ILandroid/location/Location;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 3968
    goto :goto_17

    .line 3966
    :catch_d
    move-exception v0

    .line 3967
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method protected extension_reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .registers 12
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "transitionTimestamp"    # J

    .line 3942
    if-nez p2, :cond_3

    .line 3943
    return-void

    .line 3945
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz v0, :cond_21

    const/16 v1, 0x2710

    if-le p1, v1, :cond_21

    .line 3947
    :try_start_b
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceTransition(ILandroid/location/Location;IJ)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17

    .line 3951
    goto :goto_21

    .line 3949
    :catch_17
    move-exception v0

    .line 3950
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    :goto_21
    return-void
.end method

.method protected extension_secGnssConfigurationUpdate(Ljava/lang/String;)V
    .registers 4
    .param p1, "config"    # Ljava/lang/String;

    .line 4096
    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "extension_secGnssConfigurationUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4097
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    .line 4098
    return-void
.end method

.method protected extension_sendGpsTime(JJ)V
    .registers 11
    .param p1, "mLastFixTime"    # J
    .param p3, "timestamp"    # J

    .line 3402
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v1, :cond_7f

    .line 3403
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clock_sync_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7f

    .line 3404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gps clock sync: CLOCK_SYNC_ENABLED "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    .line 3406
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "gps:timestamp(Ms) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "currentTimeMillis:(Ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3404
    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    sub-long v2, p1, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v0, v2, v4

    if-lez v0, :cond_7f

    .line 3411
    const-wide/16 v2, 0x3e8

    div-long v2, p3, v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-gez v0, :cond_7f

    .line 3412
    const-string v0, "[GPS Time for DRM] reportLocation call setAndBroadcastGPSSetTimeForDRM"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    const-string v0, "android.intent.action.GPS_SET_TIME"

    .line 3414
    .local v0, "ACTION_GPS_SET_TIME":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3415
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3416
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3417
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3418
    invoke-static {p3, p4}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 3424
    .end local v0    # "ACTION_GPS_SET_TIME":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7f
    return-void
.end method

.method protected extension_setStartNavigatingModes(ILcom/android/internal/location/ProviderRequest;)I
    .registers 9
    .param p1, "mPositionMode"    # I
    .param p2, "pr"    # Lcom/android/internal/location/ProviderRequest;

    .line 3278
    const/4 v0, 0x0

    .line 3279
    .local v0, "singleShot":Z
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isGpsEnabled()Z

    move-result v1

    const-string v2, "GnssLocationProvider_ex"

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_is_supported()Z

    move-result v1

    if-nez v1, :cond_17

    .line 3280
    const-string v1, "HIDL service may have been died. reset it."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_init()Z

    .line 3284
    :cond_17
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->networkStateNeedsModeStandalone()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3285
    const/4 p1, 0x0

    .line 3286
    return p1

    .line 3290
    :cond_1f
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isUSCDMAMarket()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3291
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_36

    .line 3292
    const/4 p1, 0x1

    .line 3293
    const-string v1, "LTE. mPositionMode is set to MSBASED"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 3295
    :cond_36
    const/4 p1, 0x0

    .line 3296
    const-string/jumbo v1, "not LTE. mPositionMode is changed to STANDALONE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    :cond_3d
    :goto_3d
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v1, :cond_4b

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isKORMarket()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 3301
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setKoreanOperatorsSuplSetting()I

    move-result p1

    .line 3305
    :cond_4b
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v1

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v1, v3, :cond_6b

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v1

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v1, v3, :cond_6b

    .line 3306
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v1

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v1, v3, :cond_6b

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v1

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHU:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v1, v3, :cond_83

    .line 3307
    :cond_6b
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extChnSelectPositionMode()I

    move-result p1

    .line 3308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHN startNavigating mPositionMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    :cond_83
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWifiOnlyModel()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 3312
    const-string/jumbo v1, "mPositionMode set to GPS_POSITION_MODE_STANDALONE because of WiFi only model."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    const/4 p1, 0x0

    .line 3316
    :cond_90
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v1

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CTC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v1, v3, :cond_b4

    .line 3317
    invoke-direct {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isSingleShotRequest(Lcom/android/internal/location/ProviderRequest;)Z

    move-result v0

    .line 3318
    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->extCtcSelectPositionMode(Z)I

    move-result p1

    .line 3319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHN_CTC startNavigating mPositionMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    :cond_b4
    sget-object v1, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v3, "DCM"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 3324
    const/4 v1, 0x0

    .line 3325
    .local v1, "valueFromPrefs":Z
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "gps_noti_sound_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_d0

    const/4 v5, 0x1

    :cond_d0
    move v1, v5

    .line 3327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS noti sound enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    if-eqz v1, :cond_ea

    .line 3329
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->generateBeep()V

    .line 3333
    .end local v1    # "valueFromPrefs":Z
    :cond_ea
    sget-object v1, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v3, "JCO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fe

    sget-object v1, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    const-string v3, "UQM"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 3334
    :cond_fe
    const/4 p1, 0x0

    .line 3335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KDDI MVNO JCOM/UQM setPositionmode on StartNavigating"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    :cond_113
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v1, :cond_13e

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v1

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_KTT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v1, v3, :cond_13e

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    const/16 v3, 0x14

    if-ne v1, v3, :cond_13e

    .line 3340
    const/4 p1, 0x0

    .line 3341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KT QC NR startNavigating mPositionMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    :cond_13e
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_150

    .line 3347
    const/4 p1, 0x0

    .line 3348
    const-string v1, "SIM card absent. force set position_mode to standalone"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    :cond_150
    return p1
.end method

.method extension_setSuplSetting()V
    .registers 3

    .line 1747
    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "extension_setSuplSetting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v0, :cond_3c

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1749
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$6;->$SwitchMap$com$android$server$location$gnss$GnssConstants$Vendor:[I

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConstants$Vendor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    goto :goto_3c

    .line 1756
    :cond_27
    const-string v0, "ENABLE_SUPL_AGNSS_BEIDOU=FALSE"

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    .line 1757
    const-string v0, "ENABLE_SUPL_AGNSS_GALILEO=FALSE"

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    .line 1759
    goto :goto_3c

    .line 1752
    :cond_32
    const-string v0, "ENABLE_SUPL_AGNSS_BEIDOU=TRUE"

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    .line 1753
    const-string v0, "ENABLE_SUPL_AGNSS_GALILEO=TRUE"

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    .line 1764
    :cond_3c
    :goto_3c
    return-void
.end method

.method protected extension_set_supl_server()V
    .registers 9

    .line 2625
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getSuplServerFromCSC()V

    .line 2627
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 2628
    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplVersion:I

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplPort:I

    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslMode:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplSslType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto/16 :goto_115

    .line 2630
    :cond_19
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v0, :cond_115

    .line 2632
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$6;->$SwitchMap$com$android$server$location$gnss$GnssConstants$Vendor:[I

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssConstants$Vendor;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_112

    packed-switch v0, :pswitch_data_130

    .line 2702
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto/16 :goto_115

    .line 2695
    :pswitch_3d
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v7

    .line 2696
    .local v7, "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v7, :cond_115

    .line 2697
    const/4 v1, 0x2

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto/16 :goto_115

    .line 2692
    .end local v7    # "suplServerAutoConfig":Ljava/lang/String;
    :pswitch_51
    const/4 v1, 0x2

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    const-string/jumbo v2, "supl.attmex.mx"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 2693
    goto/16 :goto_115

    .line 2687
    :pswitch_61
    const/4 v1, 0x1

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    const-string v2, "221.176.0.55"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 2688
    goto/16 :goto_115

    .line 2680
    :pswitch_70
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 2681
    goto/16 :goto_115

    .line 2671
    :pswitch_7f
    const/4 v1, 0x3

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    const-string/jumbo v2, "supl.rm-n.jp"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 2672
    goto/16 :goto_115

    .line 2668
    :pswitch_8f
    const/4 v1, 0x2

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    const-string/jumbo v2, "location2.kddi.ne.jp"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 2669
    goto/16 :goto_115

    .line 2659
    :pswitch_9f
    const-string v0, "dcm_supl_iot"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2660
    .local v7, "dcm_supl_iot":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set supl server for JPN_DCM, iot value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 2662
    const/4 v1, 0x3

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "dcm-supl.com"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto :goto_115

    .line 2664
    :cond_d3
    const/4 v1, 0x3

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    const-string/jumbo v2, "supl.google.com"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 2666
    goto :goto_115

    .line 2656
    .end local v7    # "dcm_supl_iot":Ljava/lang/String;
    :pswitch_e2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 2657
    goto :goto_115

    .line 2644
    :pswitch_f0
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getSuplServerFromNetworkInfo()Ljava/lang/String;

    move-result-object v7

    .line 2645
    .local v7, "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v7, :cond_115

    .line 2646
    const/4 v1, 0x2

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto :goto_115

    .line 2640
    .end local v7    # "suplServerAutoConfig":Ljava/lang/String;
    :pswitch_103
    const/4 v1, 0x2

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    const-string/jumbo v2, "supl.geo.t-mobile.com"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 2641
    goto :goto_115

    .line 2683
    :cond_112
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setSktSuplVer()V

    .line 2708
    :cond_115
    :goto_115
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_12f

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_KTT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v1, :cond_12f

    .line 2709
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    .line 2710
    :cond_12f
    return-void

    :pswitch_data_130
    .packed-switch 0x4
        :pswitch_103
        :pswitch_103
        :pswitch_103
        :pswitch_103
        :pswitch_103
        :pswitch_103
        :pswitch_103
        :pswitch_f0
        :pswitch_f0
        :pswitch_e2
        :pswitch_e2
        :pswitch_e2
        :pswitch_e2
        :pswitch_e2
        :pswitch_e2
        :pswitch_e2
        :pswitch_9f
        :pswitch_8f
        :pswitch_7f
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_61
        :pswitch_61
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_3d
    .end packed-switch
.end method

.method protected extension_set_xtra_downloaded_time()V
    .registers 5

    .line 2488
    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "extension_set_xtra_downloaded_time()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2490
    .local v0, "timestamp":J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "persist.sys.xtra_time"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    return-void
.end method

.method protected extension_stopNavigating()V
    .registers 5

    .line 3361
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$6;->$SwitchMap$com$android$server$location$gnss$GnssConstants$Vendor:[I

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConstants$Vendor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "GnssLocationProvider_ex"

    if-eq v0, v1, :cond_41

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1a

    goto :goto_5f

    .line 3382
    :cond_1a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_5f

    .line 3384
    const-string/jumbo v0, "release ToneGenerator"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 3386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_5f

    .line 3373
    :cond_2d
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_5f

    .line 3374
    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 3375
    const-string/jumbo v0, "mIsKtGps is changed"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_5f

    .line 3377
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setKoreanOperatorsSuplSetting()I

    goto :goto_5f

    .line 3363
    :cond_41
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 3364
    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 3365
    const-string/jumbo v0, "stopNavigating : isSKAF changed"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    const-string/jumbo v0, "sys.sktgps"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3367
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_5f

    .line 3368
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setKoreanOperatorsSuplSetting()I

    .line 3392
    :cond_5f
    :goto_5f
    return-void
.end method

.method protected getBundle(Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;II)Landroid/os/Bundle;
    .registers 7
    .param p1, "code"    # Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;
    .param p2, "identifier"    # I
    .param p3, "status"    # I

    .line 3706
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3707
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->ordinal()I

    move-result v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3708
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3709
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3711
    return-object v0
.end method

.method protected handleInitialize_samsung()V
    .registers 6

    .line 890
    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "handleInitialize in GLP_Samsung"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$pGlEKn-0yWxIPPcH_QrHzrQuUmY;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$pGlEKn-0yWxIPPcH_QrHzrQuUmY;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 898
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 899
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 900
    const-string/jumbo v2, "sms"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 901
    const-string/jumbo v2, "localhost"

    const-string v3, "7275"

    invoke-virtual {v1, v2, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mBroadcastReceiverExtension:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 904
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 905
    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 907
    :try_start_39
    const-string v2, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_3e
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_39 .. :try_end_3e} :catch_3f

    .line 910
    goto :goto_45

    .line 908
    :catch_3f
    move-exception v2

    .line 909
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v3, "Malformed SUPL init mime type"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :goto_45
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mBroadcastReceiverExtension:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 913
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 914
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v2, v3, :cond_62

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v2, v3, :cond_6c

    .line 915
    :cond_62
    const-string v2, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 916
    const-string v2, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 920
    :cond_6c
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->JPN_KDI:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-eq v2, v3, :cond_7c

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_VZW:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v2, v3, :cond_9b

    :cond_7c
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v2, :cond_9b

    .line 923
    const-string/jumbo v2, "register EmergencyNetworkConnectivityCallback"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 925
    .local v0, "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 926
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 927
    .local v2, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mEmergencyNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v2, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 931
    .end local v0    # "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    .end local v2    # "networkRequest":Landroid/net/NetworkRequest;
    :cond_9b
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 933
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v0, :cond_b6

    .line 935
    const-string v0, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 937
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_VZW:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v0, v2, :cond_b6

    .line 938
    const-string v0, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 943
    :cond_b6
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 946
    const-string v0, "com.sec.android.ISSUE_TRACKER_ONOFF"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mBroadcastReceiverExtension:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 949
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_e2

    .line 951
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v0

    .line 952
    const/16 v0, 0x3e8

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 953
    const-string v0, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mBroadcastReceiverExtension:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 956
    :cond_e2
    return-void
.end method

.method protected handleWakelockControl(I)V
    .registers 4
    .param p1, "status"    # I

    .line 3476
    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    const-string v1, "GnssLocationProvider_ex"

    if-eq p1, v0, :cond_e

    .line 3488
    const-string/jumbo v0, "wakelock status is neither 0 nor 1."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 3481
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mStarted:Z

    if-eqz v0, :cond_18

    .line 3482
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_24

    .line 3484
    :cond_18
    const-string v0, "Location request has been removed. Skip to get wakelock."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    goto :goto_24

    .line 3478
    :cond_1e
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3479
    nop

    .line 3491
    :goto_24
    return-void
.end method

.method init_GnssLocationPrivider_samsung()V
    .registers 15

    .line 959
    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "init_GnssLocationPrivider_samsung"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    .line 961
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    .line 962
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_nsflp:Ljava/util/Properties;

    .line 964
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 965
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 966
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeWiFiManager:Landroid/net/wifi/WifiManager;

    .line 969
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 970
    .local v1, "mPowerManager":Landroid/os/PowerManager;
    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->WAKELOCK_KEY:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 971
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 974
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v2, :cond_66

    .line 975
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isNonQcomGnss()Z

    move-result v2

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    .line 978
    :cond_66
    const-string/jumbo v2, "mdc.sys.enable_smff"

    invoke-static {v2, v4}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mEnableSMF:Z

    .line 981
    const-string/jumbo v5, "ro.csc.sales_code"

    if-eqz v2, :cond_91

    .line 982
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v2

    const-string v6, "CarrierFeature_GPS_ConfigAgpsSetting"

    const-string v7, ""

    invoke-virtual {v2, v4, v6, v7, v4}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 984
    if-eqz v2, :cond_8a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_ad

    .line 985
    :cond_8a
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    goto :goto_ad

    .line 988
    :cond_91
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSimSlotId:I

    .line 989
    const-string v6, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v2, v4, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 990
    if-eqz v2, :cond_a7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_ad

    .line 991
    :cond_a7
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 997
    :cond_ad
    :goto_ad
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 998
    .local v2, "mSecProperties":Ljava/util/Properties;
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/gps/secgps.conf"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 999
    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 1001
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_ba
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_bf
    .catch Ljava/io/FileNotFoundException; {:try_start_ba .. :try_end_bf} :catch_c8
    .catch Ljava/lang/SecurityException; {:try_start_ba .. :try_end_bf} :catch_c1

    move-object v5, v6

    .line 1006
    :goto_c0
    goto :goto_cf

    .line 1004
    :catch_c1
    move-exception v6

    .line 1005
    .local v6, "e":Ljava/lang/SecurityException;
    const-string v7, "Could not access GPS configuration file /data/system/gps/secgps.conf"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 1002
    .end local v6    # "e":Ljava/lang/SecurityException;
    :catch_c8
    move-exception v6

    .line 1003
    .local v6, "e":Ljava/io/FileNotFoundException;
    const-string v7, "Could not open GPS configuration file /data/system/gps/secgps.conf"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "e":Ljava/io/FileNotFoundException;
    goto :goto_c0

    .line 1007
    :goto_cf
    if-eqz v5, :cond_ef

    .line 1009
    :try_start_d1
    invoke-virtual {v2, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_e3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d1 .. :try_end_d4} :catch_db
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_d9

    .line 1016
    nop

    :goto_d5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1017
    goto :goto_ef

    .line 1016
    :catchall_d9
    move-exception v0

    goto :goto_eb

    .line 1012
    :catch_db
    move-exception v6

    .line 1013
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_dc
    const-string v7, "Could not load GPS configuration file /data/system/gps/secgps.confdue to IllegalArgumentException"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    nop

    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_d5

    .line 1010
    :catch_e3
    move-exception v6

    .line 1011
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "Could not load GPS configuration file /data/system/gps/secgps.confdue to IOException"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catchall {:try_start_dc .. :try_end_e9} :catchall_d9

    .line 1016
    nop

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_d5

    :goto_eb
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1017
    throw v0

    .line 1019
    :cond_ef
    :goto_ef
    const-string v6, "SERVER_TYPE"

    invoke-virtual {v2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1020
    .local v6, "server_type_s":Ljava/lang/String;
    if-eqz v6, :cond_114

    .line 1021
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mServerTypeI:I

    .line 1022
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Auto Config in AngryGPS : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mServerTypeI:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_119

    .line 1024
    :cond_114
    const-string v7, "No params for SERVER_TYPE in AngryGPS."

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :goto_119
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v7

    sget-object v8, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    if-ne v7, v8, :cond_195

    .line 1029
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    iput-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    .line 1030
    new-instance v7, Ljava/io/File;

    const-string v8, "/etc/gps_cmcc.conf"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v7, "file_cmcc":Ljava/io/File;
    const/4 v8, 0x0

    .line 1033
    .local v8, "stream_cmcc":Ljava/io/FileInputStream;
    :try_start_130
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_135
    .catch Ljava/io/FileNotFoundException; {:try_start_130 .. :try_end_135} :catch_13e
    .catch Ljava/lang/SecurityException; {:try_start_130 .. :try_end_135} :catch_137

    move-object v8, v9

    .line 1038
    :goto_136
    goto :goto_145

    .line 1036
    :catch_137
    move-exception v9

    .line 1037
    .local v9, "e":Ljava/lang/SecurityException;
    const-string v10, "Could not access GPS configuration file /etc/gps_cmcc.conf"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_145

    .line 1034
    .end local v9    # "e":Ljava/lang/SecurityException;
    :catch_13e
    move-exception v9

    .line 1035
    .local v9, "e":Ljava/io/FileNotFoundException;
    const-string v10, "Could not find GPS configuration file /etc/gps_cmcc.conf"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9    # "e":Ljava/io/FileNotFoundException;
    goto :goto_136

    .line 1039
    :goto_145
    if-eqz v8, :cond_167

    .line 1041
    :try_start_147
    iget-object v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    invoke-virtual {v9, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14c} :catch_15b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_147 .. :try_end_14c} :catch_153
    .catchall {:try_start_147 .. :try_end_14c} :catchall_151

    .line 1048
    nop

    :goto_14d
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1049
    goto :goto_167

    .line 1048
    :catchall_151
    move-exception v0

    goto :goto_163

    .line 1044
    :catch_153
    move-exception v9

    .line 1045
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_154
    const-string v10, "Could not load GPS configuration file /etc/gps_cmcc.confdue to IllegalArgumentException"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    nop

    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_14d

    .line 1042
    :catch_15b
    move-exception v9

    .line 1043
    .local v9, "e":Ljava/io/IOException;
    const-string v10, "Could not load GPS configuration file /etc/gps_cmcc.confdue to IOException"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_161
    .catchall {:try_start_154 .. :try_end_161} :catchall_151

    .line 1048
    nop

    .end local v9    # "e":Ljava/io/IOException;
    goto :goto_14d

    :goto_163
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1049
    throw v0

    .line 1052
    :cond_167
    :goto_167
    iget-object v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v10, "SUPL_HOST"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1053
    .local v9, "mSuplServerHost_cmcc":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v11, "SUPL_PORT"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1054
    .local v10, "portString_cmcc":Ljava/lang/String;
    if-eqz v9, :cond_195

    if-eqz v10, :cond_195

    .line 1056
    :try_start_17b
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_17e
    .catch Ljava/lang/NumberFormatException; {:try_start_17b .. :try_end_17e} :catch_17f

    .line 1059
    goto :goto_195

    .line 1057
    :catch_17f
    move-exception v11

    .line 1058
    .local v11, "e":Ljava/lang/NumberFormatException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unable to parse SUPL_PORT: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    .end local v7    # "file_cmcc":Ljava/io/File;
    .end local v8    # "stream_cmcc":Ljava/io/FileInputStream;
    .end local v9    # "mSuplServerHost_cmcc":Ljava/lang/String;
    .end local v10    # "portString_cmcc":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_195
    :goto_195
    iget-boolean v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v7, :cond_1d4

    .line 1063
    new-instance v7, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$SecFileObserver;

    const/4 v8, 0x2

    const-string v9, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v7, p0, v9, v8}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$SecFileObserver;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Ljava/lang/String;I)V

    iput-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSecFileObserver:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$SecFileObserver;

    .line 1064
    if-eqz v7, :cond_1a9

    .line 1065
    invoke-virtual {v7}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$SecFileObserver;->startWatching()V

    goto :goto_1ae

    .line 1067
    :cond_1a9
    const-string v7, "CTS restrict mode : fail. mFileObserver is null"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :goto_1ae
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-class v8, Landroid/hardware/input/InputManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputManager;

    .line 1070
    .local v7, "mIm":Landroid/hardware/input/InputManager;
    if-eqz v7, :cond_1d4

    .line 1071
    invoke-virtual {v7}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_1d4

    .line 1072
    const-string v8, "Folderable phone"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$inputLidStateChangedListener;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$inputLidStateChangedListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mLidStateListener:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$inputLidStateChangedListener;

    .line 1074
    if-eqz v0, :cond_1d4

    .line 1075
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v0, v8}, Landroid/hardware/input/InputManager;->semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    .line 1080
    .end local v7    # "mIm":Landroid/hardware/input/InputManager;
    :cond_1d4
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$3;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mCellInfoCb:Landroid/telephony/TelephonyManager$CellInfoCallback;

    .line 1181
    iput-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mInitialized:Z

    .line 1182
    return-void
.end method

.method protected isApprovedApp(I)Z
    .registers 15
    .param p1, "uid"    # I

    .line 4182
    const-string v0, "com.android.angryGps"

    const-string v1, "com.android.cts.verifier"

    const-string v2, "android.location.cts"

    const-string v3, "android.location.cts.gnss"

    const-string v4, "android.location.cts.fine"

    const-string v5, "android.location.cts.coarse"

    const-string v6, "com.kt.serviceagent"

    const-string v7, "com.kaf.apitest"

    const-string v8, "com.kt.oladc"

    const-string v9, "com.google.android.location.gts"

    const-string v10, "com.starriver.gnsstester"

    const-string v11, "android.seclocation.cts"

    const-string v12, "android.seclonglocation.cts"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    .line 4188
    .local v0, "approvedApps":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 4189
    .local v1, "packages":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_41

    .line 4190
    array-length v3, v1

    move v4, v2

    :goto_29
    if-ge v4, v3, :cond_41

    aget-object v5, v1, v4

    .line 4191
    .local v5, "pkg":Ljava/lang/String;
    array-length v6, v0

    move v7, v2

    :goto_2f
    if-ge v7, v6, :cond_3e

    aget-object v8, v0, v7

    .line 4192
    .local v8, "approvedApp":Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 4193
    const/4 v2, 0x1

    return v2

    .line 4191
    .end local v8    # "approvedApp":Ljava/lang/String;
    :cond_3b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 4190
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 4198
    :cond_41
    return v2
.end method

.method protected isSpirentTestSim()Z
    .registers 4

    .line 4211
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 4212
    .local v0, "simOperatorAlpha":Ljava/lang/String;
    if-eqz v0, :cond_2a

    .line 4213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSimOperatorName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4214
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPIRENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 4216
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$requestNlpLocation$0$GnssLocationProvider_samsung()V
    .registers 3

    .line 569
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Removing location updates from provider."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationX"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mLPPeFusedLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$LPPeFusedLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 571
    return-void
.end method

.method public synthetic lambda$requestWlanScanInfo$1$GnssLocationProvider_samsung()V
    .registers 3

    .line 843
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWifiScanRequested:Z

    if-eqz v0, :cond_19

    .line 844
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->LPPeWiFiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 845
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isWifiScanRequested:Z

    .line 846
    const-string v0, "LocationX"

    const-string v1, "Waiting for turning on WIFI is timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->handleUpdateWLANError(I)V

    .line 849
    :cond_19
    return-void
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 2720
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssLocationProvider;->onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 2722
    const-string/jumbo v0, "set_csc_parameters"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2723
    invoke-direct {p0, p4}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setCscParameters(Landroid/os/Bundle;)V

    goto/16 :goto_3b6

    .line 2724
    :cond_11
    const-string v0, "com.skt.intent.action.AGPS"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_64

    .line 2725
    const-string/jumbo v0, "opType"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2726
    .local v0, "opType":Ljava/lang/String;
    const-string v3, "cmdType"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2728
    .local v3, "cmdType":Ljava/lang/String;
    const-string/jumbo v4, "on"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 2729
    const-string/jumbo v2, "msAssisted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string/jumbo v2, "msBased"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 2730
    :cond_43
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    goto :goto_5b

    .line 2732
    :cond_47
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2733
    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 2734
    const-string/jumbo v1, "sys.sktgps"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    :cond_5b
    :goto_5b
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v1, :cond_62

    .line 2737
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setKoreanOperatorsSuplSetting()I

    .line 2739
    .end local v0    # "opType":Ljava/lang/String;
    .end local v3    # "cmdType":Ljava/lang/String;
    :cond_62
    goto/16 :goto_3b6

    :cond_64
    const-string/jumbo v0, "setOllehServer"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "GnssLocationProvider_ex"

    if-eqz v0, :cond_ad

    .line 2740
    const-string/jumbo v0, "host"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2741
    .local v0, "hostURL":Ljava/lang/String;
    const-string/jumbo v2, "port"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2742
    .local v2, "hostPort":I
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 2743
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    .line 2744
    iput v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    .line 2745
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v1, :cond_8a

    .line 2746
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setKoreanOperatorsSuplSetting()I

    .line 2748
    :cond_8a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "host :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " port ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    .end local v0    # "hostURL":Ljava/lang/String;
    .end local v2    # "hostPort":I
    goto/16 :goto_3b6

    :cond_ad
    const-string/jumbo v0, "setNativeServer"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 2750
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 2752
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_3b6

    .line 2753
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setKoreanOperatorsSuplSetting()I

    goto/16 :goto_3b6

    .line 2755
    :cond_c4
    const-string v0, "activateGPS"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 2756
    const-string v0, "activateGPS is not supported"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b6

    .line 2757
    :cond_d3
    const-string v0, "deactivateGPS"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 2758
    const-string v0, "deactivateGPS is not supported"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b6

    .line 2759
    :cond_e2
    const-string v0, "activateNLP"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 2760
    const-string v0, "activateNLP is not supported"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b6

    .line 2761
    :cond_f1
    const-string v0, "deactivateNLP"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 2762
    const-string v0, "deactivateNLP is not supported"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b6

    .line 2763
    :cond_100
    const-string v0, "activateAGPS"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "assisted_gps_enabled"

    if-eqz v4, :cond_118

    .line 2764
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3b6

    .line 2766
    :cond_118
    const-string v0, "deactivateAGPS"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12e

    .line 2767
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3b6

    .line 2769
    :cond_12e
    const-string/jumbo v0, "setMode"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v4, "mode"

    if-eqz v0, :cond_159

    .line 2770
    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->ktPositionMode:I

    .line 2771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode ktPositionMode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b6

    .line 2772
    :cond_159
    const-string v0, "getMode"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 2773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMode ktPositionMode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {p4, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b6

    .line 2775
    :cond_17e
    const-string/jumbo v0, "set_use_udp"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 2776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set_use_udp : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "use_udp"

    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1b4

    .line 2778
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isUDPListen:Z

    if-nez v0, :cond_3b6

    .line 2779
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isUDPListen:Z

    .line 2780
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->checkUDPSuplInit()V

    goto/16 :goto_3b6

    .line 2783
    :cond_1b4
    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isUDPListen:Z

    goto/16 :goto_3b6

    .line 2785
    :cond_1b8
    const-string/jumbo v0, "set_dcm_iot"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e5

    .line 2786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set_dcm_iot : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dcm_iot"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setDcmSuplIot(Z)V

    goto/16 :goto_3b6

    .line 2790
    :cond_1e5
    const-string/jumbo v0, "set_lpp_support"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 2791
    const-string/jumbo v0, "set_lpp"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setLppSupport(I)V

    goto/16 :goto_3b6

    .line 2792
    :cond_1fa
    const-string/jumbo v0, "setSecGpsConf"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20b

    .line 2793
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    invoke-direct {p0, p4}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setSecGpsConf(Landroid/os/Bundle;)V

    goto/16 :goto_3b6

    .line 2795
    :cond_20b
    const-string v0, "deleteSecGpsConf"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21b

    .line 2796
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->deleteSecGpsConf()V

    goto/16 :goto_3b6

    .line 2798
    :cond_21b
    const-string/jumbo v0, "gnss_configuration"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "config_string"

    const-string v6, ""

    if-eqz v0, :cond_253

    .line 2799
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v1, "USE_SECGPS_CONF"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2800
    .local v0, "secgpsStr":Ljava/lang/String;
    if-eqz v0, :cond_251

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_251

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v1

    if-eqz v1, :cond_251

    .line 2801
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v1, :cond_251

    .line 2802
    invoke-virtual {p4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2803
    .local v1, "configString":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_251

    .line 2804
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    .line 2808
    .end local v0    # "secgpsStr":Ljava/lang/String;
    .end local v1    # "configString":Ljava/lang/String;
    :cond_251
    goto/16 :goto_3b6

    .line 2810
    :cond_253
    const-string/jumbo v0, "supl_hostname_to_nsflp"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_270

    .line 2812
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2813
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mSuplAddressForNSFLP:Ljava/lang/String;

    const-string/jumbo v2, "supl_hostname"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    sget-object v1, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->SUPL_ADDRESS:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendInfoToNsflp(Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;Ljava/lang/Object;)V

    .line 2815
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_3b6

    .line 2816
    :cond_270
    const-string/jumbo v0, "gnss_configuration_from_nsflp"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d5

    .line 2817
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v0

    if-eqz v0, :cond_3b6

    .line 2818
    invoke-virtual {p4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2819
    .local v0, "configString":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d3

    .line 2821
    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    .line 2823
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 2824
    .local v3, "scanner":Ljava/util/Scanner;
    :goto_291
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-eqz v4, :cond_2d0

    .line 2825
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    .line 2826
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_2cf

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2cf

    .line 2827
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2828
    .local v5, "propertyArray":[Ljava/lang/String;
    array-length v6, v5

    if-le v6, v1, :cond_2cf

    aget-object v6, v5, v2

    if-eqz v6, :cond_2cf

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2cf

    aget-object v6, v5, v1

    if-eqz v6, :cond_2cf

    aget-object v6, v5, v1

    .line 2829
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2cf

    .line 2830
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_nsflp:Ljava/util/Properties;

    if-eqz v6, :cond_2cf

    .line 2831
    aget-object v7, v5, v2

    aget-object v8, v5, v1

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2835
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "propertyArray":[Ljava/lang/String;
    :cond_2cf
    goto :goto_291

    .line 2836
    :cond_2d0
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 2838
    .end local v0    # "configString":Ljava/lang/String;
    .end local v3    # "scanner":Ljava/util/Scanner;
    :cond_2d3
    goto/16 :goto_3b6

    .line 2839
    :cond_2d5
    const-string/jumbo v0, "motion_power_saving_mode"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_301

    .line 2840
    invoke-virtual {p4, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mMotionPowerSavingMode:Z

    .line 2841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "motion_power_saving_mode, flag="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mMotionPowerSavingMode:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    invoke-direct {p0, v1, v2, v7}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    goto/16 :goto_3b6

    .line 2844
    :cond_301
    const-string v0, "chn_navi_mode"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32a

    .line 2845
    invoke-virtual {p4, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsNavigationAppUsingGnss:Z

    .line 2846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chn_navi_mode, flag="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsNavigationAppUsingGnss:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    invoke-direct {p0, v1, v2, v7}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    goto/16 :goto_3b6

    .line 2849
    :cond_32a
    const-string/jumbo v0, "update_last_location"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34d

    .line 2850
    const-string/jumbo v0, "last_location"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 2851
    .local v0, "location":Landroid/location/Location;
    if-nez v0, :cond_344

    .line 2852
    const-string v1, "Invalid last location info"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    return-void

    .line 2855
    :cond_344
    const-string v1, "Update last location directly to LMS !!!!!!!!!!!!, "

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->reportLocation(Landroid/location/Location;)V

    .line 2857
    .end local v0    # "location":Landroid/location/Location;
    goto :goto_3b6

    :cond_34d
    const-string v0, "com.sec.android.ISSUE_TRACKER_ONOFF"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_381

    .line 2858
    if-eqz p4, :cond_3b6

    .line 2859
    const-string v0, "ONOFF"

    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2860
    .local v0, "enabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extraCommand - com.sec.android.ISSUE_TRACKER_ONOFF, enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    const-string v1, "dev.gnss.silentloggingIssueTracker"

    if-eqz v0, :cond_37b

    .line 2862
    const-string v2, "ON"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_380

    .line 2864
    :cond_37b
    const-string v2, "OFF"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    .end local v0    # "enabled":Z
    :goto_380
    goto :goto_3b6

    .line 2870
    :cond_381
    const-string/jumbo v0, "set_emergency_state"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v0, :cond_3a2

    .line 2871
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v0

    if-eqz v0, :cond_3b6

    .line 2872
    invoke-virtual {p4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2873
    .local v0, "configString":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a1

    .line 2874
    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    .line 2876
    .end local v0    # "configString":Ljava/lang/String;
    :cond_3a1
    goto :goto_3b6

    .line 2880
    :cond_3a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extension_sendExtraCommand: unknown command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    :cond_3b6
    :goto_3b6
    return-void
.end method

.method public onGnssStatusListenerStatusChanged(I)V
    .registers 6
    .param p1, "allowNmea"    # I

    .line 4256
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_34

    .line 4257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGnssStatusListenerStatusChanged: Injecting NMEA_ALLOWED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    const/16 v0, 0x18

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NMEA_ALLOWED="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    .line 4259
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIsNmeaAllowed:I

    .line 4263
    :cond_34
    return-void
.end method

.method protected requestRefLocation()V
    .registers 13

    .line 3777
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3778
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    .line 3779
    .local v1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v1, :cond_1d

    .line 3781
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mCellInfoCb:Landroid/telephony/TelephonyManager$CellInfoCallback;

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->requestCellInfoUpdate(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    goto :goto_49

    .line 3784
    :cond_1d
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isValidCellInfo:Z

    if-eqz v2, :cond_42

    .line 3785
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    iget v4, v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->networkType:I

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    iget v5, v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->mcc:I

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    iget v6, v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->mnc:I

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    iget v7, v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->lac:I

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    iget-wide v8, v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->cid:J

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    iget v10, v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->pcid:I

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->refLocData:Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;

    iget v11, v2, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->arfcn:I

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_agps_set_ref_location_cellid(IIIIJII)V

    goto :goto_49

    .line 3790
    :cond_42
    const-string v2, "GnssLocationProvider_ex"

    const-string v3, "Error getting cell location info."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    :goto_49
    return-void
.end method

.method sendExtraConfigurationString()V
    .registers 25

    .line 2891
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2892
    return-void

    .line 2894
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 2900
    .local v2, "extraConfigHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$6;->$SwitchMap$com$android$server$location$gnss$GnssConstants$Vendor:[I

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/gnss/GnssConstants$Vendor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/location/gnss/GnssConstants$Vendor;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const-string v3, "AUTO_SUPL_VERSION_FOR_NI"

    const-string v4, "7200"

    const-string v5, "2"

    const-string v6, "CP_LPP_GUARD_TIME_SEC"

    const-string v7, "300"

    const-string v8, "ALLOW_CP_IGNORE_NFW_LOCATION_POLICY"

    const-string v9, "ALLOW_SUPL_IGNORE_NFW_LOCATION_POLICY"

    const-string v10, "SUPL_VER_SKT_NI"

    const-string v11, "REAIDING_INTERVAL_SEC"

    const-string v12, "10"

    const-string v13, "emergencyExtensionSeconds"

    const-string v14, "SHA256"

    const-string v15, "SUPL_HMAC_HASH"

    const-string v1, "SUPL_SSL_METHOD"

    move-object/from16 v16, v8

    const-string v8, "SUPL_ECID_CAPABLE"

    move-object/from16 v17, v9

    const-string v9, "SUPL_OTDOA_CAPABLE"

    move-object/from16 v18, v10

    const-string v10, "USE_NI_SLP_ADDRESS"

    move-object/from16 v19, v12

    const-string v12, "SUPL_USE_APN"

    move-object/from16 v20, v9

    const-string v9, "SUPL_LPP_CAPABLE"

    move-object/from16 v21, v14

    const-string v14, "FALSE"

    move-object/from16 v22, v15

    const-string v15, "TRUE"

    packed-switch v0, :pswitch_data_388

    :pswitch_56
    goto/16 :goto_2cf

    .line 3030
    :pswitch_58
    const-string v0, "ENABLE_NAVIC"

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3031
    goto/16 :goto_2cf

    .line 3026
    :pswitch_5f
    invoke-virtual {v2, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3027
    invoke-virtual {v2, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3028
    goto/16 :goto_2cf

    .line 3012
    :pswitch_67
    invoke-virtual {v2, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3013
    invoke-virtual {v2, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3014
    goto/16 :goto_2cf

    .line 3018
    :pswitch_6f
    invoke-virtual {v2, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3019
    invoke-virtual {v2, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3020
    invoke-virtual {v2, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3021
    invoke-virtual {v2, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3022
    goto/16 :goto_2cf

    .line 3060
    :pswitch_7d
    const-string v0, "600"

    invoke-virtual {v2, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3061
    const-string v0, "SUPL_LOG_ENABLE"

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3062
    const-string v0, "SUPL_LOG_PATH"

    const-string v1, "/data/AGPSLog.txt"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3063
    const-string v0, "SUPL_NI_GPS_ICON"

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3064
    const-string v0, "NO_DATA_STANDALONE"

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3065
    const-string v0, "VENDOR_LBS_XTRA_SET_WITH_EE_IGNORE"

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3066
    goto/16 :goto_2cf

    .line 2962
    :pswitch_9f
    invoke-virtual {v2, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2963
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2964
    invoke-virtual {v2, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2965
    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2966
    const-string v0, "TLSv1"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2967
    invoke-virtual {v2, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2968
    move-object/from16 v0, v21

    move-object/from16 v3, v22

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2969
    const-string v0, "SUPL_NI_ALLOW_GPS_OFF"

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2970
    invoke-virtual {v2, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2971
    invoke-virtual {v2, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2972
    move-object/from16 v10, v20

    invoke-virtual {v2, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2973
    const-string v0, "VENDOR_LBS_SERVER_ENABLE"

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2974
    const-string v0, "RTI_ENABLE"

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2975
    const-string v0, "EE_SYNC_THRESHOLD_DAYS"

    const-string v1, "3"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2976
    const-string v0, "WARM_STANDBY2"

    const-string v1, "23"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2977
    const-string v0, "ENABLE_BEIDOU"

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2978
    const-string v0, "ENABLE_GALILEO"

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2979
    goto/16 :goto_2cf

    .line 3083
    :pswitch_ee
    invoke-virtual {v2, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    invoke-virtual {v2, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3085
    invoke-virtual {v2, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3086
    goto/16 :goto_2cf

    .line 3077
    :pswitch_f9
    invoke-virtual {v2, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3078
    invoke-virtual {v2, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3079
    invoke-virtual {v2, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3080
    const-string v0, "240"

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3081
    goto/16 :goto_2cf

    .line 3068
    :pswitch_109
    const-string v0, "SUPL_UT1_SEC"

    move-object/from16 v4, v19

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3069
    const-string v0, "SUPL_UT2_SEC"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3070
    const-string v0, "SUPL_UT3_SEC"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3071
    const-string v0, "TCP_CONNETION_TIMEOUT"

    const-string v1, "30"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3072
    const-string v0, "SUPL_NTT_DOCOMO"

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3073
    invoke-virtual {v2, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3074
    const-string v0, "20"

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3075
    goto/16 :goto_2cf

    .line 3005
    :pswitch_130
    move-object/from16 v0, v21

    move-object/from16 v3, v22

    invoke-virtual {v2, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3006
    invoke-virtual {v2, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3007
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3008
    const-string v0, "USE_RRLP_GOOGLE_SUPL"

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3009
    const-string v0, "TLSv1_1"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3010
    goto/16 :goto_2cf

    .line 2995
    :pswitch_149
    move-object/from16 v0, v21

    move-object/from16 v3, v22

    invoke-virtual {v2, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2996
    const-string v4, "TLSv1"

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2997
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2998
    invoke-virtual {v2, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2999
    invoke-virtual {v2, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3000
    const-string v0, "SUPL_HOST_NI"

    const-string/jumbo v1, "supl2019.lbs.sprint.com"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3001
    const-string v0, "USE_RRLP_GOOGLE_SUPL"

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3002
    goto/16 :goto_2cf

    .line 2981
    :pswitch_16d
    move-object/from16 v4, v19

    move-object/from16 v10, v20

    move-object/from16 v0, v21

    move-object/from16 v3, v22

    invoke-virtual {v2, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2982
    invoke-virtual {v2, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2983
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2984
    const-string v0, "SUPL_UT1_SEC"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2985
    const-string v0, "SUPL_UT2_SEC"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2986
    const-string v0, "SUPL_UT3_SEC"

    const-string v3, "30"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2987
    const-string v0, "USE_RRLP_GOOGLE_SUPL"

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2988
    const-string v0, "TLSv1_1"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2989
    invoke-virtual {v2, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2990
    const-string v0, "SUPL_MULTI_LOCID_CAPABLE"

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2991
    goto/16 :goto_2cf

    .line 2903
    :pswitch_1a3
    move-object/from16 v0, v21

    move-object/from16 v10, v22

    invoke-virtual {v2, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2904
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2905
    invoke-virtual {v2, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2906
    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2907
    const-string v3, "TLSv1_1"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2908
    invoke-virtual {v2, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2909
    const-string v1, "SUPL_NI_ALLOW_GPS_OFF"

    invoke-virtual {v2, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2910
    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2911
    invoke-virtual {v2, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2912
    invoke-virtual {v2, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2913
    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2914
    const-string v0, "VENDOR_LBS_SERVER_ENABLE"

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2915
    const-string v0, "RTI_ENABLE"

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2916
    const-string v0, "EE_SYNC_THRESHOLD_DAYS"

    const-string v1, "3"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2917
    const-string v0, "WARM_STANDBY2"

    const-string v1, "23"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2918
    const-string v0, "ENABLE_BEIDOU"

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2919
    const-string v0, "ENABLE_GALILEO"

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2920
    goto/16 :goto_2cf

    .line 2927
    :pswitch_1f2
    move-object/from16 v23, v20

    move-object/from16 v0, v21

    move-object/from16 v10, v22

    invoke-virtual {v2, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2928
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2929
    invoke-virtual {v2, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2930
    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2931
    const-string v3, "TLSv1_2"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2932
    invoke-virtual {v2, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2933
    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2934
    const-string v0, "SUPL_NI_ALLOW_GPS_OFF"

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2935
    invoke-virtual {v2, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2936
    invoke-virtual {v2, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2937
    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2938
    const-string v0, "VENDOR_LBS_SERVER_ENABLE"

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2939
    const-string v0, "RTI_ENABLE"

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2940
    const-string v0, "EE_SYNC_THRESHOLD_DAYS"

    const-string v1, "3"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2941
    const-string v0, "WARM_STANDBY2"

    const-string v1, "23"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2942
    const-string v0, "ENABLE_BEIDOU"

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2943
    const-string v0, "ENABLE_GALILEO"

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2945
    const-string v0, "ENABLE_4G_CP_CAPS_MSB"

    const-string v1, "1"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2946
    const-string v0, "ENABLE_4G_CP_CAPS_MSA"

    const-string v3, "0"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2947
    const-string v0, "ENABLE_4G_CP_CAPS_AUTO"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2948
    const-string v0, "ENABLE_3G_CP_CAPS_MSB"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2949
    const-string v0, "ENABLE_3G_CP_CAPS_MSA"

    const-string v3, "0"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2950
    const-string v0, "ENABLE_3G_CP_CAPS_AUTO"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2951
    const-string v0, "ENABLE_2G_CP_CAPS_MSB"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2952
    const-string v0, "ENABLE_2G_CP_CAPS_MSA"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2953
    const-string v0, "ENABLE_2G_CP_CAPS_AUTO"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2954
    goto :goto_2cf

    .line 3042
    :pswitch_275
    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3043
    invoke-virtual {v2, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3044
    invoke-virtual {v2, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3045
    invoke-virtual {v2, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3046
    move-object/from16 v1, v18

    invoke-virtual {v2, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3047
    move-object/from16 v3, v17

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3048
    move-object/from16 v4, v16

    invoke-virtual {v2, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3049
    goto :goto_2cf

    .line 3033
    :pswitch_293
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v1, v18

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3034
    invoke-virtual {v2, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3035
    invoke-virtual {v2, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3036
    invoke-virtual {v2, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3037
    invoke-virtual {v2, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3038
    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3039
    invoke-virtual {v2, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3040
    goto :goto_2cf

    .line 3051
    :pswitch_2b1
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v1, v18

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3052
    invoke-virtual {v2, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3053
    invoke-virtual {v2, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3054
    invoke-virtual {v2, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3055
    invoke-virtual {v2, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3056
    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3057
    invoke-virtual {v2, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3058
    nop

    .line 3094
    :goto_2cf
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isUSAMarket()Z

    move-result v0

    if-nez v0, :cond_2e8

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isCaMarket()Z

    move-result v0

    if-nez v0, :cond_2e8

    .line 3095
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getCpAgpsProfile()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CP_AGPS_ENABLE_PROFILE"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3101
    :cond_2e8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .line 3102
    .local v1, "mStringExtraConfigProperty":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_340

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3103
    .local v3, "key":Ljava/lang/String;
    const-string v4, "GLDUMP_LOGGING_ENCRYPTION_KEY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_329

    .line 3104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GnssLocationProvider_ex"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    :cond_329
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3107
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_2f6

    .line 3110
    :cond_340
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->getHardwareFactors()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3113
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v3, v0

    .line 3115
    .local v3, "writer":Ljava/io/StringWriter;
    move-object/from16 v4, p0

    :try_start_34f
    iget-object v0, v4, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_nsflp:Ljava/util/Properties;

    if-eqz v0, :cond_367

    .line 3116
    iget-object v0, v4, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mProperties_nsflp:Ljava/util/Properties;

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3117
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3118
    .local v0, "nsflpConfigString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_367

    .line 3119
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_367
    .catch Ljava/io/IOException; {:try_start_34f .. :try_end_367} :catch_368

    .line 3124
    .end local v0    # "nsflpConfigString":Ljava/lang/String;
    :cond_367
    goto :goto_370

    .line 3122
    :catch_368
    move-exception v0

    .line 3123
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "GnssLocationProvider_ex"

    const-string v6, "could not store to writer"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    .end local v0    # "e":Ljava/io/IOException;
    :goto_370
    iget-boolean v0, v4, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v0, :cond_37c

    .line 3128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    goto :goto_386

    .line 3130
    :cond_37c
    const/16 v0, 0x18

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    .line 3132
    :goto_386
    return-void

    nop

    :pswitch_data_388
    .packed-switch 0x1
        :pswitch_2b1
        :pswitch_293
        :pswitch_275
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_56
        :pswitch_1a3
        :pswitch_1a3
        :pswitch_16d
        :pswitch_149
        :pswitch_149
        :pswitch_149
        :pswitch_56
        :pswitch_130
        :pswitch_130
        :pswitch_109
        :pswitch_f9
        :pswitch_ee
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_7d
        :pswitch_56
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_67
        :pswitch_56
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_58
    .end packed-switch
.end method

.method protected sendInfoToNsflp(Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;Ljava/lang/Object;)V
    .registers 5
    .param p1, "code"    # Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;
    .param p2, "object"    # Ljava/lang/Object;

    .line 3691
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mInitialized:Z

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    if-eqz v0, :cond_14

    .line 3692
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    invoke-virtual {p1}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;->reportProviderStatus(ILjava/lang/Object;)V

    goto :goto_1b

    .line 3694
    :cond_14
    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "GnssLocationPrivider_samsung is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    :goto_1b
    return-void
.end method

.method public setCallback(Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    .line 886
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    .line 887
    return-void
.end method
