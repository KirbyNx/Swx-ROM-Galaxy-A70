.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/hardware/input/InputManager$OnLidStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$AbortLogInfo;,
        Lcom/android/server/VibratorService$MuteLogInfo;,
        Lcom/android/server/VibratorService$AbortVibration;,
        Lcom/android/server/VibratorService$MuteCallInfo;,
        Lcom/android/server/VibratorService$MuteNotificationInfo;,
        Lcom/android/server/VibratorService$MuteInfo;,
        Lcom/android/server/VibratorService$SecSettingsObserver;,
        Lcom/android/server/VibratorService$SamsungBroadcastReceiver;,
        Lcom/android/server/VibratorService$VibratorShellCommand;,
        Lcom/android/server/VibratorService$ExternalVibratorService;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$ScaleLevel;,
        Lcom/android/server/VibratorService$VibrationInfo;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final AMPLITUDE_LIST_TYPE_DEFAULT:I = 0x0

.field private static final AMPLITUDE_LIST_TYPE_TOUCH:I = 0x1

.field private static final ASYNC_TIMEOUT_MULTIPLIER:J = 0x2L

.field private static final DEBUG:Z = true

.field private static final DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

.field private static final EXTERNAL_VIBRATOR_SERVICE:Ljava/lang/String; = "external_vibrator_service"

.field private static final EXTRA_KEEP_SCREEN_OFF:Ljava/lang/String; = "reason"

.field private static final HAPTIC_ENGINE_DATA_UNIT_SIZE:I = 0x4

.field private static final LOG_INFOS_LIMIT:I = 0xf

.field private static final MUTE_INFO_DELIMITER:Ljava/lang/String; = ";"

.field private static final NOTIFICATION_DEFAULT_PATTERN_SEP_INDEX:I = 0xc372

.field private static final NOTIFICATION_PATH:Ljava/lang/String; = "content://com.android.settings.personalvibration.PersonalVibrationProvider/notification"

.field private static final REPEAT_DEFAULT:I = -0x2

.field private static final RINGTONE_DEFAULT_PATTERN_SEP_INDEX:I = 0xc373

.field private static final RINGTONE_PATH:Ljava/lang/String; = "content://com.android.settings.personalvibration.PersonalVibrationProvider/registerinfo"

.field private static final SAFE_DEBUG:Z

.field private static final SCALE_HIGH:I = 0x1

.field private static final SCALE_HIGH_GAMMA:F = 0.5f

.field private static final SCALE_LOW:I = -0x1

.field private static final SCALE_LOW_GAMMA:F = 1.5f

.field private static final SCALE_LOW_MAX_AMPLITUDE:I = 0xc0

.field private static final SCALE_MUTE:I = -0x64

.field private static final SCALE_NONE:I = 0x0

.field private static final SCALE_NONE_GAMMA:F = 1.0f

.field private static final SCALE_VERY_HIGH:I = 0x2

.field private static final SCALE_VERY_HIGH_GAMMA:F = 0.25f

.field private static final SCALE_VERY_LOW:I = -0x2

.field private static final SCALE_VERY_LOW_GAMMA:F = 2.0f

.field private static final SCALE_VERY_LOW_MAX_AMPLITUDE:I = 0xa8

.field private static final SEC_VIB_HAL_2_1:F = 2.1f

.field private static final SEP_INDEX_CUSTOM_NOTIFICATION_END:I = 0x1d4c0

.field private static final SEP_INDEX_CUSTOM_NOTIFICATION_START:I = 0x1adb1

.field private static final SEP_INDEX_CUSTOM_RINGTONE_END:I = 0x1adb0

.field private static final SEP_INDEX_CUSTOM_RINGTONE_START:I = 0x186a1

.field private static final SEP_INDEX_DC_HAPTIC_FEEDBACK:I = 0xc3cc

.field private static final TAG:Ljava/lang/String; = "VibratorService"

.field private static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field private static final TYPE_MAGNITUDE_FEEDBACK:I = 0x0

.field private static final TYPE_MAGNITUDE_FORCE:I = 0x3

.field private static final TYPE_MAGNITUDE_NOTIFICATION:I = 0x2

.field private static final TYPE_MAGNITUDE_RECVCALL:I = 0x1

