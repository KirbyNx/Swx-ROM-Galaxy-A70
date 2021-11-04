.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$HealthServiceWrapper;,
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$HealthHalCallback;,
        Lcom/android/server/BatteryService$Led;,
        Lcom/android/server/BatteryService$Shell;,
        Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;,
        Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;,
        Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;,
        Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;,
        Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;,
        Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;,
        Lcom/android/server/BatteryService$LedSettingsObserver;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_MODE_CHANGE:Ljava/lang/String; = "android.samsung.media.action.AUDIO_MODE"

.field public static ACTION_ENTER_DESK_MODE:Ljava/lang/String; = null

.field public static ACTION_EXIT_DESK_MODE:Ljava/lang/String; = null

.field private static final ACTION_FAST_WIRELESS_CHARGING_CONTROL:Ljava/lang/String; = "com.samsung.android.sm.ACTION_FAST_WIRELESS_CHARGING_CONTROL"

.field private static final ACTION_WIRELESS_POWER_SHARING:Ljava/lang/String; = "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

.field private static final ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

.field private static final ASOC_UPDATE_THRESHOLD:I = 0xa

.field private static final BATTERY_HEALTH_OVERHEATLIMIT:I = 0x8

.field private static final BATTERY_LEVEL_CHANGE_THROTTLE_MS:J = 0xea60L

.field static final BATTERY_ONLINE_FAST_WIRELESS_CHARGER:I = 0x64

.field static final BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field static final BATTERY_ONLINE_NONE:I = 0x1

.field static final BATTERY_ONLINE_POGO:I = 0x17

.field static final BATTERY_ONLINE_TA:I = 0x3

.field static final BATTERY_ONLINE_USB:I = 0x4

.field static final BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_SCALE:I = 0x64

.field private static final BATT_HV_WIRELESS_STATUS_0V:I = 0x0

.field private static final BATT_HV_WIRELESS_STATUS_5V:I = 0x1

.field private static final BATT_HV_WIRELESS_STATUS_9V:I = 0x2

.field private static final BATT_SLATE_MODE_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_slate_mode"

.field private static final BATT_SLATE_MODE_PERMISSION:Ljava/lang/String; = "com.sec.permission.OTG_CHARGE_BLOCK"

.field private static final CALL_END:I = 0x0

.field private static final CALL_START:I = 0x2

.field private static final CALL_START_DELEY:I = 0x1f4

.field private static final CALL_VIDEO:I = 0x3

.field private static final DEBUG:Z = false

.field private static final DEFAULT_BATTERY_LIMIT:I = 0x1e

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final ENG_MODE:Z

.field private static final EXTRA_BATT_SLATE_MODE:Ljava/lang/String; = "state"

.field private static final EXTRA_READ:Ljava/lang/String; = "read"

.field public static final EXTRA_VALUE_AUDIO_MODE_CHANGE:Ljava/lang/String; = "android.samsung.media.extra.AUDIO_MODE"

.field private static final EXTRA_WIRELESS_POWER_SHARING_EXTRA:Ljava/lang/String; = "enable"

.field private static final EXTRA_WRITE:Ljava/lang/String; = "write"

.field private static final FEATURE_HICCUP_CONTROL:Z

.field private static final FEATURE_SAVE_BATTERY_CYCLE:Z

.field private static final FEATURE_SUPPORTED_DAILY_BOARD:Z

.field private static final FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

.field private static final FULL_CHARGING_DURATION:J = 0x2932e00L

.field private static final HEALTH_HAL_WAIT_MS:J = 0x3e8L

.field private static final HICCUP_DISABLE:Ljava/lang/String; = "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

.field private static final HICCUP_MISC_EVENT_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_misc_event"

.field private static final HICCUP_POPUP_SHOW:Ljava/lang/String; = "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

.field private static final HICCUP_SUPPORT_SYSFS_PATH:Ljava/lang/String; = "/sys/class/sec/switch/hiccup"

.field private static final INCREASE_CYCLE_COUNT_BATTERY_LIFE_EXTENDER:J = 0x2710L

.field private static final INCREASE_CYCLE_COUNT_ONE_MONTH:J = 0x3cL

.field private static final LED_CHARGING_SETTINGS_URI:Ljava/lang/String; = "led_indicator_charing"

.field private static final LED_LOW_BATTERY_SETTINGS_URI:Ljava/lang/String; = "led_indicator_low_battery"

.field private static final LIGHT_SEC_FLASH_OFF:I = 0x0

.field private static final LLB_ERROR:I = 0x2

.field private static final LLB_NEED_RETRY:I = 0x3

.field private static final LLB_SUCCEED:I = 0x1

.field private static final MAX_BATTERY_LEVELS_QUEUE_SIZE:I = 0x64

.field private static final MINIMUM_INSPECT_INTENT_SYNC_DURATION:I = 0x7d0

.field private static final MSG_CALL_END:I = 0x1

.field private static final MSG_CALL_START:I = 0x0

.field private static final MSG_CALL_VIDEO:I = 0x2

.field static final OPTION_FORCE_UPDATE:I = 0x1

.field private static final OTG_CHARGE_BLOCK_ENABLE_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/otg/online"

.field public static final OTG_CHARGE_BLOCK_PERMISSION:Ljava/lang/String; = "com.sec.permission.OTG_CHARGE_BLOCK"

.field private static final OVERHEAT_INTENT_INTERVAL:I = 0x1d4c0

.field private static final OVERHEAT_INTENT_TEMPERATURE:I = 0x2d

.field private static final OVER_CURRENT_THRESHOLD:I = 0x0

.field private static final PACKAGE_DAILY_BOARD:Ljava/lang/String; = "com.samsung.android.homemode"

.field private static final PACKAGE_DEVICE_CARE:Ljava/lang/String;

.field private static final PATH_ASOC_NOW:Ljava/lang/String; = "/sys/class/power_supply/battery/fg_asoc"

.field private static final PATH_BATTERY_MAX_CURRENT:Ljava/lang/String; = "/efs/FactoryApp/max_current"

.field private static final PATH_BATTERY_MAX_TEMP:Ljava/lang/String; = "/efs/FactoryApp/max_temp"

.field private static final PATH_EFS_ASOC:Ljava/lang/String; = "/efs/FactoryApp/asoc"

.field private static final PATH_LOG_BATTERY_USAGE:Ljava/lang/String; = "/efs/FactoryApp/batt_discharge_level"

.field private static final PATH_SYSFS_BATTERY_CYCLE:Ljava/lang/String; = "/sys/class/power_supply/battery/battery_cycle"

.field private static final PERMISSION_FAST_WIRELESS_CHARGING_CONTROL:Ljava/lang/String; = "com.samsung.android.permission.FAST_WIRELESS_CHARGING_CONTROL"

.field private static final PERMISSION_WIRELESS_POWER_SHARING:Ljava/lang/String; = "com.samsung.android.permission.wirelesspowersharing"

.field private static final POGO_NONE:I = 0x0

.field private static final POGO_ONLY:I = 0x1

.field private static final POGO_WITH_OTHERS:I = 0x2

.field private static final PRODUCT_DEV:I = 0x0

.field private static final PROPERTY_WIRELESS_FAST_CHARGING:Ljava/lang/String; = "persist.service.battery.wfc"

.field private static final REQUEST_BATT_SLATE_MODE_CHANGE:Ljava/lang/String; = "com.sec.intent.action.BATT_SLATE_MODE_CHANGE"

.field public static final REQUEST_OTG_CHARGE_BLOCK:Ljava/lang/String; = "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

.field public static final RESPONSE_OTG_CHARGE_BLOCK:Ljava/lang/String; = "android.intent.action.RESPONSE_OTG_CHARGE_BLOCK"

.field private static final SETTING_PROTECT_BATTERY:Ljava/lang/String; = "protect_battery"

.field private static final SETTING_SHOW_WIRELESS_CHARGER_MENU:Ljava/lang/String; = "show_wireless_charger_menu"

.field private static final SETTING_SUPER_FAST_CHARGING:Ljava/lang/String; = "super_fast_charging"

.field private static final SETTING_TX_BATTERY_LIMIT:Ljava/lang/String; = "tx_battery_limit"

.field private static final SETTING_WC_PARAM:Ljava/lang/String; = "wireless_wc_write"

.field private static final SETTING_WIRELESS_FAST_CHARGING:Ljava/lang/String; = "wireless_fast_charging"

.field private static final SHIP_BUILD:Z

.field private static final SMART_SWITCH_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field private static final SUPER_FAST_CHARGING_DISABLE_SYSFS_PATHS:Ljava/lang/String; = "/sys/class/power_supply/battery/pd_disable"

.field private static final SYSFS_BATT_HV_WIRELESS_PAD_CTRL:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_BATTERY_INFO:Ljava/lang/String; = "!@[BatteryInfo] "

.field private static final TAG_LLB:Ljava/lang/String; = "[LLB] "

.field private static final USE_FAKE_BATTERY:Z

.field private static final VZW_DEVICE_QUALITY_STATICS_INTENT:Ljava/lang/String; = "com.sec.android.statistics.VZW_QUALITY_STATISTICS"

.field private static final WC_PARAM_INFO_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/wc_param_info"

.field private static final WEEKLY_DIFF_EFS_PATH:Ljava/lang/String; = "/efs/FactoryApp/batt_after_manufactured"

.field private static final WEEKLY_DIFF_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_after_manufactured"

.field private static final WIRELESS_ENABLE_SYSFS_PATH_FOR_EPEN:Ljava/lang/String; = "/sys/class/sec/sec_epen/epen_wcharging_mode"

.field private static final WIRELESS_ENABLE_SYSFS_PATH_FOR_MUIC:Ljava/lang/String; = "/sys/class/sec/switch/wireless"

.field private static final WIRELESS_ENABLE_SYSFS_PATH_FOR_TSP:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final WIRELESS_ENABLE_SYSFS_VALUE_BACKPACK_FOR_TSP:Ljava/lang/String; = "set_wirelesscharger_mode,3"

.field private static final WIRELESS_ENABLE_SYSFS_VALUE_CHARGER_FOR_TSP:Ljava/lang/String; = "set_wirelesscharger_mode,1"

.field private static final WIRELESS_ENABLE_SYSFS_VALUE_NONE_FOR_TSP:Ljava/lang/String; = "set_wirelesscharger_mode,0"

.field private static final WIRELESS_POWER_SHARING_SYSFS_EXTERNEL_EVENT_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/ext_event"

.field private static final WIRELESS_POWER_SHARING_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/wc_tx_en"

.field private static final WIRELESS_POWER_SHARING_SYSFS_TX_BATTERY_LIMIT:Ljava/lang/String; = "/sys/class/power_supply/battery/wc_tx_stop_capacity"

.field private static mLongBatteryRetryCnt:I


# instance fields
.field final ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

.field private final HEALTH_INSTANCE_VENDOR:Ljava/lang/String;

.field final SSRM_PERMISSION:Ljava/lang/String;

.field private isVideoCall:Z

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mActivityManagerReady:Z

.field private final mAdaptiveFastChargingOffset:I

.field private mAdaptiveFastChargingSettingsEnable:Z

.field private mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

.field private mAfcDisableSysFs:Ljava/lang/String;

.field private mAudioModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mBattSlateModeControlReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryCapacity:I

.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryMaxCurrent:J

.field private mBatteryMaxTemp:J

.field private mBatteryOverHeatIntentBroadcastTime:J

.field private mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/BatteryService$BinderService;

.field private mBootCompleted:Z

.field private mCallHandler:Landroid/os/Handler;

.field private mCallHandlerThread:Landroid/os/HandlerThread;

.field private mChargeStartLevel:I

.field private mChargeStartTime:J

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field mCurrentCalendar:Ljava/util/Calendar;

.field private mDexReceiver:Landroid/content/BroadcastReceiver;

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private mEnableIqi:Z

.field private mFastWirelessAutoModeReceiver:Landroid/content/BroadcastReceiver;

.field private mFullChargingOnDockStartTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

.field private mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

.field private mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

.field private mHealthInfo2p0:Landroid/hardware/health/V2_0/HealthInfo;

.field private mHealthInfo2p1:Landroid/hardware/health/V2_1/HealthInfo;

.field private mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

.field private mHiccupControlReceiver:Landroid/content/BroadcastReceiver;

.field private mIncreasingCycleCnt:J

.field final mIntentCheckCooldownLevel:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInvalidCharger:I

.field private mIsFirstIntentSended:Z

.field private mIsHiccupPopupShowing:Z

.field private mIsWirelessTxSupported:Z

.field private mLastBatteryChargeType:I

.field private mLastBatteryCurrentEvent:I

.field private mLastBatteryCurrentNow:I

.field private mLastBatteryEvent:I

.field private mLastBatteryEventWaterInConnector:Z

.field private mLastBatteryHealth:I

.field private mLastBatteryHighVoltageCharger:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelChangedSentMs:J

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryOnline:I

.field private mLastBatteryPowerSharingOnline:Z

.field private mLastBatteryPresent:Z

.field private mLastBatterySecTxShareEvent:I

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastDeterioration:I

.field private final mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

.field private mLastInvalidCharger:I

.field private mLastMaxChargingCurrent:I

.field private mLastMaxChargingVoltage:I

.field private mLastPlugType:I

.field private mLastSavedBatteryLevel:J

.field private mLastSecPlugTypeSummary:I

.field private mLastTxEventRxConnected:Z

.field private mLastTxEventTxEnabled:Z

.field private mLastWirelessBackPackChargingStatus:Z

.field private mLastWirelessChargingStatus:Z

.field private mLastWirelessPinDetected:Z

.field private mLastWirelessPowerSharingExternelEvent:I

.field private mLastWirelessPowerSharingTxEvent:I

.field private mLastchargerPogoOnline:Z

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private mLedChargingSettingsEnable:Z

.field private mLedLowBatterySettingsEnable:Z

.field private mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

.field private mLifeExtender:Z

.field private mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

.field private final mLock:Ljava/lang/Object;

.field private final mLockBatteryInfoBackUp:Ljava/lang/Object;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field mManufactureDate:Ljava/lang/String;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNotifyWirelessEnabled:Z

.field private mPlugType:I

.field private mPogoDockIntent:I

.field private mRequestOtgChargeBlockReceiver:Landroid/content/BroadcastReceiver;

.field mRfCalDate:Ljava/lang/String;

.field private final mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

.field private final mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

.field private final mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

.field private mSavedBatteryAsoc:J

.field private mSavedBatteryMaxCurrent:J

.field private mSavedBatteryMaxTemp:J

.field private mSavedBatteryUsage:J

.field private mSavedDiffWeek:I

.field private mScreenOn:Z

.field private mSecPlugTypeSummary:I

.field private mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

