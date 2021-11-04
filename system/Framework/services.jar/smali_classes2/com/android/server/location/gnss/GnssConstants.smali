.class public Lcom/android/server/location/gnss/GnssConstants;
.super Ljava/lang/Object;
.source "GnssConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssConstants$Vendor;,
        Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;
    }
.end annotation


# static fields
.field public static final AGPS_REF_LOCATION_TYPE_CDMA_CELLID:I = 0x5

.field public static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field public static final AGPS_REF_LOCATION_TYPE_LTE_CELLID:I = 0x4

.field public static final AGPS_REF_LOCATION_TYPE_NR_CELLID:I = 0x8

.field public static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field public static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field public static final AGPS_SUPL_VER_1_0:I = 0x1

.field public static final AGPS_SUPL_VER_2_0:I = 0x2

.field public static final AGPS_SUPL_VER_2_0_1:I = 0x5

.field public static final AGPS_SUPL_VER_2_0_1_AGNSS:I = 0x4

.field public static final AGPS_SUPL_VER_2_0_2:I = 0x6

.field public static final AGPS_SUPL_VER_2_0_2_AGNSS:I = 0x7

.field public static final AGPS_SUPL_VER_2_0_4:I = 0x8

.field public static final AGPS_SUPL_VER_2_0_AGNSS:I = 0x3

.field public static final BARO_CAL_FILE:Ljava/lang/String; = "/efs/FactoryApp/baro_delta"

.field public static final CARD_STATUS_DISABLE:Ljava/lang/String; = "UNKNOWN"

.field public static final CARD_STATUS_EMPTY:Ljava/lang/String; = "ABSENT"

.field public static final CARD_STATUS_ENABLE:Ljava/lang/String; = "READY"

.field public static final CSC_PROPERTIES_DIR:Ljava/lang/String; = "/data/system/gps"

.field public static final CSC_PROPERTIES_FILE:Ljava/lang/String; = "/data/system/gps/cscgps.conf"

.field public static final CTS_RESTRICT_MODE_FILE:Ljava/lang/String; = "/sys/class/sensors/ssc_core/operation_mode"

.field public static final DELETE_AIDING_DATA:I = 0x17

.field static final FLAG_AGPS_UDP_RECEIVED:I = 0x1

.field public static final FLOATING_POINT_EQUALITY_THRESHOLD:D = 1.0E-7

.field public static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field public static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field public static final GPS_CAPABILITY_MSA:I = 0x4

.field public static final GPS_CAPABILITY_MSB:I = 0x2

.field public static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field public static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field public static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field public static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field public static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field public static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field public static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field public static final IMS_REGISTRATION:Ljava/lang/String; = "com.samsung.ims.action.IMS_REGISTRATION"

.field public static final INTENT_AGPS_GET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_GET_PROFILE"

.field public static final INTENT_AGPS_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_PROFILE"

.field public static final INTENT_AGPS_SET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_SET_PROFILE"

.field public static final INTENT_AGPS_UDP_RECEIVED:Ljava/lang/String; = "android.intent.action.AGPS_UDP_RECEIVED"

.field public static final INTENT_ISSUE_TRACKER_ONOFF:Ljava/lang/String; = "com.sec.android.ISSUE_TRACKER_ONOFF"

.field public static final KTT_SIM_OPEATOR:Ljava/lang/String; = "45008"

.field public static final LGU_SIM_OPEATOR:Ljava/lang/String; = "45006"

.field public static final LOCATION_UPDATE_DURATION_MILLIS:J = 0x2710L

.field public static final NAVIGATION_APP_LIST:[Ljava/lang/String;

.field public static final Num_Top_SV:I = 0x5

.field public static final PROPERTIES_FILE_CMCC:Ljava/lang/String; = "/etc/gps_cmcc.conf"

.field public static final SEC_GNSS_CONFIGURATION_UPDATE:I = 0x18

.field public static final SEC_GPS_CONF_DIR:Ljava/lang/String; = "/data/system/gps"

.field public static final SEC_GPS_CONF_FILE:Ljava/lang/String; = "/data/system/gps/secgps.conf"

.field public static final SEC_HARDWARE_FACTOR_FILE:Ljava/lang/String; = "/vendor/etc/gnss/hardware_factors.conf"

.field public static final SIM_SLOT_ID:Ljava/lang/String; = "persist.sys.gps.dds.subId"

.field public static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final SKT_SIM_OPEATOR:Ljava/lang/String; = "45005"

.field public static final USE_SECGPS_CONF:Ljava/lang/String; = "USE_SECGPS_CONF"

.field public static final WAKELOCK_CONTROL:I = 0x14

.field public static final WAKELOCK_THRESHOLD:I = 0x3a98

.field public static final timeDayMillis:J = 0x5265c00L

.field public static final timeHourMillis:J = 0x36ee80L

.field public static final timeMinMillis:J = 0xea60L

.field public static final timeSecMillis:J = 0x3e8L


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 176
    const-string v0, "com.autonavi.minimap"

    const-string v1, "com.baidu.BaiduMap"

    const-string v2, "com.tencent.map"

    const-string v3, "com.baidu.carlife"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants;->NAVIGATION_APP_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