.field private static final TYPE_URI:[Ljava/lang/String;

.field private static final USAGE_ENFORCED_VIBRATION:I = 0x64

.field private static sMuteLogInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$MuteLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sMutedInfos:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/server/VibratorService$MuteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LEVEL_TO_FORCE_MAGNITUDE:[I

.field private LEVEL_TO_MAGNITUDE:[I

.field private LEVEL_TO_TOUCH_MAGNITUDE:[I

.field private final mAbortLogInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$AbortLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowPriorityVibrationsInLowPowerMode:Z

.field private mAlwaysOnEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private mCallMagnitude:I

.field private mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mCameraOn:Z

.field private final mCapabilities:J

.field private mCheckExecutable:I

.field private mCheckExecutablePkg:Ljava/lang/String;

.field private mCirrusNumWaves:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentExternalVibration:Landroid/os/ExternalVibration;

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private final mDefaultVibrationAmplitude:I

.field private final mFallbackEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mForceMagnitude:I

.field private mForceMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

.field private final mH:Landroid/os/Handler;

.field private mHMTMount:Z

.field private mHMTMountCount:I

.field private mHapticFeedbackIntensity:I

.field private mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

.field private mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEnableIntensity:Z

.field private mIsFrequencySupported:Z

.field private mIsGearVrTetheredDocked:Z

.field private mIsHapticEngineSupported:Z

.field private mIsHapticSupported:Z

.field private mIsVibrating:Z

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private mMaxMagnitude:I

.field private mMinMagnitude:I

.field private mMotorType:I

.field private mNotiMagnitude:I

.field private mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mNotificationIntensity:I

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousAlarmVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousExternalVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/ExternalVibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousNotificationVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousRingVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private final mProcStatesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRingIntensity:I

.field private mSamsungReceiver:Landroid/content/BroadcastReceiver;

.field private final mScaleLevels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/VibratorService$ScaleLevel;",
            ">;"
        }
    .end annotation
.end field

.field private mSecVibHalVersion:F

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mSupportFold:Z

.field private final mSupportedEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportsAmplitudeControl:Z

.field private final mSupportsExternalControl:Z

.field private final mSystemUiPackage:Ljava/lang/String;

.field private mTempMagnitude:I

.field private volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTimeFormat:Ljava/text/SimpleDateFormat;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTouchMagnitude:I

.field private mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationEndRunnable:Ljava/lang/Runnable;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

.field private final mVibratorStateListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVibratorUnderExternalControl:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 134
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_30

    sput-object v0, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    .line 158
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 159
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/VibratorService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 2716
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    .line 2720
    const-string v0, "VIB_FEEDBACK_MAGNITUDE"

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    const-string v2, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    const-string v3, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    .line 2794
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    return-void

    nop

    :array_30
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .line 587
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 182
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    .line 183
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 213
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 219
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    .line 251
    new-instance v1, Lcom/android/server/VibratorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1208
    new-instance v1, Lcom/android/server/VibratorService$4;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    .line 2273
    new-instance v1, Lcom/android/server/VibratorService$5;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$5;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2733
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mTimeFormat:Ljava/text/SimpleDateFormat;

    .line 2738
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 2739
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    .line 2740
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    .line 2741
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    .line 2745
    const/16 v2, 0x270f

    iput v2, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 2746
    iput v2, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 2747
    iput v2, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 2748
    iput v2, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    .line 2749
    iput v2, p0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    .line 2750
    iput v2, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    .line 2751
    iput v0, p0, Lcom/android/server/VibratorService;->mMotorType:I

    .line 2754
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mSupportFold:Z

    .line 2757
    iput v1, p0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    .line 2758
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    .line 2761
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mCameraOn:Z

    .line 2779
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mIsGearVrTetheredDocked:Z

    .line 2780
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    .line 2781
    iput v1, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    .line 2788
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/VibratorService;->mSecVibHalVersion:F

    .line 2796
    iput v1, p0, Lcom/android/server/VibratorService;->mCirrusNumWaves:I

    .line 2802
    new-instance v2, Lcom/samsung/android/server/vibrator/VibratorHqmData;

    invoke-direct {v2}, Lcom/samsung/android/server/vibrator/VibratorHqmData;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    .line 2857
    new-instance v2, Lcom/android/server/VibratorService$SamsungBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$SamsungBroadcastReceiver;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$1;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mSamsungReceiver:Landroid/content/BroadcastReceiver;

    .line 3899
    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 588
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    .line 591
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 593
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsAmplitudeControl()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    .line 594
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsExternalControl()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/VibratorService;->mSupportsExternalControl:Z

    .line 595
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorGetSupportedEffects()[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/VibratorService;->asList([I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    .line 596
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorGetCapabilities()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/VibratorService;->mCapabilities:J

    .line 598
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 599
    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 600
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "*vibrator*"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 601
    invoke-virtual {v4, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 603
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    .line 604
    const-string v4, "batterystats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 606
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 607
    invoke-virtual {v4}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mSystemUiPackage:Ljava/lang/String;

    .line 609
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    .line 612
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    .line 615
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    .line 619
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    sput-object v4, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    .line 620
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    .line 623
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    .line 624
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    .line 625
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    .line 626
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 627
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    .line 629
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 630
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 633
    const v5, 0x107013d

    invoke-direct {p0, v5}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 635
    .local v5, "clickEffect":Landroid/os/VibrationEffect;
    sget-object v6, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    invoke-static {v6, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v6

    .line 637
    .local v6, "doubleClickEffect":Landroid/os/VibrationEffect;
    const v7, 0x10700c4

    invoke-direct {p0, v7}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v7

    .line 639
    .local v7, "heavyClickEffect":Landroid/os/VibrationEffect;
    const v8, 0x1070085

    invoke-direct {p0, v8}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v8

    .line 642
    .local v8, "tickEffect":Landroid/os/VibrationEffect;
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    .line 643
    invoke-virtual {v9, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 644
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v9, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 645
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 646
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v11, 0x5

    invoke-virtual {v9, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 648
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    .line 649
    invoke-static {v10, v1}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v11

    .line 648
    const/16 v12, 0x15

    invoke-virtual {v9, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 651
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    .line 652
    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v12, 0x40000000    # 2.0f

    const/16 v13, 0xa8

    invoke-direct {v11, v12, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    const/4 v12, -0x2

    invoke-virtual {v9, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 654
    iget-object v9, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v12, 0x3fc00000    # 1.5f

    const/16 v13, 0xc0

    invoke-direct {v11, v12, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    invoke-virtual {v9, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 656
    iget-object v0, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct {v1, v9}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 657
    iget-object v0, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v1, v3}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 659
    new-instance v0, Lcom/android/server/VibratorService$ExternalVibratorService;

    invoke-direct {v0, p0}, Lcom/android/server/VibratorService$ExternalVibratorService;-><init>(Lcom/android/server/VibratorService;)V

    const-string v1, "external_vibrator_service"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 662
    const-string v0, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    const-string v0, "com.sec.android.app.camera.ACTION_CAMERA_STOP"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    const-string v0, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 670
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 671
    const-string v0, "com.sec.media.action.VIBRTOR_LOGGING"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/android/server/VibratorService;->mSamsungReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 675
    invoke-direct {p0}, Lcom/android/server/VibratorService;->setupCustomRoutine()V

    .line 677
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VibratorService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/VibratorService;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reloadContentObserver()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/VibratorService;JIILandroid/os/VibrationAttributes;II)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/os/VibrationAttributes;
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .line 128
    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService;->doVibratorOn(JIILandroid/os/VibrationAttributes;II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/VibratorService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/VibratorService;JILandroid/os/VibrationAttributes;III)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/os/VibrationAttributes;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .line 128
    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService;->doVibratorOnByIndex(JILandroid/os/VibrationAttributes;III)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/VibratorService;JILandroid/os/VibrationAttributes;II)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/os/VibrationAttributes;
    .param p5, "x4"    # I
    .param p6, "x5"    # I

    .line 128
    invoke-direct/range {p0 .. p6}, Lcom/android/server/VibratorService;->doVibratorOn(JILandroid/os/VibrationAttributes;II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/VibratorService;JILandroid/os/VibrationAttributes;[IIII)V
    .registers 9
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/os/VibrationAttributes;
    .param p5, "x4"    # [I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # I

    .line 128
    invoke-direct/range {p0 .. p8}, Lcom/android/server/VibratorService;->doVibratorOn(JILandroid/os/VibrationAttributes;[IIII)V

    return-void
.end method

.method static synthetic access$3200()Z
    .registers 1

    .line 128
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/VibratorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsExternalControl:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Landroid/os/ExternalVibration;

    .line 128
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/VibratorService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Z

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    return v0
.end method

.method static synthetic access$400(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 128
    invoke-static {p0}, Lcom/android/server/VibratorService;->isHapticFeedback(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/VibratorService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/VibratorService;J)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/VibratorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/server/VibratorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Z

    .line 128
    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mCameraOn:Z

    return p1
.end method

.method static synthetic access$500(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 128
    invoke-static {p0}, Lcom/android/server/VibratorService;->isNotification(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/VibratorService;)Lcom/samsung/android/server/audio/GoodCatchManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/server/VibratorService;Lcom/samsung/android/server/audio/GoodCatchManager;)Lcom/samsung/android/server/audio/GoodCatchManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 128
    iput-object p1, p0, Lcom/android/server/VibratorService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/server/VibratorService;)Lcom/samsung/android/server/vibrator/VibratorHqmHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/server/VibratorService;Lcom/samsung/android/server/vibrator/VibratorHqmHelper;)Lcom/samsung/android/server/vibrator/VibratorHqmHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 128
    iput-object p1, p0, Lcom/android/server/VibratorService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    invoke-direct {p0}, Lcom/android/server/VibratorService;->sendDataToHqm()V

    return-void
.end method

.method static synthetic access$5302(Lcom/android/server/VibratorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Z

    .line 128
    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mIsGearVrTetheredDocked:Z

    return p1
.end method

.method static synthetic access$5402(Lcom/android/server/VibratorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Z

    .line 128
    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    return p1
.end method

.method static synthetic access$5900()[Ljava/lang/String;
    .registers 1

    .line 128
    sget-object v0, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 128
    invoke-static {p0}, Lcom/android/server/VibratorService;->isRingtone(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/VibratorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget v0, p0, Lcom/android/server/VibratorService;->mMotorType:I

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateDcHapticFeedbackMagnitude()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/VibratorService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/VibratorService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 128
    iput p1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return p1
.end method

.method static synthetic access$6702(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 128
    iput p1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    return p1
.end method

.method static synthetic access$6802(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 128
    iput p1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return p1
.end method

.method static synthetic access$6900(Lcom/android/server/VibratorService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic access$700(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 128
    invoke-static {p0}, Lcom/android/server/VibratorService;->isAlarm(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget v0, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    return v0
.end method

.method static synthetic access$7002(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 128
    iput p1, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    return p1
.end method

.method static synthetic access$7100()Ljava/util/Hashtable;
    .registers 1

    .line 128
    sget-object v0, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$7200(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 128
    invoke-static {p0, p1}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/IBinder;

    .line 128
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/VibratorService;->addToMuteLogInfos(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/VibratorService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mSystemUiPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/VibratorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 128
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    return v0
.end method

.method private addAbortedVibration(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "magnitudeType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4305
    if-eqz p1, :cond_88

    if-nez p2, :cond_6

    goto/16 :goto_88

    .line 4309
    :cond_6
    sget-object v0, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v0

    .line 4310
    :try_start_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->addToAbortLogInfos(Ljava/lang/String;Ljava/lang/String;)V

    .line 4311
    sget-object v1, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 4312
    .local v1, "enumerationKey":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 4313
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4314
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$MuteInfo;

    .line 4316
    .local v3, "muteInfo":Lcom/android/server/VibratorService$MuteInfo;
    const/4 v4, 0x0

    .line 4317
    .local v4, "hasItem":Z
    # getter for: Lcom/android/server/VibratorService$MuteInfo;->mMagnitudeType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/VibratorService$MuteInfo;->access$7400(Lcom/android/server/VibratorService$MuteInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    sget-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 4318
    invoke-virtual {v5}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/server/VibratorService$MuteInfo;->mMagnitudeType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/VibratorService$MuteInfo;->access$7400(Lcom/android/server/VibratorService$MuteInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    sget-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 4319
    invoke-virtual {v5}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 4320
    :cond_4d
    # invokes: Lcom/android/server/VibratorService$MuteInfo;->getAbortedVibration()Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/VibratorService$MuteInfo;->access$7500(Lcom/android/server/VibratorService$MuteInfo;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 4322
    .local v5, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/VibratorService$AbortVibration;>;"
    :goto_56
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 4323
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/VibratorService$AbortVibration;

    .line 4324
    .local v6, "av":Lcom/android/server/VibratorService$AbortVibration;
    # invokes: Lcom/android/server/VibratorService$AbortVibration;->getPackageName()Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/VibratorService$AbortVibration;->access$7600(Lcom/android/server/VibratorService$AbortVibration;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 4325
    const/4 v4, 0x1

    .line 4326
    # invokes: Lcom/android/server/VibratorService$AbortVibration;->addCount()V
    invoke-static {v6}, Lcom/android/server/VibratorService$AbortVibration;->access$7700(Lcom/android/server/VibratorService$AbortVibration;)V

    .line 4328
    .end local v6    # "av":Lcom/android/server/VibratorService$AbortVibration;
    :cond_70
    goto :goto_56

    .line 4329
    :cond_71
    if-nez v4, :cond_82

    .line 4330
    new-instance v6, Lcom/android/server/VibratorService$AbortVibration;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/VibratorService$AbortVibration;-><init>(Lcom/android/server/VibratorService$1;)V

    .line 4331
    .restart local v6    # "av":Lcom/android/server/VibratorService$AbortVibration;
    # invokes: Lcom/android/server/VibratorService$AbortVibration;->setPackageName(Ljava/lang/String;)V
    invoke-static {v6, p2}, Lcom/android/server/VibratorService$AbortVibration;->access$7900(Lcom/android/server/VibratorService$AbortVibration;Ljava/lang/String;)V

    .line 4332
    # invokes: Lcom/android/server/VibratorService$AbortVibration;->addCount()V
    invoke-static {v6}, Lcom/android/server/VibratorService$AbortVibration;->access$7700(Lcom/android/server/VibratorService$AbortVibration;)V

    .line 4333
    # invokes: Lcom/android/server/VibratorService$MuteInfo;->addAbortedVibration(Lcom/android/server/VibratorService$AbortVibration;)V
    invoke-static {v3, v6}, Lcom/android/server/VibratorService$MuteInfo;->access$8000(Lcom/android/server/VibratorService$MuteInfo;Lcom/android/server/VibratorService$AbortVibration;)V

    .line 4336
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "muteInfo":Lcom/android/server/VibratorService$MuteInfo;
    .end local v4    # "hasItem":Z
    .end local v5    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/VibratorService$AbortVibration;>;"
    .end local v6    # "av":Lcom/android/server/VibratorService$AbortVibration;
    :cond_82
    goto :goto_12

    .line 4337
    .end local v1    # "enumerationKey":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_83
    monitor-exit v0

    .line 4338
    return-void

    .line 4337
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_9 .. :try_end_87} :catchall_85

    throw v1

    .line 4306
    :cond_88
    :goto_88
    return-void
.end method

.method private addToAbortLogInfos(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "magnitudeType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4353
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_f

    .line 4354
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 4356
    :cond_f
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTimeFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 4357
    .local v0, "currentDate":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/server/VibratorService$AbortLogInfo;

    invoke-direct {v2, v0, p1, p2}, Lcom/android/server/VibratorService$AbortLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 4358
    return-void
.end method

.method private static addToMuteLogInfos(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V
    .registers 14
    .param p0, "magnitudeType"    # Ljava/lang/String;
    .param p1, "state"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 4342
    sget-object v0, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_f

    .line 4343
    sget-object v0, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 4345
    :cond_f
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4346
    .local v0, "timeFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 4347
    .local v1, "currentDate":Ljava/lang/String;
    sget-object v2, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    new-instance v3, Lcom/android/server/VibratorService$MuteLogInfo;

    .line 4348
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4349
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    move-object v5, v1

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/VibratorService$MuteLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4347
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 4350
    return-void
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 6
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1159
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1160
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    .local v0, "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_1d

    .line 1161
    .end local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1162
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    .restart local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_1d

    .line 1163
    .end local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1164
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    .restart local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_1d

    .line 1166
    .end local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_1b
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 1169
    .restart local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :goto_1d
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v1, v2, :cond_28

    .line 1170
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1173
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toExtraInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1176
    nop

    .line 1177
    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v1

    .line 1176
    invoke-static {v1}, Landroid/os/VibrationEffect$SemMagnitudeType;->valueOf(Ljava/lang/String;)Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v1

    .line 1178
    .local v1, "magType":Landroid/os/VibrationEffect$SemMagnitudeType;
    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v2, v1}, Landroid/os/VibrationEffect$SemMagnitudeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 1179
    invoke-virtual {v2, v1}, Landroid/os/VibrationEffect$SemMagnitudeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 1180
    iget-object v2, p0, Lcom/android/server/VibratorService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    if-eqz v2, :cond_59

    invoke-virtual {v2}, Lcom/samsung/android/server/audio/GoodCatchManager;->isVibrateCatchEnabled()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1181
    iget-object v2, p0, Lcom/android/server/VibratorService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/audio/GoodCatchManager;->updateVibrateMode(Ljava/lang/String;)V

    .line 1185
    .end local v1    # "magType":Landroid/os/VibrationEffect$SemMagnitudeType;
    :cond_59
    return-void
.end method

.method private applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V
    .registers 9
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .param p2, "intensity"    # I

    .line 1356
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_AOSP_INTENSITY:Z

    if-nez v0, :cond_5

    .line 1358
    return-void

    .line 1361
    :cond_5
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_17

    .line 1364
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    .line 1365
    .local v0, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    invoke-static {p2}, Lcom/android/server/VibratorService;->intensityToEffectStrength(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Prebaked;->setEffectStrength(I)V

    .line 1366
    return-void

    .line 1370
    .end local v0    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1371
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v0

    .local v0, "defaultIntensity":I
    goto :goto_45

    .line 1372
    .end local v0    # "defaultIntensity":I
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1373
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v0

    .restart local v0    # "defaultIntensity":I
    goto :goto_45

    .line 1374
    .end local v0    # "defaultIntensity":I
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1375
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v0

    .restart local v0    # "defaultIntensity":I
    goto :goto_45

    .line 1376
    .end local v0    # "defaultIntensity":I
    :cond_3e
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 1377
    const/4 v0, 0x3

    .line 1384
    .restart local v0    # "defaultIntensity":I
    :goto_45
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    sub-int v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$ScaleLevel;

    .line 1385
    .local v1, "scale":Lcom/android/server/VibratorService$ScaleLevel;
    const-string v2, "VibratorService"

    if-nez v1, :cond_75

    .line 1388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No configured scaling level! (current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", default= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    return-void

    .line 1393
    :cond_75
    const/4 v3, 0x0

    .line 1394
    .local v3, "scaledEffect":Landroid/os/VibrationEffect;
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$OneShot;

    if-eqz v4, :cond_8f

    .line 1395
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 1396
    .local v2, "oneShot":Landroid/os/VibrationEffect$OneShot;
    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v2, v4}, Landroid/os/VibrationEffect$OneShot;->resolve(I)Landroid/os/VibrationEffect$OneShot;

    move-result-object v2

    .line 1397
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$OneShot;->scale(FI)Landroid/os/VibrationEffect$OneShot;

    move-result-object v3

    .line 1398
    .end local v2    # "oneShot":Landroid/os/VibrationEffect$OneShot;
    goto :goto_c0

    :cond_8f
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$Waveform;

    if-eqz v4, :cond_a8

    .line 1399
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Waveform;

    .line 1400
    .local v2, "waveform":Landroid/os/VibrationEffect$Waveform;
    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v2, v4}, Landroid/os/VibrationEffect$Waveform;->resolve(I)Landroid/os/VibrationEffect$Waveform;

    move-result-object v2

    .line 1401
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$Waveform;->scale(FI)Landroid/os/VibrationEffect$Waveform;

    move-result-object v3

    .line 1402
    .end local v2    # "waveform":Landroid/os/VibrationEffect$Waveform;
    goto :goto_c0

    :cond_a8
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$Composed;

    if-eqz v4, :cond_bb

    .line 1403
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Composed;

    .line 1404
    .local v2, "composed":Landroid/os/VibrationEffect$Composed;
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$Composed;->scale(FI)Landroid/os/VibrationEffect$Composed;

    move-result-object v3

    .line 1405
    .end local v2    # "composed":Landroid/os/VibrationEffect$Composed;
    goto :goto_c0

    .line 1406
    :cond_bb
    const-string v4, "Unable to apply intensity scaling, unknown VibrationEffect type"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :goto_c0
    if-eqz v3, :cond_c8

    .line 1410
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iput-object v2, p1, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    .line 1411
    iput-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 1413
    :cond_c8
    return-void

    .line 1381
    .end local v0    # "defaultIntensity":I
    .end local v1    # "scale":Lcom/android/server/VibratorService$ScaleLevel;
    .end local v3    # "scaledEffect":Landroid/os/VibrationEffect;
    :cond_c9
    return-void
.end method

.method private static varargs asList([I)Ljava/util/List;
    .registers 6
    .param p0, "vals"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 887
    if-nez p0, :cond_4

    .line 888
    const/4 v0, 0x0

    return-object v0

    .line 890
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 891
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1a

    aget v3, p0, v2

    .line 892
    .local v3, "val":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    .end local v3    # "val":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 894
    :cond_1a
    return-object v0
.end method

.method private convertHapticToOneShot(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 7
    .param p1, "ve"    # Landroid/os/VibrationEffect;

    .line 4489
    const/4 v0, 0x0

    .line 4490
    .local v0, "oneShot":Landroid/os/VibrationEffect;
    instance-of v1, p1, Landroid/os/VibrationEffect$SemHaptic;

    if-eqz v1, :cond_1c

    .line 4491
    move-object v1, p1

    check-cast v1, Landroid/os/VibrationEffect$SemHaptic;

    .line 4492
    .local v1, "effect":Landroid/os/VibrationEffect$SemHaptic;
    invoke-virtual {v1}, Landroid/os/VibrationEffect$SemHaptic;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->isDCHapticFeedbackIndex(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget v2, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    if-lez v2, :cond_1c

    .line 4493
    int-to-long v2, v2

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 4496
    .end local v1    # "effect":Landroid/os/VibrationEffect$SemHaptic;
    :cond_1c
    return-object v0
.end method

.method private convertHapticToWaveform(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 18
    .param p1, "ve"    # Landroid/os/VibrationEffect;

    .line 4510
    move-object/from16 v1, p0

    const-string v0, "custom_data"

    const/4 v2, 0x0

    .line 4511
    .local v2, "waveform":Landroid/os/VibrationEffect;
    move-object/from16 v3, p1

    check-cast v3, Landroid/os/VibrationEffect$SemHaptic;

    .line 4512
    .local v3, "semHaptic":Landroid/os/VibrationEffect$SemHaptic;
    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitude()I

    move-result v4

    .line 4516
    .local v4, "vibMagnitude":I
    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemHaptic;->getType()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/android/server/VibratorService;->getCustomVibType(I)I

    move-result v5

    if-nez v5, :cond_1d

    .line 4517
    const-string v5, "content://com.android.settings.personalvibration.PersonalVibrationProvider/registerinfo"

    .line 4518
    .local v5, "uri":Ljava/lang/String;
    const v6, 0xc373

    .local v6, "defaultSepIndex":I
    goto :goto_22

    .line 4520
    .end local v5    # "uri":Ljava/lang/String;
    .end local v6    # "defaultSepIndex":I
    :cond_1d
    const-string v5, "content://com.android.settings.personalvibration.PersonalVibrationProvider/notification"

    .line 4521
    .restart local v5    # "uri":Ljava/lang/String;
    const v6, 0xc372

    .line 4524
    .restart local v6    # "defaultSepIndex":I
    :goto_22
    const/4 v7, -0x1

    if-ne v4, v7, :cond_31

    .line 4525
    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v4

    .line 4528
    :cond_31
    if-lez v4, :cond_a0

    .line 4529
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 4531
    .local v7, "token":J
    :try_start_37
    iget-object v9, v1, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_9b

    .line 4533
    .local v10, "cr":Landroid/content/ContentResolver;
    :try_start_3d
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const-string/jumbo v13, "vibration_pattern=?"

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 4534
    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemHaptic;->getType()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v9

    const/4 v15, 0x0

    .line 4533
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4535
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_85

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_85

    .line 4536
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/android/server/VibratorService;->getPatternData(Ljava/lang/String;)[J

    move-result-object v11

    .line 4537
    .local v11, "data":[J
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/android/server/VibratorService;->getAmplitudeData(Ljava/lang/String;I)[I

    move-result-object v0

    .line 4538
    .local v0, "ampl":[I
    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemHaptic;->getRepeat()I

    move-result v12

    invoke-static {v11, v0, v12}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v12

    move-object v2, v12

    .line 4539
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4540
    .end local v0    # "ampl":[I
    .end local v11    # "data":[J
    goto :goto_92

    .line 4541
    :cond_85
    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemHaptic;->getRepeat()I

    move-result v0

    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v11

    invoke-static {v6, v0, v11}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_91} :catch_93
    .catchall {:try_start_3d .. :try_end_91} :catchall_9b

    move-object v2, v0

    .line 4545
    .end local v9    # "c":Landroid/database/Cursor;
    :goto_92
    goto :goto_97

    .line 4543
    :catch_93
    move-exception v0

    .line 4544
    .local v0, "e":Ljava/lang/Exception;
    :try_start_94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_9b

    .line 4547
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "cr":Landroid/content/ContentResolver;
    :goto_97
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4548
    goto :goto_a0

    .line 4547
    :catchall_9b
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4548
    throw v0

    .line 4550
    .end local v7    # "token":J
    :cond_a0
    :goto_a0
    return-object v2
.end method

.method private createEffectFromResource(I)Landroid/os/VibrationEffect;
    .registers 4
    .param p1, "resId"    # I

    .line 680
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    .line 681
    .local v0, "timings":[J
    invoke-static {v0}, Lcom/android/server/VibratorService;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .registers 4
    .param p0, "timings"    # [J

    .line 685
    if-eqz p0, :cond_18

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_18

    .line 687
    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_13

    .line 688
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 690
    :cond_13
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 686
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private doCancelVibrateLocked()V
    .registers 6

    .line 1217
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "vibration"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1218
    const-string v2, "doCancelVibrateLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1220
    :try_start_f
    iget-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1221
    iget-object v2, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v4, 0x0

    if-eqz v2, :cond_22

    .line 1222
    iget-object v2, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    .line 1223
    iput-object v4, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 1225
    :cond_22
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v2, :cond_30

    .line 1226
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v2}, Landroid/os/ExternalVibration;->mute()Z

    .line 1227
    iput-object v4, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    .line 1228
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V

    .line 1230
    :cond_30
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 1231
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_3b

    .line 1233
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1234
    nop

    .line 1235
    return-void

    .line 1233
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1234
    throw v2
.end method

.method private doVibratorComposedEffectLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 10
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1802
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorComposedEffectLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1805
    :try_start_8
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Composed;

    .line 1807
    .local v2, "composed":Landroid/os/VibrationEffect$Composed;
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_4f

    .line 1808
    :try_start_f
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1a

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1a
    move v4, v5

    .line 1809
    .local v4, "usingInputDeviceVibrators":Z
    :goto_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_4c

    .line 1811
    if-eqz v4, :cond_22

    .line 1826
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1812
    return-void

    .line 1815
    :cond_22
    const-wide/16 v6, 0x20

    :try_start_24
    invoke-direct {p0, v6, v7}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_4f

    if-nez v3, :cond_2e

    .line 1826
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1816
    return-void

    .line 1819
    :cond_2e
    nop

    .line 1820
    :try_start_2f
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getPrimitiveEffects()Ljava/util/List;

    move-result-object v3

    new-array v5, v5, [Landroid/os/VibrationEffect$Composition$PrimitiveEffect;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/VibrationEffect$Composition$PrimitiveEffect;

    .line 1821
    .local v3, "primitiveEffects":[Landroid/os/VibrationEffect$Composition$PrimitiveEffect;
    invoke-static {v3, p1}, Lcom/android/server/VibratorService;->vibratorPerformComposedEffect([Landroid/os/VibrationEffect$Composition$PrimitiveEffect;Lcom/android/server/VibratorService$Vibration;)V

    .line 1824
    iget v5, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    array-length v6, v3

    mul-int/lit8 v6, v6, 0xa

    int-to-long v6, v6

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_4f

    .line 1826
    .end local v2    # "composed":Landroid/os/VibrationEffect$Composed;
    .end local v3    # "primitiveEffects":[Landroid/os/VibrationEffect$Composition$PrimitiveEffect;
    .end local v4    # "usingInputDeviceVibrators":Z
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1827
    nop

    .line 1829
    return-void

    .line 1809
    .restart local v2    # "composed":Landroid/os/VibrationEffect$Composed;
    :catchall_4c
    move-exception v4

    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :try_start_4e
    throw v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    .line 1826
    .end local v2    # "composed":Landroid/os/VibrationEffect$Composed;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_4f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1827
    throw v2
.end method

.method private doVibratorExists()Z
    .registers 2

    .line 1679
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .registers 7

    .line 1730
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorOff"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1732
    :try_start_8
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_42

    .line 1734
    :try_start_b
    const-string v3, "VibratorService"

    const-string v4, "Turning vibrator off."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    .line 1737
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1738
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_2f

    .line 1739
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v3, :cond_2e

    .line 1740
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->cancel()V

    .line 1739
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .end local v4    # "i":I
    :cond_2e
    goto :goto_39

    .line 1744
    :cond_2f
    const-string v4, "VibratorService"

    const-string v5, "Turning vibrator off"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 1748
    .end local v3    # "vibratorCount":I
    :goto_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_3f

    .line 1750
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1751
    nop

    .line 1752
    return-void

    .line 1748
    :catchall_3f
    move-exception v3

    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    .end local p0    # "this":Lcom/android/server/VibratorService;
    :try_start_41
    throw v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    .line 1750
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    :catchall_42
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1751
    throw v2
.end method

.method private doVibratorOn(JIILandroid/os/VibrationAttributes;)V
    .registers 13
    .param p1, "millis"    # J
    .param p3, "amplitude"    # I
    .param p4, "uid"    # I
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;

    .line 1687
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorOn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1689
    :try_start_8
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DISABLE_SPEG:Z

    if-nez v2, :cond_34

    .line 1690
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1691
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_34

    invoke-virtual {v2, p4}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1692
    const-string v3, "SPEG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vibration is ignored for uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_90

    .line 1719
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1693
    return-void

    .line 1696
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_90

    .line 1697
    const/4 v3, -0x1

    if-ne p3, v3, :cond_3d

    .line 1698
    :try_start_3a
    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    move p3, v3

    .line 1701
    :cond_3d
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Turning vibrator on for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms with amplitude "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 1705
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1706
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_81

    .line 1707
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6c
    if-ge v4, v3, :cond_80

    .line 1708
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {p5}, Landroid/os/VibrationAttributes;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v5, p1, p2, v6}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1707
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .end local v4    # "i":I
    :cond_80
    goto :goto_87

    .line 1714
    :cond_81
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 1715
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    .line 1717
    .end local v3    # "vibratorCount":I
    :goto_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_3a .. :try_end_88} :catchall_8d

    .line 1719
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1720
    nop

    .line 1721
    return-void

    .line 1717
    :catchall_8d
    move-exception v3

    :try_start_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "millis":J
    .end local p3    # "amplitude":I
    .end local p4    # "uid":I
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    :try_start_8f
    throw v3
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    .line 1719
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "millis":J
    .restart local p3    # "amplitude":I
    .restart local p4    # "uid":I
    .restart local p5    # "attrs":Landroid/os/VibrationAttributes;
    :catchall_90
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1720
    throw v2
.end method

.method private doVibratorOn(JIILandroid/os/VibrationAttributes;II)V
    .registers 16
    .param p1, "millis"    # J
    .param p3, "amplitude"    # I
    .param p4, "uid"    # I
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;
    .param p6, "magnitude"    # I
    .param p7, "frequency"    # I

    .line 3192
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3194
    :try_start_3
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Turning vibrator on for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms with amplitude "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 3198
    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3199
    .local v1, "vibratorCount":I
    if-eqz v1, :cond_47

    .line 3200
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    if-ge v2, v1, :cond_46

    .line 3201
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {p5}, Landroid/os/VibrationAttributes;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 3200
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .end local v2    # "i":I
    :cond_46
    goto :goto_9b

    .line 3212
    :cond_47
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibratorOn() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms, amplitude :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mag :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", f : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3213
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_74

    move v4, p7

    goto :goto_75

    .line 3214
    :cond_74
    move v4, v5

    :goto_75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3212
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 3217
    const-wide/16 v2, 0x0

    int-to-long v6, p6

    const/4 v4, 0x0

    invoke-static {v2, v3, v6, v7, v4}, Lcom/android/server/VibratorService;->vibratorPerformPrebakedHapticPattern(JJZ)V

    .line 3220
    :cond_8c
    invoke-direct {p0, p7}, Lcom/android/server/VibratorService;->setFrequency(I)V

    .line 3221
    if-ne p3, v5, :cond_95

    .line 3222
    invoke-direct {p0, p6}, Lcom/android/server/VibratorService;->setIntensity(I)V

    goto :goto_98

    .line 3224
    :cond_95
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    .line 3226
    :goto_98
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 3229
    .end local v1    # "vibratorCount":I
    :goto_9b
    monitor-exit v0

    .line 3230
    return-void

    .line 3229
    :catchall_9d
    move-exception v1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_3 .. :try_end_9f} :catchall_9d

    throw v1
.end method

.method private doVibratorOn(JILandroid/os/VibrationAttributes;II)V
    .registers 14
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "magnitude"    # I
    .param p6, "frequency"    # I

    .line 3233
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3235
    :try_start_3
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Turning vibrator on for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 3238
    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3239
    .local v1, "vibratorCount":I
    if-eqz v1, :cond_3f

    .line 3240
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    if-ge v2, v1, :cond_3e

    .line 3241
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {p4}, Landroid/os/VibrationAttributes;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 3240
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .end local v2    # "i":I
    :cond_3e
    goto :goto_84

    .line 3249
    :cond_3f
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibratorOn() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms, mag :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", f : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3250
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v4, :cond_63

    move v4, p6

    goto :goto_64

    :cond_63
    const/4 v4, -0x1

    :goto_64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3249
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 3253
    const-wide/16 v2, 0x0

    int-to-long v4, p5

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/VibratorService;->vibratorPerformPrebakedHapticPattern(JJZ)V

    .line 3256
    :cond_7b
    invoke-direct {p0, p6}, Lcom/android/server/VibratorService;->setFrequency(I)V

    .line 3257
    invoke-direct {p0, p5}, Lcom/android/server/VibratorService;->setIntensity(I)V

    .line 3258
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 3261
    .end local v1    # "vibratorCount":I
    :goto_84
    monitor-exit v0

    .line 3262
    return-void

    .line 3261
    :catchall_86
    move-exception v1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_3 .. :try_end_88} :catchall_86

    throw v1
.end method

.method private doVibratorOn(JILandroid/os/VibrationAttributes;[IIII)V
    .registers 15
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "data"    # [I
    .param p6, "magnitude"    # I
    .param p7, "type"    # I
    .param p8, "repeat"    # I

    .line 3267
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3268
    :try_start_3
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 3269
    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3270
    .local v1, "vibratorCount":I
    const/4 v2, -0x1

    if-le p8, v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 3271
    .local v2, "isRepeating":Z
    :goto_12
    if-eqz v1, :cond_2a

    .line 3272
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_29

    .line 3273
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {p4}, Landroid/os/VibrationAttributes;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v4, p1, p2, v5}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 3272
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .end local v3    # "i":I
    :cond_29
    goto :goto_60

    .line 3280
    :cond_2a
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibratorOn() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms, mag :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    if-eqz v2, :cond_57

    .line 3283
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 3285
    :cond_57
    invoke-virtual {p5}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3, p6}, Lcom/android/server/VibratorService;->vibratorPerformHapticEngine([II)V

    .line 3288
    .end local v1    # "vibratorCount":I
    .end local v2    # "isRepeating":Z
    :goto_60
    monitor-exit v0

    .line 3289
    return-void

    .line 3288
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw v1
.end method

.method private doVibratorOnByIndex(JILandroid/os/VibrationAttributes;III)V
    .registers 24
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "magnitude"    # I
    .param p6, "type"    # I
    .param p7, "repeat"    # I

    .line 3294
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    iget-object v7, v1, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3295
    move/from16 v8, p3

    :try_start_f
    invoke-direct {v1, v8, v2, v3}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 3296
    iget-object v0, v1, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3301
    .local v0, "vibratorCount":I
    const v9, 0xc368

    .line 3303
    .local v9, "SAMSUNG_VIBRATION_START":I
    const v10, 0xc368

    sub-int v10, v5, v10

    add-int/lit8 v10, v10, 0x9

    .line 3304
    .local v10, "index":I
    const/4 v11, -0x1

    if-le v6, v11, :cond_27

    const/4 v11, 0x1

    goto :goto_28

    :cond_27
    const/4 v11, 0x0

    .line 3306
    .local v11, "isRepeating":Z
    :goto_28
    if-eqz v0, :cond_40

    .line 3307
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2b
    if-ge v12, v0, :cond_3f

    .line 3308
    iget-object v13, v1, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Vibrator;

    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationAttributes;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v14

    invoke-virtual {v13, v2, v3, v14}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 3307
    add-int/lit8 v12, v12, 0x1

    goto :goto_2b

    .end local v12    # "i":I
    :cond_3f
    goto :goto_b0

    .line 3311
    :cond_40
    iget-boolean v12, v1, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v12, :cond_78

    .line 3312
    const-string v12, "VibratorService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "doVibratorOnByIndex() , mag :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", type : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", index : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", repeat : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " is not working because HMTMount is TRUE."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 3316
    :cond_78
    const-string v12, "VibratorService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "doVibratorOnByIndex() , mag :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", type : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", index : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", repeat : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    if-eqz v11, :cond_ab

    .line 3320
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 3322
    :cond_ab
    int-to-long v12, v10

    int-to-long v14, v4

    invoke-static {v12, v13, v14, v15, v11}, Lcom/android/server/VibratorService;->vibratorPerformPrebakedHapticPattern(JJZ)V

    .line 3325
    .end local v0    # "vibratorCount":I
    .end local v9    # "SAMSUNG_VIBRATION_START":I
    .end local v10    # "index":I
    .end local v11    # "isRepeating":Z
    :goto_b0
    monitor-exit v7

    .line 3326
    return-void

    .line 3325
    :catchall_b2
    move-exception v0

    monitor-exit v7
    :try_end_b4
    .catchall {:try_start_f .. :try_end_b4} :catchall_b2

    throw v0
.end method

.method private doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .registers 21
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1756
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-wide/32 v12, 0x800000

    const-string v0, "doVibratorPrebakedEffectLocked"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1758
    :try_start_c
    iget-object v0, v11, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    move-object v14, v0

    .line 1760
    .local v14, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    iget-object v1, v10, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_e1

    .line 1761
    :try_start_14
    iget-object v0, v10, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 1762
    .local v0, "usingInputDeviceVibrators":Z
    :goto_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_de

    .line 1764
    const-wide/16 v15, 0x0

    if-nez v0, :cond_80

    .line 1765
    :try_start_24
    sget-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_PREBAKED_PATTERN:Z

    const-wide/16 v7, 0x2

    if-eqz v1, :cond_3f

    .line 1766
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    int-to-long v1, v1

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    int-to-long v3, v3

    .line 1767
    invoke-direct {v10, v7, v8}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v6

    .line 1766
    move-object/from16 v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/VibratorService;->vibratorSehPerformEffect(JJLcom/android/server/VibratorService$Vibration;Z)J

    move-result-wide v1

    goto :goto_53

    .line 1768
    :cond_3f
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v3

    int-to-long v3, v3

    .line 1769
    invoke-direct {v10, v7, v8}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v6

    .line 1768
    move-object/from16 v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJLcom/android/server/VibratorService$Vibration;Z)J

    move-result-wide v1

    :goto_53
    nop

    .line 1770
    .local v1, "duration":J
    move-wide v3, v1

    .line 1771
    .local v3, "timeout":J
    const-string v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doVibratorPrebakedEffectLocked timeout="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    invoke-direct {v10, v7, v8}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 1773
    mul-long/2addr v3, v7

    .line 1775
    :cond_72
    cmp-long v5, v3, v15

    if-lez v5, :cond_80

    .line 1776
    iget v5, v11, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {v10, v5, v1, v2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_7b
    .catchall {:try_start_24 .. :try_end_7b} :catchall_e1

    .line 1777
    nop

    .line 1796
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1777
    return-wide v3

    .line 1780
    .end local v1    # "duration":J
    .end local v3    # "timeout":J
    :cond_80
    :try_start_80
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->shouldFallback()Z

    move-result v1
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_e1

    if-nez v1, :cond_8b

    .line 1781
    nop

    .line 1796
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1781
    return-wide v15

    .line 1783
    :cond_8b
    :try_start_8b
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v1

    move-object/from16 v17, v1

    .line 1784
    .local v17, "effect":Landroid/os/VibrationEffect;
    if-nez v17, :cond_a3

    .line 1785
    const-string v1, "VibratorService"

    const-string v2, "Failed to play prebaked effect, no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_8b .. :try_end_9e} :catchall_e1

    .line 1786
    nop

    .line 1796
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1786
    return-wide v15

    .line 1788
    :cond_a3
    :try_start_a3
    new-instance v18, Lcom/android/server/VibratorService$Vibration;

    iget-object v3, v11, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    iget-object v5, v11, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    iget v6, v11, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, v11, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v11, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (fallback)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v4, v17

    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object/from16 v1, v18

    .line 1790
    .local v1, "fallbackVib":Lcom/android/server/VibratorService$Vibration;
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    .line 1791
    .local v2, "intensity":I
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1792
    invoke-direct {v10, v1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 1793
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_d9
    .catchall {:try_start_a3 .. :try_end_d9} :catchall_e1

    .line 1794
    nop

    .line 1796
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1794
    return-wide v15

    .line 1762
    .end local v0    # "usingInputDeviceVibrators":Z
    .end local v1    # "fallbackVib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "intensity":I
    .end local v17    # "effect":Landroid/os/VibrationEffect;
    :catchall_de
    move-exception v0

    :try_start_df
    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :try_start_e0
    throw v0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_e1

    .line 1796
    .end local v14    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_e1
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1797
    throw v0
.end method

.method private doVibratorSetAmplitude(I)V
    .registers 3
    .param p1, "amplitude"    # I

    .line 1724
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_7

    .line 1725
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    .line 1727
    :cond_7
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1917
    const-string v0, "Vibrator Service:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1918
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1919
    :try_start_8
    const-string v1, "  mCurrentVibration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1920
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_1f

    .line 1921
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_25

    .line 1923
    :cond_1f
    const-string/jumbo v1, "null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1925
    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentExternalVibration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibratorUnderExternalControl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsVibrating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibratorStateListeners Count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 1929
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1928
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLowPowerMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHapticFeedbackIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNotificationIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRingIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSupportedEffects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1935
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1936
    const-string v1, "  Previous ring vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1937
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_116

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1938
    .local v2, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1939
    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1940
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_fd

    .line 1942
    :cond_116
    const-string v1, "  Previous notification vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1943
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_121
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_142

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1944
    .restart local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1945
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_121

    .line 1947
    :cond_142
    const-string v1, "  Previous alarm vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1948
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1949
    .restart local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1950
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_14d

    .line 1952
    :cond_16e
    const-string v1, "  Previous vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1953
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_179
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1954
    .restart local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1955
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_179

    .line 1957
    :cond_19a
    const-string v1, "  Previous external vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1958
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ExternalVibration;

    .line 1959
    .local v2, "vib":Landroid/os/ExternalVibration;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1960
    .end local v2    # "vib":Landroid/os/ExternalVibration;
    goto :goto_1a5

    .line 1961
    :cond_1c6
    monitor-exit v0

    .line 1962
    return-void

    .line 1961
    :catchall_1c8
    move-exception v1

    monitor-exit v0
    :try_end_1ca
    .catchall {:try_start_8 .. :try_end_1ca} :catchall_1c8

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1965
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1967
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1968
    :try_start_8
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_1a

    .line 1969
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v2}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v2

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1972
    :cond_1a
    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1973
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1975
    const-wide v2, 0x10800000005L

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1976
    const-wide v2, 0x10500000006L

    iget v4, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1978
    const-wide v2, 0x10500000007L

    iget v4, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1980
    const-wide v2, 0x10500000008L

    iget v4, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1982
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1983
    .local v3, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-wide v4, 0x20b00000009L

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1985
    .end local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_5c

    .line 1987
    :cond_71
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1988
    .restart local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-wide v4, 0x20b0000000aL

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1990
    .end local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_77

    .line 1992
    :cond_8c
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_92
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1993
    .restart local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-wide v4, 0x20b0000000bL

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1995
    .end local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_92

    .line 1997
    :cond_a7
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ad
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1998
    .restart local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-wide v4, 0x20b0000000cL

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2000
    .end local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_ad

    .line 2001
    :cond_c2
    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_8 .. :try_end_c3} :catchall_c7

    .line 2002
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2003
    return-void

    .line 2001
    :catchall_c7
    move-exception v2

    :try_start_c8
    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw v2
.end method

.method private fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;
    .registers 4
    .param p1, "attrs"    # Landroid/os/VibrationAttributes;

    .line 965
    if-nez p1, :cond_4

    .line 966
    sget-object p1, Lcom/android/server/VibratorService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 968
    :cond_4
    invoke-static {p1}, Lcom/android/server/VibratorService;->shouldBypassDnd(Landroid/os/VibrationAttributes;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 969
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 970
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 971
    const-string v0, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 972
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    .line 974
    .local v0, "flags":I
    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    invoke-virtual {v1, v0}, Landroid/os/VibrationAttributes$Builder;->replaceFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p1

    .line 978
    .end local v0    # "flags":I
    :cond_35
    return-object p1
.end method

.method private getAmplitudeData(Ljava/lang/String;I)[I
    .registers 11
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "magnitude"    # I

    .line 4583
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4584
    .local v0, "dividePatternAmplitude":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4585
    .local v1, "customAmplitude":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [I

    .line 4586
    .local v2, "ampl":[I
    iget v3, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    int-to-double v3, v3

    int-to-double v5, p2

    div-double/2addr v3, v5

    .line 4587
    .local v3, "weight":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    array-length v6, v1

    if-ge v5, v6, :cond_29

    .line 4588
    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v3

    double-to-int v6, v6

    aput v6, v2, v5

    .line 4587
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 4591
    .end local v5    # "i":I
    :cond_29
    return-object v2
.end method

.method private getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I
    .registers 7
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1438
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 1439
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    .line 1438
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    .line 1440
    .local v0, "mode":I
    if-nez v0, :cond_21

    .line 1441
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 1444
    :cond_21
    const/4 v1, 0x1

    if-ne v0, v1, :cond_43

    iget-object v1, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-static {v1}, Lcom/android/server/VibratorService;->shouldBypassDnd(Landroid/os/VibrationAttributes;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bypassing DND for vibration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    const/4 v0, 0x0

    .line 1451
    :cond_43
    return v0
.end method

.method private getColorfulData(I)[I
    .registers 6
    .param p1, "type"    # I

    .line 3521
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    sub-int v0, p1, v0

    .line 3523
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    move-result-object v1

    .line 3524
    .local v1, "p":Lcom/samsung/android/server/vibrator/PatternInfo;
    if-eqz v1, :cond_12

    .line 3525
    iget-object v2, v1, Lcom/samsung/android/server/vibrator/PatternInfo;->engine:[I

    return-object v2

    .line 3527
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCommonPattern(), IndexOutOfBoundsException occurred, type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibratorService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_38

    return-object v2

    :array_38
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private getColorfulPattern([J)[J
    .registers 13
    .param p1, "pattern"    # [J

    .line 3652
    array-length v0, p1

    .line 3653
    .local v0, "len":I
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_e

    .line 3654
    aget-wide v5, p1, v3

    cmp-long v5, v5, v1

    if-gez v5, :cond_e

    .line 3655
    return-object p1

    .line 3659
    :cond_e
    const/4 v5, 0x0

    .line 3660
    .local v5, "duration":I
    new-array v4, v4, [J

    .line 3661
    .local v4, "vibePattern":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_12
    if-ge v6, v0, :cond_1c

    .line 3662
    int-to-long v7, v5

    aget-wide v9, p1, v6

    add-long/2addr v7, v9

    long-to-int v5, v7

    .line 3661
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 3664
    .end local v6    # "i":I
    :cond_1c
    aput-wide v1, v4, v3

    .line 3665
    int-to-long v1, v5

    const/4 v3, 0x1

    aput-wide v1, v4, v3

    .line 3666
    return-object v4
.end method

.method private getCommonPattern(I)[J
    .registers 6
    .param p1, "type"    # I

    .line 3480
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    sub-int v0, p1, v0

    .line 3483
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    move-result-object v1

    .line 3484
    .local v1, "p":Lcom/samsung/android/server/vibrator/PatternInfo;
    if-eqz v1, :cond_12

    .line 3485
    iget-object v2, v1, Lcom/samsung/android/server/vibrator/PatternInfo;->pattern:[J

    .local v2, "vibePattern":[J
    goto :goto_45

    .line 3487
    .end local v2    # "vibePattern":[J
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCommonPattern(), index out of bound, mVibePatternHash:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 3489
    invoke-virtual {v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSupportedPatternSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3487
    const-string v3, "VibratorService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_46

    .line 3494
    .restart local v2    # "vibePattern":[J
    :goto_45
    return-object v2

    :array_46
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private getCommonPatternFrequency(I)I
    .registers 8
    .param p1, "type"    # I

    .line 3498
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    sub-int v1, p1, v1

    .line 3499
    .local v1, "index":I
    const/4 v2, 0x0

    .line 3501
    .local v2, "frequency":Ljava/lang/Integer;
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-nez v3, :cond_d

    .line 3502
    return v0

    .line 3505
    :cond_d
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {v3, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    move-result-object v3

    .line 3506
    .local v3, "p":Lcom/samsung/android/server/vibrator/PatternInfo;
    if-eqz v3, :cond_1c

    .line 3507
    iget v4, v3, Lcom/samsung/android/server/vibrator/PatternInfo;->frequency:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_49

    .line 3509
    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCommonPatternFrequency(), index out of bound, mVibePatternHash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 3510
    invoke-virtual {v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSupportedPatternSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3509
    const-string v5, "VibratorService"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    :goto_49
    if-eqz v2, :cond_50

    .line 3515
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 3517
    :cond_50
    return v0
.end method

.method private getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I
    .registers 3
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1339
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1340
    iget v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return v0

    .line 1341
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1342
    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0

    .line 1343
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1344
    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0

    .line 1345
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1346
    const/4 v0, 0x3

    return v0

    .line 1348
    :cond_23
    const/4 v0, 0x2

    return v0
.end method

.method private getCustomPattern([I)[J
    .registers 12
    .param p1, "data"    # [I

    .line 3611
    array-length v0, p1

    .line 3612
    .local v0, "length":I
    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-gt v1, v3, :cond_c

    .line 3613
    new-array v1, v2, [J

    fill-array-data v1, :array_58

    return-object v1

    .line 3616
    :cond_c
    add-int/lit8 v1, v0, -0x1

    div-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    .line 3618
    .local v1, "tempLength":I
    new-array v3, v1, [J

    .line 3619
    .local v3, "tempPattern":[J
    const/4 v4, 0x0

    .line 3621
    .local v4, "j":I
    const/4 v5, 0x1

    .line 3622
    .local v5, "isZero":Z
    const-wide/16 v6, 0x0

    aput-wide v6, v3, v4

    .line 3623
    aget v2, p1, v2

    if-eqz v2, :cond_20

    .line 3624
    const/4 v5, 0x0

    .line 3625
    add-int/lit8 v4, v4, 0x1

    .line 3628
    :cond_20
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_49

    .line 3629
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v0, :cond_46

    .line 3630
    if-eqz v5, :cond_33

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    if-eqz v6, :cond_33

    .line 3631
    const/4 v5, 0x0

    .line 3632
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 3633
    :cond_33
    if-nez v5, :cond_3e

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    if-nez v6, :cond_3e

    .line 3634
    const/4 v5, 0x1

    .line 3635
    add-int/lit8 v4, v4, 0x1

    .line 3637
    :cond_3e
    :goto_3e
    aget-wide v6, v3, v4

    aget v8, p1, v2

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v3, v4

    .line 3628
    :cond_46
    add-int/lit8 v2, v2, 0x4

    goto :goto_21

    .line 3641
    .end local v2    # "i":I
    :cond_49
    add-int/lit8 v2, v4, 0x1

    .line 3643
    .local v2, "patternLength":I
    new-array v6, v2, [J

    .line 3644
    .local v6, "vibePattern":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4e
    if-ge v7, v2, :cond_57

    .line 3645
    aget-wide v8, v3, v7

    aput-wide v8, v6, v7

    .line 3644
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    .line 3648
    .end local v7    # "i":I
    :cond_57
    return-object v6

    :array_58
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private getCustomVibType(I)I
    .registers 3
    .param p1, "index"    # I

    .line 4563
    const v0, 0x186a1

    if-gt v0, p1, :cond_c

    const v0, 0x1adb0

    if-gt p1, v0, :cond_c

    .line 4564
    const/4 v0, 0x0

    return v0

    .line 4565
    :cond_c
    const v0, 0x1adb1

    if-gt v0, p1, :cond_18

    const v0, 0x1d4c0

    if-gt p1, v0, :cond_18

    .line 4566
    const/4 v0, 0x1

    return v0

    .line 4568
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method private getFallbackEffect(I)Landroid/os/VibrationEffect;
    .registers 3
    .param p1, "effectId"    # I

    .line 1836
    iget-object v0, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 7
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .line 982
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 983
    .local v0, "ar":[I
    if-nez v0, :cond_8

    .line 984
    const/4 v1, 0x0

    return-object v1

    .line 986
    :cond_8
    array-length v1, v0

    new-array v1, v1, [J

    .line 987
    .local v1, "out":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_17

    .line 988
    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 987
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 990
    .end local v2    # "i":I
    :cond_17
    return-object v1
.end method

.method private getMagnitude(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 3945
    invoke-static {p1}, Landroid/os/VibrationEffect$SemMagnitudeType;->valueOf(Ljava/lang/String;)Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v0

    .line 3947
    .local v0, "magnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    sget-object v1, Lcom/android/server/VibratorService$7;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    invoke-virtual {v0}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_76

    .line 3988
    return v2

    .line 3984
    :pswitch_11
    iget v1, p0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    return v1

    .line 3982
    :pswitch_14
    iget v1, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    return v1

    .line 3974
    :pswitch_17
    sget-object v1, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v1

    .line 3975
    :try_start_1a
    # getter for: Lcom/android/server/VibratorService$MuteCallInfo;->sMuteOn:Z
    invoke-static {}, Lcom/android/server/VibratorService$MuteCallInfo;->access$5800()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 3976
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->addAbortedVibration(Ljava/lang/String;Ljava/lang/String;)V

    .line 3977
    monitor-exit v1

    return v2

    .line 3979
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_29

    .line 3980
    iget v1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    return v1

    .line 3979
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v2

    .line 3963
    :pswitch_2c
    sget-object v1, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v1

    .line 3964
    :try_start_2f
    # getter for: Lcom/android/server/VibratorService$MuteNotificationInfo;->sMuteOn:Z
    invoke-static {}, Lcom/android/server/VibratorService$MuteNotificationInfo;->access$5700()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 3965
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->addAbortedVibration(Ljava/lang/String;Ljava/lang/String;)V

    .line 3966
    monitor-exit v1

    return v2

    .line 3968
    :cond_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_4b

    .line 3969
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mCameraOn:Z

    if-eqz v1, :cond_48

    .line 3970
    iget v1, p0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    iget v2, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 3972
    :cond_48
    iget v1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return v1

    .line 3968
    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v2

    .line 3952
    :pswitch_4e
    sget-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ALWAYS_VIBRATE:Z

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->isAllowedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 3953
    iget v1, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    return v1

    .line 3955
    :cond_5d
    sget-object v1, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v1

    .line 3956
    :try_start_60
    # getter for: Lcom/android/server/VibratorService$MuteNotificationInfo;->sMuteOn:Z
    invoke-static {}, Lcom/android/server/VibratorService$MuteNotificationInfo;->access$5700()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 3957
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->addAbortedVibration(Ljava/lang/String;Ljava/lang/String;)V

    .line 3958
    monitor-exit v1

    return v2

    .line 3960
    :cond_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_6f

    .line 3961
    iget v1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return v1

    .line 3960
    :catchall_6f
    move-exception v2

    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v2

    .line 3950
    :pswitch_72
    iget v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return v1

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_72
        :pswitch_72
        :pswitch_4e
        :pswitch_2c
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method private getMillisecondsFromColorfulData([I)J
    .registers 8
    .param p1, "data"    # [I

    .line 3545
    const-wide/16 v0, 0x0

    .line 3546
    .local v0, "millis":J
    array-length v2, p1

    .line 3547
    .local v2, "length":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_d

    .line 3548
    aget v4, p1, v3

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 3547
    add-int/lit8 v3, v3, 0x4

    goto :goto_4

    .line 3550
    .end local v3    # "i":I
    :cond_d
    return-wide v0
.end method

.method private static getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
    .registers 4
    .param p0, "magnitudeType"    # Ljava/lang/String;
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationService()Landroid/app/INotificationManager;
    .registers 2

    .line 3054
    iget-object v0, p0, Lcom/android/server/VibratorService;->mNotificationManager:Landroid/app/INotificationManager;

    if-eqz v0, :cond_5

    .line 3055
    return-object v0

    .line 3058
    :cond_5
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 3059
    return-object v0
.end method

.method private getPatternData(Ljava/lang/String;)[J
    .registers 8
    .param p1, "pattern"    # Ljava/lang/String;

    .line 4572
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4573
    .local v0, "dividePatternData":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4574
    .local v1, "customPattern":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [J

    .line 4576
    .local v2, "pt":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    array-length v4, v1

    if-ge v3, v4, :cond_21

    .line 4577
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 4576
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 4579
    .end local v3    # "i":I
    :cond_21
    return-object v2
.end method

.method private getVibMotorType()I
    .registers 4

    .line 4459
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsPrebakedHapticPattern()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4460
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsHapticEngine()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4463
    const/4 v0, 0x5

    .local v0, "type":I
    goto :goto_2a

    .line 4465
    .end local v0    # "type":I
    :cond_e
    const/16 v0, 0x9

    .restart local v0    # "type":I
    goto :goto_2a

    .line 4467
    .end local v0    # "type":I
    :cond_11
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsHapticEngine()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4468
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsEnhancedSamsungHapticPattern()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4469
    const/4 v0, 0x7

    .restart local v0    # "type":I
    goto :goto_2a

    .line 4471
    .end local v0    # "type":I
    :cond_1f
    const/4 v0, 0x6

    .restart local v0    # "type":I
    goto :goto_2a

    .line 4473
    .end local v0    # "type":I
    :cond_21
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportIntensityControl()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4474
    const/4 v0, 0x2

    .restart local v0    # "type":I
    goto :goto_2a

    .line 4476
    .end local v0    # "type":I
    :cond_29
    const/4 v0, 0x1

    .line 4478
    .restart local v0    # "type":I
    :goto_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVibMotorType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    return v0
.end method

.method private hasBlankColorfulData(I[I)Z
    .registers 7
    .param p1, "type"    # I
    .param p2, "data"    # [I

    .line 4447
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_39

    .line 4448
    aget v0, p2, v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_39

    const/4 v0, 0x1

    aget v3, p2, v0

    if-nez v3, :cond_39

    const/4 v3, 0x2

    aget v3, p2, v3

    if-nez v3, :cond_39

    const/4 v3, 0x3

    aget v3, p2, v3

    if-nez v3, :cond_39

    aget v2, p2, v2

    if-nez v2, :cond_39

    .line 4449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is blank pattern for haptic engine."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    return v0

    .line 4453
    :cond_39
    return v1
.end method

.method private hasCapability(J)Z
    .registers 5
    .param p1, "capability"    # J

    .line 1832
    iget-wide v0, p0, Lcom/android/server/VibratorService;->mCapabilities:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private hasColorfulData(I[I)Z
    .registers 6
    .param p1, "type"    # I
    .param p2, "data"    # [I

    .line 3535
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 3536
    const/4 v0, 0x0

    aget v1, p2, v0

    if-gez v1, :cond_25

    .line 3537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not supported for engine."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3538
    return v0

    .line 3541
    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 1149
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static intensityToEffectStrength(I)I
    .registers 4
    .param p0, "intensity"    # I

    .line 1845
    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v1, 0x2

    if-eq p0, v1, :cond_21

    const/4 v0, 0x3

    if-eq p0, v0, :cond_20

    .line 1853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unexpected vibration intensity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VibratorService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    return v1

    .line 1851
    :cond_20
    return v1

    .line 1849
    :cond_21
    return v0

    .line 1847
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method private static isAlarm(I)Z
    .registers 2
    .param p0, "usageHint"    # I

    .line 1871
    const/16 v0, 0x11

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isAll0([J)Z
    .registers 8
    .param p1, "pattern"    # [J

    .line 3331
    array-length v0, p1

    .line 3332
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_11

    .line 3333
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 3334
    const/4 v2, 0x0

    return v2

    .line 3332
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3337
    .end local v1    # "i":I
    :cond_11
    const-string v1, "VibratorService"

    const-string/jumbo v2, "isAll0() is true"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    const/4 v1, 0x1

    return v1
.end method

.method private isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z
    .registers 5
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1328
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1329
    return v1

    .line 1332
    :cond_6
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 1333
    .local v0, "usage":I
    const/16 v2, 0x21

    if-eq v0, v2, :cond_1a

    const/16 v2, 0x11

    if-eq v0, v2, :cond_1a

    const/16 v2, 0x41

    if-ne v0, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :cond_1a
    :goto_1a
    return v1
.end method

.method private isColorfulDataFormat([I)Z
    .registers 10
    .param p1, "data"    # [I

    .line 3589
    array-length v0, p1

    .line 3590
    .local v0, "rawLength":I
    add-int/lit8 v1, v0, -0x1

    .line 3592
    .local v1, "length":I
    const-string v2, "] = "

    const-string v3, "VibratorService"

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-le v0, v5, :cond_3b

    div-int/lit8 v6, v1, 0x4

    mul-int/2addr v6, v5

    if-eq v6, v1, :cond_11

    goto :goto_3b

    .line 3600
    :cond_11
    aget v5, p1, v4

    if-ne v1, v5, :cond_17

    .line 3601
    const/4 v2, 0x1

    return v2

    .line 3603
    :cond_17
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v0, :cond_3a

    .line 3604
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isColorfulDataFormat() - wrong format(2) : data["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 3606
    .end local v5    # "i":I
    :cond_3a
    return v4

    .line 3594
    :cond_3b
    :goto_3b
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3c
    if-ge v5, v0, :cond_5e

    .line 3595
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isColorfulDataFormat() - wrong format(1) : data["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 3597
    .end local v5    # "i":I
    :cond_5e
    return v4
.end method

.method private isCustomPatternIndex(Landroid/os/VibrationEffect;)Z
    .registers 6
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 4554
    instance-of v0, p1, Landroid/os/VibrationEffect$SemHaptic;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 4555
    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$SemHaptic;

    .line 4556
    .local v0, "semHaptic":Landroid/os/VibrationEffect$SemHaptic;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$SemHaptic;->getType()I

    move-result v2

    .line 4557
    .local v2, "index":I
    const v3, 0x186a1

    if-gt v3, v2, :cond_17

    const v3, 0x1d4c0

    if-gt v2, v3, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    .line 4559
    .end local v0    # "semHaptic":Landroid/os/VibrationEffect$SemHaptic;
    .end local v2    # "index":I
    :cond_18
    return v1
.end method

.method private isDCHapticFeedbackIndex(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 4485
    const v0, 0xc3cc

    if-ne p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isDisableVibratorForVr()Z
    .registers 2

    .line 3065
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsGearVrTetheredDocked:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isExecutablePattern([JILjava/lang/String;)Z
    .registers 20
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3671
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    const-string v4, "VibratorService"

    if-nez v1, :cond_12

    .line 3672
    const-string/jumbo v5, "isExecutablePattern() - pattern is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    return v3

    .line 3676
    :cond_12
    array-length v5, v1

    .line 3677
    .local v5, "length":I
    if-lt v2, v5, :cond_33

    .line 3678
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isExecutablePattern() - length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", repeat = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    return v3

    .line 3682
    :cond_33
    aget-wide v6, v1, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const/4 v7, 0x1

    if-lez v6, :cond_3d

    .line 3683
    return v7

    .line 3686
    :cond_3d
    div-int/lit8 v6, v2, 0x2

    mul-int/lit8 v6, v6, 0x2

    if-ne v6, v2, :cond_49

    div-int/lit8 v6, v5, 0x2

    mul-int/lit8 v6, v6, 0x2

    if-eq v6, v5, :cond_55

    :cond_49
    div-int/lit8 v6, v2, 0x2

    mul-int/lit8 v6, v6, 0x2

    if-eq v6, v2, :cond_5e

    div-int/lit8 v6, v5, 0x2

    mul-int/lit8 v6, v6, 0x2

    if-eq v6, v5, :cond_5e

    .line 3688
    :cond_55
    add-int/lit8 v6, v5, -0x1

    aget-wide v10, v1, v6

    cmp-long v6, v10, v8

    if-lez v6, :cond_5e

    .line 3689
    return v7

    .line 3694
    :cond_5e
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5f
    if-ge v6, v5, :cond_75

    .line 3695
    add-int v10, v6, v2

    add-int/2addr v10, v7

    .line 3696
    .local v10, "working":I
    add-int/lit8 v11, v10, 0x1

    .line 3697
    .local v11, "delay":I
    if-ge v11, v5, :cond_72

    aget-wide v12, v1, v10

    aget-wide v14, v1, v11

    add-long/2addr v12, v14

    cmp-long v12, v12, v8

    if-lez v12, :cond_72

    .line 3699
    return v7

    .line 3694
    :cond_72
    add-int/lit8 v6, v6, 0x2

    goto :goto_5f

    .line 3703
    .end local v6    # "i":I
    .end local v10    # "working":I
    .end local v11    # "delay":I
    :cond_75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This pattern is not executable. repeat = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_8a
    if-ge v6, v5, :cond_ae

    .line 3705
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pattern["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v1, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    add-int/lit8 v6, v6, 0x1

    goto :goto_8a

    .line 3707
    .end local v6    # "i":I
    :cond_ae
    iget v4, v0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    .line 3708
    iget-object v4, v0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x3e8

    if-ge v4, v6, :cond_fa

    .line 3709
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    .line 3710
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_dd
    if-ge v4, v5, :cond_fc

    .line 3711
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v1, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    .line 3710
    add-int/lit8 v4, v4, 0x1

    goto :goto_dd

    .line 3708
    .end local v4    # "i":I
    :cond_fa
    move-object/from16 v7, p3

    .line 3714
    :cond_fc
    return v3
.end method

.method private static isHapticFeedback(I)Z
    .registers 2
    .param p0, "usageHint"    # I

    .line 1867
    const/16 v0, 0x12

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isNotification(I)Z
    .registers 2
    .param p0, "usageHint"    # I

    .line 1859
    const/16 v0, 0x31

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isRepeatingVibration(Landroid/os/VibrationEffect;)Z
    .registers 5
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 1154
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static isRingtone(I)Z
    .registers 2
    .param p0, "usageHint"    # I

    .line 1863
    const/16 v0, 0x21

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private linkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1529
    # getter for: Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1600(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_14

    .line 1531
    :cond_c
    :try_start_c
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_13

    .line 1536
    goto :goto_14

    .line 1534
    :catch_13
    move-exception v0

    .line 1538
    :cond_14
    :goto_14
    return-void

    .line 1532
    :catch_15
    move-exception v0

    .line 1533
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method private noteVibratorOffLocked()V
    .registers 5

    .line 1889
    iget v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    const/4 v1, 0x0

    if-ltz v0, :cond_17

    .line 1891
    :try_start_5
    iget-object v2, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v0}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V

    .line 1892
    const/16 v0, 0x54

    iget v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    .line 1895
    goto :goto_14

    .line 1894
    :catch_13
    move-exception v0

    .line 1896
    :goto_14
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 1898
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    if-eqz v0, :cond_20

    .line 1899
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    .line 1900
    invoke-direct {p0}, Lcom/android/server/VibratorService;->notifyStateListenersLocked()V

    .line 1902
    :cond_20
    return-void
.end method

.method private noteVibratorOnLocked(IJ)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "millis"    # J

    .line 1876
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 1877
    const/16 v1, 0x54

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IJ)V

    .line 1879
    iput p1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 1880
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    if-nez v0, :cond_1a

    .line 1881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    .line 1882
    invoke-direct {p0}, Lcom/android/server/VibratorService;->notifyStateListenersLocked()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 1885
    :cond_1a
    goto :goto_1c

    .line 1884
    :catch_1b
    move-exception v0

    .line 1886
    :goto_1c
    return-void
.end method

.method private notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 796
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    invoke-interface {p1, v0}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 799
    goto :goto_e

    .line 797
    :catch_6
    move-exception v0

    .line 798
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VibratorService"

    const-string v2, "Vibrator callback failed to call"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method private notifyStateListenersLocked()V
    .registers 4

    .line 804
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 806
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 807
    :try_start_9
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 808
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IVibratorStateListener;

    .line 809
    .local v2, "listener":Landroid/os/IVibratorStateListener;
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_17

    .line 806
    .end local v2    # "listener":Landroid/os/IVibratorStateListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 812
    .end local v1    # "i":I
    :catchall_17
    move-exception v1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 813
    throw v1

    .line 812
    :cond_1e
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 813
    nop

    .line 814
    return-void
.end method

.method private registerVrStateListener()V
    .registers 4

    .line 3069
    const-class v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    .line 3070
    .local v0, "vrService":Lcom/samsung/android/vr/GearVrManagerInternal;
    if-eqz v0, :cond_13

    .line 3071
    new-instance v1, Lcom/android/server/VibratorService$6;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$6;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    goto :goto_1a

    .line 3095
    :cond_13
    const-string v1, "VibratorService"

    const-string v2, "HMT VibratorService failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    :goto_1a
    return-void
.end method

.method private reloadContentObserver()V
    .registers 9

    .line 4026
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8b

    .line 4027
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 4028
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 4029
    iget-object v0, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 4032
    iget-object v0, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v0, v0

    sub-int/2addr v0, v1

    .line 4033
    .local v0, "magnitudeMaxLevel":I
    iget-object v2, p0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 4034
    .local v2, "touchMagnitudeMaxLevel":I
    const/4 v3, 0x2

    if-lt v0, v3, :cond_6b

    if-ge v2, v3, :cond_22

    goto :goto_6b

    .line 4041
    :cond_22
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x2

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 4043
    .local v4, "magnitudeLevel":I
    if-le v4, v2, :cond_32

    move v5, v4

    goto :goto_36

    .line 4044
    :cond_32
    iget-object v5, p0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v5, v5, v4

    :goto_36
    iput v5, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 4046
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v5, v7, v0, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 4048
    if-le v4, v0, :cond_46

    move v5, v4

    goto :goto_4a

    :cond_46
    iget-object v5, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v5, v5, v4

    :goto_4a
    iput v5, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 4050
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    aget-object v3, v7, v3

    invoke-static {v5, v3, v0, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 4052
    .end local v4    # "magnitudeLevel":I
    .local v3, "magnitudeLevel":I
    if-le v3, v0, :cond_5a

    move v4, v3

    goto :goto_5e

    :cond_5a
    iget-object v4, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v4, v4, v3

    :goto_5e
    iput v4, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 4054
    iget-object v4, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v5, v4, v0

    iput v5, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    .line 4055
    aget v1, v4, v1

    iput v1, p0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    .line 4056
    .end local v0    # "magnitudeMaxLevel":I
    .end local v2    # "touchMagnitudeMaxLevel":I
    .end local v3    # "magnitudeLevel":I
    goto :goto_9b

    .line 4035
    .restart local v0    # "magnitudeMaxLevel":I
    .restart local v2    # "touchMagnitudeMaxLevel":I
    :cond_6b
    :goto_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "magnitudeMaxLevel(reloadContentObserver) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", touchMagnitudeMaxLevel(reloadContentObserver) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VibratorService"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4038
    return-void

    .line 4057
    .end local v0    # "magnitudeMaxLevel":I
    .end local v2    # "touchMagnitudeMaxLevel":I
    :cond_8b
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v0, :cond_9b

    iget v0, p0, Lcom/android/server/VibratorService;->mMotorType:I

    if-ne v0, v1, :cond_9b

    .line 4058
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 4059
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateDcHapticFeedbackMagnitude()V

    .line 4062
    :cond_9b
    :goto_9b
    return-void
.end method

.method private reportFinishVibrationLocked()V
    .registers 7

    .line 1513
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "reportFinishVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1515
    :try_start_9
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_23

    .line 1516
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget v4, v4, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v5, v5, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1518
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1519
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_28

    .line 1522
    :cond_23
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1523
    nop

    .line 1524
    return-void

    .line 1522
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1523
    throw v2
.end method

.method private semColorfulVibrate(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;[I)V
    .registers 35
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "usage"    # I
    .param p6, "effect"    # Landroid/os/VibrationEffect$SemHaptic;
    .param p7, "data"    # [I

    .line 3719
    move-object/from16 v15, p0

    move/from16 v13, p1

    move-object/from16 v12, p2

    move-object/from16 v11, p4

    move/from16 v9, p5

    move-object/from16 v10, p7

    invoke-virtual/range {p6 .. p6}, Landroid/os/VibrationEffect$SemHaptic;->getType()I

    move-result v8

    .line 3720
    .local v8, "type":I
    invoke-virtual/range {p6 .. p6}, Landroid/os/VibrationEffect$SemHaptic;->getRepeat()I

    move-result v7

    .line 3721
    .local v7, "repeat":I
    invoke-virtual/range {p6 .. p6}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitude()I

    move-result v0

    .line 3722
    .local v0, "magnitude":I
    invoke-virtual/range {p6 .. p6}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3724
    .local v6, "magnitudeType":Ljava/lang/String;
    if-gez v0, :cond_28

    .line 3725
    invoke-direct {v15, v6, v12}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v5, v0

    goto :goto_29

    .line 3724
    :cond_28
    move v5, v0

    .line 3728
    .end local v0    # "magnitude":I
    .local v5, "magnitude":I
    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semColorfulVibrate - package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", repeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", usageHint : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    if-gtz v5, :cond_80

    .line 3733
    invoke-virtual {v15, v11}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    .line 3734
    const-string v0, "VibratorService"

    const-string/jumbo v1, "semColorfulVibrate() : magnitude is not positive"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    return-void

    .line 3738
    :cond_80
    if-nez v10, :cond_8b

    .line 3739
    const-string v0, "VibratorService"

    const-string/jumbo v1, "semColorfulVibrate() : data is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    return-void

    .line 3743
    :cond_8b
    invoke-direct {v15, v10}, Lcom/android/server/VibratorService;->isColorfulDataFormat([I)Z

    move-result v0

    if-nez v0, :cond_92

    .line 3744
    return-void

    .line 3747
    :cond_92
    if-lez v7, :cond_b1

    .line 3748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semColorfulVibrate() : repeat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is wrong."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    return-void

    .line 3752
    :cond_b1
    if-nez v11, :cond_bc

    .line 3753
    const-string v0, "VibratorService"

    const-string/jumbo v1, "semColorfulVibrate() : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    return-void

    .line 3757
    :cond_bc
    invoke-direct {v15, v10}, Lcom/android/server/VibratorService;->getMillisecondsFromColorfulData([I)J

    move-result-wide v19

    .line 3759
    .local v19, "millis":J
    const/4 v0, -0x1

    if-ne v8, v0, :cond_cd

    .line 3760
    invoke-direct {v15, v10}, Lcom/android/server/VibratorService;->getCustomPattern([I)[J

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/android/server/VibratorService;->getColorfulPattern([J)[J

    move-result-object v1

    move-object v3, v1

    .local v1, "vibePattern":[J
    goto :goto_d6

    .line 3762
    .end local v1    # "vibePattern":[J
    :cond_cd
    invoke-direct {v15, v8}, Lcom/android/server/VibratorService;->getCommonPattern(I)[J

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/android/server/VibratorService;->getColorfulPattern([J)[J

    move-result-object v1

    move-object v3, v1

    .line 3764
    .local v3, "vibePattern":[J
    :goto_d6
    array-length v1, v3

    const/4 v2, 0x0

    const/4 v14, 0x2

    if-ne v1, v14, :cond_ff

    .line 3765
    aget-wide v16, v3, v2

    const-wide/16 v21, 0x0

    cmp-long v1, v16, v21

    if-gez v1, :cond_ff

    .line 3766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not supported.(color)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    return-void

    .line 3770
    :cond_ff
    if-le v7, v0, :cond_108

    invoke-direct {v15, v3, v7, v12}, Lcom/android/server/VibratorService;->isExecutablePattern([JILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_108

    .line 3771
    return-void

    .line 3775
    :cond_108
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 3776
    invoke-direct {v15, v9}, Lcom/android/server/VibratorService;->toAudioUsage(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;Landroid/os/VibrationEffect;)V

    .line 3777
    invoke-virtual {v0, v9}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v21

    .line 3779
    .local v21, "va":Landroid/os/VibrationAttributes;
    iget-boolean v0, v15, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v0, :cond_15b

    .line 3780
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, v0

    const/4 v14, -0x1

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v22, v3

    .end local v3    # "vibePattern":[J
    .local v22, "vibePattern":[J
    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move/from16 v23, v5

    .end local v5    # "magnitude":I
    .local v23, "magnitude":I
    move-object/from16 v5, v21

    move-object/from16 v24, v6

    .end local v6    # "magnitudeType":Ljava/lang/String;
    .local v24, "magnitudeType":Ljava/lang/String;
    move/from16 v6, p1

    move/from16 v25, v7

    .end local v7    # "repeat":I
    .local v25, "repeat":I
    move-object/from16 v7, p2

    move/from16 v26, v8

    .end local v8    # "type":I
    .local v26, "type":I
    move-object/from16 v8, p3

    move-wide/from16 v9, v19

    move-object/from16 v11, v22

    move/from16 v12, v25

    move/from16 v13, v23

    move/from16 v15, v26

    move-object/from16 v16, v24

    move-object/from16 v17, p7

    invoke-direct/range {v1 .. v18}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JIIIILjava/lang/String;[ILcom/android/server/VibratorService$1;)V

    .local v0, "vib":Lcom/android/server/VibratorService$Vibration;
    goto :goto_18d

    .line 3783
    .end local v0    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v22    # "vibePattern":[J
    .end local v23    # "magnitude":I
    .end local v24    # "magnitudeType":Ljava/lang/String;
    .end local v25    # "repeat":I
    .end local v26    # "type":I
    .restart local v3    # "vibePattern":[J
    .restart local v5    # "magnitude":I
    .restart local v6    # "magnitudeType":Ljava/lang/String;
    .restart local v7    # "repeat":I
    .restart local v8    # "type":I
    :cond_15b
    move-object/from16 v22, v3

    move/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    .end local v3    # "vibePattern":[J
    .end local v5    # "magnitude":I
    .end local v6    # "magnitudeType":Ljava/lang/String;
    .end local v7    # "repeat":I
    .end local v8    # "type":I
    .restart local v22    # "vibePattern":[J
    .restart local v23    # "magnitude":I
    .restart local v24    # "magnitudeType":Ljava/lang/String;
    .restart local v25    # "repeat":I
    .restart local v26    # "type":I
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, v0

    const-wide/16 v9, -0x1

    new-array v2, v14, [J

    move-object v11, v2

    fill-array-data v2, :array_20e

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, v21

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v12, v25

    move/from16 v13, v23

    move-object/from16 v16, v24

    invoke-direct/range {v1 .. v18}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JIIIILjava/lang/String;[ILcom/android/server/VibratorService$1;)V

    .line 3787
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    :goto_18d
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v5, p1

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v3, :cond_1e5

    .line 3789
    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_1e5

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-nez v0, :cond_1e5

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-nez v0, :cond_1e5

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isEnforcedVibration()Z

    move-result v0

    if-nez v0, :cond_1e5

    .line 3790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring incoming vibration as process with uid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is background,usage = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 3791
    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3790
    const-string v3, "VibratorService"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
    return-void

    .line 3796
    :cond_1e5
    move-object/from16 v3, p4

    const/4 v0, 0x0

    :try_start_1e8
    invoke-interface {v3, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1eb
    .catch Landroid/os/RemoteException; {:try_start_1e8 .. :try_end_1eb} :catch_20a

    .line 3799
    nop

    .line 3801
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3803
    .local v6, "ident":J
    :try_start_1f0
    iget-object v4, v2, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1f3
    .catchall {:try_start_1f0 .. :try_end_1f3} :catchall_205

    .line 3804
    :try_start_1f3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 3805
    invoke-direct {v2, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 3806
    invoke-direct {v2, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 3807
    monitor-exit v4
    :try_end_1fd
    .catchall {:try_start_1f3 .. :try_end_1fd} :catchall_202

    .line 3809
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3810
    nop

    .line 3811
    return-void

    .line 3807
    :catchall_202
    move-exception v0

    :try_start_203
    monitor-exit v4
    :try_end_204
    .catchall {:try_start_203 .. :try_end_204} :catchall_202

    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v6    # "ident":J
    .end local v19    # "millis":J
    .end local v21    # "va":Landroid/os/VibrationAttributes;
    .end local v22    # "vibePattern":[J
    .end local v23    # "magnitude":I
    .end local v24    # "magnitudeType":Ljava/lang/String;
    .end local v25    # "repeat":I
    .end local v26    # "type":I
    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "reason":Ljava/lang/String;
    .end local p4    # "token":Landroid/os/IBinder;
    .end local p5    # "usage":I
    .end local p6    # "effect":Landroid/os/VibrationEffect$SemHaptic;
    .end local p7    # "data":[I
    :try_start_204
    throw v0
    :try_end_205
    .catchall {:try_start_204 .. :try_end_205} :catchall_205

    .line 3809
    .restart local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .restart local v6    # "ident":J
    .restart local v19    # "millis":J
    .restart local v21    # "va":Landroid/os/VibrationAttributes;
    .restart local v22    # "vibePattern":[J
    .restart local v23    # "magnitude":I
    .restart local v24    # "magnitudeType":Ljava/lang/String;
    .restart local v25    # "repeat":I
    .restart local v26    # "type":I
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "reason":Ljava/lang/String;
    .restart local p4    # "token":Landroid/os/IBinder;
    .restart local p5    # "usage":I
    .restart local p6    # "effect":Landroid/os/VibrationEffect$SemHaptic;
    .restart local p7    # "data":[I
    :catchall_205
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3810
    throw v0

    .line 3797
    .end local v6    # "ident":J
    :catch_20a
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 3798
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    :array_20e
    .array-data 8
        0x0
        0x64
    .end array-data
.end method

.method private semIndexVibrate(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;)V
    .registers 33
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "usage"    # I
    .param p6, "effect"    # Landroid/os/VibrationEffect$SemHaptic;

    .line 3816
    move-object/from16 v15, p0

    move/from16 v13, p1

    move-object/from16 v12, p2

    move-object/from16 v8, p4

    move/from16 v7, p5

    invoke-virtual/range {p6 .. p6}, Landroid/os/VibrationEffect$SemHaptic;->getType()I

    move-result v19

    .line 3817
    .local v19, "type":I
    invoke-virtual/range {p6 .. p6}, Landroid/os/VibrationEffect$SemHaptic;->getRepeat()I

    move-result v6

    .line 3818
    .local v6, "repeat":I
    invoke-virtual/range {p6 .. p6}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitude()I

    move-result v0

    .line 3819
    .local v0, "magnitude":I
    invoke-virtual/range {p6 .. p6}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3821
    .local v4, "magnitudeType":Ljava/lang/String;
    if-gez v0, :cond_26

    .line 3822
    invoke-direct {v15, v4, v12}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v3, v0

    goto :goto_27

    .line 3821
    :cond_26
    move v3, v0

    .line 3825
    .end local v0    # "magnitude":I
    .local v3, "magnitude":I
    :goto_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semIndexVibrate - package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", repeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", usageHint : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    if-gtz v3, :cond_6c

    .line 3830
    invoke-virtual {v15, v8}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    .line 3831
    return-void

    .line 3834
    :cond_6c
    if-lez v6, :cond_8b

    .line 3835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semIndexVibrate() : repeat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is wrong."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    return-void

    .line 3839
    :cond_8b
    if-nez v8, :cond_96

    .line 3840
    const-string v0, "VibratorService"

    const-string/jumbo v1, "semIndexVibrate() : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    return-void

    .line 3844
    :cond_96
    const-wide/16 v20, 0x1388

    .local v20, "millis":J
    move-wide/from16 v9, v20

    .line 3846
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 3847
    invoke-direct {v15, v7}, Lcom/android/server/VibratorService;->toAudioUsage(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;Landroid/os/VibrationEffect;)V

    .line 3848
    invoke-virtual {v0, v7}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v22

    .local v22, "vibrationAttributes":Landroid/os/VibrationAttributes;
    move-object/from16 v5, v22

    .line 3849
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, v0

    const/4 v11, 0x0

    const/4 v14, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move/from16 v23, v3

    .end local v3    # "magnitude":I
    .local v23, "magnitude":I
    move-object/from16 v3, p4

    move-object/from16 v24, v4

    .end local v4    # "magnitudeType":Ljava/lang/String;
    .local v24, "magnitudeType":Ljava/lang/String;
    move-object/from16 v4, p6

    move/from16 v25, v6

    .end local v6    # "repeat":I
    .local v25, "repeat":I
    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v12, v25

    move/from16 v13, v23

    move/from16 v15, v19

    move-object/from16 v16, v24

    invoke-direct/range {v1 .. v18}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JIIIILjava/lang/String;[ILcom/android/server/VibratorService$1;)V

    .line 3853
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v0, v2, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v5, p1

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v3, :cond_137

    .line 3855
    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_137

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-nez v0, :cond_137

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-nez v0, :cond_137

    .line 3856
    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isEnforcedVibration()Z

    move-result v0

    if-nez v0, :cond_137

    .line 3857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring incoming vibration as process with uid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is background, usage = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 3859
    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3857
    const-string v3, "VibratorService"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    return-void

    .line 3864
    :cond_137
    const/4 v0, 0x0

    move-object/from16 v3, p4

    :try_start_13a
    invoke-interface {v3, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13d
    .catch Landroid/os/RemoteException; {:try_start_13a .. :try_end_13d} :catch_15c

    .line 3867
    nop

    .line 3869
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3871
    .local v6, "ident":J
    :try_start_142
    iget-object v4, v2, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_145
    .catchall {:try_start_142 .. :try_end_145} :catchall_157

    .line 3872
    :try_start_145
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 3873
    invoke-direct {v2, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 3874
    invoke-direct {v2, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 3875
    monitor-exit v4
    :try_end_14f
    .catchall {:try_start_145 .. :try_end_14f} :catchall_154

    .line 3877
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3878
    nop

    .line 3879
    return-void

    .line 3875
    :catchall_154
    move-exception v0

    :try_start_155
    monitor-exit v4
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_154

    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v6    # "ident":J
    .end local v19    # "type":I
    .end local v20    # "millis":J
    .end local v22    # "vibrationAttributes":Landroid/os/VibrationAttributes;
    .end local v23    # "magnitude":I
    .end local v24    # "magnitudeType":Ljava/lang/String;
    .end local v25    # "repeat":I
    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "reason":Ljava/lang/String;
    .end local p4    # "token":Landroid/os/IBinder;
    .end local p5    # "usage":I
    .end local p6    # "effect":Landroid/os/VibrationEffect$SemHaptic;
    :try_start_156
    throw v0
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_157

    .line 3877
    .restart local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .restart local v6    # "ident":J
    .restart local v19    # "type":I
    .restart local v20    # "millis":J
    .restart local v22    # "vibrationAttributes":Landroid/os/VibrationAttributes;
    .restart local v23    # "magnitude":I
    .restart local v24    # "magnitudeType":Ljava/lang/String;
    .restart local v25    # "repeat":I
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "reason":Ljava/lang/String;
    .restart local p4    # "token":Landroid/os/IBinder;
    .restart local p5    # "usage":I
    .restart local p6    # "effect":Landroid/os/VibrationEffect$SemHaptic;
    :catchall_157
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3878
    throw v0

    .line 3865
    .end local v6    # "ident":J
    :catch_15c
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 3866
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method private sendDataToHqm()V
    .registers 3

    .line 4597
    iget-object v0, p0, Lcom/android/server/VibratorService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    if-eqz v0, :cond_e

    .line 4598
    iget-object v1, p0, Lcom/android/server/VibratorService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sendHqmVibratorData(Lcom/samsung/android/server/vibrator/VibratorHqmData;)V

    .line 4599
    iget-object v0, p0, Lcom/android/server/VibratorService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    invoke-virtual {v0}, Lcom/samsung/android/server/vibrator/VibratorHqmData;->clear()V

    .line 4601
    :cond_e
    return-void
.end method

.method private setFrequency(I)V
    .registers 4
    .param p1, "frequency"    # I

    .line 3929
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v0, :cond_8

    .line 3930
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorSetFrequencyType(J)V

    .line 3932
    :cond_8
    return-void
.end method

.method private setIntensity(I)V
    .registers 4
    .param p1, "intensity"    # I

    .line 3935
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v0, :cond_8

    .line 3936
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorSetIntensity(J)V

    .line 3938
    :cond_8
    return-void
.end method

.method private setVibratorUnderExternalControl(Z)V
    .registers 4
    .param p1, "externalControl"    # Z

    .line 1906
    const-string v0, "VibratorService"

    if-eqz p1, :cond_a

    .line 1907
    const-string v1, "Vibrator going under external control."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1909
    :cond_a
    const-string v1, "Taking back control of vibrator."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    :goto_f
    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    .line 1913
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetExternalControl(Z)V

    .line 1914
    return-void
.end method

.method private setupAmplitudeLevel()V
    .registers 21

    .line 2907
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 2909
    .local v1, "supportedHalAmpl":Z
    iget-object v2, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 2911
    .local v2, "secDefaultAmpList":[I
    iget-object v3, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10700f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 2913
    .local v3, "secDefaultAmpListFrequency":[I
    iget-object v4, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10700f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 2915
    .local v4, "secTouchAmpList":[I
    iget-object v5, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10700f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 2917
    .local v5, "secTouchAmpListFrequency":[I
    iget-object v6, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10700fa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 2919
    .local v6, "secPmicDefaultAmpList":[I
    const/4 v7, 0x0

    .line 2920
    .local v7, "secHalDefaultAmpList":[I
    const/4 v8, 0x0

    .line 2921
    .local v8, "secHalTouchAmpList":[I
    iget-object v9, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10700f4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 2924
    .local v9, "secDcTouchAmpList":[I
    const-string v10, "VibratorService"

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_6b

    .line 2925
    invoke-static {v11}, Lcom/android/server/VibratorService;->vibratorGetAmplitudeList(I)[I

    move-result-object v7

    .line 2926
    invoke-static {v12}, Lcom/android/server/VibratorService;->vibratorGetAmplitudeList(I)[I

    move-result-object v8

    .line 2928
    if-eqz v7, :cond_65

    if-nez v8, :cond_6b

    .line 2929
    :cond_65
    const-string v13, "Cannot find HAL amplitude, resource\'s amplitude will be used forcibly !"

    invoke-static {v10, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    const/4 v1, 0x0

    .line 2934
    :cond_6b
    iget v13, v0, Lcom/android/server/VibratorService;->mMotorType:I

    packed-switch v13, :pswitch_data_20c

    :pswitch_70
    goto/16 :goto_e4

    .line 2973
    :pswitch_72
    if-eqz v1, :cond_76

    move-object v13, v7

    goto :goto_77

    :cond_76
    move-object v13, v2

    :goto_77
    iput-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    .line 2974
    if-eqz v1, :cond_7d

    move-object v13, v8

    goto :goto_7e

    :cond_7d
    move-object v13, v4

    :goto_7e
    iput-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 2975
    invoke-static {v12}, Lcom/samsung/android/vibrator/VibRune;->SET_CIRRUS_HAPTIC(Z)V

    .line 2976
    iput-boolean v12, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 2977
    iput-boolean v12, v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    .line 2978
    goto/16 :goto_e4

    .line 2966
    :pswitch_89
    if-eqz v1, :cond_8d

    move-object v13, v7

    goto :goto_8e

    :cond_8d
    move-object v13, v3

    :goto_8e
    iput-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    .line 2967
    if-eqz v1, :cond_94

    move-object v13, v8

    goto :goto_95

    :cond_94
    move-object v13, v5

    :goto_95
    iput-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 2968
    iput-boolean v12, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 2969
    iput-boolean v12, v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    .line 2970
    goto :goto_e4

    .line 2957
    :pswitch_9c
    if-eqz v1, :cond_a0

    move-object v13, v7

    goto :goto_a1

    :cond_a0
    move-object v13, v3

    :goto_a1
    iput-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    .line 2958
    if-eqz v1, :cond_a7

    move-object v13, v8

    goto :goto_a8

    :cond_a7
    move-object v13, v5

    :goto_a8
    iput-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 2959
    invoke-static {v12}, Lcom/samsung/android/vibrator/VibRune;->SET_CIRRUS_HAPTIC(Z)V

    .line 2960
    iput-boolean v12, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 2961
    iput-boolean v12, v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    .line 2962
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorGetNumberOfPrebakedHapticPattern()I

    move-result v13

    iput v13, v0, Lcom/android/server/VibratorService;->mCirrusNumWaves:I

    .line 2963
    goto :goto_e4

    .line 2949
    :pswitch_b8
    if-eqz v1, :cond_bc

    move-object v13, v7

    goto :goto_bd

    :cond_bc
    move-object v13, v6

    :goto_bd
    iput-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    .line 2950
    if-eqz v1, :cond_c3

    move-object v13, v8

    goto :goto_c4

    :cond_c3
    move-object v13, v6

    :goto_c4
    iput-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 2951
    iput-boolean v12, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 2952
    iput-boolean v11, v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    .line 2953
    goto :goto_e4

    .line 2943
    :pswitch_cb
    iput-boolean v12, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 2944
    iput-boolean v12, v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    .line 2945
    if-eqz v1, :cond_d3

    move-object v13, v7

    goto :goto_d4

    :cond_d3
    move-object v13, v2

    :goto_d4
    iput-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    .line 2946
    if-eqz v1, :cond_da

    move-object v13, v8

    goto :goto_db

    :cond_da
    move-object v13, v4

    :goto_db
    iput-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 2947
    goto :goto_e4

    .line 2938
    :pswitch_de
    sget-boolean v13, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v13, :cond_e4

    .line 2939
    iput-object v9, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 2983
    :cond_e4
    :goto_e4
    iget-boolean v13, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v13, :cond_1ec

    .line 2984
    iget-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v14, v13

    sub-int/2addr v14, v12

    .line 2985
    .local v14, "magnitudeMaxLevel":I
    iget-object v15, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v11, v15

    sub-int/2addr v11, v12

    .line 2986
    .local v11, "touchMagnitudeMaxLevel":I
    const/4 v12, 0x2

    if-lt v14, v12, :cond_1cc

    if-ge v11, v12, :cond_f9

    move/from16 v19, v1

    goto/16 :goto_1ce

    .line 2991
    :cond_f9
    aget v15, v15, v11

    iput v15, v0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 2992
    aget v15, v13, v14

    iput v15, v0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 2993
    aget v15, v13, v14

    iput v15, v0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 2994
    aget v15, v13, v14

    iput v15, v0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    .line 2995
    const/4 v15, 0x1

    aget v13, v13, v15

    iput v13, v0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    .line 2997
    iget-object v13, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 2998
    new-instance v13, Lcom/android/server/VibratorService$SecSettingsObserver;

    const/4 v15, 0x0

    invoke-direct {v13, v0, v15}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v13, v0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 2999
    new-instance v13, Lcom/android/server/VibratorService$SecSettingsObserver;

    const/4 v15, 0x1

    invoke-direct {v13, v0, v15}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v13, v0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 3000
    new-instance v13, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v13, v0, v12}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v13, v0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 3002
    iget-object v13, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    const/4 v12, -0x2

    invoke-static {v13, v15, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 3005
    .local v13, "magnitudeLevel":I
    if-le v13, v11, :cond_13e

    move v15, v13

    goto :goto_142

    .line 3006
    :cond_13e
    iget-object v15, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v15, v15, v13

    :goto_142
    iput v15, v0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 3008
    iget-object v15, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v18, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    move/from16 v19, v1

    const/16 v17, 0x1

    .end local v1    # "supportedHalAmpl":Z
    .local v19, "supportedHalAmpl":Z
    aget-object v1, v18, v17

    invoke-static {v15, v1, v14, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 3011
    .end local v13    # "magnitudeLevel":I
    .local v1, "magnitudeLevel":I
    if-le v1, v14, :cond_156

    move v13, v1

    goto :goto_15a

    .line 3012
    :cond_156
    iget-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v13, v13, v1

    :goto_15a
    iput v13, v0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 3014
    iget-object v13, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-static {v13, v15, v14, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 3017
    if-le v1, v14, :cond_16c

    move v13, v1

    goto :goto_170

    .line 3018
    :cond_16c
    iget-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v13, v13, v1

    :goto_170
    iput v13, v0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 3020
    iget-boolean v13, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v13, :cond_1c6

    .line 3021
    iget-object v13, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x10700f9

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    .line 3023
    new-instance v13, Lcom/android/server/VibratorService$SecSettingsObserver;

    const/4 v15, 0x3

    invoke-direct {v13, v0, v15}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v13, v0, Lcom/android/server/VibratorService;->mForceMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 3024
    iget-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    array-length v12, v13

    const/16 v17, 0x1

    add-int/lit8 v12, v12, -0x1

    .line 3025
    .local v12, "touchForceMagnitudeMaxLevel":I
    aget v13, v13, v12

    iput v13, v0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    .line 3026
    const/4 v13, 0x2

    if-ge v12, v13, :cond_1b1

    .line 3027
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "touchForceMagnitudeMaxLevel : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    return-void

    .line 3030
    :cond_1b1
    iget-object v10, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v13, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    aget-object v13, v13, v15

    const/4 v15, -0x2

    invoke-static {v10, v13, v12, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 3032
    if-le v1, v12, :cond_1c0

    move v10, v1

    goto :goto_1c4

    .line 3033
    :cond_1c0
    iget-object v10, v0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v10, v10, v1

    :goto_1c4
    iput v10, v0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    .line 3036
    .end local v12    # "touchForceMagnitudeMaxLevel":I
    :cond_1c6
    iget v10, v0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    invoke-direct {v0, v10}, Lcom/android/server/VibratorService;->setIntensity(I)V

    .line 3037
    .end local v1    # "magnitudeLevel":I
    .end local v11    # "touchMagnitudeMaxLevel":I
    .end local v14    # "magnitudeMaxLevel":I
    goto :goto_20a

    .line 2986
    .end local v19    # "supportedHalAmpl":Z
    .local v1, "supportedHalAmpl":Z
    .restart local v11    # "touchMagnitudeMaxLevel":I
    .restart local v14    # "magnitudeMaxLevel":I
    :cond_1cc
    move/from16 v19, v1

    .line 2987
    .end local v1    # "supportedHalAmpl":Z
    .restart local v19    # "supportedHalAmpl":Z
    :goto_1ce
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "magnitudeMaxLevel : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", touchMagnitudeMaxLevel : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    return-void

    .line 3038
    .end local v11    # "touchMagnitudeMaxLevel":I
    .end local v14    # "magnitudeMaxLevel":I
    .end local v19    # "supportedHalAmpl":Z
    .restart local v1    # "supportedHalAmpl":Z
    :cond_1ec
    move/from16 v19, v1

    .end local v1    # "supportedHalAmpl":Z
    .restart local v19    # "supportedHalAmpl":Z
    sget-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v1, :cond_20a

    iget v1, v0, Lcom/android/server/VibratorService;->mMotorType:I

    const/4 v10, 0x1

    if-ne v1, v10, :cond_20a

    .line 3039
    iget-object v1, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3040
    new-instance v1, Lcom/android/server/VibratorService$SecSettingsObserver;

    const/4 v10, 0x0

    invoke-direct {v1, v0, v10}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v1, v0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 3042
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->updateDcHapticFeedbackMagnitude()V

    .line 3045
    :cond_20a
    :goto_20a
    return-void

    nop

    :pswitch_data_20c
    .packed-switch 0x1
        :pswitch_de
        :pswitch_cb
        :pswitch_b8
        :pswitch_70
        :pswitch_9c
        :pswitch_89
        :pswitch_89
        :pswitch_72
        :pswitch_72
    .end packed-switch
.end method

.method private setupCustomRoutine()V
    .registers 4

    .line 2887
    invoke-static {}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getInstance()Lcom/samsung/android/server/vibrator/VibratorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 2889
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->loadPatternInfo(Landroid/content/Context;)V

    .line 2892
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorGetSecHalVersion()F

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mSecVibHalVersion:F

    .line 2895
    invoke-direct {p0}, Lcom/android/server/VibratorService;->getVibMotorType()I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mMotorType:I

    .line 2897
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsFrequencyControl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    .line 2898
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    const-string v1, "VibratorService"

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "f : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    :cond_39
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsHapticEngine()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    .line 2901
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    :cond_59
    invoke-direct {p0}, Lcom/android/server/VibratorService;->setupAmplitudeLevel()V

    .line 2904
    return-void
.end method

.method private static shouldBypassDnd(Landroid/os/VibrationAttributes;)Z
    .registers 2
    .param p0, "attrs"    # Landroid/os/VibrationAttributes;

    .line 1434
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private shouldVibrate(Lcom/android/server/VibratorService$Vibration;I)Z
    .registers 10
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .param p2, "intensity"    # I

    .line 1461
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_AOSP_INTENSITY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1462
    if-nez p2, :cond_8

    .line 1463
    return v1

    .line 1467
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    const-string v2, "VibratorService"

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1469
    const-string v0, "Vibrate ignored, not vibrating for ringtones"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$2000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    if-gez v0, :cond_24

    .line 1471
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1479
    :cond_24
    return v1

    .line 1482
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    .line 1483
    .local v0, "mode":I
    if-eqz v0, :cond_94

    .line 1484
    const/4 v3, 0x2

    const-wide/16 v4, 0x3e8

    if-ne v0, v3, :cond_5d

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isEnforcedVibration()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 1487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Would be an error: vibrate from uid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$2000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    if-gez v2, :cond_55

    .line 1490
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1492
    :cond_55
    iget-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1493
    return v1

    .line 1497
    :cond_5d
    sget-object v3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    .line 1498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Would not be allowed : vibrate from uid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$2000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    if-gez v2, :cond_8c

    .line 1500
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1502
    :cond_8c
    iget-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1505
    :cond_93
    return v1

    .line 1508
    :cond_94
    const/4 v1, 0x1

    return v1
.end method

.method private shouldVibrateForRingtone()Z
    .registers 7

    .line 1416
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1417
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 1419
    .local v1, "ringerMode":I
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 1420
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1419
    const-string/jumbo v3, "vibrate_when_ringing"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_24

    .line 1421
    if-eqz v1, :cond_23

    move v4, v5

    :cond_23
    return v4

    .line 1422
    :cond_24
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 1423
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1422
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_34

    .line 1424
    if-eqz v1, :cond_33

    move v4, v5

    :cond_33
    return v4

    .line 1425
    :cond_34
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 1426
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1425
    const-string v3, "apply_ramping_ringer"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_46

    .line 1427
    if-eqz v1, :cond_45

    move v4, v5

    :cond_45
    return v4

    .line 1429
    :cond_46
    if-ne v1, v5, :cond_49

    move v4, v5

    :cond_49
    return v4
.end method

.method private startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 14
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1270
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationInnerLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1272
    :try_start_9
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 1273
    # getter for: Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1600(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 1274
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1275
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    iget v6, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    # getter for: Lcom/android/server/VibratorService$Vibration;->mCommonType:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$2000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService;->doVibratorOnByIndex(JILandroid/os/VibrationAttributes;III)V

    goto/16 :goto_117

    .line 1276
    :cond_31
    # getter for: Lcom/android/server/VibratorService$Vibration;->mEngineData:[I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$2100(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v2

    if-eqz v2, :cond_69

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$2000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    if-gez v2, :cond_69

    .line 1277
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    iget v6, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mEngineData:[I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$2100(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v8

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    # getter for: Lcom/android/server/VibratorService$Vibration;->mCommonType:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    .line 1278
    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$2000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    .line 1277
    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/VibratorService;->doVibratorOn(JILandroid/os/VibrationAttributes;[IIII)V

    .line 1279
    iget-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_117

    .line 1281
    :cond_69
    new-instance v2, Lcom/android/server/VibratorService$VibrateThread;

    iget v6, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    const/4 v8, 0x1

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;ILandroid/os/VibrationAttributes;Z)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 1282
    iget-object v2, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto/16 :goto_117

    .line 1284
    :cond_7f
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$OneShot;
    :try_end_83
    .catchall {:try_start_9 .. :try_end_83} :catchall_11c

    const/4 v3, 0x0

    const-string/jumbo v4, "vibration"

    if-eqz v2, :cond_b5

    .line 1285
    :try_start_89
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1286
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 1288
    .local v2, "oneShot":Landroid/os/VibrationEffect$OneShot;
    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v6

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v8, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    .line 1289
    # getter for: Lcom/android/server/VibratorService$Vibration;->mFrequency:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$2200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    .line 1288
    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService;->doVibratorOn(JIILandroid/os/VibrationAttributes;II)V

    .line 1293
    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1294
    nop

    .end local v2    # "oneShot":Landroid/os/VibrationEffect$OneShot;
    goto :goto_117

    :cond_b5
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Waveform;

    if-eqz v2, :cond_df

    .line 1297
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1298
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    move-object v6, v2

    check-cast v6, Landroid/os/VibrationEffect$Waveform;

    .line 1300
    .local v6, "waveform":Landroid/os/VibrationEffect$Waveform;
    new-instance v2, Lcom/android/server/VibratorService$VibrateThread;

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v8, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    # getter for: Lcom/android/server/VibratorService$Vibration;->mFrequency:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$2200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;Landroid/os/VibrationEffect$Waveform;ILandroid/os/VibrationAttributes;II)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 1304
    iget-object v2, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    .line 1305
    .end local v6    # "waveform":Landroid/os/VibrationEffect$Waveform;
    goto :goto_117

    :cond_df
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v2, :cond_fa

    .line 1306
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1307
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    .line 1308
    .local v2, "timeout":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_f9

    .line 1309
    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1311
    .end local v2    # "timeout":J
    :cond_f9
    goto :goto_117

    :cond_fa
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Composed;

    if-eqz v2, :cond_110

    .line 1312
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1313
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorComposedEffectLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 1318
    iget-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_117

    .line 1320
    :cond_110
    const-string v2, "VibratorService"

    const-string v3, "Unknown vibration type, ignoring"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_117
    .catchall {:try_start_89 .. :try_end_117} :catchall_11c

    .line 1323
    :goto_117
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1324
    nop

    .line 1325
    return-void

    .line 1323
    :catchall_11c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1324
    throw v2
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 7
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1251
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1253
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    .line 1254
    .local v2, "intensity":I
    invoke-direct {p0, p1, v2}, Lcom/android/server/VibratorService;->shouldVibrate(Lcom/android/server/VibratorService$Vibration;I)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_2d

    if-nez v3, :cond_17

    .line 1264
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1255
    return-void

    .line 1257
    :cond_17
    :try_start_17
    invoke-direct {p0, p1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 1258
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 1261
    iget-object v3, p0, Lcom/android/server/VibratorService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/vibrator/VibratorHqmData;->increaseCount(I)V
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_2d

    .line 1264
    .end local v2    # "intensity":I
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1265
    nop

    .line 1266
    return-void

    .line 1264
    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1265
    throw v2
.end method

.method private toAudioUsage(I)I
    .registers 3
    .param p1, "usage"    # I

    .line 3882
    const/16 v0, 0x11

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x31

    if-eq p1, v0, :cond_18

    const/16 v0, 0x41

    if-eq p1, v0, :cond_16

    .line 3894
    const/4 v0, 0x0

    return v0

    .line 3886
    :cond_16
    const/4 v0, 0x7

    return v0

    .line 3884
    :cond_18
    const/4 v0, 0x5

    return v0

    .line 3888
    :cond_1a
    const/4 v0, 0x6

    return v0

    .line 3890
    :cond_1c
    const/16 v0, 0xd

    return v0

    .line 3892
    :cond_1f
    const/4 v0, 0x4

    return v0
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1541
    # getter for: Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1600(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_17

    .line 1543
    :cond_c
    :try_start_c
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_12
    .catch Ljava/util/NoSuchElementException; {:try_start_c .. :try_end_12} :catch_13

    .line 1546
    goto :goto_17

    .line 1544
    :catch_13
    move-exception v0

    .line 1545
    .local v0, "e":Ljava/util/NoSuchElementException;
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    .line 1548
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :cond_17
    :goto_17
    return-void
.end method

.method private updateAlwaysOnLocked()V
    .registers 4

    .line 1648
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1649
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1650
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$Vibration;

    .line 1651
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-direct {p0, v1, v2}, Lcom/android/server/VibratorService;->updateAlwaysOnLocked(ILcom/android/server/VibratorService$Vibration;)V

    .line 1648
    .end local v1    # "id":I
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1653
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method private updateAlwaysOnLocked(ILcom/android/server/VibratorService$Vibration;)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1637
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    .line 1638
    .local v0, "intensity":I
    invoke-direct {p0, p2, v0}, Lcom/android/server/VibratorService;->shouldVibrate(Lcom/android/server/VibratorService$Vibration;I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1639
    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->vibratorAlwaysOnDisable(J)V

    goto :goto_21

    .line 1641
    :cond_f
    iget-object v1, p2, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v1, Landroid/os/VibrationEffect$Prebaked;

    .line 1642
    .local v1, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    invoke-static {v0}, Lcom/android/server/VibratorService;->intensityToEffectStrength(I)I

    move-result v2

    .line 1643
    .local v2, "strength":I
    int-to-long v3, p1

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v5

    int-to-long v5, v5

    int-to-long v7, v2

    invoke-static/range {v3 .. v8}, Lcom/android/server/VibratorService;->vibratorAlwaysOnEnable(JJJ)V

    .line 1645
    .end local v1    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    .end local v2    # "strength":I
    :goto_21
    return-void
.end method

.method private updateDcHapticFeedbackMagnitude()V
    .registers 5

    .line 4500
    iget-object v0, p0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 4501
    .local v0, "maxLevel":I
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 4503
    .local v1, "currentLevel":I
    iget-object v2, p0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 4504
    return-void
.end method

.method private updateInputDeviceVibratorsLocked()Z
    .registers 9

    .line 1569
    const/4 v0, 0x0

    .line 1570
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 1572
    .local v1, "vibrateInputDevices":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 1573
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_input_devices"

    const/4 v6, -0x2

    .line 1572
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_12} :catch_19

    if-lez v4, :cond_16

    move v4, v3

    goto :goto_17

    :cond_16
    move v4, v2

    :goto_17
    move v1, v4

    .line 1576
    goto :goto_1a

    .line 1575
    :catch_19
    move-exception v4

    .line 1577
    :goto_1a
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eq v1, v4, :cond_21

    .line 1578
    const/4 v0, 0x1

    .line 1579
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    .line 1582
    :cond_21
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_33

    .line 1583
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v2, :cond_3e

    .line 1584
    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 1585
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v2, p0, v4}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    goto :goto_3e

    .line 1588
    :cond_33
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_3e

    .line 1589
    iput-boolean v2, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 1590
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v2, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 1594
    :cond_3e
    :goto_3e
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1595
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v2, :cond_6f

    .line 1596
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 1597
    .local v2, "ids":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4e
    array-length v5, v2

    if-ge v4, v5, :cond_6e

    .line 1598
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v6, v2, v4

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 1600
    .local v5, "device":Landroid/view/InputDevice;
    if-nez v5, :cond_5c

    .line 1601
    goto :goto_6b

    .line 1604
    :cond_5c
    invoke-virtual {v5}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v6

    .line 1605
    .local v6, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 1606
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    .end local v5    # "device":Landroid/view/InputDevice;
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_6b
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 1609
    .end local v4    # "i":I
    :cond_6e
    return v3

    .line 1611
    .end local v2    # "ids":[I
    :cond_6f
    return v0
.end method

.method private updateLowPowerModeLocked()Z
    .registers 3

    .line 1615
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1616
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 1617
    .local v0, "lowPowerMode":Z
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eq v0, v1, :cond_11

    .line 1618
    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    .line 1619
    const/4 v1, 0x1

    return v1

    .line 1621
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private updateMagnitudeEnforced(Landroid/os/VibrationEffect$SemMagnitudeType;)V
    .registers 6
    .param p1, "type"    # Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 3997
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    const-string v1, "Settings observer object is null - "

    const-string v2, "VibratorService"

    const/4 v3, 0x1

    if-eqz v0, :cond_45

    .line 3999
    :try_start_9
    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    if-eq p1, v0, :cond_26

    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

    if-ne p1, v0, :cond_12

    goto :goto_26

    .line 4003
    :cond_12
    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    if-ne p1, v0, :cond_1c

    .line 4004
    iget-object v0, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0, v3}, Lcom/android/server/VibratorService$SecSettingsObserver;->onChange(Z)V

    goto :goto_44

    .line 4005
    :cond_1c
    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    if-ne p1, v0, :cond_44

    .line 4006
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0, v3}, Lcom/android/server/VibratorService$SecSettingsObserver;->onChange(Z)V

    goto :goto_44

    .line 4001
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0, v3}, Lcom/android/server/VibratorService$SecSettingsObserver;->onChange(Z)V

    .line 4002
    iget-object v0, p0, Lcom/android/server/VibratorService;->mForceMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0, v3}, Lcom/android/server/VibratorService$SecSettingsObserver;->onChange(Z)V
    :try_end_30
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_30} :catch_31

    goto :goto_44

    .line 4008
    :catch_31
    move-exception v0

    .line 4009
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_44
    :goto_44
    goto :goto_6a

    .line 4013
    :cond_45
    :try_start_45
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v0, :cond_56

    iget v0, p0, Lcom/android/server/VibratorService;->mMotorType:I

    if-ne v0, v3, :cond_56

    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    if-ne p1, v0, :cond_56

    .line 4015
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0, v3}, Lcom/android/server/VibratorService$SecSettingsObserver;->onChange(Z)V
    :try_end_56
    .catch Ljava/lang/NullPointerException; {:try_start_45 .. :try_end_56} :catch_57

    .line 4019
    :cond_56
    goto :goto_6a

    .line 4017
    :catch_57
    move-exception v0

    .line 4018
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_6a
    return-void
.end method

.method private updateVibrationIntensityLocked()V
    .registers 5

    .line 1625
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1627
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v1

    .line 1625
    const-string/jumbo v2, "haptic_feedback_intensity"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    .line 1628
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1630
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v1

    .line 1628
    const-string/jumbo v2, "notification_vibration_intensity"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    .line 1631
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1633
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v1

    .line 1631
    const-string/jumbo v2, "ring_vibration_intensity"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    .line 1634
    return-void
.end method

.method private updateVibrators()V
    .registers 4

    .line 1551
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1552
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibratorsLocked()Z

    move-result v1

    .line 1553
    .local v1, "devicesUpdated":Z
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateLowPowerModeLocked()Z

    move-result v2

    .line 1555
    .local v2, "lowPowerModeUpdated":Z
    const/4 v2, 0x0

    .line 1557
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrationIntensityLocked()V

    .line 1559
    if-nez v1, :cond_13

    if-eqz v2, :cond_16

    .line 1561
    :cond_13
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1564
    :cond_16
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateAlwaysOnLocked()V

    .line 1565
    .end local v1    # "devicesUpdated":Z
    .end local v2    # "lowPowerModeUpdated":Z
    monitor-exit v0

    .line 1566
    return-void

    .line 1565
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private verifyIncomingUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 931
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 932
    return-void

    .line 934
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 935
    return-void

    .line 937
    :cond_12
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 938
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 937
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 939
    return-void
.end method

.method private static verifyVibrationEffect(Landroid/os/VibrationEffect;)Z
    .registers 5
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 950
    const/4 v0, 0x0

    const-string v1, "VibratorService"

    if-nez p0, :cond_b

    .line 952
    const-string v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return v0

    .line 956
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_11

    .line 960
    nop

    .line 961
    const/4 v0, 0x1

    return v0

    .line 957
    :catch_11
    move-exception v2

    .line 958
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Encountered issue when verifying VibrationEffect."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 959
    return v0
.end method

.method private vibrateCommonPatternMagnitude(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;)V
    .registers 18
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "usageHint"    # I
    .param p6, "effect"    # Landroid/os/VibrationEffect$SemHaptic;

    .line 3555
    move-object v8, p0

    invoke-virtual/range {p6 .. p6}, Landroid/os/VibrationEffect$SemHaptic;->getType()I

    move-result v9

    .line 3557
    .local v9, "type":I
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3558
    invoke-direct/range {p0 .. p6}, Lcom/android/server/VibratorService;->semIndexVibrate(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;)V

    .line 3559
    return-void

    .line 3562
    :cond_f
    iget-boolean v0, v8, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v0, :cond_32

    .line 3563
    invoke-direct {p0, v9}, Lcom/android/server/VibratorService;->getColorfulData(I)[I

    move-result-object v10

    .line 3564
    .local v10, "data":[I
    invoke-direct {p0, v9, v10}, Lcom/android/server/VibratorService;->hasColorfulData(I[I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3565
    invoke-direct {p0, v9, v10}, Lcom/android/server/VibratorService;->hasBlankColorfulData(I[I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3566
    return-void

    .line 3568
    :cond_24
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService;->semColorfulVibrate(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;[I)V

    .line 3569
    return-void

    .line 3573
    .end local v10    # "data":[I
    :cond_32
    invoke-direct {p0, v9}, Lcom/android/server/VibratorService;->getCommonPattern(I)[J

    move-result-object v10

    .line 3574
    .local v10, "vibePattern":[J
    array-length v0, v10

    const/4 v1, 0x2

    if-ne v0, v1, :cond_84

    .line 3575
    const/4 v0, 0x0

    aget-wide v1, v10, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "This "

    const-string v5, "VibratorService"

    if-nez v1, :cond_66

    const/4 v1, 0x1

    aget-wide v6, v10, v1

    cmp-long v1, v6, v3

    if-nez v1, :cond_66

    .line 3576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is blank pattern.(common)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    return-void

    .line 3579
    :cond_66
    aget-wide v0, v10, v0

    cmp-long v0, v0, v3

    if-gez v0, :cond_84

    .line 3580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not supported.(common)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    return-void

    .line 3585
    :cond_84
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService;->vibratePatternMagnitude(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;[J)V

    .line 3586
    return-void
.end method

.method private vibratePatternMagnitude(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;[J)V
    .registers 32
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "usage"    # I
    .param p6, "effect"    # Landroid/os/VibrationEffect$SemHaptic;
    .param p7, "pattern"    # [J

    .line 3407
    move-object/from16 v15, p0

    move/from16 v13, p1

    move-object/from16 v12, p2

    move-object/from16 v11, p4

    move/from16 v8, p5

    move-object/from16 v7, p7

    invoke-virtual/range {p6 .. p6}, Landroid/os/VibrationEffect$SemHaptic;->getType()I

    move-result v6

    .line 3408
    .local v6, "type":I
    invoke-virtual/range {p6 .. p6}, Landroid/os/VibrationEffect$SemHaptic;->getRepeat()I

    move-result v4

    .line 3409
    .local v4, "repeat":I
    invoke-virtual/range {p6 .. p6}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitude()I

    move-result v0

    .line 3410
    .local v0, "magnitude":I
    invoke-virtual/range {p6 .. p6}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3412
    .local v3, "magnitudeType":Ljava/lang/String;
    if-gez v0, :cond_28

    .line 3413
    invoke-direct {v15, v3, v12}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v2, v0

    goto :goto_29

    .line 3412
    :cond_28
    move v2, v0

    .line 3417
    .end local v0    # "magnitude":I
    .local v2, "magnitude":I
    :goto_29
    if-eqz v7, :cond_169

    array-length v0, v7

    if-eqz v0, :cond_169

    invoke-direct {v15, v7}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v0

    if-nez v0, :cond_169

    array-length v0, v7

    if-ge v4, v0, :cond_169

    if-nez v11, :cond_46

    move/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v6

    move-object v3, v11

    move v5, v13

    move-object v2, v15

    goto/16 :goto_174

    .line 3427
    :cond_46
    const/4 v0, -0x1

    if-le v4, v0, :cond_52

    if-ne v6, v0, :cond_52

    invoke-direct {v15, v7, v4, v12}, Lcom/android/server/VibratorService;->isExecutablePattern([JILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 3429
    return-void

    .line 3432
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vibratePatternMagnitude - package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p3

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", repeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    if-nez v2, :cond_99

    .line 3436
    invoke-virtual {v15, v11}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    .line 3438
    return-void

    .line 3441
    :cond_99
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 3442
    invoke-direct {v15, v8}, Lcom/android/server/VibratorService;->toAudioUsage(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;Landroid/os/VibrationEffect;)V

    .line 3443
    invoke-virtual {v0, v8}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v19

    .local v19, "va":Landroid/os/VibrationAttributes;
    move-object/from16 v5, v19

    .line 3444
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, v0

    const-wide/16 v9, -0x1

    .line 3445
    invoke-direct {v15, v6}, Lcom/android/server/VibratorService;->getCommonPatternFrequency(I)I

    move-result v16

    move/from16 v14, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v20, v2

    .end local v2    # "magnitude":I
    .local v20, "magnitude":I
    move-object/from16 v2, p0

    move-object/from16 v21, v3

    .end local v3    # "magnitudeType":Ljava/lang/String;
    .local v21, "magnitudeType":Ljava/lang/String;
    move-object/from16 v3, p4

    move/from16 v22, v4

    .end local v4    # "repeat":I
    .local v22, "repeat":I
    move-object/from16 v4, p6

    move/from16 v23, v6

    .end local v6    # "type":I
    .local v23, "type":I
    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v11, p7

    move/from16 v12, v22

    move/from16 v13, v20

    move/from16 v15, v23

    move-object/from16 v16, v21

    invoke-direct/range {v1 .. v18}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JIIIILjava/lang/String;[ILcom/android/server/VibratorService$1;)V

    .line 3447
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v0, v2, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v5, p1

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v3, :cond_140

    .line 3448
    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_140

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-nez v0, :cond_140

    .line 3449
    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-nez v0, :cond_140

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isEnforcedVibration()Z

    move-result v0

    if-nez v0, :cond_140

    .line 3450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring incoming vibration as process with uid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is background, usage = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 3452
    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3450
    const-string v3, "VibratorService"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    return-void

    .line 3457
    :cond_140
    const/4 v0, 0x0

    move-object/from16 v3, p4

    :try_start_143
    invoke-interface {v3, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_146
    .catch Landroid/os/RemoteException; {:try_start_143 .. :try_end_146} :catch_165

    .line 3460
    nop

    .line 3462
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3464
    .local v6, "ident":J
    :try_start_14b
    iget-object v4, v2, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_14e
    .catchall {:try_start_14b .. :try_end_14e} :catchall_160

    .line 3465
    :try_start_14e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 3466
    invoke-direct {v2, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 3467
    invoke-direct {v2, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 3468
    monitor-exit v4
    :try_end_158
    .catchall {:try_start_14e .. :try_end_158} :catchall_15d

    .line 3470
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3471
    nop

    .line 3472
    return-void

    .line 3468
    :catchall_15d
    move-exception v0

    :try_start_15e
    monitor-exit v4
    :try_end_15f
    .catchall {:try_start_15e .. :try_end_15f} :catchall_15d

    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v6    # "ident":J
    .end local v19    # "va":Landroid/os/VibrationAttributes;
    .end local v20    # "magnitude":I
    .end local v21    # "magnitudeType":Ljava/lang/String;
    .end local v22    # "repeat":I
    .end local v23    # "type":I
    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "reason":Ljava/lang/String;
    .end local p4    # "token":Landroid/os/IBinder;
    .end local p5    # "usage":I
    .end local p6    # "effect":Landroid/os/VibrationEffect$SemHaptic;
    .end local p7    # "pattern":[J
    :try_start_15f
    throw v0
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_160

    .line 3470
    .restart local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .restart local v6    # "ident":J
    .restart local v19    # "va":Landroid/os/VibrationAttributes;
    .restart local v20    # "magnitude":I
    .restart local v21    # "magnitudeType":Ljava/lang/String;
    .restart local v22    # "repeat":I
    .restart local v23    # "type":I
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "reason":Ljava/lang/String;
    .restart local p4    # "token":Landroid/os/IBinder;
    .restart local p5    # "usage":I
    .restart local p6    # "effect":Landroid/os/VibrationEffect$SemHaptic;
    .restart local p7    # "pattern":[J
    :catchall_160
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3471
    throw v0

    .line 3458
    .end local v6    # "ident":J
    :catch_165
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 3459
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 3417
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v19    # "va":Landroid/os/VibrationAttributes;
    .end local v20    # "magnitude":I
    .end local v21    # "magnitudeType":Ljava/lang/String;
    .end local v22    # "repeat":I
    .end local v23    # "type":I
    .restart local v2    # "magnitude":I
    .restart local v3    # "magnitudeType":Ljava/lang/String;
    .restart local v4    # "repeat":I
    .local v6, "type":I
    :cond_169
    move/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v6

    move-object v3, v11

    move v5, v13

    move-object v2, v15

    .line 3418
    .end local v2    # "magnitude":I
    .end local v3    # "magnitudeType":Ljava/lang/String;
    .end local v4    # "repeat":I
    .end local v6    # "type":I
    .restart local v20    # "magnitude":I
    .restart local v21    # "magnitudeType":Ljava/lang/String;
    .restart local v22    # "repeat":I
    .restart local v23    # "type":I
    :goto_174
    const-string v0, "VibratorService"

    const-string/jumbo v1, "vibratePatternMagnitude() is failed by illegal argument."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    move-object/from16 v1, p7

    if-eqz v1, :cond_1a3

    .line 3420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibratePatternMagnitude() - pattern.length = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", repeat = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v22

    .end local v22    # "repeat":I
    .restart local v4    # "repeat":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "VibratorService"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a5

    .line 3419
    .end local v4    # "repeat":I
    .restart local v22    # "repeat":I
    :cond_1a3
    move/from16 v4, v22

    .line 3423
    .end local v22    # "repeat":I
    .restart local v4    # "repeat":I
    :goto_1a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vibratePatternMagnitude() - token = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "VibratorService"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    return-void
.end method

.method static native vibratorAlwaysOnDisable(J)V
.end method

.method static native vibratorAlwaysOnEnable(JJJ)V
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorGetAmplitudeList(I)[I
.end method

.method static native vibratorGetCapabilities()J
.end method

.method static native vibratorGetNumberOfPrebakedHapticPattern()I
.end method

.method static native vibratorGetSecHalVersion()F
.end method

.method static native vibratorGetSupportedEffects()[I
.end method

.method static native vibratorInit()V
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method

.method static native vibratorPerformComposedEffect([Landroid/os/VibrationEffect$Composition$PrimitiveEffect;Lcom/android/server/VibratorService$Vibration;)V
.end method

.method static native vibratorPerformEffect(JJLcom/android/server/VibratorService$Vibration;Z)J
.end method

.method static native vibratorPerformHapticEngine([II)V
.end method

.method static native vibratorPerformPrebakedHapticPattern(JJZ)V
.end method

.method static native vibratorSehPerformEffect(JJLcom/android/server/VibratorService$Vibration;Z)J
.end method

.method static native vibratorSetAmplitude(I)V
.end method

.method static native vibratorSetExternalControl(Z)V
.end method

.method static native vibratorSetFolderStatus(Z)V
.end method

.method static native vibratorSetForceTouchAmplitude(J)V
.end method

.method static native vibratorSetFrequencyType(J)V
.end method

.method static native vibratorSetIntensity(J)V
.end method

.method static native vibratorSupportIntensityControl()Z
.end method

.method static native vibratorSupportsAmplitudeControl()Z
.end method

.method static native vibratorSupportsEnhancedSamsungHapticPattern()Z
.end method

.method static native vibratorSupportsExternalControl()Z
.end method

.method static native vibratorSupportsFolderStatus()Z
.end method

.method static native vibratorSupportsFrequencyControl()Z
.end method

.method static native vibratorSupportsHapticEngine()Z
.end method

.method static native vibratorSupportsPrebakedHapticPattern()Z
.end method


# virtual methods
.method addSamsungExtraDump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4606
    const-string v0, "Extra vibrations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4607
    sget-object v0, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const-string v1, "  "

    if-lez v0, :cond_31

    .line 4608
    const-string v0, "Mute:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4609
    sget-object v0, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$MuteLogInfo;

    .line 4610
    .local v2, "info":Lcom/android/server/VibratorService$MuteLogInfo;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4611
    invoke-virtual {v2}, Lcom/android/server/VibratorService$MuteLogInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4612
    .end local v2    # "info":Lcom/android/server/VibratorService$MuteLogInfo;
    goto :goto_1a

    .line 4614
    :cond_31
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_5b

    .line 4615
    const-string v0, "Abort:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4616
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$AbortLogInfo;

    .line 4617
    .local v2, "info":Lcom/android/server/VibratorService$AbortLogInfo;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4618
    invoke-virtual {v2}, Lcom/android/server/VibratorService$AbortLogInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4619
    .end local v2    # "info":Lcom/android/server/VibratorService$AbortLogInfo;
    goto :goto_44

    .line 4621
    :cond_5b
    const-string v0, "Current Info:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMinM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  hasVibrator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/VibratorService;->hasVibrator()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsEnableInt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Haptic support  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Enhanced pattern support  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/VibratorService;->semGetSupportedVibrationType()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_151

    const/4 v1, 0x1

    goto :goto_152

    :cond_151
    const/4 v1, 0x0

    :goto_152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupportedF = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupportedE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCheckExe = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCheckPac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USE_SET_MAX_M = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ALWAYS_VIBRATE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4638
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 4639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupportedHI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4645
    :cond_1e8
    return-void
.end method

.method public areEffectsSupported([I)[I
    .registers 6
    .param p1, "effectIds"    # [I

    .line 863
    array-length v0, p1

    new-array v0, v0, [I

    .line 864
    .local v0, "supported":[I
    iget-object v1, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    if-nez v1, :cond_c

    .line 865
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_26

    .line 867
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 868
    iget-object v2, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 869
    const/4 v2, 0x1

    goto :goto_21

    .line 870
    :cond_20
    const/4 v2, 0x2

    :goto_21
    aput v2, v0, v1

    .line 867
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 873
    .end local v1    # "i":I
    :cond_26
    :goto_26
    return-object v0
.end method

.method public arePrimitivesSupported([I)[Z
    .registers 5
    .param p1, "primitiveIds"    # [I

    .line 878
    array-length v0, p1

    new-array v0, v0, [Z

    .line 879
    .local v0, "supported":[Z
    const-wide/16 v1, 0x20

    invoke-direct {p0, v1, v2}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 880
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 882
    :cond_f
    return-object v0
.end method

.method public cancelVibrate(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1189
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string v2, "cancelVibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1194
    :try_start_c
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_2e

    .line 1196
    const-string v1, "VibratorService"

    const-string v2, "Canceling vibration."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_30

    .line 1200
    .local v1, "ident":J
    :try_start_21
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 1202
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1203
    goto :goto_2e

    .line 1202
    :catchall_28
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1203
    nop

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3

    .line 1205
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_2e
    :goto_2e
    monitor-exit v0

    .line 1206
    return-void

    .line 1205
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_30

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2321
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2323
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2325
    .local v0, "ident":J
    const/4 v2, 0x0

    .line 2326
    .local v2, "isDumpProto":Z
    array-length v3, p3

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_22

    aget-object v5, p3, v4

    .line 2327
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2328
    const/4 v2, 0x1

    .line 2326
    .end local v5    # "arg":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 2332
    :cond_22
    if-eqz v2, :cond_28

    .line 2333
    :try_start_24
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_2e

    .line 2335
    :cond_28
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 2337
    invoke-virtual {p0, p2}, Lcom/android/server/VibratorService;->addSamsungExtraDump(Ljava/io/PrintWriter;)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_33

    .line 2341
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2342
    nop

    .line 2343
    return-void

    .line 2341
    :catchall_33
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2342
    throw v3
.end method

.method public getMagnitude(Ljava/lang/String;)I
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 3992
    const-string v0, "VibratorService"

    invoke-direct {p0, p1, v0}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxMagnitude()I
    .registers 2

    .line 3941
    iget v0, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    return v0
.end method

.method public hasAmplitudeControl()Z
    .registers 3

    .line 854
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    .line 857
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 858
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public hasVibrator()Z
    .registers 2

    .line 780
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public isVibrating()Z
    .registers 3

    .line 785
    const-string v0, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 788
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_b
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    monitor-exit v0

    return v1

    .line 790
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v1

    .line 786
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_VIBRATOR_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInputDeviceAdded(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .line 1657
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1658
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .line 1662
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1663
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .line 1667
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1668
    return-void
.end method

.method public onLidStateChanged(JZ)V
    .registers 6
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 3164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLidStateChanged, lidOpen : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportFold:Z

    if-eqz v0, :cond_27

    .line 3166
    if-eqz p3, :cond_22

    .line 3167
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/VibratorService;->vibratorSetFolderStatus(Z)V

    goto :goto_2d

    .line 3169
    :cond_22
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/VibratorService;->vibratorSetFolderStatus(Z)V

    goto :goto_2d

    .line 3172
    :cond_27
    const-string/jumbo v0, "onLidStateChanged, no event node"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    :goto_2d
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2348
    new-instance v0, Lcom/android/server/VibratorService$VibratorShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/VibratorService$VibratorShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 2349
    return-void
.end method

.method public onVibrationFinished()V
    .registers 3

    .line 1240
    const-string v0, "VibratorService"

    const-string v1, "Vibration finished, cleaning up"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1245
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1246
    monitor-exit v0

    .line 1247
    return-void

    .line 1246
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v1
.end method

.method public registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .registers 6
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 818
    const-string v0, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 821
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_2c

    .line 824
    .local v1, "token":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_26

    if-nez v3, :cond_1d

    .line 825
    const/4 v3, 0x0

    .line 831
    :try_start_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_2c

    .line 825
    return v3

    .line 828
    :cond_1d
    :try_start_1d
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_26

    .line 829
    const/4 v3, 0x1

    .line 831
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 829
    return v3

    .line 831
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 832
    nop

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "listener":Landroid/os/IVibratorStateListener;
    throw v3

    .line 833
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "listener":Landroid/os/IVibratorStateListener;
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw v1

    .line 819
    :cond_2f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_VIBRATOR_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetMagnitude()V
    .registers 3

    .line 3916
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 3921
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    if-gez v0, :cond_f

    .line 3922
    return-void

    .line 3924
    :cond_f
    iput v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 3925
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 3926
    return-void

    .line 3918
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public semGetNumberOfSupportedPatterns()I
    .registers 2

    .line 3153
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSupportedPatternSize()I

    move-result v0

    return v0
.end method

.method public semGetSupportedVibrationType()I
    .registers 3

    .line 3109
    const/4 v0, 0x0

    .line 3111
    .local v0, "type":I
    iget v1, p0, Lcom/android/server/VibratorService;->mMotorType:I

    packed-switch v1, :pswitch_data_12

    goto :goto_11

    .line 3130
    :pswitch_7
    const/4 v0, 0x3

    .line 3131
    goto :goto_11

    .line 3127
    :pswitch_9
    const/4 v0, 0x4

    .line 3128
    goto :goto_11

    .line 3124
    :pswitch_b
    const/4 v0, 0x2

    .line 3125
    goto :goto_11

    .line 3118
    :pswitch_d
    const/4 v0, 0x1

    .line 3119
    goto :goto_11

    .line 3113
    :pswitch_f
    const/4 v0, 0x0

    .line 3114
    nop

    .line 3135
    :goto_11
    return v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_7
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public semSetVibrationMute(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)Ljava/util/List;
    .registers 15
    .param p1, "magnitudeType"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4361
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_125

    .line 4365
    const/4 v0, 0x0

    if-nez p4, :cond_16

    .line 4366
    const-string v1, "VibratorService"

    const-string/jumbo v2, "token must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    return-object v0

    .line 4369
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 4371
    sget-object v1, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v1

    .line 4372
    :try_start_20
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/VibratorService;->addToMuteLogInfos(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V

    .line 4373
    const/4 v2, 0x0

    if-eqz p2, :cond_7d

    .line 4374
    sget-object v3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4e

    .line 4375
    # setter for: Lcom/android/server/VibratorService$MuteNotificationInfo;->sMuteOn:Z
    invoke-static {v4}, Lcom/android/server/VibratorService$MuteNotificationInfo;->access$5702(Z)Z

    .line 4376
    new-instance v3, Lcom/android/server/VibratorService$MuteNotificationInfo;

    invoke-direct {v3, p1, p4}, Lcom/android/server/VibratorService$MuteNotificationInfo;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4377
    .local v3, "notiInfo":Lcom/android/server/VibratorService$MuteNotificationInfo;
    sget-object v4, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-static {p1, p4}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_45
    .catchall {:try_start_20 .. :try_end_45} :catchall_122

    if-nez v4, :cond_75

    .line 4379
    :try_start_47
    invoke-interface {p4, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_4b
    .catchall {:try_start_47 .. :try_end_4a} :catchall_122

    .line 4382
    goto :goto_75

    .line 4380
    :catch_4b
    move-exception v2

    .line 4381
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4c
    monitor-exit v1

    return-object v0

    .line 4384
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "notiInfo":Lcom/android/server/VibratorService$MuteNotificationInfo;
    :cond_4e
    sget-object v3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 4385
    # setter for: Lcom/android/server/VibratorService$MuteCallInfo;->sMuteOn:Z
    invoke-static {v4}, Lcom/android/server/VibratorService$MuteCallInfo;->access$5802(Z)Z

    .line 4386
    new-instance v3, Lcom/android/server/VibratorService$MuteCallInfo;

    invoke-direct {v3, p1, p4}, Lcom/android/server/VibratorService$MuteCallInfo;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4387
    .local v3, "callInfo":Lcom/android/server/VibratorService$MuteCallInfo;
    sget-object v4, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-static {p1, p4}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_6c
    .catchall {:try_start_4c .. :try_end_6c} :catchall_122

    if-nez v4, :cond_76

    .line 4389
    :try_start_6e
    invoke-interface {p4, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_71} :catch_72
    .catchall {:try_start_6e .. :try_end_71} :catchall_122

    .line 4392
    goto :goto_76

    .line 4390
    :catch_72
    move-exception v2

    .line 4391
    .restart local v2    # "e":Landroid/os/RemoteException;
    :try_start_73
    monitor-exit v1

    return-object v0

    .line 4384
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "callInfo":Lcom/android/server/VibratorService$MuteCallInfo;
    :cond_75
    :goto_75
    nop

    .line 4395
    :cond_76
    :goto_76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v1

    return-object v0

    .line 4397
    :cond_7d
    sget-object v3, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-static {p1, p4}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$MuteInfo;

    .line 4398
    .local v3, "muteInfo":Lcom/android/server/VibratorService$MuteInfo;
    if-nez v3, :cond_8d

    .line 4399
    monitor-exit v1

    return-object v0

    .line 4401
    :cond_8d
    const/4 v4, 0x0

    .line 4402
    .local v4, "hasNotification":Z
    const/4 v5, 0x0

    .line 4404
    .local v5, "hasCall":Z
    sget-object v6, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-static {p1, p4}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_99
    .catchall {:try_start_73 .. :try_end_99} :catchall_122

    if-eqz v6, :cond_a2

    .line 4406
    :try_start_9b
    invoke-interface {p4, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_9e
    .catch Ljava/util/NoSuchElementException; {:try_start_9b .. :try_end_9e} :catch_9f
    .catchall {:try_start_9b .. :try_end_9e} :catchall_122

    .line 4409
    goto :goto_a2

    .line 4407
    :catch_9f
    move-exception v2

    .line 4408
    .local v2, "e":Ljava/util/NoSuchElementException;
    :try_start_a0
    monitor-exit v1

    return-object v0

    .line 4412
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :cond_a2
    :goto_a2
    sget-object v0, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 4413
    .local v0, "enumerationKey":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_a8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_dc

    .line 4414
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4415
    .local v6, "key":Ljava/lang/String;
    sget-object v7, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/VibratorService$MuteInfo;

    # getter for: Lcom/android/server/VibratorService$MuteInfo;->mMagnitudeType:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/VibratorService$MuteInfo;->access$7400(Lcom/android/server/VibratorService$MuteInfo;)Ljava/lang/String;

    move-result-object v7

    .line 4416
    .local v7, "mag":Ljava/lang/String;
    sget-object v8, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v8}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 4417
    const/4 v4, 0x1

    goto :goto_db

    .line 4418
    :cond_ce
    sget-object v8, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v8}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_db

    .line 4419
    const/4 v5, 0x1

    .line 4421
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "mag":Ljava/lang/String;
    :cond_db
    :goto_db
    goto :goto_a8

    .line 4423
    :cond_dc
    if-nez v4, :cond_e1

    .line 4424
    # setter for: Lcom/android/server/VibratorService$MuteNotificationInfo;->sMuteOn:Z
    invoke-static {v2}, Lcom/android/server/VibratorService$MuteNotificationInfo;->access$5702(Z)Z

    .line 4426
    :cond_e1
    if-nez v5, :cond_e6

    .line 4427
    # setter for: Lcom/android/server/VibratorService$MuteCallInfo;->sMuteOn:Z
    invoke-static {v2}, Lcom/android/server/VibratorService$MuteCallInfo;->access$5802(Z)Z

    .line 4430
    :cond_e6
    # invokes: Lcom/android/server/VibratorService$MuteInfo;->getAbortedVibration()Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/VibratorService$MuteInfo;->access$7500(Lcom/android/server/VibratorService$MuteInfo;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 4431
    .local v2, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/VibratorService$AbortVibration;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4432
    .local v6, "abortList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_f3
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_120

    .line 4433
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/VibratorService$AbortVibration;

    .line 4434
    .local v7, "av":Lcom/android/server/VibratorService$AbortVibration;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    # invokes: Lcom/android/server/VibratorService$AbortVibration;->getPackageName()Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/VibratorService$AbortVibration;->access$7600(Lcom/android/server/VibratorService$AbortVibration;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/VibratorService$AbortVibration;->getCount()I
    invoke-static {v7}, Lcom/android/server/VibratorService$AbortVibration;->access$8100(Lcom/android/server/VibratorService$AbortVibration;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4435
    nop

    .end local v7    # "av":Lcom/android/server/VibratorService$AbortVibration;
    goto :goto_f3

    .line 4436
    :cond_120
    monitor-exit v1

    return-object v6

    .line 4439
    .end local v0    # "enumerationKey":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/VibratorService$AbortVibration;>;"
    .end local v3    # "muteInfo":Lcom/android/server/VibratorService$MuteInfo;
    .end local v4    # "hasNotification":Z
    .end local v5    # "hasCall":Z
    .end local v6    # "abortList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_122
    move-exception v0

    monitor-exit v1
    :try_end_124
    .catchall {:try_start_a0 .. :try_end_124} :catchall_122

    throw v0

    .line 4363
    :cond_125
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .registers 21
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "effect"    # Landroid/os/VibrationEffect;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;

    .line 900
    move-object v10, p0

    move/from16 v11, p3

    move-object/from16 v12, p4

    const-string v0, "android.permission.VIBRATE_ALWAYS_ON"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 903
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 904
    const-string v0, "VibratorService"

    const-string v2, "Always-on effects not supported."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return v1

    .line 907
    :cond_1e
    if-nez v12, :cond_33

    .line 908
    iget-object v2, v10, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 909
    :try_start_23
    iget-object v0, v10, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 910
    int-to-long v0, v11

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorAlwaysOnDisable(J)V

    .line 911
    monitor-exit v2

    move-object/from16 v13, p5

    goto :goto_69

    :catchall_30
    move-exception v0

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    throw v0

    .line 913
    :cond_33
    invoke-static/range {p4 .. p4}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 914
    return v1

    .line 916
    :cond_3a
    instance-of v0, v12, Landroid/os/VibrationEffect$Prebaked;

    if-nez v0, :cond_46

    .line 917
    const-string v0, "VibratorService"

    const-string v2, "Only prebaked effects supported for always-on."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return v1

    .line 920
    :cond_46
    move-object/from16 v1, p5

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;

    move-result-object v13

    .line 921
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    .local v13, "attrs":Landroid/os/VibrationAttributes;
    iget-object v14, v10, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 922
    :try_start_4f
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v4, p4

    move-object v5, v13

    move/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    .line 923
    .local v0, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v1, v10, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 924
    invoke-direct {p0, v11, v0}, Lcom/android/server/VibratorService;->updateAlwaysOnLocked(ILcom/android/server/VibratorService$Vibration;)V

    .line 925
    .end local v0    # "vib":Lcom/android/server/VibratorService$Vibration;
    monitor-exit v14

    .line 927
    :goto_69
    const/4 v0, 0x1

    return v0

    .line 925
    :catchall_6b
    move-exception v0

    monitor-exit v14
    :try_end_6d
    .catchall {:try_start_4f .. :try_end_6d} :catchall_6b

    throw v0

    .line 901
    .end local v13    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p5    # "attrs":Landroid/os/VibrationAttributes;
    :cond_6e
    move-object/from16 v1, p5

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE_ALWAYS_ON permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMagnitude(I)V
    .registers 4
    .param p1, "magnitude"    # I

    .line 3902
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 3906
    if-gez p1, :cond_e

    .line 3907
    const/4 p1, 0x0

    goto :goto_14

    .line 3908
    :cond_e
    iget v0, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    if-le p1, v0, :cond_14

    .line 3909
    iget p1, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    .line 3911
    :cond_14
    :goto_14
    iget v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 3912
    iput p1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 3913
    return-void

    .line 3904
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemReady()V
    .registers 9

    .line 695
    const-wide/32 v0, 0x800000

    const-string v2, "VibratorService#systemReady"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 697
    :try_start_8
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 698
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/Vibrator;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 699
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 701
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 702
    new-instance v3, Lcom/android/server/VibratorService$2;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 715
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_input_devices"

    .line 716
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 715
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 719
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "haptic_feedback_intensity"

    .line 720
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 719
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 723
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_vibration_intensity"

    .line 724
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 723
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 727
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ring_vibration_intensity"

    .line 728
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 727
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 731
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode"

    .line 732
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 731
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 735
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/VibratorService$3;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_ab
    .catchall {:try_start_8 .. :try_end_ab} :catchall_c2

    .line 746
    :try_start_ab
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4, v6, v7}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_b5} :catch_b6
    .catchall {:try_start_ab .. :try_end_b5} :catchall_c2

    .line 751
    goto :goto_b7

    .line 749
    :catch_b6
    move-exception v2

    .line 754
    :goto_b7
    :try_start_b7
    invoke-virtual {p0}, Lcom/android/server/VibratorService;->updateFolderStatus()V

    .line 761
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_c2

    .line 763
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 764
    nop

    .line 765
    return-void

    .line 763
    :catchall_c2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 764
    throw v2
.end method

.method public unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .registers 6
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 839
    const-string v0, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 842
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_20

    .line 845
    .local v1, "token":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1a

    .line 847
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 845
    return v3

    .line 847
    :catchall_1a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 848
    nop

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "listener":Landroid/os/IVibratorStateListener;
    throw v3

    .line 849
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "listener":Landroid/os/IVibratorStateListener;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw v1

    .line 840
    :cond_23
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_VIBRATOR_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateFolderStatus()V
    .registers 4

    .line 3177
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsFolderStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportFold:Z

    .line 3178
    if-eqz v0, :cond_25

    .line 3179
    iget-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerOnLidStateChangedListener(Landroid/hardware/input/InputManager$OnLidStateChangedListener;Landroid/os/Handler;)V

    .line 3180
    iget-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getLidState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v1

    .line 3181
    .local v0, "lidOpen":Z
    :goto_1c
    if-eqz v0, :cond_22

    .line 3182
    invoke-static {v2}, Lcom/android/server/VibratorService;->vibratorSetFolderStatus(Z)V

    goto :goto_25

    .line 3184
    :cond_22
    invoke-static {v1}, Lcom/android/server/VibratorService;->vibratorSetFolderStatus(Z)V

    .line 3187
    .end local v0    # "lidOpen":Z
    :cond_25
    :goto_25
    return-void
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 29
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "token"    # Landroid/os/IBinder;

    .line 996
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v1, p3

    move-object/from16 v14, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate, reason = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p5

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v9, 0x800000

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 998
    :try_start_24
    const-string v0, "android.permission.VIBRATE"

    invoke-direct {v11, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_291

    .line 1001
    if-nez v14, :cond_3a

    .line 1002
    const-string v0, "VibratorService"

    const-string/jumbo v2, "token must not be null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_29d

    .line 1144
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1003
    return-void

    .line 1005
    :cond_3a
    :try_start_3a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 1006
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v0
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_29d

    if-nez v0, :cond_47

    .line 1144
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1007
    return-void

    .line 1012
    :cond_47
    :try_start_47
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->getNotificationService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1014
    .local v0, "nm":Landroid/app/INotificationManager;
    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/VibratorService;->isNotification(I)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 1015
    invoke-virtual/range {p3 .. p3}, Landroid/os/VibrationEffect;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v2

    sget-object v3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    if-ne v2, v3, :cond_80

    .line 1016
    :cond_5d
    invoke-interface {v0, v13, v12}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_80

    .line 1017
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vibrator Cancel, notifications are disabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {v11, v14}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_7c} :catch_81
    .catchall {:try_start_47 .. :try_end_7c} :catchall_29d

    .line 1144
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1019
    return-void

    .line 1023
    .end local v0    # "nm":Landroid/app/INotificationManager;
    :cond_80
    goto :goto_98

    .line 1021
    :catch_81
    move-exception v0

    .line 1022
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_82
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call NotificationManager : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_98
    invoke-virtual/range {p3 .. p3}, Landroid/os/VibrationEffect;->semGetMagnitude()I

    move-result v0

    .line 1028
    .local v0, "magnitude":I
    if-gez v0, :cond_ba

    .line 1030
    const-string v2, "com.android.settings"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 1031
    invoke-virtual/range {p3 .. p3}, Landroid/os/VibrationEffect;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v2

    invoke-direct {v11, v2}, Lcom/android/server/VibratorService;->updateMagnitudeEnforced(Landroid/os/VibrationEffect$SemMagnitudeType;)V

    .line 1034
    :cond_ad
    invoke-virtual/range {p3 .. p3}, Landroid/os/VibrationEffect;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2, v13}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 1037
    :cond_ba
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibrate - package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", usage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    invoke-virtual/range {p3 .. p3}, Landroid/os/VibrationEffect;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1037
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    sget-boolean v2, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v2, :cond_111

    iget v2, v11, Lcom/android/server/VibratorService;->mMotorType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_111

    .line 1041
    invoke-direct {v11, v1}, Lcom/android/server/VibratorService;->convertHapticToOneShot(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v2
    :try_end_10e
    .catchall {:try_start_82 .. :try_end_10e} :catchall_29d

    .line 1042
    .local v2, "oneShotEffect":Landroid/os/VibrationEffect;
    if-eqz v2, :cond_111

    .line 1043
    move-object v1, v2

    .line 1047
    .end local v2    # "oneShotEffect":Landroid/os/VibrationEffect;
    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .local v1, "effect":Landroid/os/VibrationEffect;
    :cond_111
    :try_start_111
    sget-boolean v2, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CUSTOM_PATTERN:Z

    if-eqz v2, :cond_124

    .line 1048
    invoke-direct {v11, v1}, Lcom/android/server/VibratorService;->isCustomPatternIndex(Landroid/os/VibrationEffect;)Z

    move-result v2

    if-eqz v2, :cond_124

    .line 1049
    invoke-direct {v11, v1}, Lcom/android/server/VibratorService;->convertHapticToWaveform(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v2
    :try_end_11f
    .catchall {:try_start_111 .. :try_end_11f} :catchall_28d

    .line 1050
    .local v2, "waveformEffect":Landroid/os/VibrationEffect;
    if-eqz v2, :cond_124

    .line 1051
    move-object v1, v2

    move-object v8, v1

    goto :goto_125

    .line 1056
    .end local v2    # "waveformEffect":Landroid/os/VibrationEffect;
    :cond_124
    move-object v8, v1

    .end local v1    # "effect":Landroid/os/VibrationEffect;
    .local v8, "effect":Landroid/os/VibrationEffect;
    :goto_125
    if-nez v0, :cond_134

    .line 1057
    :try_start_127
    invoke-virtual {v11, v14}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_12a
    .catchall {:try_start_127 .. :try_end_12a} :catchall_12e

    .line 1144
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1058
    return-void

    .line 1144
    .end local v0    # "magnitude":I
    :catchall_12e
    move-exception v0

    move-object v1, v8

    move-wide/from16 v20, v9

    goto/16 :goto_2a0

    .line 1064
    :cond_134
    :try_start_134
    iget-object v6, v11, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_137
    .catchall {:try_start_134 .. :try_end_137} :catchall_285

    .line 1065
    :try_start_137
    instance-of v0, v8, Landroid/os/VibrationEffect$OneShot;
    :try_end_139
    .catchall {:try_start_137 .. :try_end_139} :catchall_276

    if-eqz v0, :cond_17b

    :try_start_13b
    iget-object v0, v11, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_17b

    iget-object v0, v11, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_17b

    .line 1068
    move-object v0, v8

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 1069
    .local v0, "newOneShot":Landroid/os/VibrationEffect$OneShot;
    iget-object v1, v11, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v1, Landroid/os/VibrationEffect$OneShot;

    .line 1071
    .local v1, "currentOneShot":Landroid/os/VibrationEffect$OneShot;
    iget-object v2, v11, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/VibratorService$Vibration;->hasTimeoutLongerThan(J)Z

    move-result v2

    if-eqz v2, :cond_17b

    .line 1072
    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v3

    if-ne v2, v3, :cond_17b

    .line 1074
    const-string v2, "VibratorService"

    const-string v3, "Ignoring incoming vibration in favor of current vibration"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    monitor-exit v6
    :try_end_16e
    .catchall {:try_start_13b .. :try_end_16e} :catchall_172

    .line 1144
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1077
    return-void

    .line 1142
    .end local v0    # "newOneShot":Landroid/os/VibrationEffect$OneShot;
    .end local v1    # "currentOneShot":Landroid/os/VibrationEffect$OneShot;
    :catchall_172
    move-exception v0

    move-object/from16 v17, v6

    :goto_175
    move-object/from16 v19, v8

    move-wide/from16 v20, v9

    goto/16 :goto_27d

    .line 1084
    :cond_17b
    :try_start_17b
    iget-object v0, v11, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;
    :try_end_17d
    .catchall {:try_start_17b .. :try_end_17d} :catchall_276

    if-eqz v0, :cond_18b

    .line 1086
    :try_start_17f
    const-string v0, "VibratorService"

    const-string v1, "Ignoring incoming vibration for current external vibration"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    monitor-exit v6
    :try_end_187
    .catchall {:try_start_17f .. :try_end_187} :catchall_172

    .line 1144
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1088
    return-void

    .line 1095
    :cond_18b
    :try_start_18b
    invoke-static {v8}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0
    :try_end_18f
    .catchall {:try_start_18b .. :try_end_18f} :catchall_276

    if-nez v0, :cond_1af

    :try_start_191
    iget-object v0, v11, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_1af

    iget-object v0, v11, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 1097
    invoke-static {v0}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-eqz v0, :cond_1af

    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_INCOMING_VIBRATION_DURING_REPEATING:Z

    if-nez v0, :cond_1af

    .line 1100
    const-string v0, "VibratorService"

    const-string v1, "Ignoring incoming vibration in favor of alarm vibration"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    monitor-exit v6
    :try_end_1ab
    .catchall {:try_start_191 .. :try_end_1ab} :catchall_172

    .line 1144
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1102
    return-void

    .line 1107
    :cond_1af
    const/4 v0, -0x2

    .line 1111
    .local v0, "repeat":I
    :try_start_1b0
    instance-of v1, v8, Landroid/os/VibrationEffect$SemHaptic;
    :try_end_1b2
    .catchall {:try_start_1b0 .. :try_end_1b2} :catchall_276

    if-eqz v1, :cond_1d1

    .line 1112
    :try_start_1b4
    move-object v7, v8

    check-cast v7, Landroid/os/VibrationEffect$SemHaptic;

    .line 1113
    .local v7, "semHaptic":Landroid/os/VibrationEffect$SemHaptic;
    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v16
    :try_end_1bb
    .catchall {:try_start_1b4 .. :try_end_1bb} :catchall_172

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v17, v6

    move/from16 v6, v16

    :try_start_1c9
    invoke-direct/range {v1 .. v7}, Lcom/android/server/VibratorService;->vibrateCommonPatternMagnitude(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;)V

    .line 1114
    monitor-exit v17
    :try_end_1cd
    .catchall {:try_start_1c9 .. :try_end_1cd} :catchall_1e2

    .line 1144
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1114
    return-void

    .line 1115
    .end local v7    # "semHaptic":Landroid/os/VibrationEffect$SemHaptic;
    :cond_1d1
    move-object/from16 v17, v6

    :try_start_1d3
    instance-of v1, v8, Landroid/os/VibrationEffect$Waveform;
    :try_end_1d5
    .catchall {:try_start_1d3 .. :try_end_1d5} :catchall_274

    if-eqz v1, :cond_1e4

    .line 1116
    :try_start_1d7
    move-object v1, v8

    check-cast v1, Landroid/os/VibrationEffect$Waveform;

    .line 1117
    .local v1, "waveform":Landroid/os/VibrationEffect$Waveform;
    invoke-virtual {v1}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v2
    :try_end_1de
    .catchall {:try_start_1d7 .. :try_end_1de} :catchall_1e2

    move v0, v2

    move/from16 v16, v0

    goto :goto_1e6

    .line 1142
    .end local v0    # "repeat":I
    .end local v1    # "waveform":Landroid/os/VibrationEffect$Waveform;
    :catchall_1e2
    move-exception v0

    goto :goto_175

    .line 1115
    .restart local v0    # "repeat":I
    :cond_1e4
    move/from16 v16, v0

    .line 1119
    .end local v0    # "repeat":I
    .local v16, "repeat":I
    :goto_1e6
    :try_start_1e6
    new-instance v0, Lcom/android/server/VibratorService$Vibration;
    :try_end_1e8
    .catchall {:try_start_1e6 .. :try_end_1e8} :catchall_274

    const/16 v18, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object v4, v8

    move-object/from16 v5, p4

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v19, v8

    .end local v8    # "effect":Landroid/os/VibrationEffect;
    .local v19, "effect":Landroid/os/VibrationEffect;
    move-object/from16 v8, p5

    move-wide/from16 v20, v9

    move/from16 v9, v16

    move-object/from16 v10, v18

    :try_start_200
    invoke-direct/range {v1 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;ILcom/android/server/VibratorService$1;)V

    move-object v1, v0

    .line 1125
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v0, v11, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v12, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_254

    .line 1127
    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_254

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-nez v0, :cond_254

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-nez v0, :cond_254

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isEnforcedVibration()Z

    move-result v0

    if-nez v0, :cond_254

    .line 1128
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring incoming vibration as process with uid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is background, attrs= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    monitor-exit v17
    :try_end_250
    .catchall {:try_start_200 .. :try_end_250} :catchall_283

    .line 1144
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 1131
    return-void

    .line 1133
    :cond_254
    :try_start_254
    invoke-direct {v11, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_25b
    .catchall {:try_start_254 .. :try_end_25b} :catchall_283

    .line 1136
    .local v2, "ident":J
    :try_start_25b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1137
    invoke-direct {v11, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 1138
    invoke-direct {v11, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_264
    .catchall {:try_start_25b .. :try_end_264} :catchall_26e

    .line 1140
    :try_start_264
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1141
    nop

    .line 1142
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "ident":J
    .end local v16    # "repeat":I
    monitor-exit v17
    :try_end_269
    .catchall {:try_start_264 .. :try_end_269} :catchall_283

    .line 1144
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 1145
    nop

    .line 1146
    return-void

    .line 1140
    .restart local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .restart local v2    # "ident":J
    .restart local v16    # "repeat":I
    :catchall_26e
    move-exception v0

    :try_start_26f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1141
    nop

    .end local v19    # "effect":Landroid/os/VibrationEffect;
    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p4    # "attrs":Landroid/os/VibrationAttributes;
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    throw v0

    .line 1142
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "ident":J
    .end local v16    # "repeat":I
    .restart local v8    # "effect":Landroid/os/VibrationEffect;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p4    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_274
    move-exception v0

    goto :goto_279

    :catchall_276
    move-exception v0

    move-object/from16 v17, v6

    :goto_279
    move-object/from16 v19, v8

    move-wide/from16 v20, v9

    .end local v8    # "effect":Landroid/os/VibrationEffect;
    .restart local v19    # "effect":Landroid/os/VibrationEffect;
    :goto_27d
    monitor-exit v17
    :try_end_27e
    .catchall {:try_start_26f .. :try_end_27e} :catchall_283

    .end local v19    # "effect":Landroid/os/VibrationEffect;
    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p4    # "attrs":Landroid/os/VibrationAttributes;
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    :try_start_27e
    throw v0
    :try_end_27f
    .catchall {:try_start_27e .. :try_end_27f} :catchall_27f

    .line 1144
    .restart local v19    # "effect":Landroid/os/VibrationEffect;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p4    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_27f
    move-exception v0

    move-object/from16 v1, v19

    goto :goto_2a0

    .line 1142
    :catchall_283
    move-exception v0

    goto :goto_27d

    .line 1144
    .end local v19    # "effect":Landroid/os/VibrationEffect;
    .restart local v8    # "effect":Landroid/os/VibrationEffect;
    :catchall_285
    move-exception v0

    move-object/from16 v19, v8

    move-wide/from16 v20, v9

    move-object/from16 v1, v19

    .end local v8    # "effect":Landroid/os/VibrationEffect;
    .restart local v19    # "effect":Landroid/os/VibrationEffect;
    goto :goto_2a0

    .end local v19    # "effect":Landroid/os/VibrationEffect;
    .local v1, "effect":Landroid/os/VibrationEffect;
    :catchall_28d
    move-exception v0

    move-wide/from16 v20, v9

    goto :goto_2a0

    .line 999
    .end local v1    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    :cond_291
    move-wide/from16 v20, v9

    :try_start_293
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .end local p4    # "attrs":Landroid/os/VibrationAttributes;
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    throw v0
    :try_end_29b
    .catchall {:try_start_293 .. :try_end_29b} :catchall_29b

    .line 1144
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    .restart local p4    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_29b
    move-exception v0

    goto :goto_2a0

    :catchall_29d
    move-exception v0

    move-wide/from16 v20, v9

    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .restart local v1    # "effect":Landroid/os/VibrationEffect;
    :goto_2a0
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 1145
    throw v0
.end method

.method public vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;IILjava/lang/String;)V
    .registers 29
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I
    .param p8, "type"    # I
    .param p9, "magnitudeType"    # Ljava/lang/String;

    .line 3343
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p6

    move/from16 v12, p7

    iget-object v0, v13, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12c

    .line 3347
    if-nez v15, :cond_1d

    .line 3348
    const-string v0, "VibratorService"

    const-string/jumbo v1, "token must not be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    return-void

    .line 3351
    :cond_1d
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 3353
    const/4 v1, 0x0

    .line 3356
    .local v1, "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    :try_start_21
    invoke-static/range {p9 .. p9}, Landroid/os/VibrationEffect$SemMagnitudeType;->valueOf(Ljava/lang/String;)Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_25} :catch_29

    .line 3360
    .end local v1    # "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    .local v0, "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    move-object/from16 v11, p9

    move-object v10, v0

    goto :goto_48

    .line 3357
    .end local v0    # "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    .restart local v1    # "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    :catch_29
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 3358
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p9

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibratorService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

    move-object v10, v1

    .line 3363
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    .local v10, "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    :goto_48
    if-eqz p3, :cond_105

    .line 3364
    invoke-static/range {p3 .. p4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v9

    .line 3365
    .local v9, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v9, v12}, Landroid/os/VibrationEffect;->semSetMagnitude(I)V

    .line 3366
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v5

    const/16 v16, 0x0

    const-string/jumbo v17, "vibratePatternMagnitude - reflection"

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object v4, v9

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, v17

    move-object/from16 v17, v9

    .end local v9    # "effect":Landroid/os/VibrationEffect;
    .local v17, "effect":Landroid/os/VibrationEffect;
    move/from16 v9, p4

    move-object/from16 v18, v10

    .end local v10    # "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    .local v18, "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    move/from16 v10, p7

    move-object/from16 v11, p9

    move-object/from16 v12, v16

    invoke-direct/range {v1 .. v12}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/server/VibratorService$1;)V

    .line 3369
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v0, v13, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v14, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_d6

    .line 3371
    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_d6

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-nez v0, :cond_d6

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-nez v0, :cond_d6

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isEnforcedVibration()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 3372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring incoming vibration as process with uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is background, usage = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 3374
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3372
    const-string v2, "VibratorService"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    return-void

    .line 3379
    :cond_d6
    const/4 v0, 0x0

    :try_start_d7
    invoke-interface {v15, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_da} :catch_101

    .line 3382
    nop

    .line 3384
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3386
    .local v2, "ident":J
    :try_start_df
    iget-object v4, v13, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_fc

    .line 3387
    :try_start_e2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 3388
    invoke-direct {v13, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 3389
    invoke-direct {v13, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 3390
    monitor-exit v4
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_f9

    .line 3392
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3393
    nop

    .line 3394
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "ident":J
    .end local v17    # "effect":Landroid/os/VibrationEffect;
    move/from16 v9, p4

    move/from16 v12, p7

    move/from16 v10, p8

    move-object/from16 v11, v18

    goto :goto_12b

    .line 3390
    .restart local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .restart local v2    # "ident":J
    .restart local v17    # "effect":Landroid/os/VibrationEffect;
    :catchall_f9
    move-exception v0

    :try_start_fa
    monitor-exit v4
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "ident":J
    .end local v17    # "effect":Landroid/os/VibrationEffect;
    .end local v18    # "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "pattern":[J
    .end local p4    # "repeat":I
    .end local p5    # "usageHint":I
    .end local p6    # "token":Landroid/os/IBinder;
    .end local p7    # "magnitude":I
    .end local p8    # "type":I
    .end local p9    # "magnitudeType":Ljava/lang/String;
    :try_start_fb
    throw v0
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fc

    .line 3392
    .restart local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .restart local v2    # "ident":J
    .restart local v17    # "effect":Landroid/os/VibrationEffect;
    .restart local v18    # "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "pattern":[J
    .restart local p4    # "repeat":I
    .restart local p5    # "usageHint":I
    .restart local p6    # "token":Landroid/os/IBinder;
    .restart local p7    # "magnitude":I
    .restart local p8    # "type":I
    .restart local p9    # "magnitudeType":Ljava/lang/String;
    :catchall_fc
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3393
    throw v0

    .line 3380
    .end local v2    # "ident":J
    :catch_101
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 3381
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 3396
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v17    # "effect":Landroid/os/VibrationEffect;
    .end local v18    # "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    .restart local v10    # "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    :cond_105
    move-object/from16 v18, v10

    .line 3397
    .end local v10    # "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    .restart local v18    # "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    move/from16 v9, p4

    move/from16 v10, p8

    move-object/from16 v11, v18

    .end local v18    # "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    .local v11, "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    invoke-static {v10, v9, v11}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 3398
    .local v0, "effect":Landroid/os/VibrationEffect;
    move/from16 v12, p7

    invoke-virtual {v0, v12}, Landroid/os/VibrationEffect;->semSetMagnitude(I)V

    .line 3400
    move-object v7, v0

    check-cast v7, Landroid/os/VibrationEffect$SemHaptic;

    const-string/jumbo v4, "vibratePatternMagnitude - reflection"

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p6

    move/from16 v6, p5

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/VibratorService;->vibratePatternMagnitude(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;[J)V

    .line 3403
    .end local v0    # "effect":Landroid/os/VibrationEffect;
    :goto_12b
    return-void

    .line 3345
    .end local v11    # "semMagnitudeType":Landroid/os/VibrationEffect$SemMagnitudeType;
    :cond_12c
    move/from16 v9, p4

    move/from16 v10, p8

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