.field private mSentBatteryMalfunctionBroadcast:Z

.field private mSentLowBatteryBroadcast:Z

.field private mSequence:I

.field private mShutdownBatteryTemperature:I

.field private final mSuperFastChargingOffset:I

.field private mSuperFastChargingSettingsEnable:Z

.field private mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private mTxBatteryLimit:I

.field private mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

.field private final mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

.field private final mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;

.field private final mUpdateBatteryUsageOnDockRunnable:Ljava/lang/Runnable;

.field private mUpdatesStopped:Z

.field private mUpsmOn:Z

.field private mWasUsedWirelessFastChargerPreviously:Z

.field private mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

.field private final mWcParamOffset:I

.field private final mWirelessFastChargingOffset:I

.field private mWirelessFastChargingSettingsEnable:Z

.field private mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

.field private mWirelessPowerSharingReceiver:Landroid/content/BroadcastReceiver;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 212
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 233
    const-string v0, "--checkin"

    const-string v1, "--unplugged"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    .line 244
    const-string v0, "/sys/class/sec/switch/afc_disable"

    const-string/jumbo v1, "sys/class/sec/afc/afc_disable"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

    .line 285
    const-string v0, "/sys/class/sec/switch/hiccup"

    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    .line 306
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    .line 317
    const-string v0, "android.app.action.ENTER_KNOX_DESKTOP_MODE"

    sput-object v0, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    .line 318
    const-string v0, "android.app.action.EXIT_KNOX_DESKTOP_MODE"

    sput-object v0, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    .line 405
    const-string/jumbo v0, "ro.product_ship"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->SHIP_BUILD:Z

    .line 406
    const-string/jumbo v0, "ro.build.type"

    const-string v1, "Default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->ENG_MODE:Z

    .line 476
    nop

    .line 477
    const-string v0, "/sys/class/power_supply/battery/battery_cycle"

    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    .line 491
    nop

    .line 492
    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "signumlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->USE_FAKE_BATTERY:Z

    .line 512
    const/4 v0, 0x0

    sput v0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    .line 534
    invoke-static {}, Lcom/android/server/BatteryService;->isSupportedDailyBoard()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    .line 1599
    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    .line 334
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 355
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 356
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    .line 359
    new-instance v1, Landroid/hardware/health/V1_0/HealthInfo;

    invoke-direct {v1}, Landroid/hardware/health/V1_0/HealthInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    .line 375
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/BatteryService;->mSequence:I

    .line 385
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 389
    iput v2, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 409
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 422
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 423
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    .line 425
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 426
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 427
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mUpsmOn:Z

    .line 430
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 435
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 446
    iput v0, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    .line 452
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    .line 455
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    .line 456
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    .line 461
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    .line 464
    const v3, 0x445c0

    iput v3, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    .line 466
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    .line 480
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 481
    iput-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 482
    iput-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    .line 483
    iput-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    .line 486
    iput-wide v3, p0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    .line 487
    iput-wide v3, p0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    .line 488
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    .line 499
    iput-wide v5, p0, Lcom/android/server/BatteryService;->mBatteryOverHeatIntentBroadcastTime:J

    .line 513
    iput v2, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    .line 522
    iput-wide v3, p0, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    .line 523
    iput-wide v3, p0, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    .line 529
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 539
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 543
    iput v0, p0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    .line 544
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    .line 549
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    .line 550
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 554
    const-string v3, "com.samsung.CHECK_COOLDOWN_LEVEL"

    iput-object v3, p0, Lcom/android/server/BatteryService;->ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

    .line 555
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/BatteryService;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    .line 556
    const-string v3, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    iput-object v3, p0, Lcom/android/server/BatteryService;->SSRM_PERMISSION:Ljava/lang/String;

    .line 563
    const-string v3, "default"

    iput-object v3, p0, Lcom/android/server/BatteryService;->HEALTH_INSTANCE_VENDOR:Ljava/lang/String;

    .line 571
    new-instance v3, Lcom/android/server/BatteryService$1;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 635
    new-instance v3, Lcom/android/server/BatteryService$2;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mBattSlateModeControlReceiver:Landroid/content/BroadcastReceiver;

    .line 647
    new-instance v3, Lcom/android/server/BatteryService$3;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mRequestOtgChargeBlockReceiver:Landroid/content/BroadcastReceiver;

    .line 669
    new-instance v3, Lcom/android/server/BatteryService$4;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mHiccupControlReceiver:Landroid/content/BroadcastReceiver;

    .line 699
    new-instance v3, Lcom/android/server/BatteryService$5;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mWirelessPowerSharingReceiver:Landroid/content/BroadcastReceiver;

    .line 721
    new-instance v3, Lcom/android/server/BatteryService$6;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mDexReceiver:Landroid/content/BroadcastReceiver;

    .line 795
    new-instance v3, Lcom/android/server/BatteryService$8;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mAudioModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 826
    new-instance v3, Lcom/android/server/BatteryService$9;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mFastWirelessAutoModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1602
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 1603
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 3151
    new-instance v3, Lcom/android/server/BatteryService$35;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$35;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    .line 3195
    new-instance v3, Lcom/android/server/BatteryService$36;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$36;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

    .line 3224
    new-instance v3, Lcom/android/server/BatteryService$37;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$37;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

    .line 3261
    new-instance v3, Lcom/android/server/BatteryService$38;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$38;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    .line 3282
    new-instance v3, Lcom/android/server/BatteryService$39;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$39;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageOnDockRunnable:Ljava/lang/Runnable;

    .line 3313
    new-instance v3, Lcom/android/server/BatteryService$40;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$40;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;

    .line 1027
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 1028
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 1029
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 1030
    new-instance v3, Lcom/android/server/BatteryService$Led;

    const-class v4, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v4}, Lcom/android/server/BatteryService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/lights/LightsManager;

    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 1031
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1032
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    iput-object v3, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1034
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 1036
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0097

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 1038
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 1040
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 1043
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 1044
    new-instance v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v3}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1047
    new-instance v3, Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$LedSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    .line 1049
    new-instance v3, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    .line 1052
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    if-eqz v3, :cond_178

    .line 1053
    new-instance v3, Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;

    .line 1058
    :cond_178
    new-instance v3, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    .line 1062
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    if-eqz v3, :cond_18a

    .line 1063
    new-instance v3, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    .line 1068
    :cond_18a
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v3, :cond_195

    .line 1069
    new-instance v3, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    .line 1073
    :cond_195
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1074
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1075
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1076
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1078
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1080
    invoke-direct {p0}, Lcom/android/server/BatteryService;->InitBatteryInfo()V

    .line 1081
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1083
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1085
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v4

    .line 1086
    const-string v4, "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1087
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mRequestOtgChargeBlockReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    const-string v7, "com.sec.permission.OTG_CHARGE_BLOCK"

    invoke-virtual {v4, v5, v3, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1091
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v4

    .line 1092
    const-string v4, "com.sec.intent.action.BATT_SLATE_MODE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1093
    iget-object v5, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/BatteryService;->mBattSlateModeControlReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const-string v9, "com.sec.permission.OTG_CHARGE_BLOCK"

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1098
    sget-boolean v4, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v4, :cond_207

    .line 1099
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v4

    .line 1100
    const-string v4, "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1101
    const-string v4, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1102
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHiccupControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1107
    :cond_207
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v4, :cond_223

    .line 1108
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v4

    .line 1109
    const-string v4, "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1110
    iget-object v5, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/BatteryService;->mWirelessPowerSharingReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const-string v9, "com.samsung.android.permission.wirelesspowersharing"

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1123
    :cond_223
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    if-eqz v4, :cond_24c

    .line 1124
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v4

    .line 1125
    const-string v4, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1126
    iget-object v5, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/BatteryService;->mAudioModeChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1127
    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/server/BatteryService;->tm:Landroid/telephony/TelephonyManager;

    .line 1128
    invoke-direct {p0}, Lcom/android/server/BatteryService;->startCallThread()V

    .line 1133
    :cond_24c
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE:Z

    if-eqz v4, :cond_268

    .line 1134
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v4

    .line 1135
    const-string v4, "com.samsung.android.sm.ACTION_FAST_WIRELESS_CHARGING_CONTROL"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1136
    iget-object v5, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/BatteryService;->mFastWirelessAutoModeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const-string v9, "com.samsung.android.permission.FAST_WIRELESS_CHARGING_CONTROL"

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1142
    :cond_268
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_27f

    .line 1143
    new-instance v4, Lcom/android/server/BatteryService$10;

    invoke-direct {v4, p0}, Lcom/android/server/BatteryService$10;-><init>(Lcom/android/server/BatteryService;)V

    .line 1154
    .local v4, "invalidChargerObserver":Landroid/os/UEventObserver;
    const-string v5, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 1159
    .end local v4    # "invalidChargerObserver":Landroid/os/UEventObserver;
    :cond_27f
    new-instance v4, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v4, p0, Lcom/android/server/BatteryService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 1164
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1166
    .local v4, "pkgMgr":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_298

    const-string v5, "att.devicehealth.support"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_298

    .line 1167
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 1172
    :cond_298
    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    if-eqz v5, :cond_2c9

    .line 1173
    sget-object v5, Lcom/android/server/BatteryService;->ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2ab

    .line 1174
    sget-object v5, Lcom/android/server/BatteryService;->ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

    aget-object v0, v5, v0

    goto :goto_2af

    :cond_2ab
    sget-object v0, Lcom/android/server/BatteryService;->ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

    aget-object v0, v0, v1

    :goto_2af
    iput-object v0, p0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    .line 1175
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@ mAfcDisableSysFs : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_2c9
    const-string/jumbo v0, "ro.boot.cm.param.offset"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingOffset:I

    .line 1181
    if-eq v0, v2, :cond_2d6

    add-int/2addr v0, v1

    goto :goto_2d7

    :cond_2d6
    move v0, v2

    :goto_2d7
    iput v0, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingOffset:I

    .line 1182
    const-string/jumbo v0, "ro.boot.pd.param.offset"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mSuperFastChargingOffset:I

    .line 1184
    const-string/jumbo v0, "ro.boot.wc.param.offset"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    .line 1185
    const-string v0, "/sys/class/power_supply/battery/wc_param_info"

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1186
    .local v0, "wcParamInfo":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    if-eq v1, v2, :cond_2fe

    if-eqz v0, :cond_2fe

    .line 1187
    new-instance v1, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    .line 1190
    :cond_2fe
    return-void
.end method

.method private InitBatteryInfo()V
    .registers 3

    .line 3114
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$34;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$34;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3139
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;I)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .line 211
    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendOTGIntentLocked()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/BatteryService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/BatteryService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->setCallWirelessPowerSharingExternelEvent(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-object v0, p0, Lcom/android/server/BatteryService;->mCallHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/BatteryService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-object v0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget v0, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/BatteryService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .line 211
    iput p1, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/BatteryService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->setWirelessPowerSharingTxBatteryLimit(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/BatteryService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget v0, p0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/BatteryService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->setWcParamInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/BatteryService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .line 211
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/BatteryService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$3600()I
    .registers 1

    .line 211
    sget v0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    return v0
.end method

.method static synthetic access$3608()I
    .registers 2

    .line 211
    sget v0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    invoke-direct {p0}, Lcom/android/server/BatteryService;->checkLongLifeBatteryInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/BatteryService;)Landroid/app/ActivityManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000()Ljava/lang/String;
    .registers 1

    .line 211
    sget-object v0, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;

    .line 211
    invoke-static {p0, p1, p2}, Lcom/android/server/BatteryService;->sendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200()Z
    .registers 1

    .line 211
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget v0, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/BatteryService;)Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/BatteryService;)Lcom/android/internal/app/IBatteryStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-wide v0
.end method

.method static synthetic access$4902(Lcom/android/server/BatteryService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .line 211
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-wide p1
.end method

.method static synthetic access$4922(Lcom/android/server/BatteryService;J)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .line 211
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    invoke-direct {p0}, Lcom/android/server/BatteryService;->readBatteryAsocFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/BatteryService;Ljava/lang/String;J)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    return-wide v0
.end method

.method static synthetic access$5202(Lcom/android/server/BatteryService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .line 211
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    return-wide p1
.end method

.method static synthetic access$5300(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    invoke-direct {p0}, Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5400()Z
    .registers 1

    .line 211
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    return-wide v0
.end method

.method static synthetic access$5502(Lcom/android/server/BatteryService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .line 211
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    return-wide p1
.end method

.method static synthetic access$5600(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    invoke-direct {p0}, Lcom/android/server/BatteryService;->readBatteryMaxCurrentFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5700(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    return-wide v0
.end method

.method static synthetic access$5702(Lcom/android/server/BatteryService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .line 211
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    return-wide p1
.end method

.method static synthetic access$5800(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    invoke-direct {p0}, Lcom/android/server/BatteryService;->readBatteryMaxTempFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5900(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    return-wide v0
.end method

.method static synthetic access$6102(Lcom/android/server/BatteryService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .line 211
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    return-wide p1
.end method

.method static synthetic access$6200(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    return-wide v0
.end method

.method static synthetic access$6300(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    return-wide v0
.end method

.method static synthetic access$6400(Lcom/android/server/BatteryService;Ljava/lang/String;)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$6500(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    return-wide v0
.end method

.method static synthetic access$6502(Lcom/android/server/BatteryService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .line 211
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    return-wide p1
.end method

.method static synthetic access$6508(Lcom/android/server/BatteryService;)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    return-wide v0
.end method

.method static synthetic access$6600(Lcom/android/server/BatteryService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    invoke-direct {p0}, Lcom/android/server/BatteryService;->setFullChargingOnDockStartTime()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/BatteryService;Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)V

    return-void
.end method

.method static synthetic access$6900(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 211
    invoke-static {p0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    return v0
.end method

.method static synthetic access$7000()V
    .registers 0

    .line 211
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/BatteryService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method static synthetic access$7600(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return v0
.end method

.method static synthetic access$7700(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .line 211
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 211
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkLongLifeBattery()V
    .registers 6

    .line 1313
    const-string v0, "[LLB] "

    const-string v1, "/efs/FactoryApp/batt_after_manufactured"

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1315
    .local v1, "weeklyDiff":Ljava/lang/String;
    if-eqz v1, :cond_52

    :try_start_a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_52

    .line 1316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ Write weeklyDiff EFS ->  Sys : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const-string v2, "/sys/class/power_supply/battery/batt_after_manufactured"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1318
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_33} :catch_34

    goto :goto_52

    .line 1320
    :catch_34
    move-exception v2

    .line 1321
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@ can not change. value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return-void

    .line 1323
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_52
    :goto_52
    nop

    .line 1325
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$14;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$14;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1349
    return-void
.end method

.method private checkLongLifeBatteryInternal()I
    .registers 14

    .line 1355
    const-string/jumbo v0, "ril.rfcal_date"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1356
    .local v0, "rfcal_date_origin":Ljava/lang/String;
    const-string/jumbo v1, "ril.manufacturedate"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 1358
    if-eqz v0, :cond_1c

    .line 1359
    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 1361
    :cond_1c
    iget-object v1, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/16 v5, 0x8

    const/4 v6, 0x4

    const-string v7, "[LLB] "

    if-eqz v1, :cond_57

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_57

    .line 1362
    iget-object v1, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1363
    .local v1, "standard_year":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1364
    .local v2, "standard_month":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v8, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1365
    .local v3, "standard_day":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@ rfcal_date "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 1366
    .end local v1    # "standard_year":Ljava/lang/String;
    .end local v2    # "standard_month":Ljava/lang/String;
    .end local v3    # "standard_day":Ljava/lang/String;
    :cond_57
    iget-object v1, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    if-eqz v1, :cond_105

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_105

    .line 1367
    iget-object v1, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1368
    .restart local v1    # "standard_year":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1369
    .restart local v2    # "standard_month":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v8, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1370
    .restart local v3    # "standard_day":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@ manufacture_date "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :goto_89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 1377
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v5, v8, v9, v10}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 1379
    .local v5, "standard_Calendar":Ljava/util/Calendar;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_a7

    return v4

    .line 1381
    :cond_a7
    iget-object v8, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int/2addr v8, v10

    .line 1382
    .local v8, "diff_Year":I
    const/4 v10, 0x0

    .line 1383
    .local v10, "diff_Week":I
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v11

    sub-int/2addr v11, v6

    .line 1384
    .local v11, "standardWeek":I
    iget-object v6, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1386
    .local v4, "currentWeek":I
    const/4 v6, 0x2

    if-nez v8, :cond_e1

    .line 1387
    sub-int v10, v4, v11

    .line 1388
    if-lez v10, :cond_db

    .line 1389
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!@ same year diff_Week= "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f2

    .line 1391
    :cond_db
    const-string v9, "!@ same year but error month!!!"

    invoke-static {v7, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    return v6

    .line 1394
    :cond_e1
    if-gez v8, :cond_e9

    .line 1395
    const-string v9, "!@ error year"

    invoke-static {v7, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    return v6

    .line 1398
    :cond_e9
    add-int/lit8 v6, v8, -0x1

    mul-int/lit8 v6, v6, 0x34

    rsub-int/lit8 v7, v11, 0x34

    add-int/2addr v6, v7

    add-int v10, v6, v4

    .line 1402
    :goto_f2
    const-string v6, "/efs/FactoryApp/batt_after_manufactured"

    invoke-direct {p0, v6, v10}, Lcom/android/server/BatteryService;->checkWeeklyDiffIsValid(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_104

    .line 1403
    const-string v7, "/sys/class/power_supply/battery/batt_after_manufactured"

    invoke-static {v7, v10}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1404
    invoke-static {v6, v10}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1405
    iput v10, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    .line 1407
    :cond_104
    return v9

    .line 1372
    .end local v1    # "standard_year":Ljava/lang/String;
    .end local v2    # "standard_month":Ljava/lang/String;
    .end local v3    # "standard_day":Ljava/lang/String;
    .end local v4    # "currentWeek":I
    .end local v5    # "standard_Calendar":Ljava/util/Calendar;
    .end local v8    # "diff_Year":I
    .end local v10    # "diff_Week":I
    .end local v11    # "standardWeek":I
    :cond_105
    const-string v1, "!@ mRfCalDate is null!!! manufacture_date is also null!!!  we can not check weekly diff"

    invoke-static {v7, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    return v4
.end method

.method private checkWeeklyDiffIsValid(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "diff_Week"    # I

    .line 1411
    const/4 v0, 0x0

    const-string v1, "[LLB] "

    if-nez p1, :cond_1a

    .line 1412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " path string is nul"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    return v0

    .line 1416
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1417
    .local v2, "strData":Ljava/lang/String;
    const/4 v3, -0x1

    .line 1418
    .local v3, "ret":I
    if-nez v2, :cond_37

    .line 1419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is null, It looks first time, just make it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const/4 v1, 0x0

    .end local v3    # "ret":I
    .local v1, "ret":I
    goto :goto_7d

    .line 1423
    .end local v1    # "ret":I
    .restart local v3    # "ret":I
    :cond_37
    :try_start_37
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 1424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EFS values: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Diff_week: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_58} :catch_5a

    .line 1427
    move v1, v3

    goto :goto_7d

    .line 1425
    :catch_5a
    move-exception v4

    .line 1426
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@[BatteryInfo] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : data is \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1429
    .end local v3    # "ret":I
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "ret":I
    :goto_7d
    if-ge v1, p2, :cond_80

    const/4 v0, 0x1

    :cond_80
    return v0
.end method

.method private static copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V
    .registers 3
    .param p0, "dst"    # Landroid/hardware/health/V1_0/HealthInfo;
    .param p1, "src"    # Landroid/hardware/health/V1_0/HealthInfo;

    .line 1841
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 1842
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 1843
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 1844
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 1845
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 1846
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 1847
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 1848
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 1849
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 1850
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 1851
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 1852
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 1853
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 1854
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 1855
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 1856
    iget-object v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 1857
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3434
    const-string v0, "Battery service (battery) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3435
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3436
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3437
    const-string v0, "  set [-f] [ac|usb|wireless|status|level|temp|present|invalid] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3438
    const-string v0, "    Force a battery property value, freezing battery state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3439
    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3440
    const-string v1, "  unplug [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3441
    const-string v1, "    Force battery unplugged, freezing battery state."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3442
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3443
    const-string v1, "  reset [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3444
    const-string v1, "    Unfreeze battery state, returning to current hardware values."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3445
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3446
    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3582
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3583
    const/4 v1, 0x0

    if-eqz p3, :cond_2b

    :try_start_6
    array-length v2, p3

    if-eqz v2, :cond_2b

    const-string v2, "-a"

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_2b

    .line 3649
    :cond_14
    new-instance v3, Lcom/android/server/BatteryService$Shell;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 3650
    .local v3, "shell":Lcom/android/server/BatteryService$Shell;
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    new-instance v10, Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v6, p1

    move-object v8, p3

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/BatteryService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_3a1

    .line 3584
    .end local v3    # "shell":Lcom/android/server/BatteryService$Shell;
    :cond_2b
    :goto_2b
    const-string v2, "Current Battery Service state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3585
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v2, :cond_39

    .line 3586
    const-string v2, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3588
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  AC powered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  USB powered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Wireless powered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Max charging current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Max charging voltage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Charge counter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  health: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  present: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3598
    const-string v2, "  scale: 100"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  voltage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  temperature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  technology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  batteryMiscEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  batteryCurrentEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mSecPlugTypeSummary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  LED Charging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  LED Low Battery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3609
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_208

    .line 3610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  current now: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v4, v4, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3612
    :cond_208
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    if-eq v2, v3, :cond_226

    .line 3613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  charge counter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3616
    :cond_226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Adaptive Fast Charging Settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Super Fast Charging Settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USE_FAKE_BATTERY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/BatteryService;->USE_FAKE_BATTERY:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FEATURE_WIRELESS_FAST_CHARGER_CONTROL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mWasUsedWirelessFastChargerPreviously: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mWirelessFastChargingSettingsEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LLB CAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LLB MAN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3629
    iget-object v2, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    if-eqz v2, :cond_32a

    .line 3630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LLB CURRENT: YEAR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    .line 3631
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    .line 3632
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3630
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LLB DIFF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3637
    :cond_32a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FEATURE_HICCUP_CONTROL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FEATURE_SUPPORTED_DAILY_BOARD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEC_FEATURE_USE_WIRELESS_POWER_SHARING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEC_FEATURE_BATTERY_LIFE_EXTENDER: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3643
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    if-eqz v2, :cond_3a1

    .line 3644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-virtual {v3}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3652
    :cond_3a1
    :goto_3a1
    monitor-exit v0
    :try_end_3a2
    .catchall {:try_start_6 .. :try_end_3a2} :catchall_442

    .line 3655
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    monitor-enter v2

    .line 3656
    if-eqz p3, :cond_3b4

    :try_start_3a7
    array-length v0, p3

    if-eqz v0, :cond_3b4

    const-string v0, "-a"

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43d

    .line 3657
    :cond_3b4
    const-string v0, "BatteryInfoBackUp"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSavedBatteryAsoc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSavedBatteryMaxTemp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSavedBatteryMaxCurrent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSavedBatteryUsage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  FEATURE_SAVE_BATTERY_CYCLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SEC_FEATURE_PREVENT_SWELLING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3668
    :cond_43d
    monitor-exit v2

    .line 3670
    return-void

    .line 3668
    :catchall_43f
    move-exception v0

    monitor-exit v2
    :try_end_441
    .catchall {:try_start_3a7 .. :try_end_441} :catchall_43f

    throw v0

    .line 3652
    :catchall_442
    move-exception v1

    :try_start_443
    monitor-exit v0
    :try_end_444
    .catchall {:try_start_443 .. :try_end_444} :catchall_442

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 3673
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3675
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3676
    const-wide v2, 0x10800000001L

    :try_start_d
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3677
    const/4 v2, 0x0

    .line 3678
    .local v2, "batteryPluggedValue":I
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v3, :cond_1b

    .line 3679
    const/4 v2, 0x1

    goto :goto_2a

    .line 3680
    :cond_1b
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v3, :cond_23

    .line 3681
    const/4 v2, 0x2

    goto :goto_2a

    .line 3682
    :cond_23
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v3, :cond_2a

    .line 3683
    const/4 v2, 0x4

    .line 3685
    :cond_2a
    :goto_2a
    const-wide v3, 0x10e00000002L

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3686
    const-wide v3, 0x10500000003L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3687
    const-wide v3, 0x10500000004L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3688
    const-wide v3, 0x10500000005L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3689
    const-wide v3, 0x10e00000006L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3690
    const-wide v3, 0x10e00000007L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3691
    const-wide v3, 0x10800000008L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3692
    const-wide v3, 0x10500000009L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3693
    const-wide v3, 0x1050000000aL

    const/16 v5, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3694
    const-wide v3, 0x1050000000bL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3695
    const-wide v3, 0x1050000000cL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3696
    const-wide v3, 0x1090000000dL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3697
    .end local v2    # "batteryPluggedValue":I
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_d .. :try_end_b5} :catchall_b9

    .line 3698
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3699
    return-void

    .line 3697
    :catchall_b9
    move-exception v2

    :try_start_ba
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    throw v2
.end method

.method private static fileWriteInt(Ljava/lang/String;I)V
    .registers 6
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 3047
    const/4 v0, 0x0

    .line 3048
    .local v0, "out":Ljava/io/FileOutputStream;
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileWriteInt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    :try_start_1f
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_29} :catch_47
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_3a

    move-object v0, v1

    .line 3054
    nop

    .line 3055
    :try_start_2b
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 3056
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_39} :catch_3a

    .line 3064
    goto :goto_46

    .line 3057
    :catch_3a
    move-exception v1

    .line 3058
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 3060
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    .line 3063
    goto :goto_46

    .line 3061
    :catch_42
    move-exception v2

    .line 3062
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3065
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    :goto_46
    return-void

    .line 3052
    :catch_47
    move-exception v1

    .line 3053
    .local v1, "e":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2983
    const/4 v0, 0x0

    .line 2984
    .local v0, "out":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "fileWriteString : file not found"

    const/4 v3, 0x0

    if-nez v1, :cond_15

    .line 2985
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    return v3

    .line 2989
    :cond_15
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileWriteString : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    :try_start_33
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_3d} :catch_4d
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3d} :catch_4b

    move-object v0, v1

    .line 2997
    nop

    .line 2999
    :try_start_3f
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 3000
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 3001
    const/4 v1, 0x1

    return v1

    .line 3002
    :catch_4b
    move-exception v1

    goto :goto_54

    .line 2994
    :catch_4d
    move-exception v1

    .line 2995
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_53} :catch_4b

    .line 2996
    return v3

    .line 3003
    .local v1, "e":Ljava/io/IOException;
    :goto_54
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 3005
    :try_start_57
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 3008
    goto :goto_5f

    .line 3006
    :catch_5b
    move-exception v2

    .line 3007
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3010
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    :goto_5f
    return v3
.end method

.method private getIconLocked(I)I
    .registers 6
    .param p1, "level"    # I

    .line 2835
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const v1, 0x1080a17

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    .line 2836
    return v1

    .line 2837
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x3

    const v3, 0x1080a09

    if-ne v0, v2, :cond_16

    .line 2838
    return v3

    .line 2839
    :cond_16
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_29

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_25

    goto :goto_29

    .line 2848
    :cond_25
    const v0, 0x1080a25

    return v0

    .line 2841
    :cond_29
    :goto_29
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_39

    .line 2843
    return v1

    .line 2845
    :cond_39
    return v3
.end method

.method private static isFileSupported(Ljava/lang/String;)Z
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .line 3102
    const/4 v0, 0x1

    .line 3104
    .local v0, "ret":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3105
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    .line 3106
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    const/4 v0, 0x0

    .line 3110
    :cond_23
    return v0
.end method

.method private isPoweredLocked(I)Z
    .registers 4
    .param p1, "plugTypeSet"    # I

    .line 1557
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 1558
    return v1

    .line 1560
    :cond_8
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_13

    .line 1561
    return v1

    .line 1563
    :cond_13
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_1e

    .line 1564
    return v1

    .line 1566
    :cond_1e
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_29

    .line 1567
    return v1

    .line 1571
    :cond_29
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz v0, :cond_34

    .line 1572
    return v1

    .line 1576
    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method private static isSupportedDailyBoard()Z
    .registers 7

    .line 3079
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DAILYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3080
    .local v0, "rawSupportedFeatures":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 3081
    return v1

    .line 3084
    :cond_e
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3086
    .local v2, "supportedFeatures":[Ljava/lang/String;
    if-nez v2, :cond_17

    .line 3087
    return v1

    .line 3090
    :cond_17
    array-length v3, v2

    move v4, v1

    :goto_19
    if-ge v4, v3, :cond_2a

    aget-object v5, v2, v4

    .line 3091
    .local v5, "supportedFeature":Ljava/lang/String;
    const-string v6, "TA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 3092
    const/4 v1, 0x1

    return v1

    .line 3090
    .end local v5    # "supportedFeature":Ljava/lang/String;
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 3096
    :cond_2a
    return v1
.end method

.method public static synthetic lambda$D1kwd7L7yyqN5niz3KWkTepVmUk(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendEnqueuedBatteryLevelChangedEvents()V

    return-void
.end method

.method static synthetic lambda$sendBatteryChangedIntentLocked$0(Landroid/content/Intent;)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 2519
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private logBatteryStatsLocked()V
    .registers 10

    .line 2757
    const-string v0, "failed to close dumpsys output stream"

    const-string v1, "failed to delete temporary dumpsys file: "

    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2758
    .local v2, "batteryInfoService":Landroid/os/IBinder;
    if-nez v2, :cond_d

    return-void

    .line 2760
    :cond_d
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v4, "dropbox"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/DropBoxManager;

    .line 2761
    .local v3, "db":Landroid/os/DropBoxManager;
    if-eqz v3, :cond_e7

    const-string v4, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v3, v4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    goto/16 :goto_e7

    .line 2763
    :cond_23
    const/4 v5, 0x0

    .line 2764
    .local v5, "dumpFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 2767
    .local v6, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_25
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/batterystats.dump"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 2768
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v7

    .line 2769
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 2770
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2773
    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v7}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_43} :catch_94
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_43} :catch_6f
    .catchall {:try_start_25 .. :try_end_43} :catchall_6d

    .line 2780
    nop

    .line 2782
    :try_start_44
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 2785
    goto :goto_4e

    .line 2783
    :catch_48
    move-exception v4

    .line 2784
    .local v4, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4e
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 2788
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2788
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 2780
    :catchall_6d
    move-exception v4

    goto :goto_ba

    .line 2776
    :catch_6f
    move-exception v4

    .line 2777
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_70
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_6d

    .line 2780
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_84

    .line 2782
    :try_start_7a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    .line 2785
    goto :goto_84

    .line 2783
    :catch_7e
    move-exception v4

    .line 2784
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    .end local v4    # "e":Ljava/io/IOException;
    :cond_84
    :goto_84
    if-eqz v5, :cond_b9

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 2788
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5b

    .line 2774
    :catch_94
    move-exception v4

    .line 2775
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_95
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_95 .. :try_end_9c} :catchall_6d

    .line 2780
    nop

    .end local v4    # "e":Landroid/os/RemoteException;
    if-eqz v6, :cond_a9

    .line 2782
    :try_start_9f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    .line 2785
    goto :goto_a9

    .line 2783
    :catch_a3
    move-exception v4

    .line 2784
    .local v4, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    .end local v4    # "e":Ljava/io/IOException;
    :cond_a9
    :goto_a9
    if-eqz v5, :cond_b9

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 2788
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5b

    .line 2792
    :cond_b9
    :goto_b9
    return-void

    .line 2780
    :goto_ba
    if-eqz v6, :cond_c6

    .line 2782
    :try_start_bc
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c0

    .line 2785
    goto :goto_c6

    .line 2783
    :catch_c0
    move-exception v7

    .line 2784
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    .end local v7    # "e":Ljava/io/IOException;
    :cond_c6
    :goto_c6
    if-eqz v5, :cond_e6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 2788
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2788
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    :cond_e6
    throw v4

    .line 2761
    .end local v5    # "dumpFile":Ljava/io/File;
    .end local v6    # "dumpStream":Ljava/io/FileOutputStream;
    :cond_e7
    :goto_e7
    return-void
.end method

.method private logOutlierLocked(J)V
    .registers 11
    .param p1, "duration"    # J

    .line 2795
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2804
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 2805
    .local v1, "dischargeThresholdString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2806
    .local v2, "durationThresholdString":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    if-eqz v3, :cond_18

    .line 2807
    const-string v3, "battery_discharge_threshold"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2809
    const-string v3, "battery_discharge_duration_threshold"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2814
    :cond_18
    if-eqz v1, :cond_54

    if-eqz v2, :cond_54

    .line 2816
    :try_start_1c
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2817
    .local v3, "durationThreshold":J
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2818
    .local v5, "dischargeThreshold":I
    cmp-long v6, p1, v3

    if-gtz v6, :cond_34

    iget v6, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    sub-int/2addr v6, v7

    if-lt v6, v5, :cond_34

    .line 2821
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_34} :catch_35

    .line 2830
    .end local v3    # "durationThreshold":J
    .end local v5    # "dischargeThreshold":I
    :cond_34
    goto :goto_54

    .line 2827
    :catch_35
    move-exception v3

    .line 2828
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_54
    :goto_54
    return-void
.end method

.method private processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "opts"    # I

    .line 3575
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 3576
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_13

    .line 3577
    iget v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3579
    :cond_13
    return-void
.end method

.method private processValuesLocked(Z)V
    .registers 31
    .param p1, "force"    # Z

    .line 1860
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1861
    .local v2, "logOutlier":Z
    const-wide/16 v3, 0x0

    .line 1864
    .local v3, "dischargeDuration":J
    sget-boolean v0, Lcom/android/server/BatteryService;->USE_FAKE_BATTERY:Z

    const/16 v5, 0x64

    if-eqz v0, :cond_f

    .line 1865
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput v5, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 1869
    :cond_f
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_21

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v0, v8, :cond_21

    move v0, v7

    goto :goto_22

    :cond_21
    move v0, v6

    :goto_22
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 1872
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eqz v0, :cond_2f

    .line 1873
    iput v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_55

    .line 1875
    :cond_2f
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_38

    .line 1876
    iput v8, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_55

    .line 1878
    :cond_38
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_41

    .line 1879
    iput v9, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_55

    .line 1880
    :cond_41
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_4a

    .line 1881
    iput v8, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_55

    .line 1883
    :cond_4a
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz v0, :cond_53

    .line 1884
    iput v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_55

    .line 1887
    :cond_53
    iput v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1891
    :goto_55
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_63

    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    if-eqz v0, :cond_60

    goto :goto_63

    .line 1914
    :cond_60
    iput v6, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    goto :goto_9e

    .line 1895
    :cond_63
    :goto_63
    iput v6, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 1896
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_70

    .line 1897
    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 1899
    :cond_70
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_7b

    .line 1900
    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v0, v9

    iput v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 1902
    :cond_7b
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_86

    .line 1903
    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v0, v8

    iput v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 1906
    :cond_86
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    if-eqz v0, :cond_93

    .line 1907
    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    const/high16 v10, 0x10000

    or-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 1910
    :cond_93
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz v0, :cond_9e

    .line 1911
    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 1931
    :cond_9e
    :goto_9e
    :try_start_9e
    iget-object v10, v1, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v12, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v13, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v14, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v15, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo2p1:Landroid/hardware/health/V2_1/HealthInfo;

    iget-wide v8, v6, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iget-object v6, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v6, v6, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_c6} :catch_f6

    move/from16 v26, v2

    .end local v2    # "logOutlier":Z
    .local v26, "logOutlier":Z
    :try_start_c8
    iget-object v2, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_cc} :catch_f2

    move-wide/from16 v27, v3

    .end local v3    # "dischargeDuration":J
    .local v27, "dischargeDuration":J
    :try_start_ce
    iget-object v3, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    iget-object v4, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v4, v4, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    move/from16 v24, v4

    iget-object v4, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v4, v4, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    move/from16 v16, v0

    move/from16 v17, v5

    move/from16 v18, v7

    move-wide/from16 v19, v8

    move/from16 v21, v6

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v25, v4

    invoke-interface/range {v10 .. v25}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIIIJIIIIZ)V
    :try_end_ef
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_ef} :catch_f0

    .line 1944
    goto :goto_fb

    .line 1942
    :catch_f0
    move-exception v0

    goto :goto_fb

    .end local v27    # "dischargeDuration":J
    .restart local v3    # "dischargeDuration":J
    :catch_f2
    move-exception v0

    move-wide/from16 v27, v3

    .end local v3    # "dischargeDuration":J
    .restart local v27    # "dischargeDuration":J
    goto :goto_fb

    .end local v26    # "logOutlier":Z
    .end local v27    # "dischargeDuration":J
    .restart local v2    # "logOutlier":Z
    .restart local v3    # "dischargeDuration":J
    :catch_f6
    move-exception v0

    move/from16 v26, v2

    move-wide/from16 v27, v3

    .line 1946
    .end local v2    # "logOutlier":Z
    .end local v3    # "dischargeDuration":J
    .restart local v26    # "logOutlier":Z
    .restart local v27    # "dischargeDuration":J
    :goto_fb
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 1949
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_JDM:Z

    if-eqz v0, :cond_109

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->VZW:Z

    if-nez v0, :cond_109

    .line 1950
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    .line 1955
    :cond_109
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_130

    .line 1957
    iget-wide v4, v1, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_130

    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz v0, :cond_130

    .line 1958
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    sub-long/2addr v4, v6

    .line 1959
    .local v4, "fullChargeOnDockDuration":J
    const-wide/32 v6, 0x2932e00

    cmp-long v0, v4, v6

    if-ltz v0, :cond_130

    .line 1960
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v6, v1, Lcom/android/server/BatteryService;->mUpdateBatteryUsageOnDockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1966
    .end local v4    # "fullChargeOnDockDuration":J
    :cond_130
    if-nez p1, :cond_1f2

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v4, :cond_1f2

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v4, :cond_1f2

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v4, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v4, :cond_1f2

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v4, :cond_1f2

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v4, :cond_1f2

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-eq v0, v4, :cond_16f

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    sub-int/2addr v0, v4

    .line 1972
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v4, 0x32

    if-gt v0, v4, :cond_1f2

    :cond_16f
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v0, v4, :cond_186

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    sub-int/2addr v0, v4

    .line 1974
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v4, 0xa

    if-gt v0, v4, :cond_1f2

    :cond_186
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    if-ne v0, v4, :cond_1f2

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    if-ne v0, v4, :cond_1f2

    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    if-ne v0, v4, :cond_1f2

    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    if-ne v0, v4, :cond_1f2

    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    iget-boolean v4, v1, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    if-ne v0, v4, :cond_1f2

    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    if-ne v0, v4, :cond_1f2

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1c5

    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    if-ne v0, v4, :cond_1f2

    :cond_1c5
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    iget-boolean v4, v1, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    if-ne v0, v4, :cond_1f2

    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    if-ne v0, v4, :cond_1f2

    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    if-ne v0, v4, :cond_1f2

    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-ne v0, v4, :cond_1f2

    iget v0, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-eq v0, v4, :cond_1ea

    goto :goto_1f2

    :cond_1ea
    move/from16 v2, v26

    move-wide/from16 v3, v27

    const/4 v6, 0x0

    const/4 v12, 0x1

    goto/16 :goto_5e6

    .line 1992
    :cond_1f2
    :goto_1f2
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/4 v5, 0x3

    const/4 v6, 0x5

    if-eq v0, v4, :cond_2c3

    .line 1993
    const/16 v7, 0x58a

    const/16 v8, 0x58d

    const/16 v9, 0x589

    if-nez v4, :cond_26f

    .line 1995
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 1996
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 1998
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v9}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1999
    .local v0, "builder":Landroid/metrics/LogMaker;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2000
    iget v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2001
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 2002
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2001
    invoke-virtual {v0, v7, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2003
    iget-object v4, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2007
    iget-wide v7, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    cmp-long v4, v7, v2

    if-eqz v4, :cond_26e

    iget v4, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-eq v4, v7, :cond_26e

    .line 2008
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v7, v9

    .line 2009
    .end local v27    # "dischargeDuration":J
    .local v7, "dischargeDuration":J
    const/4 v4, 0x1

    .line 2010
    .end local v26    # "logOutlier":Z
    .local v4, "logOutlier":Z
    const/16 v9, 0xaaa

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    iget v11, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 2011
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    iget-object v11, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 2010
    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2013
    iput-wide v2, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    move/from16 v26, v4

    move-wide/from16 v27, v7

    .line 2015
    .end local v0    # "builder":Landroid/metrics/LogMaker;
    .end local v4    # "logOutlier":Z
    .end local v7    # "dischargeDuration":J
    .restart local v26    # "logOutlier":Z
    .restart local v27    # "dischargeDuration":J
    :cond_26e
    goto :goto_2c3

    :cond_26f
    if-nez v0, :cond_26e

    .line 2017
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 2018
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 2020
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    sub-long/2addr v10, v12

    .line 2021
    .local v10, "chargeDuration":J
    cmp-long v0, v12, v2

    if-eqz v0, :cond_2c1

    cmp-long v0, v10, v2

    if-eqz v0, :cond_2c1

    .line 2022
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v9}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2023
    .restart local v0    # "builder":Landroid/metrics/LogMaker;
    invoke-virtual {v0, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2024
    iget v4, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2025
    const/16 v4, 0x58c

    .line 2026
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2025
    invoke-virtual {v0, v4, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2027
    iget v4, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 2028
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2027
    invoke-virtual {v0, v7, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2029
    const/16 v4, 0x58b

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 2030
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2029
    invoke-virtual {v0, v4, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2031
    iget-object v4, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2033
    .end local v0    # "builder":Landroid/metrics/LogMaker;
    :cond_2c1
    iput-wide v2, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 2038
    .end local v10    # "chargeDuration":J
    :cond_2c3
    :goto_2c3
    iget v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    if-gtz v0, :cond_2d3

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-lez v0, :cond_2d3

    .line 2039
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 2044
    :cond_2d3
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    int-to-long v7, v0

    iget-wide v9, v1, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    cmp-long v0, v7, v9

    if-lez v0, :cond_2e6

    .line 2045
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    int-to-long v7, v0

    iput-wide v7, v1, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    goto :goto_2f9

    .line 2046
    :cond_2e6
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    int-to-long v7, v0

    sub-long/2addr v9, v7

    const-wide/16 v7, 0xa

    cmp-long v0, v9, v7

    if-ltz v0, :cond_2f9

    .line 2047
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2051
    :cond_2f9
    :goto_2f9
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v4, :cond_317

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v4, :cond_317

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v4, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v4, :cond_317

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v4, :cond_34e

    .line 2055
    :cond_317
    const/16 v0, 0xaa3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 2056
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v4, v8

    iget v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 2057
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const/4 v8, 0x4

    aput-object v7, v4, v8

    .line 2055
    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2059
    :cond_34e
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v0, v4, :cond_393

    .line 2062
    const/16 v0, 0xaa2

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 2063
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 2062
    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2066
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const/16 v4, 0x64

    if-lt v0, v4, :cond_393

    iget-wide v4, v1, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_393

    .line 2067
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/BatteryService;->mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2071
    :cond_393
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_3aa

    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v0, :cond_3aa

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_3aa

    .line 2075
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v7, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v4, v7

    .line 2076
    .end local v27    # "dischargeDuration":J
    .local v4, "dischargeDuration":J
    const/4 v0, 0x1

    move/from16 v26, v0

    .end local v26    # "logOutlier":Z
    .local v0, "logOutlier":Z
    goto :goto_3ac

    .line 2079
    .end local v0    # "logOutlier":Z
    .end local v4    # "dischargeDuration":J
    .restart local v26    # "logOutlier":Z
    .restart local v27    # "dischargeDuration":J
    :cond_3aa
    move-wide/from16 v4, v27

    .end local v27    # "dischargeDuration":J
    .restart local v4    # "dischargeDuration":J
    :goto_3ac
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v0, :cond_3c6

    .line 2081
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_3e6

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v7, 0x1

    if-eq v0, v7, :cond_3e6

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v8, :cond_3e6

    .line 2085
    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_3e6

    .line 2089
    :cond_3c6
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_3ce

    .line 2090
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_3e6

    .line 2091
    :cond_3ce
    const/4 v7, 0x0

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v8, :cond_3da

    .line 2092
    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_3e6

    .line 2093
    :cond_3da
    if-eqz p1, :cond_3e6

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v0, v8, :cond_3e6

    .line 2096
    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 2100
    :cond_3e6
    :goto_3e6
    iget v0, v1, Lcom/android/server/BatteryService;->mSequence:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 2103
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    if-eqz v0, :cond_41d

    .line 2104
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    const/16 v7, 0x64

    if-ne v0, v7, :cond_41d

    .line 2105
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    if-nez v0, :cond_41d

    .line 2106
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 2108
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "enable wireless charger menu in setting"

    invoke-static {v0, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    iget-object v0, v1, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v8, -0x2

    const-string/jumbo v9, "show_wireless_charger_menu"

    invoke-static {v0, v9, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2114
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/BatteryService$18;

    invoke-direct {v7, v1}, Lcom/android/server/BatteryService$18;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2133
    :cond_41d
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v7, -0x1

    const-string/jumbo v8, "seq"

    const/high16 v9, 0x4000000

    if-eqz v0, :cond_447

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_42d

    if-ne v0, v7, :cond_447

    .line 2135
    :cond_42d
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2136
    .local v0, "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2137
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2138
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/BatteryService$19;

    invoke-direct {v10, v1, v0}, Lcom/android/server/BatteryService$19;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2164
    .end local v0    # "statusIntent":Landroid/content/Intent;
    goto :goto_46a

    .line 2165
    :cond_447
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_46a

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_451

    if-ne v0, v7, :cond_46a

    .line 2167
    :cond_451
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2168
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2169
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2170
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/BatteryService$20;

    invoke-direct {v10, v1, v0}, Lcom/android/server/BatteryService$20;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2213
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_46a
    :goto_46a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v0

    if-eqz v0, :cond_48d

    .line 2214
    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 2215
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.BATTERY_LOW"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2216
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2217
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2218
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$22;

    invoke-direct {v8, v1, v0}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v0    # "statusIntent":Landroid/content/Intent;
    goto :goto_4b7

    .line 2224
    :cond_48d
    const/4 v12, 0x1

    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v0, :cond_4b7

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v7, :cond_4b7

    .line 2226
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 2227
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2228
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2229
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2230
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$23;

    invoke-direct {v8, v1, v0}, Lcom/android/server/BatteryService$23;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4b8

    .line 2224
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_4b7
    :goto_4b7
    nop

    .line 2278
    :goto_4b8
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    if-eqz v0, :cond_54b

    .line 2280
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-eq v0, v7, :cond_506

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    if-ne v0, v6, :cond_506

    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz v0, :cond_506

    .line 2283
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "status : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " laststatus : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " PogoOnline : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v8, v8, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->setFullChargingOnDockStartTime()V

    .line 2286
    iput-wide v2, v1, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    .line 2291
    :cond_506
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    if-eq v0, v7, :cond_512

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_522

    :cond_512
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz v0, :cond_54b

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-eq v0, v7, :cond_54b

    if-ne v7, v6, :cond_54b

    .line 2296
    :cond_522
    const-wide/16 v6, -0x1

    iput-wide v6, v1, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    .line 2297
    iput-wide v6, v1, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    .line 2298
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reset mFullChargingOnDockStartTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " mIncreasingCycleCnt : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    :cond_54b
    iget-object v0, v1, Lcom/android/server/BatteryService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 2310
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked()V

    .line 2312
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryEventIntentLocked()V

    .line 2314
    iget v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-eq v0, v6, :cond_561

    .line 2315
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryLevelChangedIntentLocked()V

    .line 2318
    :cond_561
    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/android/server/BatteryService;->sendDeteriorationIntentLocked(Z)V

    .line 2321
    iget-object v0, v1, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 2324
    if-eqz v26, :cond_573

    cmp-long v0, v4, v2

    if-eqz v0, :cond_573

    .line 2325
    invoke-direct {v1, v4, v5}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    .line 2328
    :cond_573
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 2329
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 2330
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 2331
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 2332
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 2333
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 2334
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 2335
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 2336
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 2338
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 2339
    iget v0, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 2341
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    .line 2342
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    .line 2343
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    .line 2344
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    .line 2345
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    .line 2346
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    .line 2347
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 2348
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    .line 2349
    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    move-wide v3, v4

    move/from16 v2, v26

    .line 2354
    .end local v4    # "dischargeDuration":J
    .end local v26    # "logOutlier":Z
    .restart local v2    # "logOutlier":Z
    .restart local v3    # "dischargeDuration":J
    :goto_5e6
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v0, :cond_5ed

    .line 2355
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendWirelessPowerSharingIntentLocked()V

    .line 2360
    :cond_5ed
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v0, :cond_60a

    .line 2361
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v0, :cond_60a

    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    if-eqz v0, :cond_60a

    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_60a

    .line 2363
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    const-string v5, "/sys/class/power_supply/battery/batt_misc_event"

    invoke-static {v5, v0}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 2369
    :cond_60a
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    int-to-long v7, v0

    iget-wide v9, v1, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    cmp-long v0, v7, v9

    if-lez v0, :cond_623

    .line 2370
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    int-to-long v7, v0

    iput-wide v7, v1, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    .line 2371
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2373
    :cond_623
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    int-to-long v7, v0

    iget-wide v9, v1, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    cmp-long v0, v7, v9

    if-lez v0, :cond_63c

    .line 2374
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    int-to-long v7, v0

    iput-wide v7, v1, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    .line 2375
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2380
    :cond_63c
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iget-boolean v5, v1, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    if-eq v0, v5, :cond_651

    .line 2381
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    .line 2382
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v1, v0}, Lcom/android/server/BatteryService;->setWirelessChargingState(Z)V

    .line 2386
    :cond_651
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_65b

    move v0, v12

    goto :goto_65c

    :cond_65b
    move v0, v6

    .line 2388
    .local v0, "wirelessPinDetected":Z
    :goto_65c
    iget-boolean v5, v1, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    if-eq v5, v0, :cond_665

    .line 2389
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    .line 2390
    invoke-virtual {v1, v0}, Lcom/android/server/BatteryService;->setWirelessChargingState(Z)V

    .line 2394
    :cond_665
    iget-object v5, v1, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v5, v5, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    const/4 v7, 0x2

    and-int/2addr v5, v7

    if-eqz v5, :cond_66e

    move v6, v12

    :cond_66e
    move v5, v6

    .line 2396
    .local v5, "wirelessBackPackChargingStatus":Z
    iget-boolean v6, v1, Lcom/android/server/BatteryService;->mLastWirelessBackPackChargingStatus:Z

    if-eq v6, v5, :cond_694

    .line 2397
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v6, :cond_692

    if-eqz v5, :cond_692

    .line 2398
    sget-object v6, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "notify wireless backpack on"

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    const-string v6, "/sys/class/sec/sec_epen/epen_wcharging_mode"

    const-string v7, "3"

    invoke-direct {v1, v6, v7}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2400
    const-string v6, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v7, "set_wirelesscharger_mode,3"

    invoke-direct {v1, v6, v7}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2402
    :cond_692
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mLastWirelessBackPackChargingStatus:Z

    .line 2405
    :cond_694
    return-void
.end method

.method private readBatteryAsocFromEfsLocked()J
    .registers 8

    .line 3245
    const-string v0, "/efs/FactoryApp/asoc"

    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v1

    .line 3246
    .local v1, "isEfsExist":Z
    if-nez v1, :cond_26

    .line 3247
    const-string v2, "/sys/class/power_supply/battery/fg_asoc"

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1d

    .line 3248
    const-wide/16 v3, -0x1

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 3249
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 3250
    return-wide v3

    .line 3252
    :cond_1d
    const-wide/16 v3, 0x64

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 3253
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 3254
    return-wide v3

    .line 3257
    :cond_26
    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method private readBatteryInfo(Ljava/lang/String;)J
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .line 3345
    if-nez p1, :cond_5

    .line 3346
    const-wide/16 v0, -0x1

    return-wide v0

    .line 3348
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3349
    .local v0, "strData":Ljava/lang/String;
    const-wide/16 v1, -0x1

    .line 3350
    .local v1, "ret":J
    const-string v3, "!@[BatteryInfo] "

    if-nez v0, :cond_29

    .line 3351
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : data is null."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 3354
    :cond_29
    :try_start_29
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2d} :catch_2f

    move-wide v1, v3

    .line 3357
    goto :goto_51

    .line 3355
    :catch_2f
    move-exception v4

    .line 3356
    .local v4, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : data is \""

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_51
    return-wide v1
.end method

.method private readBatteryMaxCurrentFromEfsLocked()J
    .registers 6

    .line 3216
    const-string v0, "/efs/FactoryApp/max_current"

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v1

    .line 3217
    .local v1, "maxCurrent":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_12

    .line 3218
    const-wide/16 v3, -0x1

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 3219
    return-wide v3

    .line 3221
    :cond_12
    return-wide v1
.end method

.method private readBatteryMaxTempFromEfsLocked()J
    .registers 6

    .line 3187
    const-string v0, "/efs/FactoryApp/max_temp"

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v1

    .line 3188
    .local v1, "maxTemp":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_12

    .line 3189
    const-wide/16 v3, -0x1

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 3190
    return-wide v3

    .line 3192
    :cond_12
    return-wide v1
.end method

.method private readBatteryUsageFromEfsLocked()J
    .registers 6

    .line 3143
    const-string v0, "/efs/FactoryApp/batt_discharge_level"

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v1

    .line 3144
    .local v1, "batteryUsage":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_12

    .line 3145
    const-wide/16 v3, 0x1

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 3146
    return-wide v3

    .line 3148
    :cond_12
    return-wide v1
.end method

.method private readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .line 3363
    const/4 v0, 0x0

    .line 3364
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3366
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 3367
    nop

    .line 3368
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 3369
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 3370
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[BatteryInfo] readFromFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_37} :catch_38

    .line 3381
    goto :goto_50

    .line 3372
    :catch_38
    move-exception v2

    .line 3373
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "!@[BatteryInfo] IOException in readFromFile"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    if-eqz v1, :cond_4f

    .line 3376
    :try_start_42
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_4f

    .line 3378
    :catch_46
    move-exception v3

    .line 3379
    .local v3, "err":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v5, "!@[BatteryInfo] Exception in readFromFile"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 3380
    .end local v3    # "err":Ljava/lang/Exception;
    :cond_4f
    :goto_4f
    nop

    .line 3382
    .end local v2    # "e":Ljava/io/IOException;
    :goto_50
    return-object v0
.end method

.method private registerContentObserver(Landroid/content/ContentResolver;)V
    .registers 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 1434
    const-string/jumbo v0, "led_indicator_charing"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v4

    :goto_f
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 1435
    const-string/jumbo v3, "led_indicator_low_battery"

    invoke-static {p1, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_1c

    move v5, v1

    goto :goto_1d

    :cond_1c
    move v5, v4

    :goto_1d
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 1436
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@Led Charging Settings = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@Led Low Battery Settings = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    const/4 v6, -0x1

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1440
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-virtual {p1, v0, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1443
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    if-eqz v0, :cond_9f

    .line 1444
    const-string v0, "adaptive_fast_charging"

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_70

    move v3, v1

    goto :goto_71

    :cond_70
    move v3, v4

    :goto_71
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 1445
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@AdaptiveFastCharging Settings = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-object v3, p0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1447
    .local v3, "sys_afc_value":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {p0, v5}, Lcom/android/server/BatteryService;->setAdaptiveFastCharging(Z)V

    .line 1448
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1453
    .end local v3    # "sys_afc_value":Ljava/lang/String;
    :cond_9f
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    if-eqz v0, :cond_dd

    .line 1454
    const-string/jumbo v0, "super_fast_charging"

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_ae

    move v3, v1

    goto :goto_af

    :cond_ae
    move v3, v4

    :goto_af
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 1455
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@SuperFastCharging Settings = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    const-string v3, "/sys/class/power_supply/battery/pd_disable"

    invoke-direct {p0, v3}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1457
    .local v3, "sys_sfc_value":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    invoke-virtual {p0, v5}, Lcom/android/server/BatteryService;->setSuperFastCharging(Z)V

    .line 1458
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1463
    .end local v3    # "sys_sfc_value":Ljava/lang/String;
    :cond_dd
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    if-eqz v0, :cond_122

    .line 1464
    const-string/jumbo v0, "show_wireless_charger_menu"

    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_ec

    move v0, v1

    goto :goto_ed

    :cond_ec
    move v0, v4

    :goto_ed
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 1465
    const-string/jumbo v0, "wireless_fast_charging"

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_f9

    goto :goto_fa

    :cond_f9
    move v1, v4

    :goto_fa
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 1466
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@WirelessFastCharging Settings = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    .line 1468
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    invoke-virtual {p1, v0, v4, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1473
    :cond_122
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v0, :cond_157

    .line 1474
    const/16 v0, 0x1e

    const-string/jumbo v1, "tx_battery_limit"

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 1475
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@Tx Battery Limit Settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget v0, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->setWirelessPowerSharingTxBatteryLimit(I)V

    .line 1477
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    invoke-virtual {p1, v0, v4, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1483
    :cond_157
    const-string v0, "/sys/class/power_supply/battery/wc_param_info"

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1484
    .local v0, "wcParamInfo":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    if-eq v1, v6, :cond_17b

    if-eqz v0, :cond_17b

    .line 1485
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wireless_wc_write"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1486
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    invoke-virtual {p1, v1, v4, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1487
    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->setWcParamInfo(Ljava/lang/String;)V

    .line 1490
    :cond_17b
    return-void
.end method

.method private registerHealthCallback()V
    .registers 9

    .line 1494
    const-string v0, "HealthInitWrapper"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 1495
    new-instance v0, Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-direct {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    .line 1496
    new-instance v0, Lcom/android/server/BatteryService$HealthHalCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$HealthHalCallback;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

    .line 1499
    :try_start_14
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    new-instance v2, Lcom/android/server/BatteryService$15;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;)V

    new-instance v3, Lcom/android/server/BatteryService$16;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BatteryService$HealthServiceWrapper;->init(Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_ab
    .catch Ljava/util/NoSuchElementException; {:try_start_14 .. :try_end_23} :catch_a0
    .catchall {:try_start_14 .. :try_end_23} :catchall_9e

    .line 1509
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 1510
    nop

    .line 1512
    const-string v0, "HealthInitWaitUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 1516
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1517
    .local v0, "beforeWait":J
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1518
    :goto_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    if-nez v3, :cond_74

    .line 1519
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "health: Waited "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms for callbacks. Waiting another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_33 .. :try_end_63} :catchall_9b

    .line 1522
    :try_start_63
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_68} :catch_69
    .catchall {:try_start_63 .. :try_end_68} :catchall_9b

    .line 1526
    goto :goto_33

    .line 1523
    :catch_69
    move-exception v3

    .line 1524
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_6a
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "health: InterruptedException when waiting for update.  Continuing..."

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    nop

    .end local v3    # "ex":Ljava/lang/InterruptedException;
    goto :goto_33

    .line 1528
    :cond_74
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_6a .. :try_end_75} :catchall_9b

    .line 1530
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "health: Waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms and received the update."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 1533
    return-void

    .line 1528
    :catchall_9b
    move-exception v3

    :try_start_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v3

    .line 1509
    .end local v0    # "beforeWait":J
    :catchall_9e
    move-exception v0

    goto :goto_b9

    .line 1505
    :catch_a0
    move-exception v0

    .line 1506
    .local v0, "ex":Ljava/util/NoSuchElementException;
    :try_start_a1
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "health: cannot register callback. (no supported health HAL service)"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    nop

    .end local p0    # "this":Lcom/android/server/BatteryService;
    throw v0

    .line 1502
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    .restart local p0    # "this":Lcom/android/server/BatteryService;
    :catch_ab
    move-exception v0

    .line 1503
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "health: cannot register callback. (RemoteException)"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Lcom/android/server/BatteryService;
    throw v1
    :try_end_b9
    .catchall {:try_start_a1 .. :try_end_b9} :catchall_9e

    .line 1509
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/BatteryService;
    :goto_b9
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 1510
    throw v0
.end method

.method private saveBatteryInfo(Ljava/lang/String;J)I
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # J

    .line 3386
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method private sendBatteryChangedIntentLocked()V
    .registers 15

    .line 2409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2410
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2414
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2415
    .local v1, "pogoIntent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2417
    const/4 v2, 0x0

    .line 2418
    .local v2, "setPogoCondition":I
    iget v3, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    .line 2419
    .local v3, "oldPogoIntentState":I
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2420
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 2421
    .local v5, "kids_home_mode":I
    const/4 v6, 0x0

    .line 2423
    .local v6, "device_provisioned":I
    iget-object v7, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v7, v7, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_44

    .line 2424
    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-nez v7, :cond_40

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-nez v7, :cond_40

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v7, :cond_3e

    goto :goto_40

    .line 2428
    :cond_3e
    const/4 v2, 0x1

    goto :goto_41

    .line 2425
    :cond_40
    :goto_40
    const/4 v2, 0x2

    .line 2430
    :goto_41
    iput v8, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    goto :goto_46

    .line 2432
    :cond_44
    iput v9, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    .line 2436
    :goto_46
    iget v7, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    const-string/jumbo v10, "pogo_plugged"

    if-eq v3, v7, :cond_9c

    .line 2437
    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    if-eqz v7, :cond_64

    .line 2438
    const-string v7, "device_provisioned"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 2439
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v11, "kids_home_mode"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2442
    :cond_64
    if-eqz v6, :cond_7d

    if-nez v5, :cond_7d

    .line 2443
    iget v7, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    const-string v11, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2444
    invoke-virtual {v1, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2445
    iget-object v7, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/BatteryService$26;

    invoke-direct {v11, p0, v1}, Lcom/android/server/BatteryService$26;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9c

    .line 2455
    :cond_7d
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device_provisioned: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "kids_home_mode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    :cond_9c
    :goto_9c
    iget-object v7, p0, Lcom/android/server/BatteryService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v11, "BatteryService : SendIntentLocked() - pogo"

    const-wide/16 v12, 0xa

    invoke-virtual {v7, v11, v12, v13}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 2464
    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-direct {p0, v7}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v7

    .line 2468
    .local v7, "icon":I
    iget-object v11, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v11, v11, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    if-eqz v11, :cond_b4

    .line 2469
    goto :goto_b5

    :cond_b4
    move v8, v9

    .line 2472
    .local v8, "highVoltageCharger":Z
    :goto_b5
    iget v9, p0, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v11, "seq"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2473
    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v9, v9, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const-string/jumbo v11, "status"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2474
    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v9, v9, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    const-string/jumbo v11, "health"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2475
    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v9, v9, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    const-string/jumbo v11, "present"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2476
    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v9, v9, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const-string/jumbo v11, "level"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2477
    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const-string v11, "battery_low"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2478
    const/16 v9, 0x64

    const-string/jumbo v11, "scale"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2479
    const-string/jumbo v9, "icon-small"

    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2480
    iget v9, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v11, "plugged"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2481
    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v9, v9, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    const-string/jumbo v11, "voltage"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2482
    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v9, v9, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    const-string/jumbo v11, "temperature"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2483
    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v9, v9, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-string/jumbo v11, "technology"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2484
    iget v9, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    const-string/jumbo v11, "invalid_charger"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2485
    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v9, v9, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    const-string/jumbo v11, "max_charging_current"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2486
    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v9, v9, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    const-string/jumbo v11, "max_charging_voltage"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2487
    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v9, v9, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    const-string v11, "charge_counter"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2490
    iget-object v9, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v9, v9, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    const-string/jumbo v11, "online"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2491
    iget-object v9, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v9, v9, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    const-string v11, "charge_type"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2492
    iget-object v9, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v9, v9, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    const-string/jumbo v11, "power_sharing"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2493
    const-string/jumbo v9, "hv_charger"

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2494
    iget-object v9, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v9, v9, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    const-string v11, "charger_type"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2495
    iget v9, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    const-string v11, "capacity"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2496
    iget-object v9, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v9, v9, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    const-string v11, "current_now"

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2497
    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2498
    iget-object v9, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v9, v9, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    const-string/jumbo v10, "misc_event"

    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2499
    iget-object v9, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v9, v9, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    const-string v10, "current_event"

    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2503
    sget-object v9, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending ACTION_BATTERY_CHANGED. scale:100, info:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    .line 2504
    invoke-virtual {v11}, Landroid/hardware/health/V1_0/HealthInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2503
    invoke-static {v9, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    sget-object v9, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "online:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v11, v11, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", current avg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/BatteryService;->mHealthInfo2p0:Landroid/hardware/health/V2_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", charge type:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v11, v11, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", POGO powered:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v11, v11, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", power sharing:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget-boolean v11, v11, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", high voltage charger:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", charger_type:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v11, v11, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", capacity:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", misc_event:0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v11, v11, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    .line 2513
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", current_event:0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v11, v11, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    .line 2514
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", current_now:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v11, v11, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2506
    invoke-static {v9, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    iget-object v9, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;

    invoke-direct {v10, v0}, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2522
    iget-object v9, p0, Lcom/android/server/BatteryService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v10, "BatteryService : sendIntentLocked()"

    invoke-virtual {v9, v10, v12, v13}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 2524
    return-void
.end method

.method private sendBatteryEventIntentLocked()V
    .registers 6

    .line 2528
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-ne v0, v1, :cond_f

    .line 2531
    return-void

    .line 2535
    :cond_f
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    move v0, v1

    .line 2537
    .local v0, "batteryWaterInConnector":Z
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    const/high16 v2, 0x24000000

    if-eq v1, v0, :cond_3c

    .line 2538
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.server.BatteryService.action.SEC_BATTERY_WATER_IN_CONNECTOR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2539
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2541
    const-string/jumbo v3, "water"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2543
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$27;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/server/BatteryService$27;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2550
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    .line 2554
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3c
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    iget v3, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    if-ne v1, v3, :cond_4a

    iget v1, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v3, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-eq v1, v3, :cond_70

    .line 2556
    :cond_4a
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2558
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2561
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    const-string/jumbo v3, "misc_event"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2562
    iget v2, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    const-string/jumbo v3, "sec_plug_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2564
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$28;

    invoke-direct {v3, p0, v1}, Lcom/android/server/BatteryService$28;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2573
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_70
    return-void
.end method

.method private sendBatteryLevelChangedIntentLocked()V
    .registers 11

    .line 2710
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2711
    .local v0, "event":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2712
    .local v1, "now":J
    iget v3, p0, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v4, "seq"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2713
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const-string/jumbo v4, "status"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2714
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    const-string/jumbo v4, "health"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2715
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    const-string/jumbo v4, "present"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2716
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const-string/jumbo v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2717
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const-string v4, "battery_low"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2718
    const-string/jumbo v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2719
    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v5, "plugged"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2720
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    const-string/jumbo v5, "voltage"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2721
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    const-string/jumbo v5, "temperature"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2722
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    const-string v5, "charge_counter"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2723
    const-string v3, "android.os.extra.EVENT_TIMESTAMP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2725
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    .line 2726
    .local v3, "queueWasEmpty":Z
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 2728
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-le v5, v4, :cond_8a

    .line 2729
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 2732
    :cond_8a
    if-eqz v3, :cond_a6

    .line 2734
    iget-wide v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    sub-long v6, v1, v4

    const-wide/32 v8, 0xea60

    cmp-long v6, v6, v8

    if-lez v6, :cond_9a

    .line 2735
    const-wide/16 v4, 0x0

    goto :goto_9c

    :cond_9a
    add-long/2addr v4, v8

    sub-long/2addr v4, v1

    .line 2736
    .local v4, "delay":J
    :goto_9c
    iget-object v6, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk;

    invoke-direct {v7, p0}, Lcom/android/server/-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2738
    .end local v4    # "delay":J
    :cond_a6
    return-void
.end method

.method private static sendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3069
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendBroadcastToExplicitPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 3072
    .local v0, "cloneIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3073
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3074
    return-void
.end method

.method private sendDeteriorationIntentLocked(Z)V
    .registers 9
    .param p1, "force"    # Z

    .line 2578
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    const/high16 v1, 0xf0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    .line 2580
    .local v0, "batteryDeterioration":I
    const/4 v1, 0x0

    .line 2581
    .local v1, "sendIntent":Z
    const-wide/16 v2, 0xa

    .line 2583
    .local v2, "timeout":J
    if-eqz p1, :cond_14

    .line 2584
    if-eqz v0, :cond_29

    .line 2585
    const-wide/16 v2, 0x2710

    .line 2586
    const/4 v1, 0x1

    goto :goto_29

    .line 2589
    :cond_14
    iget v4, p0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    if-eq v4, v0, :cond_29

    .line 2590
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v4, :cond_27

    const/16 v4, 0xf

    if-ne v0, v4, :cond_27

    .line 2591
    const/4 v1, 0x1

    .line 2592
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    if-nez v4, :cond_27

    .line 2593
    const-wide/16 v2, 0x2710

    .line 2596
    :cond_27
    iput v0, p0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    .line 2599
    :cond_29
    :goto_29
    if-eqz v1, :cond_4b

    .line 2600
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.server.BatteryService.action.ACTION_POPUP_BATTERY_DETERIORATION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2601
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "deterioration"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2602
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2603
    sget-object v5, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2604
    iget-object v5, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/BatteryService$29;

    invoke-direct {v6, p0, v0, v4}, Lcom/android/server/BatteryService$29;-><init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;)V

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2613
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4b
    return-void
.end method

.method private sendEnqueuedBatteryLevelChangedEvents()V
    .registers 6

    .line 2742
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2743
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2744
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 2745
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_31

    .line 2746
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2747
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2748
    const-string v2, "android.os.extra.EVENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2750
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.BATTERY_STATS"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2752
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    .line 2753
    return-void

    .line 2745
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private sendOTGIntentLocked()V
    .registers 4

    .line 2618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESPONSE_OTG_CHARGE_BLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2620
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$30;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$30;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2627
    return-void
.end method

.method private sendWirelessPowerSharingIntentLocked()V
    .registers 9

    .line 2632
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    .line 2634
    .local v0, "batteryTxEnabled":Z
    :goto_c
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    const/high16 v4, 0x10000000

    if-eq v3, v0, :cond_68

    .line 2635
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_ENABLED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2636
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "enabled"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2637
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2638
    sget-object v5, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2639
    iget-object v5, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/BatteryService$31;

    invoke-direct {v6, p0, v0, v3}, Lcom/android/server/BatteryService$31;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2646
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    .line 2647
    const-wide/16 v5, 0x0

    const-string v7, "/sys/class/sec/sec_epen/epen_wcharging_mode"

    invoke-virtual {p0, v7, v5, v6, v0}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    .line 2648
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIRELESS_ENABLE_SYSFS_PATH_FOR_EPEN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    if-eqz v5, :cond_68

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v5, :cond_68

    .line 2652
    const-string v5, "/sys/class/sec/tsp/cmd"

    if-eqz v0, :cond_62

    .line 2653
    const-string/jumbo v6, "set_wirelesscharger_mode,1"

    invoke-direct {p0, v5, v6}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_68

    .line 2655
    :cond_62
    const-string/jumbo v6, "set_wirelesscharger_mode,0"

    invoke-direct {p0, v5, v6}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2661
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_68
    :goto_68
    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_71

    goto :goto_72

    :cond_71
    move v1, v2

    .line 2663
    .local v1, "batteryRxConnected":Z
    :goto_72
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    if-eq v2, v1, :cond_96

    .line 2664
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_CONNECTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2665
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "connected"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2666
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2667
    sget-object v3, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2668
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/BatteryService$32;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/server/BatteryService$32;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2686
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    .line 2689
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_96
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    iget v3, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingTxEvent:I

    if-eq v2, v3, :cond_c2

    .line 2690
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_TX_EVENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2691
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    const-string/jumbo v5, "tx_event"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2692
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2693
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$33;

    invoke-direct {v4, p0, v2}, Lcom/android/server/BatteryService$33;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2704
    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    iput v3, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingTxEvent:I

    .line 2706
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_c2
    return-void
.end method

.method private setCallWirelessPowerSharingExternelEvent(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 750
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eqz p1, :cond_4b

    .line 751
    iget-object v2, p0, Lcom/android/server/BatteryService;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_27

    .line 752
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->semIsVideoCall()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 753
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isVideoCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_27
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call start, isVideoCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    if-eqz v2, :cond_47

    .line 758
    invoke-direct {p0, v0, v0}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    goto :goto_71

    .line 761
    :cond_47
    invoke-direct {p0, v1, v1}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    goto :goto_71

    .line 765
    :cond_4b
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call end, isVideoCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6c

    .line 767
    invoke-direct {p0, v0, v3}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    goto :goto_6f

    .line 769
    :cond_6c
    invoke-direct {p0, v1, v3}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    .line 771
    :goto_6f
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 773
    :goto_71
    return-void
.end method

.method private setFullChargingOnDockStartTime()V
    .registers 5

    .line 3307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    .line 3308
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FullChargingOnDockStartTime start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    return-void
.end method

.method private setWcParamInfo(Ljava/lang/String;)V
    .registers 7
    .param p1, "wcParamInfo"    # Ljava/lang/String;

    .line 1633
    const/4 v0, 0x0

    .line 1634
    .local v0, "ret":Z
    :try_start_1
    const-string v1, "default"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lvendor/samsung/hardware/health/V2_0/ISehHealth;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/health/V2_0/ISehHealth;

    move-result-object v1

    .line 1635
    .local v1, "sehService":Lvendor/samsung/hardware/health/V2_0/ISehHealth;
    const/4 v3, -0x2

    invoke-interface {v1, v3, v2}, Lvendor/samsung/hardware/health/V2_0/ISehHealth;->sehWriteEnableToParam(IZ)I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_11

    goto :goto_12

    :cond_11
    move v2, v4

    :goto_12
    move v0, v2

    .line 1636
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wireless_wc_write"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1637
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write to wc param Info :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", offset : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_48} :catch_4a

    .line 1641
    nop

    .end local v0    # "ret":Z
    .end local v1    # "sehService":Lvendor/samsung/hardware/health/V2_0/ISehHealth;
    goto :goto_55

    .line 1638
    :catch_4a
    move-exception v0

    .line 1639
    .local v0, "err":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "Exception in write to wc param info"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1642
    .end local v0    # "err":Ljava/lang/Exception;
    :goto_55
    return-void
.end method

.method private setWirelessFastCharging(Z)V
    .registers 8
    .param p1, "isWirelessFastChargingSettingsEnable"    # Z

    .line 1608
    const/4 v0, 0x0

    .line 1609
    .local v0, "ret":Z
    const/4 v1, 0x1

    :try_start_2
    iget v2, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingOffset:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1f

    .line 1610
    const-string v2, "default"

    invoke-static {v2, v1}, Lvendor/samsung/hardware/health/V2_0/ISehHealth;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/health/V2_0/ISehHealth;

    move-result-object v2

    .line 1612
    .local v2, "sehService":Lvendor/samsung/hardware/health/V2_0/ISehHealth;
    iget v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingOffset:I

    const/4 v4, 0x0

    if-nez p1, :cond_14

    move v5, v1

    goto :goto_15

    :cond_14
    move v5, v4

    .line 1611
    :goto_15
    invoke-interface {v2, v3, v5}, Lvendor/samsung/hardware/health/V2_0/ISehHealth;->sehWriteEnableToParam(IZ)I

    move-result v3

    if-nez v3, :cond_1d

    .line 1612
    move v4, v1

    goto :goto_1e

    :cond_1d
    nop

    :goto_1e
    move v0, v4

    .line 1614
    .end local v2    # "sehService":Lvendor/samsung/hardware/health/V2_0/ISehHealth;
    :cond_1f
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write to WFC param offset enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_4a

    .line 1619
    nop

    .end local v0    # "ret":Z
    goto :goto_55

    .line 1616
    :catch_4a
    move-exception v0

    .line 1617
    .local v0, "err":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "Exception in write to WFC param"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1622
    .end local v0    # "err":Ljava/lang/Exception;
    :goto_55
    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    if-eqz p1, :cond_5e

    .line 1623
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_61

    .line 1625
    :cond_5e
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1627
    :goto_61
    return-void
.end method

.method private setWirelessPowerSharingExternelEventInternal(II)V
    .registers 7
    .param p1, "packageNum"    # I
    .param p2, "value"    # I

    .line 2928
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2929
    :try_start_3
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWirelessPowerSharingExternelEventInternal packageNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    iget v1, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    .line 2932
    .local v1, "mWirelessPowerSharingExternelEvent":I
    not-int v2, p1

    and-int/2addr v1, v2

    .line 2933
    or-int/2addr v1, p2

    .line 2935
    iget v2, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    if-eq v1, v2, :cond_32

    .line 2936
    const-string v2, "/sys/class/power_supply/battery/ext_event"

    invoke-static {v2, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 2937
    iput v1, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    .line 2939
    .end local v1    # "mWirelessPowerSharingExternelEvent":I
    :cond_32
    monitor-exit v0

    .line 2940
    return-void

    .line 2939
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private setWirelessPowerSharingTxBatteryLimit(I)V
    .registers 3
    .param p1, "limit"    # I

    .line 2943
    const-string v0, "/sys/class/power_supply/battery/wc_tx_stop_capacity"

    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 2944
    return-void
.end method

.method private shouldSendBatteryLowLocked()Z
    .registers 7

    .line 1646
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1647
    .local v0, "plugged":Z
    :goto_9
    iget v3, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    .line 1655
    .local v3, "oldPlugged":Z
    :goto_10
    if-nez v0, :cond_27

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    if-eq v4, v2, :cond_27

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_27

    if-nez v3, :cond_26

    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-le v4, v5, :cond_27

    :cond_26
    move v1, v2

    :cond_27
    return v1
.end method

.method private shouldShutdownLocked()Z
    .registers 6

    .line 1662
    const/4 v0, 0x0

    .line 1664
    .local v0, "shouldShutdown":Z
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo2p1:Landroid/hardware/health/V2_1/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_12

    .line 1665
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo2p1:Landroid/hardware/health/V2_1/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_11

    move v2, v3

    :cond_11
    return v2

    .line 1667
    :cond_12
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-lez v1, :cond_19

    .line 1668
    return v2

    .line 1672
    :cond_19
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    if-nez v1, :cond_20

    .line 1673
    return v2

    .line 1677
    :cond_20
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-nez v1, :cond_80

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v1, :cond_80

    .line 1678
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo2p0:Landroid/hardware/health/V2_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    if-ltz v1, :cond_65

    const/4 v1, 0x7

    .line 1679
    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1680
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@ BatteryService plug type: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " battery current avg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo2p0:Landroid/hardware/health/V2_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", so doesn\'t shutdown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    return v2

    .line 1687
    :cond_65
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v1, :cond_7f

    .line 1688
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    .line 1689
    .local v1, "emergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 1690
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "!@ BatteryService Emergency mode is on so doesn\'t shutdown"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    return v2

    .line 1695
    .end local v1    # "emergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_7f
    const/4 v0, 0x1

    .line 1704
    :cond_80
    return v0
.end method

.method private shutdownIfNoPowerLocked()V
    .registers 4

    .line 1710
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shouldShutdownLocked()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1713
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1714
    const-string/jumbo v0, "persist.sys.shutdown"

    const-string v1, "LBSD"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    :cond_18
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$17;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$17;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1754
    :cond_22
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-nez v0, :cond_5f

    .line 1755
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1756
    :cond_34
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ BatteryService mBootCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " am.isSystemReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1757
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", so doesn\'t shutdown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1756
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_5f
    return-void
.end method

.method private shutdownIfOverTempLocked()V
    .registers 5

    .line 1771
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    const/16 v1, 0x258

    if-le v0, v1, :cond_22

    .line 1772
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "!@Over temp , send cool dowm intent"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget-object v0, p0, Lcom/android/server/BatteryService;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const/4 v1, 0x2

    const-string v2, "battery_overheat_level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1774
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1791
    :cond_22
    return-void
.end method

.method private startCallThread()V
    .registers 3

    .line 776
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CallThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mCallHandlerThread:Landroid/os/HandlerThread;

    .line 777
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 779
    new-instance v0, Lcom/android/server/BatteryService$7;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mCallHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mCallHandler:Landroid/os/Handler;

    .line 793
    return-void
.end method

.method private static traceBegin(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 3702
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3703
    return-void
.end method

.method private static traceEnd()V
    .registers 2

    .line 3706
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3707
    return-void
.end method

.method private update(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)V
    .registers 6
    .param p1, "info"    # Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    .line 1797
    const-string v0, "HealthInfoUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 1806
    iget-object v0, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    iget-object v0, v0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v0, v0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    const-wide/32 v1, 0x20000

    const-string v3, "BatteryChargeCounter"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1808
    iget-object v0, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    iget-object v0, v0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v0, v0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    const-string v3, "BatteryCurrent"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1812
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1813
    :try_start_25
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v1, :cond_47

    .line 1819
    iget-object v1, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    iget-object v1, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v1, v1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    .line 1820
    iget-object v1, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    iget-object v1, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo2p0:Landroid/hardware/health/V2_0/HealthInfo;

    .line 1821
    iget-object v1, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo2p1:Landroid/hardware/health/V2_1/HealthInfo;

    .line 1822
    iput-object p1, p0, Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    .line 1826
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 1827
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_59

    .line 1829
    :cond_47
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "!@ BatteryService updates stopped by adb"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 1836
    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_25 .. :try_end_5a} :catchall_5e

    .line 1837
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 1838
    return-void

    .line 1836
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method

.method private updateBatteryWarningLevelLocked()V
    .registers 6

    .line 1536
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1537
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1546
    .local v1, "defWarnLevel":I
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v2, v3, :cond_1b

    .line 1547
    iput v3, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 1549
    :cond_1b
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 1551
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 1552
    return-void
.end method

.method private writeToFile(Ljava/lang/String;J)I
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # J

    .line 3390
    const/4 v0, 0x0

    .line 3392
    .local v0, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 3393
    nop

    .line 3394
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3395
    const-string/jumbo v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3396
    .local v1, "eol":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 3397
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[BatteryInfo] writeToFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 3399
    const-string v2, "/efs/FactoryApp/asoc"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 3400
    const/16 v2, 0x1a0

    const/16 v3, 0x3e8

    const/16 v4, 0x3ef

    invoke-static {p1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_64} :catch_66

    .line 3403
    :cond_64
    const/4 v2, 0x0

    return v2

    .line 3405
    .end local v1    # "eol":Ljava/lang/String;
    :catch_66
    move-exception v1

    .line 3406
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "!@[BatteryInfo] IOException in writeToFile"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    if-eqz v0, :cond_7d

    .line 3409
    :try_start_70
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_7d

    .line 3411
    :catch_74
    move-exception v2

    .line 3412
    .local v2, "err":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "!@[BatteryInfo] Exception in writeToFile"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 3413
    .end local v2    # "err":Ljava/lang/Exception;
    :cond_7d
    :goto_7d
    nop

    .line 3415
    .end local v1    # "e":Ljava/io/IOException;
    :goto_7e
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public isSupportedWirelessTx()Z
    .registers 4

    .line 2948
    const/16 v0, 0x10

    .line 2949
    .local v0, "INPUT_FEATURE_SUPPORT_WIRELESS_TX":I
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 2950
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    if-eqz v1, :cond_12

    .line 2951
    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_12

    .line 2952
    const/4 v2, 0x1

    return v2

    .line 2955
    :cond_12
    const/4 v2, 0x0

    return v2
.end method

.method public onBootPhase(I)V
    .registers 11
    .param p1, "phase"    # I

    .line 1209
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x226

    if-ne p1, v3, :cond_2f

    .line 1211
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1213
    :try_start_a
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    .line 1215
    new-instance v2, Lcom/android/server/BatteryService$11;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/BatteryService$11;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 1223
    .local v2, "obs":Landroid/database/ContentObserver;
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1224
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v5, "low_power_trigger_level"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1227
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 1228
    invoke-direct {p0, v4}, Lcom/android/server/BatteryService;->registerContentObserver(Landroid/content/ContentResolver;)V

    .line 1229
    .end local v2    # "obs":Landroid/database/ContentObserver;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    monitor-exit v3

    goto/16 :goto_dc

    :catchall_2c
    move-exception v0

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_2c

    throw v0

    .line 1232
    :cond_2f
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_dc

    .line 1234
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1235
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/BatteryService$12;

    invoke-direct {v5, p0}, Lcom/android/server/BatteryService$12;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1248
    iget-object v4, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1249
    :try_start_46
    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->sendDeteriorationIntentLocked(Z)V

    .line 1250
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_d9

    .line 1254
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    if-eqz v4, :cond_6c

    .line 1255
    const-string/jumbo v4, "persist.sys.shutdown_received"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1256
    .local v4, "last":Z
    const-string/jumbo v5, "persist.sys.shutdown_received"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    if-nez v4, :cond_6c

    .line 1259
    iget-object v5, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/BatteryService$13;

    invoke-direct {v6, p0}, Lcom/android/server/BatteryService$13;-><init>(Lcom/android/server/BatteryService;)V

    const-wide/32 v7, 0xc350

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1277
    .end local v4    # "last":Z
    :cond_6c
    sget-boolean v4, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v4, :cond_8c

    .line 1278
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    if-eqz v4, :cond_8c

    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    and-int/lit8 v5, v4, 0x20

    if-nez v5, :cond_7e

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_8c

    .line 1281
    :cond_7e
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v5, "bootCompleted and HiccupPopup"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    const-string v5, "/sys/class/power_supply/battery/batt_misc_event"

    invoke-static {v5, v4}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1288
    :cond_8c
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v4, :cond_96

    .line 1289
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->isSupportedWirelessTx()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    .line 1294
    :cond_96
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    if-eqz v4, :cond_dc

    .line 1295
    const/4 v4, -0x2

    const-string/jumbo v5, "protect_battery"

    invoke-static {v3, v5, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_a5

    goto :goto_a6

    :cond_a5
    move v2, v1

    :goto_a6
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 1296
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@mLifeExtender Settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mLifeExtenderSettingsObserver register"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const-string/jumbo v2, "protect_battery"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/BatteryService;->mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    invoke-virtual {v3, v2, v1, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1298
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_dc

    .line 1250
    :catchall_d9
    move-exception v0

    :try_start_da
    monitor-exit v4
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw v0

    .line 1303
    .end local v3    # "contentResolver":Landroid/content/ContentResolver;
    :cond_dc
    :goto_dc
    return-void
.end method

.method onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I
    .registers 14
    .param p1, "shell"    # Lcom/android/server/BatteryService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 3462
    if-nez p2, :cond_7

    .line 3463
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3465
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3466
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x32165859    # -4.90009824E8f

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_39

    const v2, 0x1bc62

    if-eq v1, v2, :cond_2e

    const v2, 0x6761d4f

    if-eq v1, v2, :cond_23

    :cond_22
    goto :goto_44

    :cond_23
    const-string/jumbo v1, "reset"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v3

    goto :goto_45

    :cond_2e
    const-string/jumbo v1, "set"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v5

    goto :goto_45

    :cond_39
    const-string/jumbo v1, "unplug"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v6

    goto :goto_45

    :goto_44
    move v1, v4

    :goto_45
    const/4 v2, 0x0

    const-string v7, "android.permission.DEVICE_POWER"

    if-eqz v1, :cond_1c3

    if-eq v1, v5, :cond_7d

    if-eq v1, v3, :cond_53

    .line 3569
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 3554
    :cond_53
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 3555
    .local v1, "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3557
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3559
    .local v2, "ident":J
    :try_start_62
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v4, :cond_72

    .line 3560
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 3561
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 3562
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_72
    .catchall {:try_start_62 .. :try_end_72} :catchall_78

    .line 3565
    :cond_72
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3566
    nop

    .line 3567
    .end local v1    # "opts":I
    .end local v2    # "ident":J
    goto/16 :goto_1f3

    .line 3565
    .restart local v1    # "opts":I
    .restart local v2    # "ident":J
    :catchall_78
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3566
    throw v4

    .line 3486
    .end local v1    # "opts":I
    .end local v2    # "ident":J
    :cond_7d
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 3487
    .restart local v1    # "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3489
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 3490
    .local v2, "key":Ljava/lang/String;
    if-nez v2, :cond_94

    .line 3491
    const-string v3, "No property specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3492
    return v4

    .line 3495
    :cond_94
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 3496
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_a0

    .line 3497
    const-string v3, "No value specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3498
    return v4

    .line 3502
    :cond_a0
    :try_start_a0
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v8, :cond_ab

    .line 3503
    iget-object v8, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v8, v9}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 3505
    :cond_ab
    const/4 v8, 0x1

    .line 3506
    .local v8, "update":Z
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1fa

    :cond_b3
    goto :goto_115

    :sswitch_b4
    const-string/jumbo v3, "invalid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/16 v3, 0x8

    goto :goto_116

    :sswitch_c0
    const-string v3, "counter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/4 v3, 0x6

    goto :goto_116

    :sswitch_ca
    const-string/jumbo v3, "level"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/4 v3, 0x5

    goto :goto_116

    :sswitch_d5
    const-string/jumbo v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/4 v3, 0x7

    goto :goto_116

    :sswitch_e0
    const-string/jumbo v9, "usb"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b3

    goto :goto_116

    :sswitch_ea
    const-string v3, "ac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    move v3, v5

    goto :goto_116

    :sswitch_f4
    const-string/jumbo v3, "present"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    move v3, v6

    goto :goto_116

    :sswitch_ff
    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/4 v3, 0x4

    goto :goto_116

    :sswitch_10a
    const-string/jumbo v3, "wireless"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/4 v3, 0x3

    goto :goto_116

    :goto_115
    move v3, v4

    :goto_116
    packed-switch v3, :pswitch_data_220

    .line 3535
    new-instance v3, Ljava/lang/StringBuilder;

    goto/16 :goto_183

    .line 3532
    :pswitch_11d
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 3533
    goto/16 :goto_196

    .line 3529
    :pswitch_125
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 3530
    goto/16 :goto_196

    .line 3526
    :pswitch_12f
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 3527
    goto/16 :goto_196

    .line 3523
    :pswitch_139
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 3524
    goto :goto_196

    .line 3520
    :pswitch_142
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 3521
    goto :goto_196

    .line 3517
    :pswitch_14b
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_155

    move v9, v5

    goto :goto_156

    :cond_155
    move v9, v6

    :goto_156
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 3518
    goto :goto_196

    .line 3514
    :pswitch_159
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_163

    move v9, v5

    goto :goto_164

    :cond_163
    move v9, v6

    :goto_164
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 3515
    goto :goto_196

    .line 3511
    :pswitch_167
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_171

    move v9, v5

    goto :goto_172

    :cond_171
    move v9, v6

    :goto_172
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 3512
    goto :goto_196

    .line 3508
    :pswitch_175
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_17f

    move v9, v5

    goto :goto_180

    :cond_17f
    move v9, v6

    :goto_180
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 3509
    goto :goto_196

    .line 3535
    :goto_183
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown set option: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3536
    const/4 v8, 0x0

    .line 3539
    :goto_196
    if-eqz v8, :cond_1ab

    .line 3540
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_19c
    .catch Ljava/lang/NumberFormatException; {:try_start_a0 .. :try_end_19c} :catch_1ad

    .line 3542
    .local v9, "ident":J
    :try_start_19c
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 3543
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_1a1
    .catchall {:try_start_19c .. :try_end_1a1} :catchall_1a5

    .line 3545
    :try_start_1a1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3546
    goto :goto_1ab

    .line 3545
    :catchall_1a5
    move-exception v3

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3546
    nop

    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v1    # "opts":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/BatteryService;
    .end local p1    # "shell":Lcom/android/server/BatteryService$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v3
    :try_end_1ab
    .catch Ljava/lang/NumberFormatException; {:try_start_1a1 .. :try_end_1ab} :catch_1ad

    .line 3551
    .end local v8    # "update":Z
    .end local v9    # "ident":J
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "opts":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/BatteryService;
    .restart local p1    # "shell":Lcom/android/server/BatteryService$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :cond_1ab
    :goto_1ab
    nop

    .line 3552
    .end local v1    # "opts":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_1f3

    .line 3548
    .restart local v1    # "opts":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :catch_1ad
    move-exception v3

    .line 3549
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3550
    return v4

    .line 3468
    .end local v1    # "opts":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1c3
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 3469
    .restart local v1    # "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3471
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v2, :cond_1d9

    .line 3472
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 3474
    :cond_1d9
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 3475
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 3476
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 3477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3479
    .local v2, "ident":J
    :try_start_1e9
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 3480
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_1ee
    .catchall {:try_start_1e9 .. :try_end_1ee} :catchall_1f4

    .line 3482
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3483
    nop

    .line 3484
    .end local v1    # "opts":I
    .end local v2    # "ident":J
    nop

    .line 3571
    :goto_1f3
    return v6

    .line 3482
    .restart local v1    # "opts":I
    .restart local v2    # "ident":J
    :catchall_1f4
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3483
    throw v4

    nop

    :sswitch_data_1fa
    .sparse-switch
        -0x3b9b7862 -> :sswitch_10a
        -0x3532300e -> :sswitch_ff
        -0x12f88745 -> :sswitch_f4
        0xc22 -> :sswitch_ea
        0x1c584 -> :sswitch_e0
        0x3643d4 -> :sswitch_d5
        0x6219b84 -> :sswitch_ca
        0x391755fc -> :sswitch_c0
        0x74cff1f7 -> :sswitch_b4
    .end sparse-switch

    :pswitch_data_220
    .packed-switch 0x0
        :pswitch_175
        :pswitch_167
        :pswitch_159
        :pswitch_14b
        :pswitch_142
        :pswitch_139
        :pswitch_12f
        :pswitch_125
        :pswitch_11d
    .end packed-switch
.end method

.method public onStart()V
    .registers 4

    .line 1194
    invoke-direct {p0}, Lcom/android/server/BatteryService;->registerHealthCallback()V

    .line 1196
    new-instance v0, Lcom/android/server/BatteryService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    .line 1197
    const-string v2, "battery"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1198
    new-instance v0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    .line 1199
    const-string v2, "batteryproperties"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1200
    const-class v0, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1203
    invoke-direct {p0}, Lcom/android/server/BatteryService;->checkLongLifeBattery()V

    .line 1205
    return-void
.end method

.method parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .registers 5
    .param p1, "shell"    # Lcom/android/server/BatteryService$Shell;

    .line 3452
    const/4 v0, 0x0

    .line 3453
    .local v0, "opts":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 3454
    const-string v1, "-f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3455
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3458
    :cond_13
    return v0
.end method

.method setAdaptiveFastCharging(Z)V
    .registers 8
    .param p1, "adaptiveFastChargingEnable"    # Z

    .line 2863
    const/4 v0, 0x0

    .line 2864
    .local v0, "ret":Z
    :try_start_1
    iget v1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingOffset:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 2865
    const-string v1, "default"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lvendor/samsung/hardware/health/V2_0/ISehHealth;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/health/V2_0/ISehHealth;

    move-result-object v1

    .line 2867
    .local v1, "sehService":Lvendor/samsung/hardware/health/V2_0/ISehHealth;
    iget v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingOffset:I

    const/4 v4, 0x0

    if-nez p1, :cond_14

    move v5, v2

    goto :goto_15

    :cond_14
    move v5, v4

    .line 2866
    :goto_15
    invoke-interface {v1, v3, v5}, Lvendor/samsung/hardware/health/V2_0/ISehHealth;->sehWriteEnableToParam(IZ)I

    move-result v3

    if-nez v3, :cond_1c

    .line 2867
    goto :goto_1d

    :cond_1c
    move v2, v4

    :goto_1d
    move v0, v2

    .line 2869
    .end local v1    # "sehService":Lvendor/samsung/hardware/health/V2_0/ISehHealth;
    :cond_1e
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write to AFC param offset enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_49

    .line 2874
    nop

    .end local v0    # "ret":Z
    goto :goto_54

    .line 2871
    :catch_49
    move-exception v0

    .line 2872
    .local v0, "err":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "Exception in write to AFC param"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2877
    .end local v0    # "err":Ljava/lang/Exception;
    :goto_54
    iget-object v0, p0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    const-wide/16 v1, 0x0

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 2878
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "success to set AFC sysfs as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 2880
    :cond_78
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "fail to set AFC sysfs"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    :goto_7f
    return-void
.end method

.method setHiccupDisable()Z
    .registers 3

    .line 2913
    const-string v0, "/sys/class/sec/switch/hiccup"

    const-string v1, "DISABLE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setOTGEnableDisable(Z)Z
    .registers 5
    .param p1, "otgEnable"    # Z

    .line 2855
    const-string v0, "/sys/class/power_supply/otg/online"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method setResponseHiccupEvent()V
    .registers 3

    .line 2917
    const-string v0, "/sys/class/power_supply/battery/batt_misc_event"

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 2918
    return-void
.end method

.method setSuperFastCharging(Z)V
    .registers 8
    .param p1, "superFastChargingEnable"    # Z

    .line 2889
    const/4 v0, 0x0

    .line 2890
    .local v0, "ret":Z
    :try_start_1
    iget v1, p0, Lcom/android/server/BatteryService;->mSuperFastChargingOffset:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 2891
    const-string v1, "default"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lvendor/samsung/hardware/health/V2_0/ISehHealth;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/health/V2_0/ISehHealth;

    move-result-object v1

    .line 2893
    .local v1, "sehService":Lvendor/samsung/hardware/health/V2_0/ISehHealth;
    iget v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingOffset:I

    const/4 v4, 0x0

    if-nez p1, :cond_14

    move v5, v2

    goto :goto_15

    :cond_14
    move v5, v4

    .line 2892
    :goto_15
    invoke-interface {v1, v3, v5}, Lvendor/samsung/hardware/health/V2_0/ISehHealth;->sehWriteEnableToParam(IZ)I

    move-result v3

    if-nez v3, :cond_1c

    .line 2893
    goto :goto_1d

    :cond_1c
    move v2, v4

    :goto_1d
    move v0, v2

    .line 2895
    .end local v1    # "sehService":Lvendor/samsung/hardware/health/V2_0/ISehHealth;
    :cond_1e
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write to SFC param offset enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_49

    .line 2900
    nop

    .end local v0    # "ret":Z
    goto :goto_54

    .line 2897
    :catch_49
    move-exception v0

    .line 2898
    .local v0, "err":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "Exception in write to SFC param"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2903
    .end local v0    # "err":Ljava/lang/Exception;
    :goto_54
    const-wide/16 v0, 0x0

    xor-int/lit8 v2, p1, 0x1

    const-string v3, "/sys/class/power_supply/battery/pd_disable"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 2904
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "success to set SFC sysfs as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 2906
    :cond_78
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "fail to set SFC sysfs"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    :goto_7f
    return-void
.end method

.method setWirelessChargingState(Z)V
    .registers 9
    .param p1, "wirelessChargingState"    # Z

    .line 2962
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wirelessChargingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", notifyWirelessEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    const-string v0, "/sys/class/sec/tsp/cmd"

    const-string v1, "/sys/class/sec/switch/wireless"

    const-string v2, "/sys/class/sec/sec_epen/epen_wcharging_mode"

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_47

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    if-nez v5, :cond_47

    .line 2965
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "notify wireless on"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 2967
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    .line 2968
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    .line 2969
    const-string/jumbo v1, "set_wirelesscharger_mode,1"

    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6c

    .line 2970
    :cond_47
    if-nez p1, :cond_6c

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    if-eqz v5, :cond_6c

    .line 2971
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    if-nez v5, :cond_6c

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    if-nez v5, :cond_6c

    .line 2972
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "notify wireless off"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 2974
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    .line 2975
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    .line 2976
    const-string/jumbo v1, "set_wirelesscharger_mode,0"

    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2979
    :cond_6c
    :goto_6c
    return-void
.end method

.method setWirelessPowerSharing(Z)Z
    .registers 5
    .param p1, "wirelessPowerSharingEnable"    # Z

    .line 2923
    const-string v0, "/sys/class/power_supply/battery/wc_tx_en"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method writeToFile(Ljava/lang/String;JZ)Z
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .line 3014
    const/4 v0, 0x0

    .line 3015
    .local v0, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3017
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_24

    .line 3018
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    return v3

    .line 3024
    :cond_24
    :try_start_24
    new-instance v2, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "rw"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_31} :catch_4c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_31} :catch_4a

    move-object v0, v2

    .line 3028
    nop

    .line 3030
    :try_start_33
    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3031
    if-eqz p4, :cond_3b

    const-string v2, "1"

    goto :goto_3d

    :cond_3b
    const-string v2, "0"

    :goto_3d
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 3032
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 3041
    nop

    .line 3043
    const/4 v2, 0x1

    return v2

    .line 3033
    :catch_4a
    move-exception v2

    goto :goto_51

    .line 3025
    :catch_4c
    move-exception v2

    .line 3026
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_50} :catch_4a

    .line 3027
    return v3

    .line 3034
    .local v2, "e":Ljava/io/IOException;
    :goto_51
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3036
    :try_start_54
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    .line 3039
    goto :goto_5c

    .line 3037
    :catch_58
    move-exception v4

    .line 3038
    .local v4, "err":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 3040
    .end local v4    # "err":Ljava/lang/Exception;
    :goto_5c
    return v3
.end method
